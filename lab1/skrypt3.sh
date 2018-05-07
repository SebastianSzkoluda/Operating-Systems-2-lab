#!/bin/bash

if test -d $1 && test $# -eq 1 ;then 

     for f in `ls $1` ;do  
	if ! test -x $1/$f ;then	
	  rm -rf $1/$f
	fi		
     done
else
  echo "Directory: $1 doesn't exist!"
fi

