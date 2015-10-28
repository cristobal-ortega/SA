CC = gcc
MPICC = mpicc
CFLAGS = -std=c99
OMP = -fopenmp

TARGETS = mvmseq mvmmpi

all: $(TARGETS)

mvmseq: mvmseq.c
	$(CC) $(CFLAGS) mvmseq.c -o $@

mvmmpi: mvmmpi.c
	$(MPICC) $(CFLAGS) mvmmpi.c -o $@

clean:
	$(RM) $(TARGETS)
