CFLAGS=-std=c11 -g -static

argv: argv.c

test: argv
	./test.sh
	
clean:
	rm -f argv *.o *~ tmp*
	
.PHONY: test clean
