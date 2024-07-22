all: example_no_fpic example_fpic

example_no_fpic:
	gcc -o example.o -c main.c
	gcc -o example example.o
	rm example.o
	objdump -d example > example_no_fpic.asm

example_fpic:
	gcc -o example.o -c main.c -fPIC
	gcc -o example example.o
	rm example.o
	objdump -d example > example_fpic.asm

clean:
	rm -f example* *.o *.asm
