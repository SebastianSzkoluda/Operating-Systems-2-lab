#!/bin/bash

if [ -d $1 ]
then	
touch $2.txt
	while IFS= read -r var ;do
		if test $1/$var && ! test $1/$var == $2.txt ;then
			echo --------------- >> $2.txt
			echo $var >> $2.txt
			echo --------------- >> $2.txt
			cat $var >> $2.txt
	
		fi
	done < $2	
else
	echo "Directory: $1 doesn't exist!"
fi
