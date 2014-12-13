all:
	gcc -Wall -Wextra -std=c99 -c debuglib.c
	gcc -Wall -Wextra -std=c99 -c bp_use_lib.c
	gcc -Wall -Wextra -std=c99 -o bp_use_lib bp_use_lib.o debuglib.o

	gcc -Wall -Wextra -std=c99 -o traced_c_loop traced_c_loop.c

.PHONY : clean
clean :
	rm -f *.o bp_use_lib
