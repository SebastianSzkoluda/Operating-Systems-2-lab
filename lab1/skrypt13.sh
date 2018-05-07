#!/bin/bash

for plik in `ls $1`;do
echo $plik $1
	if ! test -d $1/$plik ;then
		if test -e $2/$plik && ! test -d $2/$plik ;then
			rm $1/$plik
		fi
	fi
done
