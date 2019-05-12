all: clean main

main:
	sbcl \
	    --eval '(require :asdf)' \
	    --eval '(push "./" asdf:*central-registry*)' \
	    --eval '(asdf:make :tools)' \
	    --eval '(quit)'

clean:
	-rm -f main
