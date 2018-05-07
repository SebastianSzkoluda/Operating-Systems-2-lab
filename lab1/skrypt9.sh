#!/bin/bash

if test -d $1 && test $# -eq 1 ;then 
lista="lista_usunietych.txt"
	ls $1 	
	for f in `ls $1` ;do
		if ! test -s $1/$f && ! test -L $1/$f ;then
			echo "$f" >> $1/$lista
			rm -rf $1/$f
		fi
	done
	
else
	echo "Directory: $1 doesn't exist!"
fi
