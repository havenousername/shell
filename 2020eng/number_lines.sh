#!/bin/sh

if test $# -eq 1
then
 if test -f $1
 then	 
 i=1
 cat $1 | while read row
  #while read row 
  do 
   echo "$i $row"
   i=`expr $i + 1`
   done
  #done < $1
 else
  echo The file doesnt exist	  
 fi
 else
  echo I wait a filename
fi
