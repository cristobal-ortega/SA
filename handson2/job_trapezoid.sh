#BSUB -J trapezoidal
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 00:15
#BSUB -n 8
#BSUB -R "span[ptile=16]"
#BSUB -x 

#Executing
for i in 1 2 4 8 16
do
/usr/bin/time -f %e mpirun -np $i ./trapezoidal
done
