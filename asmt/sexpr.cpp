#include "sexpr.hpp"

#include <iostream>
#include <algorithm>

std::vector<Token> lex(std::string &s) {
  LexerState st = Start;
  std::vector<Token> ret;

  auto cs = s.end();
  for (auto it = s.begin(); it != s.end(); ++it) {
    if (std::isspace(*it) && *it != '\n') {
      switch (st) {
      case InIdentifier:
        ret.push_back(Token{std::string_view{cs, it}});
        st = InWhitespace;
        break;
      case InComment:
        break;
      default:
        st = InWhitespace;
      }
    } else if (*it == ';') {
      switch (st) {
      case InIdentifier:
        ret.push_back(Token{std::string_view{cs, it}});
        st = InComment;
        break;
      default:
        st = InComment;
      }
    } else if (*it == '(' || *it == ')') {
      switch (st) {
      case InComment:
        break;
      case InIdentifier:
        ret.push_back(Token{std::string_view{cs, it}});
      default:
        ret.push_back(Token{std::string_view{it, it + 1}});
        st = Start;
        cs = it + 1;
      }
    } else if (*it == '\n') {
      switch (st) {
      case InIdentifier:
        ret.push_back(Token{std::string_view{cs, it}});
        st = Start;
        break;
      case InComment:
        st = Start;
        cs = it;
        break;
      default:
        break;
      }
    } else {
      switch (st) {
      case Start:
        st = InIdentifier;
        break;
      case InWhitespace:
        cs = it;
        st = InIdentifier;
      default:
        break;
      }
    }
  }

  if (st == InIdentifier) {
    ret.push_back(Token{std::string_view{cs, s.end()}});
  }

  return ret;
}

void print_sexpr(int indent, const SExpr &sexpr) {
  if (sexpr.cat == SexpId) {
    for (int i = 0; i < indent; ++i) {
      std::cout << "  ";
    }
    std::cout << sexpr.id << std::endl;
  } else {
    for (int i = 0; i < indent; ++i) {
      std::cout << "  ";
    }
    std::cout << "(" << std::endl;
    for (auto s : sexpr.list) {
      print_sexpr(indent + 1, s);
      std::cout << " ";
    }
    for (int i = 0; i < indent; ++i) {
      std::cout << "  ";
    }
    std::cout << ")" << std::endl;
  }
  if (indent == 0) {
    std::cout << std::endl;
  }
}

void print_sexpr_double_rule(int indent, const SExpr &sexpr) {
  static int rulecount = 0;

  if (sexpr.cat == SexpId) {
    for (int i = 0; i < indent; ++i) {
      std::cout << "  ";
    }
    std::cout << sexpr.id << std::endl;
  } else {
    if (sexpr.list.size() == 3 && sexpr.list[0].cat == SexpId && sexpr.list[0].id == "=>") {
      for (int i = 0; i < indent; ++i) {
        std::cout << "  ";
      }
      std::cout << "(" << std::endl;

      std::string *s = new std::string();
      s->append("test");
      s->append(std::to_string(rulecount++));

      print_sexpr(indent + 1, sexpr.list[0]);
      print_sexpr(indent + 1, sexpr.list[1]);
      print_sexpr(indent + 1, SExpr{SexpId, *s});

      for (int i = 0; i < indent; ++i) {
        std::cout << "  ";
      }
      std::cout << ")" << std::endl << std::endl;
    } else {
      if (sexpr.list.size() > 0 && sexpr.list[0].cat == SexpId && sexpr.list[0].id == "rule") {
        for (int i = 0; i < indent; ++i) {
          std::cout << "  ";
        }
        std::cout << "(" << std::endl;

        for (auto s : sexpr.list) {
          print_sexpr_double_rule(indent + 1, s);
          std::cout << " ";
        }
        for (int i = 0; i < indent; ++i) {
          std::cout << "  ";
        }
        std::cout << ")" << std::endl;
      }
      print_sexpr(indent, sexpr);
    }
  }
  if (indent == 0) {
    std::cout << std::endl;
  }
}

bool match_sexpr(const SExpr &expr, const std::string &cmd) {
  if (expr.cat == SexpId) {
    return expr.id == cmd;
  }
  return false;
}

bool match_sexpr(const SExpr &expr, const std::string &chld0, const std::string_view **name) {
  if (expr.cat != SexpList) {
    return false;
  }
  if (expr.list.size() != 2) {
    return false;
  }
  if (std::any_of(expr.list.begin(), expr.list.end(), [](const SExpr &e) { return e.cat != SexpId; })) {
    return false;
  }

  *name = &expr.list[1].id;

  return expr.list[0].id == chld0;
}

bool match_sexpr(const SExpr &expr, const std::string &chld0, const std::string &chld1, const std::string &chld2) {
  if (expr.cat != SexpList) {
    return false;
  }
  if (expr.list.size() != 3) {
    return false;
  }
  if (std::any_of(expr.list.begin(), expr.list.end(), [](const SExpr &e) { return e.cat != SexpId; })) {
    return false;
  }

  return expr.list[0].id == chld0 && expr.list[1].id == chld1 && expr.list[2].id == chld2;
}

bool match_sexpr(const SExpr &expr, const std::string &chld0, const std::string &chld1, const std::string &chld2,
                 const std::string &chld3) {
  if (expr.cat != SexpList) {
    return false;
  }
  if (expr.list.size() != 4) {
    return false;
  }
  if (std::any_of(expr.list.begin(), expr.list.end(), [](const SExpr &e) { return e.cat != SexpId; })) {
    return false;
  }

  return expr.list[0].id == chld0 && expr.list[1].id == chld1 && expr.list[2].id == chld2 && expr.list[3].id == chld3;
}

bool match_sexpr(const SExpr &expr, const std::string &cmd, const std::string_view **name, const SExpr **value) {
  if (expr.cat != SexpList) {
    return false;
  }
  if (expr.list.size() != 3) {
    return false;
  }
  if (expr.list[0].id != cmd) {
    return false;
  }
  if (expr.list[1].cat != SexpId) {
    return false;
  }
  *name = &expr.list[1].id;
  *value = &expr.list[2];
  return true;
}

bool match_sexpr(const SExpr &expr, const std::string &cmd, const SExpr **expr1, const SExpr **expr2) {
  if (expr.cat != SexpList) {
    return false;
  }
  if (expr.list.size() != 3) {
    return false;
  }
  if (expr.list[0].id != cmd) {
    return false;
  }

  *expr1 = &expr.list[1];
  *expr2 = &expr.list[2];
  return true;
}

bool match_sexpr(const SExpr &expr, const std::string &cmd, const SExpr **expr1, const SExpr **expr2,
                 const SExpr **expr3) {
  if (expr.cat != SexpList) {
    return false;
  }
  if (expr.list.size() != 4) {
    return false;
  }
  if (expr.list[0].id != cmd) {
    return false;
  }

  *expr1 = &expr.list[1];
  *expr2 = &expr.list[2];
  *expr3 = &expr.list[3];
  return true;
}

bool match_sexpr(const SExpr &expr, const std::string &cmd, const SExpr **expr1) {
  if (expr.cat != SexpList) {
    return false;
  }
  if (expr.list.size() != 2) {
    return false;
  }
  if (expr.list[0].id != cmd) {
    return false;
  }

  *expr1 = &expr.list[1];
  return true;
}
