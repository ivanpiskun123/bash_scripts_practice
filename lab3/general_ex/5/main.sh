#!/bin/bash

echo > $1

for f in $2/*; do
	
	extension=${f##*.}
	
	if  [ $extension == $3 ]
		then echo "${f##*/} " >> $1
	fi
done

