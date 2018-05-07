#!/bin/bash

if test -d $1 && test $# -eq 1 ;then 

	echo "1.a"
	find $1 -type f -perm -024 -print | sort | tail -n 5
	echo "1.b"
	find $1 -name "*.txt" -newermt '5 seconds ago' | while read file;
	do
		realpath $file | tr '/' '\\'
	done
fi
