#!/bin/bash
#BSUB -J "SA-MIRI"
#BSUB -o %J.out
#BSUB -e %J.err
#BSUB -W 00:55
#BSUB -x
#BSUB -n 16
#BSUB -R"span[ptile=16]"

SIZE=8192
echo $SIZE >>exercise8_16.proc.mpi.time
mpirun -np 16 ./mvmmpi $SIZE >>exercise8_16.proc.mpi.time
