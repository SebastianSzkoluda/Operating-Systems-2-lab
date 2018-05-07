#!/bin/bash

if [ -d $1 ]
then
  cd $1
  	while IFS= read -r var
	do
	 echo $var
	 touch $var
	done < $2
  
else
  echo "Directory: $1 doesn't exist!"
fi	
