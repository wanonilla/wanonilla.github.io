#pragma once
#include <bitset>
#include <cstdint>
#include <iostream>
#include <limits>
#include <memory>
#include <sstream>
#include <string>
#include <type_traits>

#include "helpers.hpp"
#include "types.hpp"

struct SMTExpr;
struct SMTExprVar;

struct abstract_value {
  virtual ~abstract_value() = default;
  virtual bool operator==(const abstract_value &other) const = 0;
  virtual bool is_bottom() const = 0;
  virtual std::unique_ptr<abstract_value> copy() const = 0;
  virtual std::string repr() const = 0;
  virtual std::unique_ptr<abstract_value> get_top() const = 0;
  virtual std::unique_ptr<abstract_value> get_bottom() const = 0;

  virtual bool is_unique() const = 0;
};

template <typename T> struct bv_interval : abstract_value {
  typedef T BASE_TYPE;
  T startInclusive;
  T endInclusive;

  bv_interval(T startInclusive, T endInclusive) : startInclusive(startInclusive), endInclusive(endInclusive){};

  bool operator==(const abstract_value &other) const;

  bool is_bottom() const;
  bool is_top() const;

  std::unique_ptr<abstract_value> copy() const;
  std::unique_ptr<abstract_value> get_top() const;
  std::unique_ptr<abstract_value> get_bottom() const;
  bool is_unique() const;

  std::string repr() const;
};

static bv_interval<uint32_t> bv32_interval_top{std::numeric_limits<uint32_t>::min(),
                                               std::numeric_limits<uint32_t>::max()};
static bv_interval<uint32_t> bv32_interval_bot{std::numeric_limits<uint32_t>::max(),
                                               std::numeric_limits<uint32_t>::min()};

template <typename T> bool bv_interval<T>::operator==(const abstract_value &other) const {
  const bv_interval<T> *const tother = dynamic_cast<const bv_interval<T> *>(&other);

  if (tother) {
    if (this->is_bottom() && tother->is_bottom()) {
      return true;
    }
    return this->startInclusive == tother->startInclusive && this->endInclusive == tother->endInclusive;
  }

  return false;
};

template <typename T> bool bv_interval<T>::is_bottom() const { return this->endInclusive < this->startInclusive; }

template <typename T> bool bv_interval<T>::is_unique() const { return this->endInclusive == this->startInclusive; }

template <typename T> bool bv_interval<T>::is_top() const {
  return this->startInclusive == std::numeric_limits<T>::min() && this->endInclusive == std::numeric_limits<T>::max();
}

template <typename T> std::unique_ptr<abstract_value> bv_interval<T>::copy() const {
  return std::make_unique<bv_interval<T>>(this->startInclusive, this->endInclusive);
}

template <typename T> std::unique_ptr<abstract_value> bv_interval<T>::get_top() const {
  return std::make_unique<bv_interval<T>>(std::numeric_limits<T>::min(), std::numeric_limits<T>::max());
}

template <typename T> std::unique_ptr<abstract_value> bv_interval<T>::get_bottom() const {
  return std::make_unique<bv_interval<T>>(1, 0);
}

template <typename T> std::string bv_interval<T>::repr() const {
  constexpr auto bits = std::numeric_limits<T>::digits;
  std::stringstream ss{};
  if (this->is_bottom()) {
    return "bv" + std::to_string(bits) + "{bot}";
  }
  if (this->is_top()) {
    return "bv" + std::to_string(bits) + "{top}";
  }
  ss << "bv" + std::to_string(bits) + "{" << this->startInclusive << "," << this->endInclusive << "}";
  return ss.str();
}

typedef bv_interval<uint8_t> bv8_interval;
typedef bv_interval<uint16_t> bv16_interval;
typedef bv_interval<uint32_t> bv32_interval;
typedef bv_interval<uint64_t> bv64_interval;

struct abstract_bool;

template <typename T>
std::unique_ptr<abstract_bool> bvult(std::unique_ptr<abstract_value> &c0, std::unique_ptr<abstract_value> &c1) {
  auto t0 = dynamic_cast<bv_interval<T> *>(c0.get());
  auto t1 = dynamic_cast<bv_interval<T> *>(c1.get());

  if (t0 && t1) {
    bool possiblyLT = t0->startInclusive < t1->endInclusive;
    bool possiblyGE = t0->endInclusive >= t1->startInclusive;

    return std::make_unique<abstract_bool>(possiblyGE, possiblyLT);
  }
  return 0;
}

template <typename T>
std::unique_ptr<abstract_bool> bvule(std::unique_ptr<abstract_value> &c0, std::unique_ptr<abstract_value> &c1) {
  auto t0 = dynamic_cast<bv_interval<T> *>(c0.get());
  auto t1 = dynamic_cast<bv_interval<T> *>(c1.get());
  if (t0 && t1) {
    bool possiblyLE = t0->startInclusive <= t1->endInclusive;
    bool possiblyGT = t0->endInclusive > t1->startInclusive;

    return std::make_unique<abstract_bool>(possiblyGT, possiblyLE);
  }
  return 0;
}

template <typename T>
std::unique_ptr<bv_interval<T>> bvadd(std::unique_ptr<abstract_value> &c0, std::unique_ptr<abstract_value> &c1) {
  auto t0 = dynamic_cast<bv_interval<T> *>(c0.get());
  auto t1 = dynamic_cast<bv_interval<T> *>(c1.get());

  if (!(t0 && t1)) {
    return std::unique_ptr<bv_interval<T>>{};
  }

  T nstart = t0->startInclusive + t1->startInclusive;
  T nend = t0->endInclusive + t1->endInclusive;

  if (nstart < std::min(t0->startInclusive, t1->startInclusive) ||
      nend < std::min(t0->endInclusive, t1->endInclusive)) {
    return std::make_unique<bv_interval<T>>(0, std::numeric_limits<T>::max());
  }

  return std::make_unique<bv_interval<T>>(nstart, nend);
}

template <typename T>
std::unique_ptr<bv_interval<T>> bvsub(std::unique_ptr<abstract_value> &c0, std::unique_ptr<abstract_value> &c1) {
  auto t0 = dynamic_cast<bv_interval<T> *>(c0.get());
  auto t1 = dynamic_cast<bv_interval<T> *>(c1.get());

  if (!(t0 && t1)) {
    return std::unique_ptr<bv_interval<T>>{};
  }

  T nstart = t0->startInclusive - t1->startInclusive;
  T nend = t0->endInclusive - t1->endInclusive;

  if (nstart > std::max(t0->startInclusive, t1->startInclusive) ||
      nend < std::max(t0->endInclusive, t1->endInclusive)) {
    return std::make_unique<bv_interval<T>>(0, std::numeric_limits<T>::max());
  }

  return std::make_unique<bv_interval<T>>(nstart, nend);
}

template <typename T> std::unique_ptr<T> bv_extract_lsb(std::unique_ptr<abstract_value> &c0) {
  auto t0 = dynamic_cast<bv64_interval *>(c0.get());

  if (!(t0)) {
    die("extract called with non-bv64 operands " + c0->repr());
  }

  if (std::min(t0->startInclusive, t0->endInclusive) > std::numeric_limits<typename T::BASE_TYPE>::max()) {
    return std::make_unique<T>(0, std::numeric_limits<typename T::BASE_TYPE>::max());
  }

  return std::make_unique<T>(t0->startInclusive, t0->endInclusive);
}

template <typename T1, typename T2> std::unique_ptr<T2> bv_zero_extend(std::unique_ptr<abstract_value> &c0) {
  auto t0 = dynamic_cast<T1 *>(c0.get());
  die("bv_zero_extend was not called with the expected type from bv" +
          std::to_string(std::numeric_limits<typename T1::BASE_TYPE>::digits) + " to bv" +
          std::to_string(std::numeric_limits<typename T2::BASE_TYPE>::digits),
      t0);

  return std::make_unique<T2>(t0->startInclusive, t0->endInclusive);
}

template <typename T1, typename T2> std::unique_ptr<T2> bv_sign_extend(std::unique_ptr<abstract_value> &c0) {
  auto t0 = dynamic_cast<T1 *>(c0.get());
  die("bv_sign_extend was not called with the expected type", t0);

  auto lowest =
      static_cast<T2::BASE_TYPE>(static_cast<std::make_signed<typename T1::BASE_TYPE>::type>(t0->startInclusive));
  auto highest =
      static_cast<T2::BASE_TYPE>(static_cast<std::make_signed<typename T1::BASE_TYPE>::type>(t0->endInclusive));

  return std::make_unique<T2>(lowest, highest);
}

template <typename T> std::unique_ptr<bv_interval<T>> bvhavoc_unary(std::unique_ptr<abstract_value> &c0) {
  auto t0 = dynamic_cast<bv_interval<T> *>(c0.get());

  if (!(t0)) {
    return std::unique_ptr<bv_interval<T>>{};
  }

  return std::make_unique<bv_interval<T>>(0, std::numeric_limits<T>::max());
}

template <typename T>
std::unique_ptr<bv_interval<T>> bvhavoc(std::unique_ptr<abstract_value> &c0, std::unique_ptr<abstract_value> &c1) {
  auto t0 = dynamic_cast<bv_interval<T> *>(c0.get());
  auto t1 = dynamic_cast<bv_interval<T> *>(c1.get());

  if (!(t0 && t1)) {
    return std::unique_ptr<bv_interval<T>>{};
  }

  return std::make_unique<bv_interval<T>>(0, std::numeric_limits<T>::max());
}

template <typename T1, typename T2>
std::unique_ptr<abstract_value> try_bv_op(T1 f1, T2 f2, std::unique_ptr<abstract_value> &c0) {
  auto r1 = f1(c0);
  if (r1) {
    return r1;
  }
  auto r2 = f2(c0);
  if (r2) {
    return r2;
  }

  std::cerr << c0->repr() << std::endl;
  die("couldnot try_bv_op/1");
  return 0;
}

template <typename T1> std::unique_ptr<abstract_value> try_bv_op(T1 f1, std::unique_ptr<abstract_value> &c0) {
  auto r1 = f1(c0);
  if (r1) {
    return r1;
  }

  std::cerr << c0->repr() << " " << std::endl;
  die("couldnot try_bv_op/1");
  return 0;
}

template <typename T1, typename T2>
std::unique_ptr<abstract_value> try_bv_op(T1 f1, T2 f2, std::unique_ptr<abstract_value> &c0,
                                          std::unique_ptr<abstract_value> &c1) {
  auto r1 = f1(c0, c1);
  if (r1) {
    return r1;
  }
  auto r2 = f2(c0, c1);
  if (r2) {
    return r2;
  }

  std::cerr << c0->repr() << " " << c1->repr() << std::endl;
  die("couldnot try_bv_op/2");
  return 0;
}

template <typename T>
std::unique_ptr<bv_interval<T>> bvxor(std::unique_ptr<abstract_value> &c0, std::unique_ptr<abstract_value> &c1) {
  auto t0 = dynamic_cast<bv_interval<T> *>(c0.get());
  auto t1 = dynamic_cast<bv_interval<T> *>(c1.get());

  if (!(t0 && t1)) {
    return std::unique_ptr<bv_interval<T>>{};
  }

  if (t0->startInclusive == t0->endInclusive && t0->startInclusive == t0->endInclusive) {
    const auto v1 = t0->startInclusive;
    const auto v2 = t1->startInclusive;

    return std::make_unique<bv_interval<T>>(v1 xor v2, v1 xor v2);
  }

  // TODO this could likely be smarter
  return std::make_unique<bv_interval<T>>(0, std::numeric_limits<T>::max());
}

template <typename T>
std::unique_ptr<abstract_value> bvshl(std::unique_ptr<abstract_value> &c0, std::unique_ptr<abstract_value> &c1) {
  auto t0 = dynamic_cast<bv_interval<T> *>(c0.get());
  auto t1 = dynamic_cast<bv_interval<T> *>(c1.get());

  if (!(t0 && t1)) {
    return std::unique_ptr<bv_interval<T>>{};
  }

  if (t0->is_top() || t1->is_top()) {
    return t0->get_top();
  }

  // n is maximal possible shift
  const T n = t1->endInclusive;
  if (n == 0) {
    return t0->copy();
  }

  const T nOnesRight = (1 << n) - 1;
  const T kOnesLeft = ~nOnesRight;

  if (t0->endInclusive & kOnesLeft) {
    // there could be an overflow, return top
    return t0->get_top();
  } else {
    return std::make_unique<bv_interval<T>>(t0->startInclusive << n, t0->endInclusive << n);
  }
}

static bv64_interval bv64_interval_top{std::numeric_limits<uint64_t>::min(), std::numeric_limits<uint64_t>::max()};
static bv64_interval bv64_interval_bot{std::numeric_limits<uint64_t>::max(), std::numeric_limits<uint64_t>::min()};

struct int_or_unknown : abstract_value {
  int64_t value;

  int_or_unknown(int64_t value) : value(value) {}

  bool operator==(const abstract_value &other) const;

  bool is_bottom() const;
  bool is_top() const;
  bool is_unique() const;

  std::unique_ptr<abstract_value> copy() const;
  std::unique_ptr<abstract_value> get_top() const;
  std::unique_ptr<abstract_value> get_bottom() const;
  std::string repr() const;
};

static int_or_unknown int_or_unknown_top{std::numeric_limits<int64_t>::max()};
static int_or_unknown int_or_unknown_bot{std::numeric_limits<int64_t>::min()};

// value[0] == 1 -> possibly false
// value[1] == 1 -> possibly true

struct abstract_bool : abstract_value {
  std::bitset<2> value;

  abstract_bool(std::bitset<2> value) : value(value) {}

  abstract_bool(bool can_be_false, bool can_be_true) {
    if (can_be_false) {
      value[0] = true;
    }
    if (can_be_true) {
      value[1] = true;
    }
  }

  bool operator==(const abstract_value &other) const;
  bool is_bottom() const;
  bool is_top() const;
  bool is_true() const;
  bool is_false() const;
  bool is_unique() const;

  std::unique_ptr<abstract_value> copy() const;
  std::unique_ptr<abstract_value> get_top() const;
  std::unique_ptr<abstract_value> get_bottom() const;
  std::string repr() const;
};

std::unique_ptr<abstract_value> abstract_unify(std::unique_ptr<abstract_value> x, const abstract_value *const y,
                                               bool *changed);
std::unique_ptr<abstract_value> abstract_unify(const abstract_value *x, const abstract_value *const y);

std::unique_ptr<abstract_value> abstract_intersect(std::unique_ptr<abstract_value> x, const abstract_value *const y,
                                                   bool *changed);
std::unique_ptr<abstract_value> abstract_intersect(const abstract_value *x, const abstract_value *const y);
