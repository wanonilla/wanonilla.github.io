#pragma once

#include<string>
#include<string_view>
#include<vector>
#include<cassert>

struct Token {
  std::string_view span;
};

enum LexerState { Start, InIdentifier, InComment, InWhitespace };

enum SExprCat { SexpList, SexpId };

struct SExpr {
  SExprCat cat;
  std::string_view id;
  std::vector<SExpr> list;

  SExpr(SExprCat cat, std::string_view id) {
    this->cat = cat;
    this->id = id;
  };

  SExpr(SExprCat cat) {
    this->cat = cat;
    this->list = std::vector<SExpr>{};
  };
};

std::vector<Token> lex(std::string &s);

void print_sexpr(int indent, const SExpr &sexpr);

void print_sexpr_double_rule(int indent, const SExpr &sexpr); 

bool match_sexpr(const SExpr &expr, const std::string &cmd);

bool match_sexpr(const SExpr &expr, const std::string &chld0, const std::string_view **name);

bool match_sexpr(const SExpr &expr, const std::string &chld0, const std::string &chld1, const std::string &chld2);

bool match_sexpr(const SExpr &expr, const std::string &chld0, const std::string &chld1, const std::string &chld2,
                 const std::string &chld3);

bool match_sexpr(const SExpr &expr, const std::string &cmd, const std::string_view **name, const SExpr **value);

bool match_sexpr(const SExpr &expr, const std::string &cmd, const SExpr **expr1, const SExpr **expr2);

bool match_sexpr(const SExpr &expr, const std::string &cmd, const SExpr **expr1, const SExpr **expr2,
                 const SExpr **expr3);

bool match_sexpr(const SExpr &expr, const std::string &cmd, const SExpr **expr1);

template <class iterator_type> void parse(std::vector<SExpr> &ret, iterator_type &it, iterator_type end) {
  while (it != end) {
    if (it->span == "(") {
      // std::cerr << "list" << std::endl;
      SExpr se{SexpList};
      ++it;
      parse(se.list, it, end);
      ret.push_back(std::move(se));
      assert(it->span == ")");
    } else if (it->span == ")") {
      return;
    } else {
      // std::cerr << "id " << it->span << std::endl;
      SExpr se{SexpId, it->span};
      ret.push_back(std::move(se));
    }
    ++it;
  }
}
