#!/bin/bash

if [ -d $1 ]
then
  cd $1
   for f in *	
   do
	if [[ -w "$f" ]]
	 then
	  touch -m "$f"
	  
	else
	  
	  continue
	fi				
   done
else
  echo "Directory: $1 doesn't exist!"
fi
