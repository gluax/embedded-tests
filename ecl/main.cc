#include <iostream>
#include <ecl/ecl.h>

using namespace std;

extern "C" {
  // extern void init_lib_HELLO_LISP(cl_object);
}

int main(int argc, char **argv) {
  cl_boot(argc, argv);
  
  
  // ecl_init_module(NULL, init_lib_HELLO_LISP);
  
  cout << "Hello C++ Main~" << endl;
  cl_object result = cl_eval(c_string_to_object("(load #P\"./hello-lisp.lisp\")"));
  // ecl_print(result, ECL_T);
  
  ecl_terpri(ECL_T);
  cl_shutdown();
  return 0;
}
