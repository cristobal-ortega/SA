#BSUB -J trapezoidal_omp
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 02:00
#BSUB -n 16
#BSUB -R "span[ptile=16]"
#BSUB -x 

#Executing
for i in 2 4 8 16
do
/usr/bin/time -f %e -ao ${i}_threads_mpi.txt mpirun -np $i ./trapezoidal_mpi < input.txt
/usr/bin/time -f %e -ao ${i}_threads_mpi.txt mpirun -np $i ./trapezoidal_mpi < input.txt
done
