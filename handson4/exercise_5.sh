#BSUB -J trapezoidal_omp
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 02:00
#BSUB -n 16
#BSUB -R "span[ptile=16]"
#BSUB -x 

#Executing

IMPI="impi"
OMPI="openmpi"

module unload openmpi
module unload impi


module load $IMPI

for i in 2 4 8 16
do
/usr/bin/time -f %e -ao ${i}_threads_$IMPI.txt mpirun -np $i ./trapezoidal_mpi < input.txt
/usr/bin/time -f %e -ao ${i}_threads_$IMPI.txt mpirun -np $i ./trapezoidal_mpi < input.txt
done

module unload $IMPI
module load $OMPI

for i in 2 4 8 16
do
/usr/bin/time -f %e -ao ${i}_threads_$OMPI.txt mpirun -np $i ./trapezoidal_mpi < input.txt
/usr/bin/time -f %e -ao ${i}_threads_$OMPI.txt mpirun -np $i ./trapezoidal_mpi < input.txt
done

