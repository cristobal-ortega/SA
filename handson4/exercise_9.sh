#!/bin/bash
#BSUB -J "SA-MIRI-log.file.generator"
#BSUB -n 16
#BSUB -o %J.out
#BSUB -e %J.err
#BSUB -W 00:15

LOG=profile.log
cont=0

# Launch vmstat for infinity into logfile
( while [ $cont -eq 0 ]; do 
	top -n 1 -b -u $USER -H >> $LOG;
	vmstat >>$LOG ; 
done ) &

sleep 1

echo "#####################################" >> $LOG
echo "##### Starting execution ####" >> $LOG
echo "#####################################" >> $LOG

perf stat mpirun -np 16 ./trapezoidal_mpi < input.txt > normal_output.txt

echo "#####################################" >> $LOG
echo "#### Stopping execution #####" >> $LOG
echo "#####################################" >> $LOG

cont=1

sleep 1
exit
