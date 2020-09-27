#!/bin/bash

FARMS=$(ls .spec/*.farm)
RUN=./lem-in

return 
for farm in $FARMS
do
	echo $farm
	$RUN < $farm | grep -E '^L' > $farm.res
done
 
for farm in $FARMS 
do
	echo $farm
	diff -U 3 $farm.res $farm.out 
done


