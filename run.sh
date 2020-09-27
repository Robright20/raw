#!/bin/bash

DIR=.spec
FARMS=$(ls $DIR/*.farm)
RUN=./lem-in

for farm in $FARMS; do $RUN < $farm | grep -E '^L' > $DIR/$farm.res; done
 
for farm in $FARMS 
do
	diff $DIR/$farm.res $DIR/$farm.out 
done


