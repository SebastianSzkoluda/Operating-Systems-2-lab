#!/bin/bash
i=1
if [ -d $1 ]
then
cd $1	
du -h | sort -rh
	for f in * ;do
	echo $f
		if test -x $1/$f && ! test -d $1/$f ;then
			mv $f "$f.<$i>"
			i=$(( i+1 ))
  		fi
	done
else
	echo "Directory: $1 doesn't exist!"
fi	
