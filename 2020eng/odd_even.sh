#!/bin/sh

# we will check the number of parameters ezistance of file

i=1

while read row
do 
  if test `expr $i % 2` -eq 0
   then
	  echo $row >> $2 
   else	
	   echo $row >> $3
  fi
  i=`expr $i + 1`  
done < $1 
