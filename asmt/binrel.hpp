#pragma once

#include "smt.hpp"
#include "adom.hpp"

template <SMTExprOp SMT_OP, typename T> struct binrel {
  static constexpr SMTExprOp OP = SMT_OP;
};

template <> struct binrel<LE, int_or_unknown> {
  static constexpr SMTExprOp OP = LE;
  static const SMTExprOp OPPOSITE = GT;
  typedef int_or_unknown VT;

  static std::pair<std::unique_ptr<abstract_value>, std::unique_ptr<abstract_value>>
  partition(const abstract_value *lhs, const abstract_value *rhs) {
    return std::make_pair(lhs->get_top(), rhs->get_top());
  }
};

template <> struct binrel<LT, int_or_unknown> {
  static constexpr SMTExprOp OP = LT;
  static const SMTExprOp OPPOSITE = GE;
  typedef int_or_unknown VT;

  static std::pair<std::unique_ptr<abstract_value>, std::unique_ptr<abstract_value>>
  partition(const abstract_value *lhs, const abstract_value *rhs) {
    return std::make_pair(lhs->get_top(), rhs->get_top());
  }
};

template <typename T> struct binrel<BVULE, T> {
  static constexpr SMTExprOp OP = BVULE;
  static const SMTExprOp OPPOSITE = BVUGT;
  typedef T VT;

  static std::pair<std::unique_ptr<abstract_value>, std::unique_ptr<abstract_value>>
  partition(const abstract_value *lhs, const abstract_value *rhs) {
    const T *tlhs = dynamic_cast<const T *>(lhs);
    const T *trhs = dynamic_cast<const T *>(rhs);

    constexpr auto min = 0;
    constexpr auto max = std::numeric_limits<typename T::BASE_TYPE>::max();

    const auto highest_possible_right = trhs->endInclusive;
    const auto lowest_possible_left = tlhs->startInclusive;

    auto possible_values_lhs = std::make_unique<T>(min, highest_possible_right);
    auto possible_values_rhs = std::make_unique<T>(lowest_possible_left, max);

    return std::make_pair(std::move(possible_values_lhs), std::move(possible_values_rhs));
  };

  static bool apply_concrete(T::BASE_TYPE x, T::BASE_TYPE y) { return x <= y; }
};

template <typename T> struct binrel<BVUGT, T> {
  static constexpr SMTExprOp OP = BVUGT;
  static const SMTExprOp OPPOSITE = BVULE;
  typedef T VT;

  static std::pair<std::unique_ptr<abstract_value>, std::unique_ptr<abstract_value>>
  partition(const abstract_value *lhs, const abstract_value *rhs) {
    const T *tlhs = dynamic_cast<const T *>(lhs);
    const T *trhs = dynamic_cast<const T *>(rhs);

    constexpr auto min = 0;
    constexpr auto max = std::numeric_limits<typename T::BASE_TYPE>::max();

    const auto highest_possible_left = tlhs->endInclusive;
    const auto lowest_possible_right = trhs->startInclusive;

    if (highest_possible_left == min) {
      auto possible_values_lhs = tlhs->get_top();
      auto possible_values_rhs = trhs->get_bottom();

      return std::make_pair(std::move(possible_values_lhs), std::move(possible_values_rhs));
    }

    if (lowest_possible_right == max) {
      auto possible_values_lhs = trhs->get_bottom();
      auto possible_values_rhs = tlhs->get_top();

      return std::make_pair(std::move(possible_values_lhs), std::move(possible_values_rhs));
    }

    auto possible_values_lhs = std::make_unique<T>(lowest_possible_right + 1, max);
    auto possible_values_rhs = std::make_unique<T>(min, highest_possible_left - 1);

    return std::make_pair(std::move(possible_values_lhs), std::move(possible_values_rhs));
  }

  static bool apply_concrete(T::BASE_TYPE x, T::BASE_TYPE y) { return !binrel<OPPOSITE, T>::apply_concrete(x, y); }
};

template <typename T> struct binrel<BVULT, T> {
  static constexpr SMTExprOp OP = BVULT;
  static const SMTExprOp OPPOSITE = BVUGE;
  typedef T VT;

  static std::pair<std::unique_ptr<abstract_value>, std::unique_ptr<abstract_value>>
  partition(const abstract_value *lhs, const abstract_value *rhs) {
    const T *tlhs = dynamic_cast<const T *>(lhs);
    const T *trhs = dynamic_cast<const T *>(rhs);

    constexpr auto min = 0;
    constexpr auto max = std::numeric_limits<typename T::BASE_TYPE>::max();

    const auto highest_possible_right = trhs->endInclusive;
    const auto lowest_possible_left = tlhs->startInclusive;

    if (highest_possible_right == min) {
      auto possible_values_lhs = tlhs->get_bottom();
      auto possible_values_rhs = trhs->get_top();

      return std::make_pair(std::move(possible_values_lhs), std::move(possible_values_rhs));
    }

    if (lowest_possible_left == max) {
      auto possible_values_lhs = trhs->get_top();
      auto possible_values_rhs = tlhs->get_bottom();

      return std::make_pair(std::move(possible_values_lhs), std::move(possible_values_rhs));
    }

    auto possible_values_lhs = std::make_unique<T>(min, highest_possible_right - 1);
    auto possible_values_rhs = std::make_unique<T>(lowest_possible_left + 1, max);

    return std::make_pair(std::move(possible_values_lhs), std::move(possible_values_rhs));
  };

  static bool apply_concrete(T::BASE_TYPE x, T::BASE_TYPE y) { return x < y; }
};

template <typename T> struct binrel<BVUGE, T> {
  static constexpr SMTExprOp OP = BVUGE;
  static const SMTExprOp OPPOSITE = BVULT;
  typedef T VT;

  static std::pair<std::unique_ptr<abstract_value>, std::unique_ptr<abstract_value>>
  partition(const abstract_value *lhs, const abstract_value *rhs) {
    const T *tlhs = dynamic_cast<const T *>(lhs);
    const T *trhs = dynamic_cast<const T *>(rhs);

    constexpr auto min = 0;
    constexpr auto max = std::numeric_limits<typename T::BASE_TYPE>::max();

    const auto highest_possible_left = tlhs->endInclusive;
    const auto lowest_possible_right = trhs->startInclusive;

    auto possible_values_lhs = std::make_unique<T>(lowest_possible_right, max);
    auto possible_values_rhs = std::make_unique<T>(min, highest_possible_left);

    return std::make_pair(std::move(possible_values_lhs), std::move(possible_values_rhs));
  }

  static bool apply_concrete(T::BASE_TYPE x, T::BASE_TYPE y) { return !binrel<OPPOSITE, T>::apply_concrete(x, y); }
};

template <SMTExprOp OP, typename T> std::unique_ptr<abstract_bool> eval_bv_binrel(const T *x, const T *y) {
  std::stringstream ss{};
  if constexpr (DEBUG) {
    ss << "::eval_bv_binrel " << SMTExprOpStrings[OP] << " " << x->repr() << " " << y->repr() << std::endl;
  }
  const bool b1 = binrel<OP, T>::apply_concrete(x->endInclusive, y->endInclusive);
  const bool b2 = binrel<OP, T>::apply_concrete(x->endInclusive, y->startInclusive);
  const bool b3 = binrel<OP, T>::apply_concrete(x->startInclusive, y->endInclusive);
  const bool b4 = binrel<OP, T>::apply_concrete(x->startInclusive, y->startInclusive);

  const bool possiblyFalse = !b1 || !b2 || !b3 || !b4;
  const bool possiblyTrue = b1 || b2 || b3 || b4;

  auto r = std::make_unique<abstract_bool>(possiblyFalse, possiblyTrue);
  if constexpr (DEBUG) {
    ss << " " << r->repr();
    std::cout << ss.str() << std::endl;
  }

  return r;
}

template <SMTExprOp OP, typename T, typename... Ts>
std::unique_ptr<abstract_bool> eval_bv_binrel(const abstract_value *x, const abstract_value *y) {
  const T *tx = dynamic_cast<const T *>(x);
  const T *ty = dynamic_cast<const T *>(y);

  if (tx && ty) {
    return eval_bv_binrel<OP, T>(tx, ty);
  }

  if constexpr (sizeof...(Ts) == 0) {
    die("eval_bv_binrel called with wrong types");
    return 0;
  } else {
    return eval_bv_binrel<OP, Ts...>(x, y);
  }
}

template <SMTExprOp OP> std::unique_ptr<abstract_bool> try_bv_binrel(const abstract_value *x, const abstract_value *y) {
  return eval_bv_binrel<OP, bv32_interval, bv64_interval>(x, y);
}

