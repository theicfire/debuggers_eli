all:
	gcc -Wall -Wextra -std=c99 -g -o tracedprog2 tracedprog2.c
	@# EWWWW need to put the -l's at the end. Another reordering and it won't work :/
	gcc -Wall -Wextra -std=c99 -o dwarf_get_func_addr dwarf_get_func_addr.c -ldwarf -lelf

run: all
	./dwarf_get_func_addr tracedprog2


.PHONY : clean
clean : 
	rm -f tracedprog2 dwarf_get_func_addr
