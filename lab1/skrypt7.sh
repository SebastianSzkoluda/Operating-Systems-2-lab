#!/bin/bash

if [ -d $1 ]
then

	for f in `ls $2` ;do
		if test -x $2/$f && ! test -d $2/$f ;then
			mv $2/$f $1
		fi
	done
else
	echo "Directory: $1 doesn't exist!"
fi
