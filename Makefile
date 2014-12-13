LBITS := $(shell getconf LONG_BIT)
all: manual with_lib

with_lib:
	gcc -Wall -Wextra -std=c99 -c debuglib.c
	gcc -Wall -Wextra -std=c99 -c bp_use_lib.c
	gcc -Wall -Wextra -std=c99 -o bp_use_lib bp_use_lib.o debuglib.o

	gcc -Wall -Wextra -std=c99 -o traced_c_loop traced_c_loop.c

with_lib_clean:
	rm -f *.o bp_use_lib traced_c_loop

run: all
	./bp_use_lib traced_c_loop

manual:
ifeq ($(LBITS),64) # 64 bit
	nasm -f elf64 -o hello.o hello.asm
else # 32 bit
	nasm -f elf32 -o hello.o hello.asm
endif
	ld -o hello hello.o
	gcc -Wall -Wextra -std=c99 -c debuglib.c
	gcc -Wall -Wextra -std=c99 -o bp_manual bp_manual.c debuglib.o

manual_clean:
	rm -f *.o hello bp_manual

.PHONY : clean
clean : manual_clean with_lib_clean
