all: clean main

main: main.cc
	$(CXX) `ecl-config --cflags` -o $@ main.cc \
	      `ecl-config --ldflags` -lecl

clean:
	-rm -f main
