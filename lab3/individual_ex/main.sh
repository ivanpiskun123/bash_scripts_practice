#!/bin/bash

echo > $3

for f in   $( find $2 -follow -type f)   ; do


	if [ $(stat -c '%U' $f ) == $1 ]
    then
			echo -n  $(realpath $f) "|" ${f##*/} "|" $(stat -c%s $f) 'bytes' >> $3
			echo >> $3
			echo >> $3
    fi

done
