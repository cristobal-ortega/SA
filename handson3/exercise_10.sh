#BSUB -J mat_vec_mpi
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 02:00
#BSUB -n 64
#BSUB -R "span[ptile=16]"
#BSUB -x 

#Executing
for i in 1
do
/usr/bin/time -f %e ./mvmseq 32768
done
