#include <algorithm>
#include <chrono>
#include <deque>
#include <iostream>
#include <iterator>
#include <memory>
#include <string>
#include <string_view>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "assignments.hpp"
#include "helpers.hpp"
#include "parser.hpp"
#include "sexpr.hpp"
#include "smt.hpp"

AnalysisState state;

// bool run_prop(const std::vector<const SMTProp *> &props, abstract_assignment &a) {
RuleApplicationResult run_prop(const std::vector<const SMTPropPredApp *> &props, abstract_assignment &a) {
  if constexpr (DEBUG) {
    std::cout << "run_prop " << props.size() << std::endl;
  }

  RuleApplicationResult app_result = NO_CHANGE;
  for (const auto &p : props) {
    const auto result = apply_predicate(p, state.global_assignments, a);

    if constexpr (DEBUG) {
      std::cout << "run_rule_application result " << result << std::endl;
    }

    if (result == BOTTOM) {
      if constexpr (DEBUG) {
        std::cout << "return false in run_rule" << std::endl;
      }
      return BOTTOM;
    } else if (result == CHANGED) {
      app_result = CHANGED;
    }
  }
  return app_result;
}

RuleApplicationResult run_prop(const std::vector<const SMTPropExpr *> &props, abstract_assignment &a) {
  if constexpr (DEBUG) {
    std::cout << "run_prop " << props.size() << std::endl;
  }

  RuleApplicationResult app_result = NO_CHANGE;
  for (const auto &p : props) {
    const auto result = apply_expression(p->expr.get(), a);

    if constexpr (DEBUG) {
      std::cout << "run_rule_application result " << result << std::endl;
    }

    if (result == BOTTOM) {
      if constexpr (DEBUG) {
        std::cout << "return false in run_rule" << std::endl;
      }
      return BOTTOM;
    } else if (result == CHANGED) {
      app_result = CHANGED;
    }
  }
  return app_result;
}

RuleApplicationResult run_prop(const std::unordered_set<const SMTPropExpr *> &props, abstract_assignment &a) {
  if constexpr (DEBUG) {
    std::cout << "run_prop " << props.size() << std::endl;
  }

  RuleApplicationResult app_result = NO_CHANGE;
  for (const auto &p : props) {
    const auto result = apply_expression(p->expr.get(), a);

    if constexpr (DEBUG) {
      std::cout << "run_rule_application result " << result << std::endl;
    }

    if (result == BOTTOM) {
      if constexpr (DEBUG) {
        std::cout << "return false in run_rule" << std::endl;
      }
      return BOTTOM;
    } else if (result == CHANGED) {
      app_result = CHANGED;
    }
  }
  return app_result;
}

bool run_rule(const SMTRule &r, var_set &var_set) {
  if constexpr (DEBUG) {
    std::cout << "run_rule_start" << std::endl;
  }
  abstract_assignment a{state, var_set};

  const auto &dependencies = state.variable_prop_dependencies[&r];

  std::vector<const SMTPropPredApp *> preds{};

  for (auto &p : r.pred_premises) {
    preds.push_back(p.get());
  }

  const auto result = run_prop(preds, a);
  if (result == BOTTOM) {
    return false;
  }

  auto it = state.props_without_variable_dependencies.find(&r);
  if (it != state.props_without_variable_dependencies.end()) {
    if (run_prop(it->second, a) == BOTTOM) {
      return false;
    }
  }

  bool changed = true;

  // while (a.has_changed_variables()) {

  while (changed) {
    changed = false;
    if constexpr (DEBUG) {
      std::cout << "run_rule_loop" << std::endl;
    }

    std::unordered_set<const SMTPropExpr *> props{};
    while (a.has_changed_variables()) {
      const auto v = a.pop_changed_variable();
      auto dep = dependencies.find(v);
      if (dep == dependencies.end()) {
        // variable appears solely in predicates
        continue;
      }
      for (const auto &prop : dep->second) {
        props.insert(prop);
      }
    }
    // const auto &depsForVar = r.premises;

    // const auto result = run_prop(depsForVar, a);
    const auto result = run_prop(props, a);
    if (result == BOTTOM) {
      return false;
    } else if (result == CHANGED) {
      changed = true;
    }

    if constexpr (DEBUG) {
      std::cout << "run_rule_loop end" << std::endl;
    }

    if (a.contains_bottom()) {
      if constexpr (DEBUG) {
        std::cout << "encountered bottom" << std::endl;
      }
      return false;
    }
  }

  if (state.global_assignments.contains(r.conclusion->predicate)) {
    auto &existing = state.global_assignments[r.conclusion->predicate];

    int i = 0;
    bool changed = false;
    for (const auto &v : r.conclusion->variables) {
      changed |= existing.unify_with(i, a.get_value(*v).get());
      ++i;
    }

    if constexpr (DEBUG) {
      std::cout << "add to existing global ass " << r.conclusion->predicate << std::endl;
      for (const auto &r : existing.assignment) {
        std::cout << r->repr() << " ";
      }
      std::cout << std::endl;
      std::cout << "changed " << changed << std::endl;
    }

    return changed;
  }

  state.global_assignments[r.conclusion->predicate] = predicate_assignment{r.conclusion->variables, a};

  if constexpr (DEBUG) {
    std::cout << "return true from run_rule" << std::endl;
  }

  return true;
}

struct PerfCount {
  std::chrono::duration<long, std::milli> change_sum;
  std::chrono::duration<long, std::milli> no_change_sum;
  size_t change_count;
  size_t no_change_count;
};

struct {
  std::chrono::time_point<std::chrono::steady_clock> last_start;
  std::unordered_map<const SMTRule *, PerfCount> counters;
  std::unordered_map<std::string, std::chrono::duration<long, std::milli>> generic_counters;
  std::unordered_map<std::string, std::chrono::time_point<std::chrono::steady_clock>> generic_starts;

  inline void start(const std::string &n) {
    if constexpr (HAVE_PERFORMANCE_COUNTERS) {
      generic_starts[n] = std::chrono::steady_clock::now();
    }
  }

  inline void end(const std::string &n) {
    if constexpr (HAVE_PERFORMANCE_COUNTERS) {
      auto end = std::chrono::steady_clock::now();
      auto start = generic_starts[n];
      generic_counters[n] += std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    }
  }

  inline void start_rule(const SMTRule *rule) {
    if constexpr (HAVE_PERFORMANCE_COUNTERS) {
      last_start = std::chrono::steady_clock::now();
    }
  }

  inline void end_rule(const SMTRule *rule, bool changed) {
    if constexpr (HAVE_PERFORMANCE_COUNTERS) {
      auto end = std::chrono::steady_clock::now();
      auto &c = counters[rule];
      if (changed) {
        c.change_count++;
        c.change_sum += std::chrono::duration_cast<std::chrono::milliseconds>(end - last_start);
      } else {
        c.no_change_count++;
        c.no_change_sum += std::chrono::duration_cast<std::chrono::milliseconds>(end - last_start);
      }
    }
  }
} PerformanceCounters;

void run() {
  auto work_queue = std::deque<const SMTRule *>{};
  auto vars_in_rules = std::unordered_map<const SMTRule *, var_set>{};
  auto rule_dependencies = std::unordered_map<const SMTRule *, std::unordered_set<const SMTRule *>>{};

  PerformanceCounters.start("dependency calculation");
  {
    std::unordered_map<std::string_view, std::unordered_set<const SMTRule *>> premises_to_rules;
    for (auto const &r : state.rules) {
      for (auto const &p : r->pred_premises) {
        premises_to_rules[p->predicate].insert(r.get());
      }
    }
    for (auto const &dependee : state.rules) {
      for (auto const &dependent : premises_to_rules[dependee->conclusion->predicate]) {
        rule_dependencies[dependee.get()].insert(dependent);
      }
    }
  }
  PerformanceCounters.end("dependency calculation");

  PerformanceCounters.start("var in rule calculation");
  std::for_each(state.rules.begin(), state.rules.end(), [&vars_in_rules](auto &r) {
    var_set set;
    std::for_each(r->expr_premises.begin(), r->expr_premises.end(), [&set](auto &prop) { get_vars(*prop, set); });
    std::for_each(r->pred_premises.begin(), r->pred_premises.end(), [&set](auto &prop) { get_vars(*prop, set); });
    get_vars(*r->conclusion, set);

    vars_in_rules[r.get()] = std::move(set);
  });
  PerformanceCounters.end("var in rule calculation");

  PerformanceCounters.start("work queue initialization");
  std::for_each(state.rules.begin(), state.rules.end(), [&work_queue](auto &r) {
    if (r->pred_premises.empty()) {
      work_queue.push_back(r.get());
    }
  });
  PerformanceCounters.end("work queue initialization");

  // std::cout << "work queue length " << work_queue.size() << std::endl;

  while (!work_queue.empty()) {
    auto r = work_queue.front();
    if constexpr (DEBUG) {
      std::cout << "work on rule implying " << r->conclusion->predicate << " /"
                << r->expr_premises.size() + r->pred_premises.size() << "  " << r << std::endl;
    }
    work_queue.pop_front();

    PerformanceCounters.start_rule(r);
    auto rrr = run_rule(*r, vars_in_rules[r]);
    PerformanceCounters.end_rule(r, rrr);
    if (rrr) {
      PerformanceCounters.start("rrr was true");
      if constexpr (DEBUG) {
        std::cout << "rule caused change" << std::endl;
        std::cout << state.global_assignments[r->conclusion->predicate].repr() << std::endl;
      }
      for (const auto &dependent : rule_dependencies[r]) {
        if constexpr (DEBUG) {
          std::cout << "add to work queue dependency implying  " << dependent->conclusion->predicate << " "
                    << &dependent << std::endl;
        }

        work_queue.push_back(dependent);
      }
      PerformanceCounters.end("rrr was true");
    } else {
      if constexpr (DEBUG) {
        std::cout << "rule caused no change" << std::endl;
      }
    }
  }
}

int main(int argc, char **argv) {
  const auto start{std::chrono::steady_clock::now()};
  const auto start_read{std::chrono::steady_clock::now()};

  std::string s(std::istreambuf_iterator<char>(std::cin), {});

  const auto start_lex{std::chrono::steady_clock::now()};
  auto v = lex(s);

  const auto start_parse{std::chrono::steady_clock::now()};

  auto bla = v.begin();
  std::vector<SExpr> d;
  parse(d, bla, v.end());

  if constexpr (false) {
    int rc = 0;
    for (const auto &se : d) {
      const SExpr *value;
      if (match_sexpr(se, "rule", &value)) {
        ++rc;
      }
      // print_sexpr_double_rule(0, se);
    }

    // std::cout << rc << std::endl;

    for (int i = 0; i < rc; ++i) {
      std::cout << "(declare-rel test" << i << " ())" << std::endl;
    }

    for (const auto &se : d) {
      print_sexpr_double_rule(0, se);
    }

    for (int i = 0; i < rc; ++i) {
      std::cout << "(query test" << i << ")" << std::endl;
    }

    return 0;
  }

  const auto start_analyze{std::chrono::steady_clock::now()};

  analyze(state, d);

  const auto start_run{std::chrono::steady_clock::now()};

  run();

  const auto end{std::chrono::steady_clock::now()};

  auto read_time = start_lex - start_read;
  auto lex_time = start_parse - start_lex;
  auto parse_time = start_analyze - start_parse;
  auto analyze_time = start_run - start_analyze;
  auto run_time = end - start_run;
  auto total_time = end - start;

  if constexpr (PRINT_TIMES) {
    for (const auto &it : PerformanceCounters.counters) {
      std::cout << it.second.change_count << '\t' << it.second.change_sum << '\t' << it.second.no_change_count << '\t'
                << it.second.no_change_sum << '\t' << it.first->repr() << std::endl;
    }

    for (const auto &it : PerformanceCounters.generic_counters) {
      std::cout << it.first << '\t' << it.second << std::endl;
    }

    std::cout << std::chrono::duration_cast<std::chrono::milliseconds>(total_time) << '\t'
              << std::chrono::duration_cast<std::chrono::milliseconds>(read_time) << '\t'
              << std::chrono::duration_cast<std::chrono::milliseconds>(lex_time) << '\t'
              << std::chrono::duration_cast<std::chrono::milliseconds>(parse_time) << '\t'
              << std::chrono::duration_cast<std::chrono::milliseconds>(analyze_time) << '\t'
              << std::chrono::duration_cast<std::chrono::milliseconds>(run_time) << std::endl;
  }

  if constexpr (DEBUG) {
    for (const auto &a : state.global_assignments) {
      std::cout << a.first << ":" << a.second.repr() << std::endl;
    }
  }

  for (const auto &q : state.queries) {
    std::cout << q << ":";
    if (state.global_assignments.find(q) == state.global_assignments.end()) {
      std::cout << "unsat";
    } else {
      std::cout << "sat";
    }
    std::cout << std::endl;
  }
  // std::cout << "RULES: " << std::endl;
  // std::cout << "count: " << rules.size() << std::endl;

  // for(auto i = d.begin(); i != d.end(); ++i) {
  // print_sexpr(0, *i);
  // }
}
