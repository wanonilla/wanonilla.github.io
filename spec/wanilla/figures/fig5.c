#include<stdint.h>

#define SESSION_SIZE 2
#define PAYLOAD_SIZE 384

struct {
  uint64_t session_id[SESSION_SIZE];
  uint8_t payload[PAYLOAD_SIZE];
} message;

void sanitize(void) {
  for(int i = 0; i < SESSION_SIZE; ++i) {
    message.session_id[i] = 0;
  }
}

uint64_t has_session(void) {
  for(int i = 0; i < SESSION_SIZE; ++i) {
    if(message.session_id[i]) {
      return 1;
    }
  }
  return 0;
}

extern void trusted_log(void);
extern void untrusted_log(void);

void process(void) {
  if(has_session()) {
    trusted_log();
    sanitize();
  }
  untrusted_log();
}
