#ifndef H_HELLO_CLASS
#define H_HELLO_CLASS

struct CHello;
typedef struct CHello CHello;

CHello* new_hello(const char* who);
void delete_hello(CHello* h);
const char* greet_hello(CHello* h);

#endif
