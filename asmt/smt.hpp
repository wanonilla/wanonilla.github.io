#pragma once
#include "adom.hpp"
#include <array>
#include <cstdint>
#include <memory>
#include <string_view>
#include <unordered_map>
#include <vector>

enum RuleApplicationResult { CHANGED, BOTTOM, NO_CHANGE };

RuleApplicationResult bool2rar(bool b);

enum SMTExprOp {
  EQ,
  NEQ,
  LE,
  LT,
  BVULT,
  BVULE,
  BVUGE,
  NOT,
  ITE,
  AND,
  OR,
  BVSHL,
  BVADD,
  ZERO_EXTEND_32,
  EXTRACT_31_0,
  BVSUB,
  BVXOR,
  BVUDIV,
  BVSLT,
  BVSGT,
  BVNEG,
  BVLSHR,
  BVAND,
  BVOR,
  BVMUL,
  BVUGT,
  BVUREM,
  BVSGE,
  SIGN_EXTEND_32,
  BVASHR,
  BVSLE,
  GT,
  SIGN_EXTEND_48,
  SIGN_EXTEND_56,
  ZERO_EXTEND_48,
  ZERO_EXTEND_56,
  EXTRACT_7_0,
  EXTRACT_15_0,
  GE
};
const std::array<std::string, 39> SMTExprOpStrings{
    "EQ",
    "NEQ",
    "LE",
    "LT",
    "BVULT",
    "BVULE",
    "BVUGE",
    "NOT",
    "ITE",
    "AND",
    "OR",
    "BVSHL",
    "BVADD",
    "ZERO_EXTEND_32",
    "EXTRACT_31_0",
    "BVSUB",
    "BVXOR",
    "BVUDIV",
    "BVSLT",
    "BVSGT",
    "BVNEG",
    "BVLSHR",
    "BVAND",
    "BVOR",
    "BVMUL",
    "BVUGT",
    "BVUREM",
    "BVSGE",
    "SIGN_EXTEND_32",
    "BVASHR",
    "BVSLE",
    "GT",
    "SIGN_EXTEND_48",
    "SIGN_EXTEND_56",
    "ZERO_EXTEND_48",
    "ZERO_EXTEND_56",
    "EXTRACT_7_0",
    "EXTRACT_15_0",
    "GT",
};

struct SMTExpr {
  virtual ~SMTExpr() = default;
  virtual std::string repr() const { return "base_repr (this should not happen)"; };
};

struct SMTExprApp : SMTExpr {
  SMTExprOp op;
  std::vector<std::unique_ptr<SMTExpr>> children;

  SMTExprApp(SMTExprOp op, std::vector<std::unique_ptr<SMTExpr>> children) : op(op), children(std::move(children)){};

  std::string repr() const {
    std::string ret = "app{" + SMTExprOpStrings[this->op] + "}{";
    for (auto &c : this->children) {
      ret += c->repr() + ",";
    }
    if (!this->children.empty()) {
      ret.pop_back();
    }
    ret += "}";
    return ret;
  }
};

typedef uint64_t varid_t;

struct SMTScope {
  std::vector<std::string_view> id_to_name;
  std::unordered_map<std::string_view, id_t> name_to_id;

  varid_t get_id(const std::string_view &name) {
    varid_t id = id_to_name.size();
    auto res = name_to_id.insert({name, id});
    if (res.second) {
      id_to_name.push_back(name);
      return id;
    }
    return res.first->second;
  }

  std::string_view get_name(varid_t id) const { return id_to_name[id]; }
};

struct SMTExprVar : SMTExpr {
  // const std::string_view name;
  const SMTScope &scope;
  const varid_t id;
  SMTExprVar(std::string_view name, SMTScope &scope) : scope(scope), id(scope.get_id(name)) {}

  std::string repr() const { return "var{" + std::string(scope.get_name(this->id)) + "}"; }

  std::string_view name() const { return scope.get_name(this->id); }
};

struct var_ref {
  const SMTExprVar *var;
  var_ref(const SMTExprVar *var) : var(var){};

  bool operator==(const var_ref &other) const { return this->var->id == other.var->id; }
};

template <> struct std::hash<var_ref> {
  size_t operator()(const var_ref &var) const { return std::hash<varid_t>{}(var.var->id); }
};

struct SMTExprBV64Literal : SMTExpr {
  const uint64_t value;
  SMTExprBV64Literal(uint64_t value) : value(value) {}

  std::string repr() const { return "bv64lit{" + std::to_string(this->value) + "}"; }
};

struct SMTExprIntLiteral : SMTExpr {
  const int64_t value;
  SMTExprIntLiteral(int64_t value) : value(value) {}

  std::string repr() const { return "intlit{" + std::to_string(this->value) + "}"; }
};

struct SMTExprBoolLiteral : SMTExpr {
  const bool value;
  SMTExprBoolLiteral(bool value) : value(value) {}

  std::string repr() const { return "boollit{" + std::to_string(this->value) + "}"; }
};

struct SMTProp {
  virtual ~SMTProp() = default;
  virtual std::string repr() const { return "should not be called"; };
};

struct SMTPropPredApp : SMTProp {
  std::string_view predicate;
  std::vector<std::unique_ptr<SMTExprVar>> variables;

  std::string repr() const {
    std::stringstream ss;
    ss << "predapp{" << this->predicate;

    for (const auto &v : this->variables) {
      ss << "," << v->name();
    }

    ss << "}";

    return ss.str();
  }
};

struct SMTPropExpr : SMTProp {
  std::unique_ptr<SMTExpr> expr;

  SMTPropExpr(std::unique_ptr<SMTExpr> expr) : expr(std::move(expr)) {}

  std::string repr() const {
    std::stringstream ss;
    ss << "exprprop{" << this->expr->repr() << "}";
    return ss.str();
  }
};

struct SMTRule {
  std::vector<std::unique_ptr<SMTPropPredApp>> pred_premises;
  std::vector<std::unique_ptr<SMTPropExpr>> expr_premises;
  std::unique_ptr<SMTPropPredApp> conclusion;

  SMTScope scope;

  std::string repr() const {
    std::stringstream ss;
    ss << "rule{";

    for (auto &p : pred_premises) {
      ss << p->repr() << ",";
    }
    for (auto &p : expr_premises) {
      ss << p->repr() << ",";
    }

    ss << conclusion->repr();

    ss << "}";
    return ss.str();
  }
};

void get_vars(const SMTExpr &expr, var_set &set);
void get_vars(const SMTProp &prop, var_set &set);
