#pragma once
#include <cassert>
#include <functional>
#include <iostream>
#include <string>

const bool DEBUG = true;
const bool HAVE_ASSERTIONS = true;
const bool HAVE_PERFORMANCE_COUNTERS = true;
const bool PRINT_TIMES = true;

template <typename M, typename R> R match(M matched, std::function<R(M)> def_fun) { return def_fun(matched); }

template <typename M, typename R, typename A1>
R match(M matched, std::function<R(A1)> f1, std::function<R(M)> def_fun) {
  if (A1 typed_matched = dynamic_cast<A1>(matched)) {
    return f1(typed_matched);
  }
  return match(matched, def_fun);
}

template <typename M, typename R, typename A1, typename A2>
R match(M matched, std::function<R(A1)> f1, std::function<R(A2)> f2, std::function<R(M)> def_fun) {
  if (A1 typed_matched = dynamic_cast<A1>(matched)) {
    return f1(typed_matched);
  }
  return match<M, R, A2>(matched, f2, def_fun);
}

template <typename M, typename R, typename A1, typename A2, typename A3>
R match(M matched, std::function<R(A1)> f1, std::function<R(A2)> f2, std::function<R(A3)> f3,
        std::function<R(M)> def_fun) {
  if (A1 typed_matched = dynamic_cast<A1>(matched)) {
    return f1(typed_matched);
  }
  return match<M, R, A2, A3>(matched, f2, f3, def_fun);
}

template <typename M, typename R, typename A1, typename A2, typename A3, typename A4>
R match(M matched, std::function<R(A1)> f1, std::function<R(A2)> f2, std::function<R(A3)> f3, std::function<R(A4)> f4,
        std::function<R(M)> def_fun) {
  if (A1 typed_matched = dynamic_cast<A1>(matched)) {
    return f1(typed_matched);
  }
  return match<M, R, A2, A3, A4>(matched, f2, f3, f4, def_fun);
}

inline void die(const std::string &s, bool cond = false) {
  if constexpr (HAVE_ASSERTIONS) {
    if (!cond) {
      std::cerr << s << std::endl;
      assert(false);
    }
  }
}
