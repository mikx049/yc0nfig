CC     = cc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -O2

SRC    = $(wildcard *.c)
OBJ    = $(patsubst %.c,dist/%.o,$(SRC))

$(OBJ): dist/%.o: %.c
	mkdir -p dist
	$(CC) $(CFLAGS) -c $< -o $@
