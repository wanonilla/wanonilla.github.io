#include "smt.hpp"
#include <cassert>
#include <cstdint>
#include <iostream>
#include <limits>
#include <memory>
#include <sstream>
#include <string>

#include "adom.hpp"
#include "helpers.hpp"
#include "assignments.hpp"
#include "binrel.hpp"

std::unique_ptr<abstract_value> eval(const SMTExpr *const expr, const abstract_assignment &assignment);
RuleApplicationResult bool2rar(bool b) { return b ? CHANGED : NO_CHANGE; };

RuleApplicationResult apply_expression(const SMTExpr *expr, abstract_assignment &a);

template <typename... Ts> RuleApplicationResult apply_all_matches(const SMTExpr *e, abstract_assignment &assignment);

template <typename T>
bool match_apply_smt_expr(const SMTExpr *e, abstract_assignment &assignment, RuleApplicationResult *result) {
  const SMTExprApp *app = dynamic_cast<const SMTExprApp *>(e);

  if (!app) {
    return false;
  }

  if (app->op != T::OP) {
    return false;
  }

  if (app->children.size() != T::ARITY) {
    return false;
  }

  if constexpr (T::ARITY == 1) {
    typename T::T1 *t1 = dynamic_cast<typename T::T1 *>(app->children[0].get());

    if (t1) {
      // std::cout << typeid(T).name() << " matched!" << std::endl;
      *result = T::apply(t1, assignment);
      return true;
    }
    return false;
  } else if constexpr (T::ARITY == 2) {
    typename T::T1 *t1 = dynamic_cast<typename T::T1 *>(app->children[0].get());
    typename T::T2 *t2 = dynamic_cast<typename T::T2 *>(app->children[1].get());

    if (t1 && t2) {
      // std::cout << typeid(T).name() << " matched!" << std::endl;
      *result = T::apply(t1, t2, assignment);
      return true;
    }
    return false;
  } else if constexpr (T::ARITY == 3) {
    typename T::T1 *t1 = dynamic_cast<typename T::T1 *>(app->children[0].get());
    typename T::T2 *t2 = dynamic_cast<typename T::T2 *>(app->children[1].get());
    typename T::T3 *t3 = dynamic_cast<typename T::T3 *>(app->children[2].get());

    if (t1 && t2 && t3) {
      *result = T::apply(t1, t2, t3, assignment);
      return true;
    }
    return false;
  }

  die("Unknown arity " + std::to_string(T::ARITY) + " in " + e->repr());
  return false;
}

template <SMTExprOp SMTOP, typename T, typename... Ts> struct ApplyPolymorphicBinRel {
  typedef SMTExpr T1;
  typedef SMTExpr T2;
  typedef T VT;

  static const SMTExprOp OP = SMTOP;
  static const size_t ARITY = 2;

  static RuleApplicationResult apply(T1 *x1, T2 *x2, abstract_assignment &assignment) {
    auto e1 = eval(x1, assignment);
    auto e2 = eval(x2, assignment);

    return apply(x1, x2, e1.get(), e2.get(), assignment);
  }

  static RuleApplicationResult apply(T1 *x1, T2 *x2, const abstract_value *e1, const abstract_value *e2,
                                     abstract_assignment &assignment) {
    auto t1 = dynamic_cast<const VT *>(e1);
    auto t2 = dynamic_cast<const VT *>(e2);

    if (e1->is_bottom() || e2->is_bottom()) {
      die("what should happen if binrels have bottom on one side");
    }

    if (!t1 || !t2) {
      if constexpr (sizeof...(Ts) == 0) {
        std::cerr << x1 << ' ' << x2 << ' ' << t1 << ' ' << t2 << std::endl;
        std::cerr << x1->repr() << std::endl;
        std::cerr << x2->repr() << std::endl;

        die("no matching binrels for " + SMTExprOpStrings[OP]);
      } else {
        return ApplyPolymorphicBinRel<OP, Ts...>::apply(x1, x2, e1, e2, assignment);
      }
    }

    if constexpr (DEBUG || OP == BVULT) {
      std::cerr << "ApplyPolymorphicBinRel " << SMTExprOpStrings[OP] << std::endl;
      std::cerr << x1 << ' ' << x2 << ' ' << e1 << ' ' << e2 << std::endl;
      std::cerr << x1->repr() << std::endl;
      std::cerr << x2->repr() << std::endl;
      std::cerr << e1->repr() << std::endl;
      std::cerr << e2->repr() << std::endl;
    }

    auto p = binrel<OP, T>::partition(e1, e2);

    if constexpr (DEBUG || OP == BVULT) {
      std::cerr << "partition" << std::endl;
      std::cerr << p.first->repr() << std::endl;
      std::cerr << p.second->repr() << std::endl;
      std::cerr << "-------" << std::endl;
    }

    if (p.first->is_bottom() && p.second->is_bottom()) {
      return BOTTOM;
    }

    bool narrowed = false;
    narrowed |= assignment.intersect_with(x1, p.first.get());
    narrowed |= assignment.intersect_with(x2, p.second.get());

    return bool2rar(narrowed);
  };
};

template <SMTExprOp SMTOP> struct ApplyPolymorphicBVBinRel {
  typedef SMTExpr T1;
  typedef SMTExpr T2;

  static const SMTExprOp OP = SMTOP;
  static const size_t ARITY = 2;

  static RuleApplicationResult apply(T1 *x1, T2 *x2, abstract_assignment &assignment) {
    return ApplyPolymorphicBinRel<SMTOP, bv32_interval, bv64_interval>::apply(x1, x2, assignment);
  }
};

template <typename BR, typename... BRs> struct ApplyBinRel {
  typedef SMTExpr T1;
  typedef SMTExpr T2;
  typedef BR::VT VT;

  static const SMTExprOp OP = BR::OP;
  static const size_t ARITY = 2;

  static RuleApplicationResult apply(T1 *x1, T2 *x2, abstract_assignment &assignment) {
    auto e1 = eval(x1, assignment);
    auto e2 = eval(x2, assignment);

    return apply(x1, x2, e1.get(), e2.get(), assignment);
  }

  static RuleApplicationResult apply(T1 *x1, T2 *x2, const abstract_value *e1, const abstract_value *e2,
                                     abstract_assignment &assignment) {
    auto t1 = dynamic_cast<const VT *>(e1);
    auto t2 = dynamic_cast<const VT *>(e2);

    if (e1->is_bottom() || e2->is_bottom()) {
      die("what should happen if binrels have bottom on one side");
    }

    if (!t1 || !t2) {
      if constexpr (sizeof...(BRs) == 0) {
        std::cerr << x1 << ' ' << x2 << ' ' << t1 << ' ' << t2 << std::endl;
        std::cerr << x1->repr() << std::endl;
        std::cerr << x2->repr() << std::endl;

        die("no matching binrels for " + SMTExprOpStrings[OP]);
      } else {
        return ApplyBinRel<BRs...>::apply(x1, x2, e1, e2, assignment);
      }
    }

    if constexpr (DEBUG) {
      std::cerr << "ApplyBinRel " << SMTExprOpStrings[OP] << std::endl;
      std::cerr << x1 << ' ' << x2 << ' ' << e1 << ' ' << e2 << std::endl;
      std::cerr << x1->repr() << std::endl;
      std::cerr << x2->repr() << std::endl;
      std::cerr << e1->repr() << std::endl;
      std::cerr << e2->repr() << std::endl;
    }

    auto p = BR::partition(e1, e2);

    if constexpr (DEBUG) {
      std::cerr << "partition" << std::endl;
      std::cerr << p.first->repr() << std::endl;
      std::cerr << p.second->repr() << std::endl;
      std::cerr << "-------" << std::endl;
    }

    if (p.first->is_bottom() && p.second->is_bottom()) {
      die("this should not return bottom");
      return BOTTOM;
    }

    bool narrowed = false;
    narrowed |= assignment.intersect_with(x1, p.first.get());
    narrowed |= assignment.intersect_with(x2, p.second.get());

    return bool2rar(narrowed);
  };
};

std::unique_ptr<abstract_value> eval(const SMTExpr *const expr, const abstract_assignment &assignment);

struct EqExprExpr {
  typedef SMTExpr T1;
  typedef SMTExpr T2;
  static const SMTExprOp OP = EQ;
  static const size_t ARITY = 2;

  static RuleApplicationResult apply(T1 *x1, T2 *x2, abstract_assignment &assignment) {
    // std::cout << x1 << std::endl;
    // std::cout << x2 << std::endl;

    // std::cout << x1->repr() << std::endl;
    // std::cout << x2->repr() << std::endl;

    auto e1 = eval(x1, assignment);
    auto e2 = eval(x2, assignment);

    // std::cout << e1->repr() << std::endl;
    // std::cout << e2->repr() << std::endl;

    bool changed = false;

    changed |= assignment.intersect_with(x1, e2.get());
    changed |= assignment.intersect_with(x2, e1.get());

    // This case handles the case that if neither of the two sides of the assignment is a variable, we still might
    // reason that the premises are false.
    // If none of x1 and x2 is a variable, changed is surely false.
    // If one or both of x1 and x2 is a variable, then the assignment contains at least once the intersection
    // which could be bottom (which will cause the rule application to be discarded).
    // The only case where !changed is not optimal is of x1 or x2 is already bottom and therefore changed could be false
    // and the intersection is computed superfluously, but if x1 or x2 is alread bottom, probably the execution will
    // halt earlier.
    if (!changed) {
      bool is_bottom = abstract_intersect(e1.get(), e2.get())->is_bottom();

      return is_bottom ? BOTTOM : NO_CHANGE;
    }

    return bool2rar(changed);
  }
};

struct ITEExprExprExpr {
  typedef SMTExpr T1;
  typedef SMTExpr T2;
  typedef SMTExpr T3;
  static const SMTExprOp OP = ITE;
  static const size_t ARITY = 3;

  static RuleApplicationResult apply(T1 *x1, T2 *x2, T3 *x3, abstract_assignment &assignment) {
    auto e1 = eval(x1, assignment);

    const abstract_bool *b1 = dynamic_cast<abstract_bool *>(e1.get());

    if (!b1) {
      die("non boolean condition in ITE");
    }

    if (b1->is_top()) {
      // TODO make more precise
      return NO_CHANGE;
      // die("Cannot yet handle ambiguouoususus ITE");
    }

    if (b1->is_bottom()) {
      return BOTTOM;
    }

    if (b1->is_true()) {
      return apply_expression(x2, assignment);
    }

    if (b1->is_false()) {
      return apply_expression(x3, assignment);
    }

    std::cerr << b1->repr() << std::endl;
    die("strange bool");
    return BOTTOM;
  }
};

struct AndExprExpr {
  typedef SMTExpr T1;
  typedef SMTExpr T2;
  static const SMTExprOp OP = AND;
  static const size_t ARITY = 2;

  static RuleApplicationResult apply(T1 *x1, T2 *x2, abstract_assignment &assignment) {
    auto r1 = apply_expression(x1, assignment);
    auto r2 = apply_expression(x2, assignment);

    if (r1 == BOTTOM || r2 == BOTTOM) {
      return BOTTOM;
    }
    if (r1 == CHANGED || r2 == CHANGED) {
      return CHANGED;
    }
    return NO_CHANGE;
  }
};

struct OrExprExpr {
  typedef SMTExpr T1;
  typedef SMTExpr T2;

  static const SMTExprOp OP = OR;
  static const size_t ARITY = 2;

  static RuleApplicationResult apply(T1 *x1, T2 *x2, abstract_assignment &assignment) {
    auto e1 = eval(x1, assignment);
    auto e2 = eval(x2, assignment);

    const abstract_bool *b1 = dynamic_cast<abstract_bool *>(e1.get());
    const abstract_bool *b2 = dynamic_cast<abstract_bool *>(e2.get());

    assert(b1 && "expected bool");
    assert(b2 && "expected bool");

    if (!b2->is_true()) {
      return apply_expression(x1, assignment);
    }

    if (!b1->is_true()) {
      return apply_expression(x2, assignment);
    }

    return NO_CHANGE;
  }
};

std::unique_ptr<abstract_value> eval_b(const SMTExpr *const expr, const abstract_assignment &assignment) {
  assert(expr && "eval called with nullptr");

  return match<const SMTExpr *, std::unique_ptr<abstract_value>, const SMTExprApp *, const SMTExprVar *,
               const SMTExprBV64Literal *, const SMTExprIntLiteral *>(
      expr,
      [&assignment](const SMTExprApp *e) -> std::unique_ptr<abstract_value> {
        switch (e->op) {
        case BVULT: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          return try_bv_op(bvult<uint32_t>, bvult<uint64_t>, c0, c1);
        }
        case BVULE: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          return try_bv_op(bvule<uint32_t>, bvule<uint64_t>, c0, c1);
        }
        case BVUGE: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          return try_bv_binrel<BVUGE>(c0.get(), c1.get());
        }
        case AND: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          auto t0 = dynamic_cast<abstract_bool *>(c0.get());
          auto t1 = dynamic_cast<abstract_bool *>(c1.get());

          die("and with non-bool operands " + c0->repr() + " " + c1->repr(), t0 && t1);

          bool possiblyFalse = t0->is_false() || t1->is_false();
          bool possiblyTrue = t0->is_true() && t1->is_true();

          return std::make_unique<abstract_bool>(possiblyFalse, possiblyTrue);
        }
        case OR: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          auto t0 = dynamic_cast<abstract_bool *>(c0.get());
          auto t1 = dynamic_cast<abstract_bool *>(c1.get());

          if (!(t0 && t1)) {
            die("or with non-bool operands " + c0->repr() + " " + c1->repr());
          }

          bool possiblyFalse = t0->value[0] && t1->value[0];
          bool possiblyTrue = t0->value[1] || t1->value[1];

          return std::make_unique<abstract_bool>(possiblyFalse, possiblyTrue);
        }
        case BVADD: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          auto r1 = bvadd<uint32_t>(c0, c1);
          if (r1) {
            return r1;
          }
          auto r2 = bvadd<uint64_t>(c0, c1);
          if (r2) {
            return r2;
          }

          std::cerr << c0->repr() << " " << c1->repr() << std::endl;
          die("couldnot bvadd");
        }
        case BVSUB: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          auto r1 = bvsub<uint32_t>(c0, c1);
          if (r1) {
            return r1;
          }
          auto r2 = bvsub<uint64_t>(c0, c1);
          if (r2) {
            return r2;
          }

          std::cerr << c0->repr() << " " << c1->repr() << std::endl;
          die("couldnot bvsub");
        }
        case BVXOR: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          auto r1 = bvxor<uint32_t>(c0, c1);
          if (r1) {
            return r1;
          }
          auto r2 = bvxor<uint64_t>(c0, c1);
          if (r2) {
            return r2;
          }

          std::cerr << c0->repr() << " " << c1->repr() << std::endl;
          die("couldnot bvxor");
        }
        case BVNEG: {
          auto c0 = eval(e->children[0].get(), assignment);
          return try_bv_op(bvhavoc_unary<uint32_t>, bvhavoc_unary<uint64_t>, c0);
        }
        case LE:
        case LT:
        case BVUGT:
        case BVSLT:
        case BVSLE:
        case BVSGE:
        case BVSGT: {
          // TODO be more precise and more picky
          return std::make_unique<abstract_bool>(true, true);
        }
        case BVSHL: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          return try_bv_op(bvshl<uint32_t>, bvshl<uint64_t>, c0, c1);
        }
        case BVMUL:
        case BVUREM:
        case BVASHR:
        case BVAND:
        case BVOR:
        case BVLSHR:
        case BVUDIV: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          return try_bv_op(bvhavoc<uint32_t>, bvhavoc<uint64_t>, c0, c1);
        }
        case NOT: {
          auto c0 = eval(e->children[0].get(), assignment);

          auto t0 = dynamic_cast<abstract_bool *>(c0.get());

          if (!(t0)) {
            die("or with non-bool operands " + c0->repr());
          }

          bool possiblyFalse = t0->is_true();
          bool possiblyTrue = t0->is_false();

          return std::make_unique<abstract_bool>(possiblyFalse, possiblyTrue);
        }
        case SIGN_EXTEND_32: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_sign_extend<bv32_interval, bv64_interval>(c0);
        }
        case SIGN_EXTEND_48: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_sign_extend<bv16_interval, bv64_interval>(c0);
        }
        case SIGN_EXTEND_56: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_sign_extend<bv8_interval, bv64_interval>(c0);
        }
        case ZERO_EXTEND_32: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_zero_extend<bv32_interval, bv64_interval>(c0);
        }
        case ZERO_EXTEND_48: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_zero_extend<bv16_interval, bv64_interval>(c0);
        }
        case ZERO_EXTEND_56: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_zero_extend<bv8_interval, bv64_interval>(c0);
        }
        case EXTRACT_7_0: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_extract_lsb<bv8_interval>(c0);
        }
        case EXTRACT_15_0: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_extract_lsb<bv16_interval>(c0);
        }
        case EXTRACT_31_0: {
          auto c0 = eval(e->children[0].get(), assignment);
          return bv_extract_lsb<bv32_interval>(c0);
        }
        case EQ: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);

          auto glb = abstract_intersect(c0.get(), c1.get());
          auto lub = abstract_unify(c0.get(), c1.get());

          bool possiblyFalse = !lub->is_bottom();
          bool possiblyTrue = !glb->is_bottom();

          return std::make_unique<abstract_bool>(possiblyFalse, possiblyTrue);
        }
        case ITE: {
          auto c0 = eval(e->children[0].get(), assignment);
          auto c1 = eval(e->children[1].get(), assignment);
          auto c2 = eval(e->children[2].get(), assignment);

          if (const auto t0 = dynamic_cast<abstract_bool *>(c0.get())) {
            if (t0->is_top()) {
              bool widened;
              return abstract_unify(std::move(c1), c2.get(), &widened);
            }
            if (t0->is_true()) {
              return c1;
            }
            if (t0->is_false()) {
              return c2;
            }
            return c1->get_bottom();
          } else {
            std::cerr << e->repr() << std::endl;
            die("non boolean condition in ITE");
          }
        }
        default:
          die("cannot hand op " + SMTExprOpStrings[e->op]);
        }

        die("why didn't I die already?" + SMTExprOpStrings[e->op] + " " + e->repr());
        return std::unique_ptr<abstract_bool>{};
      },
      [&assignment](const SMTExprVar *e) { return assignment.get_value(*e); },
      [](const SMTExprBV64Literal *e) { return std::make_unique<bv64_interval>(e->value, e->value); },
      [](const SMTExprIntLiteral *e) { return std::make_unique<int_or_unknown>(e->value); },
      [](const SMTExpr *e) {
        std::cerr << e << std::endl;
        std::cerr << e->repr() << std::endl;
        die("unhandled case in eval");
        return std::unique_ptr<abstract_value>{};
      });
}

std::unique_ptr<abstract_value> eval(const SMTExpr *const expr, const abstract_assignment &assignment) {
  std::stringstream ss;
  if constexpr (DEBUG) {
    var_set set;
    get_vars(*expr, set);

    ss << "EVAL: " << expr->repr() << " with ";
    for (const auto &v : set) {
      ss << v.var->name() << '=' << assignment.get_value(*v.var)->repr() << ' ';
    }
    ss << ":";
  }
  auto b = eval_b(expr, assignment);
  if constexpr (DEBUG) {
    ss << b->repr() << std::endl;
    std::cout << ss.str();
  }
  return b;
}

struct NotVar {
  typedef SMTExprVar T1;
  static const SMTExprOp OP = NOT;
  static const size_t ARITY = 1;

  static RuleApplicationResult apply(T1 *x1, abstract_assignment &assignment) {
    abstract_bool afalse{true, false};
    bool changed = assignment.intersect_with(x1, &afalse);
    return bool2rar(changed);
  }
};

// TODO this has to be refactored
struct NotApp {
  typedef SMTExprApp T1;
  static const SMTExprOp OP = NOT;
  static const size_t ARITY = 1;

  static RuleApplicationResult apply(T1 *x1, abstract_assignment &assignment) {
    // std::cout << "NotApp ";
    if (x1->op != EQ) {
      // std::cout << "incomplete NOT:0" << std::endl;;
      return NO_CHANGE;
    }

    SMTExprVar *var = dynamic_cast<SMTExprVar *>(x1->children[0].get());

    if (!var) {
      std::cout << "incomplete NOT:1";
      return NO_CHANGE;
    }

    SMTExprBV64Literal *bvlit = dynamic_cast<SMTExprBV64Literal *>(x1->children[1].get());

    if (!bvlit) {
      std::cout << "incomplete NOT:2";
      return NO_CHANGE;
    }

    if (bvlit->value != 0) {
      std::cout << "incomplete NOT:3";
      return NO_CHANGE;
    }

    bv64_interval c{1, std::numeric_limits<uint64_t>::max()};

    // std::cout << " from " << va->second->repr() << " to ";
    bool changed = assignment.intersect_with(var, &c);
    // std::cout << assignment[va->first]->repr() << " c? " << changed << std::endl;

    return bool2rar(changed);
  }
};

template <typename... Ts> RuleApplicationResult apply_all_matches(const SMTExpr *e, abstract_assignment &assignment) {
  RuleApplicationResult result = RuleApplicationResult::NO_CHANGE;
  const SMTExprVar *var = dynamic_cast<const SMTExprVar *>(e);
  if (var) {
    abstract_bool atrue{false, true};
    bool changed = assignment.intersect_with(var, &atrue);
    return bool2rar(changed);
  }

  const SMTExprBoolLiteral *boolean = dynamic_cast<const SMTExprBoolLiteral *>(e);
  if (boolean) {
    if (boolean->value) {
      return NO_CHANGE;
    } else {
      return BOTTOM;
    }
  }

  if (!(match_apply_smt_expr<Ts>(e, assignment, &result) || ...)) {
    if constexpr (DEBUG) {
      std::cout << "unhandled smt_expr in apply_all_matches" << std::endl;
      std::cout << "unhandled e: " << e << std::endl;
      std::cout << "unhandled " << e->repr() << std::endl;
    }
  }

  return result;
}

RuleApplicationResult apply_expression(const SMTExpr *expr, abstract_assignment &a) {
  if constexpr (DEBUG) {
    std::cout << "apply_expression " << expr->repr() << std::endl;
  }
  auto result = apply_all_matches<ApplyPolymorphicBVBinRel<BVULT>, ApplyPolymorphicBVBinRel<BVUGT>,
                                  ApplyPolymorphicBVBinRel<BVULE>, ApplyPolymorphicBVBinRel<BVUGE>,
                                  ApplyBinRel<binrel<LE, int_or_unknown>>, ApplyBinRel<binrel<LT, int_or_unknown>>,
                                  NotVar, NotApp, OrExprExpr, ITEExprExprExpr, EqExprExpr, AndExprExpr>(expr, a);

  if constexpr (DEBUG) {
    std::cout << "apply_expression end" << std::endl;
  }

  return result;
}

// RuleApplicationResult SMTPropExpr::apply(const PredState &state, abstract_assignment &a) const {
  // return apply_expression(this->expr.get(), a);
// }

// RuleApplicationResult SMTPropPredApp::apply(const PredState &state, abstract_assignment &a) const {
RuleApplicationResult apply_predicate(const SMTPropPredApp* pred_app, const PredState &state, abstract_assignment &a) {
  if constexpr (DEBUG) {
    std::cout << "apply_pred " << pred_app->predicate << std::endl;
  }

  auto current_assignment = state.find(pred_app->predicate);

  if (current_assignment == state.end()) {
    if constexpr (DEBUG) {
      std::cout << "pred has no assignment" << std::endl;
    }
    return RuleApplicationResult::BOTTOM;
  }

  bool changed = false;

  // maybe reintroduce this
  // die("assignment size and predicate arity mismatch for " + std::string(this->predicate),
  // this->variables.size() == current_assignment->second.size());

  if constexpr (DEBUG) {
    std::cerr << "start apply loop" << std::endl;
  }
  int i = 0;
  for (const auto &v : pred_app->variables) {
    if (a.has_this_value(v.get(), *current_assignment->second.get_value(i))) {
      ++i;
      continue;
    }
    changed |= a.intersect_with(v.get(), current_assignment->second.get_value(i));
    ++i;
  }
  if constexpr (DEBUG) {
    std::cerr << "end apply loop" << std::endl;
  }
  return changed ? RuleApplicationResult::CHANGED : RuleApplicationResult::NO_CHANGE;
}

void get_vars(const SMTExpr &expr, var_set &set) {
  match<const SMTExpr *, void, const SMTExprVar *, const SMTExprApp *>(
      &expr, [&set](const SMTExprVar *e) { set.insert(e); },
      [&set](const SMTExprApp *e) {
        std::for_each(e->children.begin(), e->children.end(), [&set](auto &c) { get_vars(*c, set); });
      },
      [](const SMTExpr *) {});
}

void get_vars(const SMTProp &prop, var_set &set) {
  match<const SMTProp *, void, const SMTPropExpr *, const SMTPropPredApp *>(
      &prop, [&set](const SMTPropExpr *p) { get_vars(*p->expr, set); },
      [&set](const SMTPropPredApp *p) {
        for (auto& v : p->variables) {
          set.insert(v.get());
        }
      },
      [](const SMTProp *) {});
}
