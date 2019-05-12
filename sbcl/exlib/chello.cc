#include "hello.hh"

extern "C" {
  #include "chello.h"
  #include "string.h"
}

CHello* new_hello(const char* who) {
  return reinterpret_cast<CHello*>(new Hello(who));
}

void delete_hello(CHello* h) {
  delete reinterpret_cast<Hello*>(h);
}

const char* greet_hello(CHello* h) {
  return strdup(reinterpret_cast<Hello*>(h)->greet().c_str());
}
