CC = gcc
CFLAGS = -std=c99

TARGETS = hello_world mat_vect_mult

all: $(TARGETS)

hello_world: hello_world.c
	$(CC) $(CFLAGS) hello_world.c -o $@

mat_vect_mult: mat_vect_mult.c
	$(CC) $(CFLAGS) mat_vect_mult.c -o $@

clean:
	$(RM) $(TARGETS)
