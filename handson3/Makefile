CC = gcc
MPICC = mpicc
CFLAGS = -std=c99
OMP = -fopenmp

TARGETS = hello_world hello_omp mat_vec mat_vec_mpi trapezoidal mvmseq

all: $(TARGETS)

hello_world: hello_world.c
	$(CC) $(CFLAGS) hello_world.c -o $@

hello_omp: hello_omp.c
	$(CC) $(CFLAGS) $(OMP) hello_omp.c -o $@

mat_vec: mat_vec.c
	$(CC) $(CFLAGS) mat_vec.c -o $@

mat_vec_mpi: mat_vec_mpi.c
	$(MPICC) $(CFLAGS) mat_vec_mpi.c -o $@

trapezoidal: trapezoidal.c
	$(CC) $(CFLAGS) $(OMP) trapezoidal.c -o $@

mvmseq: mvmseq.c
	$(CC) $(CFLAGS) mvmseq.c -o $@

clean:
	$(RM) $(TARGETS)
