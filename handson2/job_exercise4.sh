#BSUB -J hello_world
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 00:15
#BSUB -n 16
#BSUB -R "span[ptile=4]"
#BSUB -x 

#Executing
/usr/bin/time -f %e mpirun ./hello_mpi
