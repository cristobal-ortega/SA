#BSUB -J trapezoidal_omp
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 00:15
#BSUB -n 8
#BSUB -R "span[ptile=16]"
#BSUB -x 
#BSUB -U sa

#Executing
./trapezoidal 16
