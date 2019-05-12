all: clean lib

lib:
	g++ -Wall -Werror -pedantic -Wextra -fPIC -O3 -shared -std=c++17 hello.cc chello.cc -o libexample.so

clean:
	-rm -f lib.lisp libexample.so
