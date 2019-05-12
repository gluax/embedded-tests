#ifndef HELLO_CLASS
#define HELLO_CLASS

#include <string>

class Hello {
public:
  Hello(std::string who);
  ~Hello();
  std::string greet();
private:
  std::string who;
};

#endif
