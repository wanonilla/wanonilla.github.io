#include "adom.hpp"
#include "helpers.hpp"
#include "smt.hpp"
#include "types.hpp"
#include <cstdint>
#include <limits>
#include <memory>
#include <sstream>
#include <string_view>

bool abstract_bool::is_bottom() const { return !this->value[0] && !this->value[1]; }
bool abstract_bool::is_top() const { return this->value[0] && this->value[1]; }
bool abstract_bool::is_true() const { return this->value[1]; }
bool abstract_bool::is_false() const { return this->value[0]; }
bool abstract_bool::is_unique() const { return !this->is_bottom() && !this->is_top(); }

std::string abstract_bool::repr() const {
  if (this->value[0] && this->value[1]) {
    return "bool{top}";
  }
  if (this->value[0]) {
    return "bool{false}";
  }
  if (this->value[1]) {
    return "bool{true}";
  }
  return "bool{bot}";
}

std::unique_ptr<abstract_value> abstract_bool::copy() const {
  return std::make_unique<abstract_bool>(this->value[0], this->value[1]);
}

std::unique_ptr<abstract_value> abstract_bool::get_top() const { return std::make_unique<abstract_bool>(true, true); }

std::unique_ptr<abstract_value> abstract_bool::get_bottom() const {
  return std::make_unique<abstract_bool>(false, false);
}

bool abstract_bool::operator==(const abstract_value &other) const {
  const abstract_bool *const tother = dynamic_cast<const abstract_bool *>(&other);

  if (tother) {
    return this->value == tother->value;
  }

  return false;
}

bool int_or_unknown::is_bottom() const { return this->value == std::numeric_limits<int64_t>::min(); }
bool int_or_unknown::is_unique() const { return !this->is_bottom() && !this->is_top(); }

bool int_or_unknown::is_top() const { return this->value == std::numeric_limits<int64_t>::max(); }

std::string int_or_unknown::repr() const {
  if (this->is_top()) {
    return "int{top}";
  }
  if (this->is_bottom()) {
    return "int{bot}";
  }

  std::stringstream ss;
  ss << "int{" << this->value << "}";
  return ss.str();
}

std::unique_ptr<abstract_value> int_or_unknown::copy() const { return std::make_unique<int_or_unknown>(this->value); }

std::unique_ptr<abstract_value> int_or_unknown::get_top() const {
  return std::make_unique<int_or_unknown>(std::numeric_limits<int64_t>::max());
}
std::unique_ptr<abstract_value> int_or_unknown::get_bottom() const {
  return std::make_unique<int_or_unknown>(std::numeric_limits<int64_t>::min());
}

bool int_or_unknown::operator==(const abstract_value &other) const {
  const abstract_bool *const tother = dynamic_cast<const abstract_bool *>(&other);

  if (tother) {
    return this->value == tother->value;
  }

  return false;
}

struct ABoolLattice {
  typedef abstract_bool T;

  inline static std::unique_ptr<abstract_value> meet(std::unique_ptr<abstract_value> orig, T *x, const T *const y,
                                                     bool *narrowed) {
    auto res = x->value & y->value;
    *narrowed = res != x->value;
    if (*narrowed) {
      return std::make_unique<abstract_bool>(res);
    }
    return orig;
  }

  inline static std::unique_ptr<abstract_value> join(std::unique_ptr<abstract_value> orig, T *x, const T *const y,
                                                     bool *widened) {
    auto res = x->value | y->value;
    *widened = res != x->value;
    if (*widened) {
      return std::make_unique<abstract_bool>(res);
    }
    return orig;
  }
};

struct SmallIntLattice {
  typedef int_or_unknown T;

  inline static std::unique_ptr<abstract_value> meet(std::unique_ptr<abstract_value> orig, const T *x, const T *const y,
                                                     bool *narrowedX) {
    if (x->is_bottom() || y->is_bottom()) {
      *narrowedX = !x->is_bottom();
      return x->get_bottom();
    }

    if (y->is_top()) {
      *narrowedX = false;
      return orig;
    }

    if (x->is_top()) {
      *narrowedX = true;
      return y->copy();
    }

    if (x->value == y->value) {
      *narrowedX = false;
      return orig;
    }

    *narrowedX = true;
    return x->get_bottom();
  }

  inline static std::unique_ptr<abstract_value> join(std::unique_ptr<abstract_value> orig, const T *x, const T *const y,
                                                     bool *widenedX) {
    if (x->is_top() || y->is_top()) {
      *widenedX = !x->is_top();
      return x->get_top();
    }

    if (x->is_bottom()) {
      *widenedX = !y->is_bottom();
      return y->copy();
    }
    if (y->is_bottom()) {
      *widenedX = false;
      return orig;
    }

    if (x->value == y->value) {
      *widenedX = false;
      return orig;
    }

    *widenedX = true;
    return x->get_top();
  }
};

struct BV64IntervalLattice {
  typedef bv64_interval T;

  inline static std::unique_ptr<abstract_value> meet(std::unique_ptr<abstract_value> orig, T *x, const T *const y,
                                                     bool *narrowed) {
    if (x->is_bottom()) {
      *narrowed = false;
      return orig;
    }
    if (x->is_top()) {
      *narrowed = !y->is_top();
      return y->copy();
    }

    auto start = std::max(x->startInclusive, y->startInclusive);
    auto end = std::min(x->endInclusive, y->endInclusive);

    *narrowed = x->startInclusive != start || x->endInclusive != end;

    if (*narrowed) {
      return std::make_unique<bv64_interval>(start, end);
    }
    return orig;
  }

  inline static std::unique_ptr<abstract_value> join(std::unique_ptr<abstract_value> orig, T *x, const T *const y,
                                                     bool *widened) {
    if (x->is_top()) {
      *widened = false;
      return orig;
    }
    if (x->is_bottom()) {
      *widened = !y->is_bottom();
      return y->copy();
    }

    auto start = std::min(x->startInclusive, y->startInclusive);
    auto end = std::max(x->endInclusive, y->endInclusive);

    *widened = x->startInclusive != start || x->endInclusive != end;

    if (*widened) {
      return std::make_unique<bv64_interval>(start, end);
    }
    return orig;
  }
};

template <typename T>
bool match_meet(std::unique_ptr<abstract_value> &x, const abstract_value *const y, bool *narrowed,
                std::unique_ptr<abstract_value> &result) {
  typename T::T *tx = dynamic_cast<T::T *>(x.get());
  const typename T::T *ty = dynamic_cast<const T::T *const>(y);

  if (tx && ty) {
    result = T::meet(std::move(x), tx, ty, narrowed);
    return true;
  }

  return false;
}

template <typename... Ts>
std::unique_ptr<abstract_value> dispatch_meet(std::unique_ptr<abstract_value> x, const abstract_value *const y,
                                              bool *narrowed) {
  std::unique_ptr<abstract_value> result;

  if ((match_meet<Ts>(x, y, narrowed, result) || ...)) {
    return result;
  }

  std::cerr << x << " " << y << std::endl;
  std::cerr << x->repr() << " " << y->repr() << std::endl;
  die("no fitting implementation in intersect!");
  return std::unique_ptr<abstract_value>{};
}

std::unique_ptr<abstract_value> abstract_intersect(const abstract_value *x, const abstract_value *const y) {
  bool temp;
  return abstract_intersect(x->copy(), y, &temp);
}

std::unique_ptr<abstract_value> abstract_intersect(std::unique_ptr<abstract_value> x, const abstract_value *const y,
                                                   bool *changed) {

  std::stringstream ss{};

  if constexpr (DEBUG) {
    ss << "::abstract_intersect " << x->repr() << " " << y->repr() << " ";
  }

  auto result = dispatch_meet<ABoolLattice, SmallIntLattice, BV64IntervalLattice>(std::move(x), y, changed);

  if constexpr (DEBUG) {
    ss << result->repr() << ' ' << *changed << std::endl;
    std::cout << ss.str();
  }

  return result;
}

template <typename T>
bool match_join(std::unique_ptr<abstract_value> &x, const abstract_value *const y, bool *widened,
                std::unique_ptr<abstract_value> &result) {
  typename T::T *tx = dynamic_cast<T::T *>(x.get());
  const typename T::T *ty = dynamic_cast<const T::T *>(y);

  if (tx && ty) {
    result = T::join(std::move(x), tx, ty, widened);
    return true;
  }

  return false;
}

// join = lub = \/.
// meet = glb = /\.

template <typename... Ts>
std::unique_ptr<abstract_value> dispatch_join(std::unique_ptr<abstract_value> x, const abstract_value *const y,
                                              bool *widened) {
  std::unique_ptr<abstract_value> result;

  if ((match_join<Ts>(x, y, widened, result) || ...)) {
    return result;
  }

  std::cerr << x << " " << y << std::endl;
  std::cerr << x->repr() << " " << y->repr() << std::endl;
  die("no fitting implementation in join!");
  return std::unique_ptr<abstract_value>{};
}

std::unique_ptr<abstract_value> abstract_unify(const abstract_value *x, const abstract_value *const y) {
  bool temp;
  return abstract_unify(x->copy(), y, &temp);
}

std::unique_ptr<abstract_value> abstract_unify(std::unique_ptr<abstract_value> x, const abstract_value *const y,
                                               bool *changed) {
  std::stringstream ss{};

  if constexpr (DEBUG) {
    ss << "::abstract unify " << x->repr() << " " << y->repr() << " ";
  }

  auto r = dispatch_join<ABoolLattice, SmallIntLattice, BV64IntervalLattice>(std::move(x), y, changed);

  if constexpr (DEBUG) {
    ss << r->repr() << std::endl;
    std::cout << ss.str();
  }

  return r;
}
