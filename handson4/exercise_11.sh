#BSUB -J mat_mul
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 02:00
#BSUB -n 64
#BSUB -R "span[ptile=16]"
#BSUB -x 

#Executing

for i in 2 4 8 16 32 64
do
	/usr/bin/time -f %e -ao matmul_$i.txt mpirun -np $i ./mat_mul 32768
done
