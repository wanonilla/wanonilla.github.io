#include <stdio.h>
#include <stdlib.h>

const char* trusted = "TRUSTED";
char game_state[65] = "0000000000000000000000000000000000000000000000000000000000000000";

extern void eval(const char*);
extern int __VERIFIER_nondet_int(void);
extern char __VERIFIER_nondet_char(void);

#ifdef SECURE
void update_game_state(unsigned int x, unsigned int y, char c) {
#else
void update_game_state(int x, int y, char c) {
#endif
  if (x < 8 && y < 8) {
    game_state[y * 8 + x] = c;
  }
  /* printf("%s %s, %d %d \n", trusted, game_state, (int)trusted, (int)game_state); */
  eval(trusted);
}
