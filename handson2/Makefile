CC = gcc
MPICC = mpicc
CFLAGS = -std=c99

TARGETS = hello_world_mpi mat_vec trapezoidal

all: $(TARGETS)

hello_world_mpi: hello_world_mpi.c
	$(MPICC) $(CFLAGS) hello_world_mpi.c -o $@

mat_vec: mat_vec.c
	$(CC) $(CFLAGS) mat_vec.c -o $@

trapezoidal: trapezoidal.c
	$(MPICC) $(CFLAGS) trapezoidal.c -o $@

clean:
	$(RM) $(TARGETS)
