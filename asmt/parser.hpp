#pragma once

#include "sexpr.hpp"
#include "types.hpp"
#include "smt.hpp"



static abstract_bool abstract_bool_top{true, true};
static abstract_bool abstract_bool_bot{false, false};
AType analyze_type(AnalysisState& state, const SExpr &expr);

std::unique_ptr<SMTPropPredApp> analyze_predapp(AnalysisState& state, SMTScope& scope, const SExpr &expr);

std::unique_ptr<SMTExprBoolLiteral> analyze_bool_literal(AnalysisState& state, const std::string_view &s);
std::unique_ptr<SMTExprIntLiteral> analyze_int_literal(AnalysisState& state, const std::string_view &s);
std::unique_ptr<SMTExprBV64Literal> analyze_bv64_literal(AnalysisState& state, const std::string_view &s);

std::unique_ptr<SMTExpr> analyze_expr(AnalysisState& state, SMTScope& scope, const SExpr &expr);
std::unique_ptr<SMTProp> analyze_prop(AnalysisState& state, SMTScope& scope, const SExpr &expr);
std::unique_ptr<SMTRule> analyze_rule(AnalysisState& state, const SExpr &expr);

void analyze(AnalysisState& state, std::vector<SExpr> &program);
