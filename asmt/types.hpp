#pragma once

#include <memory>
#include <string_view>
#include <unordered_map>
#include <unordered_set>
#include <vector>

struct abstract_value;
struct SMTRule;
struct SMTProp;
struct SMTPropExpr;
struct SMTExprVar;

struct predicate_assignment;

typedef std::unordered_map<std::string_view, predicate_assignment> PredState;

struct var_ref;

typedef std::unordered_set<var_ref> var_set;

struct AType {
  std::string_view name;
  const abstract_value *top;
  const abstract_value *bot;

  AType(){};
  AType(std::string_view name, const abstract_value *top, const abstract_value *bot) : name(name), top(top), bot(bot) {}
};

struct AnalysisState {
  std::unordered_map<std::string_view, AType> var_types;
  std::unordered_set<std::string_view> queries;
  std::unordered_map<std::string_view, std::vector<AType>> rel_types;
  std::vector<std::unique_ptr<SMTRule>> rules;
  std::unordered_map<std::string_view, predicate_assignment> global_assignments;
  std::unordered_map<const SMTRule *, std::unordered_map<var_ref, std::vector<const SMTPropExpr *>>>
      variable_prop_dependencies;
  std::unordered_map<const SMTRule *, std::vector<const SMTPropExpr *>> props_without_variable_dependencies;
};
