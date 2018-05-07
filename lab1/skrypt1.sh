#!/bin/bash

if [ -d $1 ]
then
  cd $1
  rm *.old
   for f in *
   do
	mv $f $f.old		
   done
else
  echo "Directory: $1 doesn't exist!"
fi	
