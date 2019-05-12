#include "hello.hh"

Hello::Hello(std::string who) {
  this->who = who;
}
  
Hello::~Hello() {
    
}

std::string Hello::greet() {
  return "hello, " + this->who;
}
