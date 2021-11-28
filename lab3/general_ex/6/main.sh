#!/bin/bash

gcc $1 -o $2

if [[ $? -ne 1 ]]; then
	./$2
fi


