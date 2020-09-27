#!/bin/bash

FARMS=$(ls .spec/*.farm)
RUN=./lem-in

for farm in $FARMS; do $RUN < $farm | grep -E '^L' > $farm.res; done
 
for farm in $FARMS 
do
	diff $farm.res $farm.out 
done


