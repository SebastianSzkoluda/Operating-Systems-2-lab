#!/bin/bash
i=1
if [ -d $1 ]
then
cd $1	
touch newfile.$2
		for f in * ;do
			if test ${f: -${#2}-1} == ".$2" && ! test $f == newfile.$2 ;then
				echo --------------- >> newfile.$2
				echo $f >> newfile.$2
				echo --------------- >> newfile.$2
				cat $f >> newfile.$2
			fi
		done
	
else
	echo "Directory: $1 doesn't exist!"
fi
