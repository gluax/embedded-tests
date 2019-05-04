#include <iostream>
#include <julia.h>

using namespace std;

JULIA_DEFINE_FAST_TLS()

int main(int argc, char **argv) {
  jl_init();
  cout << "Hello C++ Main~" << endl;
  jl_module_t* main = (jl_module_t*) jl_load(jl_base_module, "./main.jl");
  jl_function_t* hello = jl_get_function(main, "hello");
  jl_call0(hello);
  jl_atexit_hook(0);
  return 0;
}
