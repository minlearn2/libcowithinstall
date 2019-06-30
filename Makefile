.PHONY: all
all:
	gcc -c -Wall -fpic libco.c
	gcc -shared -o libco.so libco.o
	ar rcs libco.a libco.o
	
.PHONY: install
install:
	cp libco.h /usr/include/libco.h
	cp settings.h /usr/lib/settings.h
	cp libco.so /usr/lib/libco.so
	cp libco.a /usr/lib/libco.a
	cp libco.pc /usr/lib/pkgconfig/libco.pc
