CC = gcc
MPICC = mpicc
CFLAGS = -std=c99
OMP = -fopenmp

TARGETS = test test.ij mat_mul

all: $(TARGETS)

test: test.c
	$(CC) $(CFLAGS) test.c -o $@

test.ij: test.ij.c
	$(CC) $(CFLAGS) $(OMP) test.ij.c -o $@

mat_mul: mat_mul.c
	$(MPICC) $(CFLAGS) mat_mul.c -o $@

mat_vec_mpi: mat_vec_mpi.c
	$(MPICC) $(CFLAGS) mat_vec_mpi.c -o $@

trapezoidal: trapezoidal.c
	$(CC) $(CFLAGS) $(OMP) trapezoidal.c -o $@

mvmseq: mvmseq.c
	$(CC) $(CFLAGS) mvmseq.c -o $@

clean:
	$(RM) $(TARGETS)
