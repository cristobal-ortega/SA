#BSUB -J top
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 02:00
#BSUB -n 16
#BSUB -R "span[ptile=16]"
#BSUB -x 

#Executing

./top.sh &
/usr/bin/time -f %e  mpirun -np 16 ./trapezoidal_mpi < input.txt

