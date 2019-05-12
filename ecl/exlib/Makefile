all: clean lib entry

lib:
	g++ -Wall -Werror -pedantic -Wextra -fPIC -O3 -shared -std=c++17 hello.cc chello.cc -o libexample.so

entry: lib hello-lisp.lisp entry.asd
	ecl -norc \
		-eval '(load #P"~/quicklisp/asdf.lisp")' \
		-eval '(load #P"~/quicklisp/setup.lisp")' \
		-eval '(asdf:load-system :uiop)' \
		-eval '(asdf:load-system :cffi)' \
		-eval '(push "./" asdf:*central-registry*)' \
		-eval '(princ asdf:*user-cache*)' \
		-eval '(terpri)' \
		-eval '(asdf:make :entry)' \
		-eval '(quit)'

clean:
	-rm -f lib.lisp libexample.so
