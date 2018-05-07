#!/bin/bash

counter=0
if [ -d $1 ]
then
  cd $1
   for f in *
   do
	if [[ -x "$f" ]]
	 then
	  echo "File '$f' is executable"
	  counter=$(( counter+1 ))
	else
	  echo "File '$f' isn't executable"
	  continue
	fi			
   done
	echo $counter
else
  echo "Directory: $1 doesn't exist!"
fi
