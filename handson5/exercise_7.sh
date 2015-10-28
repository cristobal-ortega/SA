#BSUB -J top
#BSUB -o output_%J.out
#BSUB -e output_%J.err
#BSUB -W 02:00
#BSUB -n 16
#BSUB -R "span[ptile=16]"
#BSUB -x 

#Executing

./top.sh >> ejercicio7.txt &
SIZE=8192
echo $SIZE >> ejercicio7.txt
mpirun ./mvmmpi $SIZE >> ejercicio7.txt


