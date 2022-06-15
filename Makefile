.PHONY: all clean

all: test_user

clean:
	rm -f thing.o libthing.a test_user


thing.o: thing.c
	gcc -Wall -Wextra -c $^ -o $@

libthing.a: thing.o
	ar rcs $@ $^

test_user: test_user.c libthing.a
	gcc -Wall -Wextra $^ -o $@
