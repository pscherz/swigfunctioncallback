CC_FLAGS=-fPIC -shared -Wl,-soname,libasys.so
all: libasys.so

libasys.so: a.c a.h
	${CC} ${CC_FLAGS} -o libasys.so a.c
	cp libasys.so ../dotnetswig/.
	cp libasys.so ../pythonswig/.

PHONY: clean

clean:
	rm libasys.so
