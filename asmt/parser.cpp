#include "types.hpp"
#include "parser.hpp"
#include "helpers.hpp"
#include "smt.hpp"
#include <memory>
#include <string>

AType analyze_type(AnalysisState& state, const SExpr &expr) {
  static AType bool_type{"bool", &abstract_bool_top, &abstract_bool_bot};
  static AType bv64_type{"bv64", &bv64_interval_top, &bv64_interval_bot};
  static AType int_type{"int", &int_or_unknown_top, &int_or_unknown_bot};

  if (match_sexpr(expr, "Bool")) {
    return bool_type;
  } else if (match_sexpr(expr, "Int")) {
    return int_type;
  } else if (match_sexpr(expr, "_", "BitVec", "64")) {
    return bv64_type;
  }
  std::cout << "UNKOWN TYPE" << std::endl;
  print_sexpr(0, expr);
  die("unknown type");
  return bool_type;
}

std::unique_ptr<SMTPropPredApp> analyze_predapp(AnalysisState& state, SMTScope& scope, const SExpr &expr) {
  if (expr.cat == SexpList && expr.list.size() > 0 && expr.list[0].cat == SexpId) {
    if (state.rel_types.contains(expr.list[0].id)) {
      std::unique_ptr<SMTPropPredApp> ret{new SMTPropPredApp{}};

      ret->predicate = expr.list[0].id;

      for (auto iter = expr.list.begin() + 1; iter != expr.list.end(); ++iter) {
        if (iter->cat != SexpId) {
          die("Predicate application with non-variable argument");
        }
         ret->variables.push_back(std::make_unique<SMTExprVar>(iter->id, scope));
       }

      return ret;
    } else {
      die("Relation '" + std::string(expr.list[0].id) + "' unknown");
    }
  } else if (expr.cat == SexpId) {
    std::unique_ptr<SMTPropPredApp> ret{new SMTPropPredApp{}};
    ret->predicate = expr.id;
    return ret;
  }

  print_sexpr(0, expr);
  die("Malformed predapp");
  return std::unique_ptr<SMTPropPredApp>{};
}

std::unique_ptr<SMTExprBoolLiteral> analyze_bool_literal(AnalysisState& state, const std::string_view &s) {
  if (s == "false") {
    return std::make_unique<SMTExprBoolLiteral>(false);
  } else if (s == "true") {
    return std::make_unique<SMTExprBoolLiteral>(true);
  }
  // std::cout << "::: " << s << std::endl;
  return std::unique_ptr<SMTExprBoolLiteral>{};
}

std::unique_ptr<SMTExprIntLiteral> analyze_int_literal(AnalysisState& state, const std::string_view &s) {
  if (std::any_of(s.begin(), s.end(), [](auto v) { return (v < '0' || v > '9') && v != '-'; })) {
    return std::unique_ptr<SMTExprIntLiteral>{};
  }

  auto ret = std::make_unique<SMTExprIntLiteral>(strtoul(s.data(), nullptr, 10));
  if (errno == ERANGE) {
    if (ret->value != 0) {
      die("Integer literal out of range encountered");
    }
    return std::unique_ptr<SMTExprIntLiteral>{};
  }
  return ret;
}

std::unique_ptr<SMTExprBV64Literal> analyze_bv64_literal(AnalysisState& state, const std::string_view &s) {
  if (s.size() == 18 && s[0] == '#' && s[1] == 'x') {
    auto ret = std::make_unique<SMTExprBV64Literal>(strtoul(s.data() + 2, nullptr, 16));
    if (errno == ERANGE) {
      die("Malformed bitvector '" + std::string(s) + "'");
    }
    return ret;
  }

  return std::unique_ptr<SMTExprBV64Literal>{};
}

void assert_sexpr_no_nullptr_children(const std::vector<std::unique_ptr<SMTExpr>> &children, const SExpr &expr) {
  auto it = expr.list.begin() + 1;
  for (const auto &c : children) {
    if (!c.get()) {
      print_sexpr(0, *it);
      die("sexpr could not be parsed to SMTExpr");
    }
    ++it;
  }
}

std::unique_ptr<SMTExpr> analyze_expr(AnalysisState& state, SMTScope& scope, const SExpr &expr) {
  if (expr.cat == SexpId) {
    std::unique_ptr<SMTExpr> literal = analyze_bv64_literal(state, expr.id);
    if (literal) {
      return literal;
    }

    literal = analyze_int_literal(state, expr.id);
    if (literal) {
      return literal;
    }

    literal = analyze_bool_literal(state, expr.id);
    if (literal) {
      return literal;
    }

    if (state.var_types.contains(expr.id)) {
      return std::make_unique<SMTExprVar>(expr.id, scope);
    } else {
      die("Could not parse token '" + std::string(expr.id) + "'");
    }
  }

  const SExpr *expr1;
  const SExpr *expr2;
  const SExpr *expr3;

  static std::unordered_map<std::string, SMTExprOp> unops = {{"not", NOT}, {"bvneg", BVNEG}};
  static std::unordered_map<std::string, SMTExprOp> binops = {
      {"bvult", BVULT},   {"=", EQ},        {"bvuge", BVUGE},   {"bvule", BVULE}, {"<=", LE},
      {"<", LT},          {"and", AND},     {"or", OR},         {"bvshl", BVSHL}, {"bvadd", BVADD},
      {"bvsub", BVSUB},   {"bvxor", BVXOR}, {"bvudiv", BVUDIV}, {"bvslt", BVSLT}, {"bvsgt", BVSGT},
      {"bvlshr", BVLSHR}, {"bvand", BVAND}, {"bvor", BVOR},     {"bvmul", BVMUL}, {"bvugt", BVUGT},
      {"bvurem", BVUREM}, {"bvsge", BVSGE}, {"bvashr", BVASHR}, {"bvsle", BVSLE}};
  static std::unordered_map<std::string, SMTExprOp> ternops = {{"ite", ITE}};

  // TODO generalize parsing
  // static std::vector<std::pair<uint8_t, std::unordered_map<std::string, SMTExprOp>>> ops = {
  //     {1, unops}, {2, binops}, {3, ternops}};

  for (auto iter = unops.begin(); iter != unops.end(); ++iter) {
    if (match_sexpr(expr, iter->first, &expr1)) {
      auto children = std::vector<std::unique_ptr<SMTExpr>>();
      children.push_back(analyze_expr(state, scope, *expr1));

      assert_sexpr_no_nullptr_children(children, expr);

      return std::make_unique<SMTExprApp>(iter->second, std::move(children));
    }
  }

  for (auto iter = binops.begin(); iter != binops.end(); ++iter) {
    if (match_sexpr(expr, iter->first, &expr1, &expr2)) {
      auto children = std::vector<std::unique_ptr<SMTExpr>>();
      children.push_back(analyze_expr(state, scope, *expr1));
      children.push_back(analyze_expr(state, scope, *expr2));

      assert_sexpr_no_nullptr_children(children, expr);

      return std::make_unique<SMTExprApp>(iter->second, std::move(children));
    }
  }

  for (auto iter = ternops.begin(); iter != ternops.end(); ++iter) {
    if (match_sexpr(expr, iter->first, &expr1, &expr2, &expr3)) {
      auto children = std::vector<std::unique_ptr<SMTExpr>>();
      children.push_back(analyze_expr(state, scope, *expr1));
      children.push_back(analyze_expr(state, scope, *expr2));
      children.push_back(analyze_expr(state, scope, *expr3));

      assert_sexpr_no_nullptr_children(children, expr);

      return std::make_unique<SMTExprApp>(iter->second, std::move(children));
    }
  }

  static std::unordered_map<std::string, SMTExprOp> sign_extend = {
      {"32", SIGN_EXTEND_32}, {"48", SIGN_EXTEND_48}, {"56", SIGN_EXTEND_56}};
  static std::unordered_map<std::string, SMTExprOp> zero_extend = {
      {"32", ZERO_EXTEND_32}, {"48", ZERO_EXTEND_48}, {"56", ZERO_EXTEND_56}};
  static std::unordered_map<std::string, SMTExprOp> extract = {
      {"7", EXTRACT_7_0}, {"15", EXTRACT_15_0}, {"31", EXTRACT_31_0}};

  static std::vector<std::pair<std::string, std::unordered_map<std::string, SMTExprOp>>> extensions = {
      {"sign_extend", sign_extend}, {"zero_extend", zero_extend}};

  if (expr.cat == SExprCat::SexpList) {
    if (expr.list.size() == 2) {
      for (const auto &op : extensions) {
        for (const auto &bw : op.second) {
          if (match_sexpr(expr.list[0], "_", op.first, bw.first)) {
            auto children = std::vector<std::unique_ptr<SMTExpr>>();
            children.push_back(analyze_expr(state, scope, expr.list[1]));
            assert_sexpr_no_nullptr_children(children, expr);

            return std::make_unique<SMTExprApp>(bw.second, std::move(children));
          }
        }
      }
      for (const auto &op : extract) {
        if (match_sexpr(expr.list[0], "_", "extract", op.first, "0")) {
          auto children = std::vector<std::unique_ptr<SMTExpr>>();
          children.push_back(analyze_expr(state, scope, expr.list[1]));
          assert_sexpr_no_nullptr_children(children, expr);
          return std::make_unique<SMTExprApp>(op.second, std::move(children));
        }
      }
    }
  }

  return std::unique_ptr<SMTExpr>{};
}

void analyze_prop(AnalysisState& state, SMTScope& scope, std::unique_ptr<SMTRule>& rule, const SExpr &expr) {
  auto analyzed_expr = analyze_expr(state, scope, expr);
  if (analyzed_expr) {
    rule->expr_premises.push_back(std::make_unique<SMTPropExpr>(std::move(analyzed_expr)));
  } else {
    rule->pred_premises.push_back(analyze_predapp(state, scope, expr));
  }
}

std::unique_ptr<SMTRule> analyze_rule(AnalysisState& state, const SExpr &expr) {
  if (expr.cat != SexpList) {
    die("Rule is not list");
  }

  const SExpr *prems;
  const SExpr *conclusion;

  if (match_sexpr(expr, "=>", &prems, &conclusion)) {
    auto ret = std::make_unique<SMTRule>();
    if (prems->cat == SexpId) {
      analyze_prop(state, ret->scope, ret, *prems);
    } else {
      if (prems->list.empty()) {
        die("empty prems");
      }
      if (!match_sexpr(prems->list[0], "and")) {
        if (prems->list.size() == 1) {
         analyze_prop(state, ret->scope, ret, prems->list[0]);
        } else {
          analyze_prop(state, ret->scope, ret, *prems);
        }
      } else {
        for (auto iter = prems->list.begin() + 1; iter != prems->list.end(); ++iter) {
          analyze_prop(state, ret->scope, ret, *iter);
        }
      }
    }

    ret->conclusion = analyze_predapp(state, ret->scope, *conclusion);

    for(const auto& p : ret->expr_premises) {
      var_set set{};
      get_vars(*p, set);

      if (set.empty()) {
        state.props_without_variable_dependencies[ret.get()].push_back(p.get());
      } else {
        for (const auto &v : set) {
          state.variable_prop_dependencies[ret.get()][v].push_back(p.get());
        }
      }
    }
    {
      // this constructs an empty vector for variables that do not appear in the premises
      var_set set{};
      get_vars(*ret->conclusion.get(), set);

      for (const auto &v : set) {
        state.variable_prop_dependencies[ret.get()][v];
      }
    }

    return ret;
  }

  print_sexpr(2, expr);
  die("child in rule did not match");
  return std::unique_ptr<SMTRule>{};
}

void analyze(AnalysisState& state, std::vector<SExpr> &program) {
  for (const auto &def : program) {
    const std::string_view *name;
    const SExpr *value;
    if (match_sexpr(def, "declare-var", &name, &value)) {
      state.var_types[*name] = analyze_type(state, *value);
    } else if (match_sexpr(def, "declare-rel", &name, &value)) {
      if (value->cat == SexpList) {
        state.rel_types[*name] = {};
        auto &vec = state.rel_types[*name];
        for (auto iter = value->list.begin(); iter != value->list.end(); ++iter) {
          vec.push_back(analyze_type(state, *iter));
        }
      }
    } else if (match_sexpr(def, "rule", &value)) {
      state.rules.push_back(analyze_rule(state, *value));
    } else if (match_sexpr(def, "query", &name)) {
      state.queries.insert(*name);
    } else if (match_sexpr(def, "set-option", &name, &value)) {
      // ignore
    } else {
      print_sexpr(0, def);
      die("UNMATCHED SEXPR");
    }
  }
}
