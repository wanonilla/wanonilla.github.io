#include<stdint.h>

extern uint32_t get_untrusted_a(void);
extern uint32_t get_trusted_b(void);

uint32_t ret = 0;

void process(void) {
  if (get_untrusted_a() || !get_trusted_b()) {
    ret = 42;
  } else {
    ret = 28;
  }
}
