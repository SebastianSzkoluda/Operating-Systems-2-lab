#!/bin/bash

for plik in `ls $1`;do
	if ! test -d $1/$plik ;then
		if test -e $2/$plik && ! test -d $2/$plik ;then
			echo $plik
		fi
	fi
done
