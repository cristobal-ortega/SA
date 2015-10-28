#BSUB -J mat_vec_mpi
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 02:00
#BSUB -n 64
#BSUB -R "span[ptile=16]"
#BSUB -x 

/usr/bin/time -f %e  ./mat_vec 32768 32768

#Executing
for i in 2 4 8 16 32 64
do
/usr/bin/time -f %e  mpirun -np $i ./mat_vec_mpi 32768 32768
done
