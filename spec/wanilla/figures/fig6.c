#include<stdint.h>

#define SESSION_SIZE 8
#define PAYLOAD_SIZE 224

struct {
  uint8_t session_id[SESSION_SIZE];
  uint8_t payload[PAYLOAD_SIZE];
} message;

void sanitize(void) {
  for(int i = 0; i < SESSION_SIZE; ++i) {
    message.session_id[i] = 0;
  }
}

uint8_t has_session(void) {
  uint8_t ret = 0;
  for(int i = 0; i < SESSION_SIZE; ++i) {
    ret |= message.session_id[i];
  }
  return ret;
}

extern void trusted_log(void);
extern void untrusted_log(void);

void process(void) {
  trusted_log();
  if(has_session()) {
    sanitize();
  }
  untrusted_log();
}
