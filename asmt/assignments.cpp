#include "assignments.hpp"

bool abstract_assignment::contains_bottom() const { return have_narrowed_to_bottom; }

bool abstract_assignment::has_changed_variables() const { return !this->changed_variables.empty(); }

const SMTExprVar *abstract_assignment::pop_changed_variable() {
  die("cannot pop assignment with no changed variables", !this->changed_variables.empty());
  auto it = this->changed_variables.begin();
  auto v = *it;
  this->changed_variables.erase(it);
  return v.var;
}

bool abstract_assignment::has_this_value(const SMTExprVar *var, const abstract_value &value) const {
  varid_t id = var->id;
  die("assignment too small!", id < assignment.size());
  return *assignment[id] == value;
}

std::unique_ptr<abstract_value> abstract_assignment::get_value(const SMTExprVar &var) const {
  varid_t id = var.id;
  die("assignment too small!", id < assignment.size());
  return assignment[id]->copy();
}

abstract_assignment::abstract_assignment(const AnalysisState &state, const var_set &set) {
  assignment.resize(set.size());
  for (const auto &v : set) {
    const auto va = state.var_types.find(v.var->name());
    changed_variables.insert(v);
    die("Could not find type for variable '" + std::string(v.var->name()) + "'", va != state.var_types.end());
    assignment[v.var->id] = va->second.top->copy();
  }
}

std::string abstract_assignment::repr() const {
  std::stringstream ss;
  int i = 0;
  for (const auto &it : this->assignment) {
    ss << i << "=" << it->repr() << " ";
    ++i;
  }
  return ss.str();
}

predicate_assignment::predicate_assignment(const std::vector<std::unique_ptr<SMTExprVar>> &names,
                                           const abstract_assignment &variable_assignment) {
  assignment.reserve(names.size());
  for (const auto &n : names) {
    assignment.push_back(variable_assignment.get_value(*n));
  }
}

bool predicate_assignment::unify_with(const size_t index, const abstract_value *value) {
  if (index >= assignment.size()) {
    die("assignment has only '" + std::to_string(assignment.size()) + " positions, tried to assign index " +
        std::to_string(index) + " '!");
  }

  std::stringstream ss;
  ss << "::unify_with " << index << " " << assignment[index]->repr() << " " << value->repr() << " ";

  auto repr1 = assignment[index]->repr();

  bool widened = false;
  assignment[index] = abstract_unify(std::move(assignment[index]), value, &widened);

  die("repr changed but value was not widened " + repr1 + " " + assignment[index]->repr(),
      repr1 == assignment[index]->repr() || widened);

  die("repr has not changed but value was widened " + repr1 + " " + assignment[index]->repr(),
      !widened || repr1 != assignment[index]->repr());

  die("unify_with set variable to nullptr", assignment[index].get());

  ss << assignment[index]->repr();

  if constexpr (DEBUG) {
    if (widened) {
      std::cout << ss.str() << std::endl;
    }
  }

  return widened;
}

const abstract_value *predicate_assignment::get_value(size_t index) const {
  if (index >= assignment.size()) {
    die("assignment has only '" + std::to_string(assignment.size()) + " positions, tried to assign index " +
        std::to_string(index) + " '!");
  }
  return assignment[index].get();
}

std::string predicate_assignment::repr() const {
  std::stringstream ss;
  ss << "(";
  if (this->assignment.size() > 0) {
    ss << 0 << "=" << assignment[0]->repr();
  }
  for (auto i = 1; i < this->assignment.size(); ++i) {
    ss << " " << i << "=" << assignment[i]->repr();
  }
  ss << ")";

  return ss.str();
}

bool abstract_assignment::intersect_with(const SMTExpr *var, const abstract_value *value) {
  if (auto tvar = dynamic_cast<const SMTExprVar *>(var)) {
    return this->intersect_with(tvar, value);
  }
  return false;
}

bool abstract_assignment::intersect_with(const SMTExprVar *var, const abstract_value *value) {
  varid_t id = var->id;

  die("assignment too small!", id < assignment.size());
  die("intesect_with called with nullptr", value);

  std::stringstream ss;
  ss << "::intersect_with at " << var->name() << " " << value->repr() << " ";
  bool narrowed = false;

  auto repr1 = assignment[id]->repr();

  assignment[id] = abstract_intersect(std::move(assignment[id]), value, &narrowed);

  die("repr changed but value was not narrowed " + repr1 + " " + assignment[id]->repr(),
      repr1 == assignment[id]->repr() || narrowed);

  die("repr has not changed but value was narrowed " + repr1 + " " + assignment[id]->repr(),
      !narrowed || repr1 != assignment[id]->repr());

  die("intersect_with set variable to nullptr", assignment[id].get());

  ss << assignment[id]->repr();
  if constexpr (DEBUG) {
    if (narrowed) {
      std::cout << ss.str() << std::endl;
    }
  }

  if (narrowed) {
    changed_variables.insert(var);
  }

  have_narrowed_to_bottom |= assignment[id]->is_bottom();

  return narrowed;
}
