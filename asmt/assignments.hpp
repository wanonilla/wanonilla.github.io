#include<unordered_map>
#include<unordered_set>
#include<string_view>

#include "smt.hpp"
#include "adom.hpp"

struct abstract_assignment {
  std::vector<std::unique_ptr<abstract_value>> assignment;
  std::unordered_set<var_ref> changed_variables;

  bool intersect_with(const SMTExprVar* var, const abstract_value *value);
  bool intersect_with(const SMTExpr *var, const abstract_value *value);

  bool has_this_value(const SMTExprVar *var, const abstract_value &value) const;
  bool contains_bottom() const;

  std::unique_ptr<abstract_value> get_value(const SMTExprVar &var) const;

  abstract_assignment(const AnalysisState &state, const var_set &set);

  std::string repr() const;

  bool has_changed_variables() const;

  const SMTExprVar* pop_changed_variable();

  // private:
  bool have_narrowed_to_bottom = false;
};

struct predicate_assignment {
  std::vector<std::unique_ptr<abstract_value>> assignment;

  predicate_assignment(){};
  predicate_assignment(const std::vector<std::unique_ptr<SMTExprVar>>& names, const abstract_assignment &variable_assignment);
  bool unify_with(const size_t index, const abstract_value *value);

  const abstract_value *get_value(size_t index) const;

  std::string repr() const;
};

RuleApplicationResult apply_expression(const SMTExpr *expr, abstract_assignment &a);
RuleApplicationResult apply_predicate(const SMTPropPredApp *pred_app, const PredState &state, abstract_assignment &a);
