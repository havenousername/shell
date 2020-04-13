#!/bin/sh

i=1
if test $# -eq 2
then
 while read row
 do
  if test `expr $i % 2` -ne 0
  then
    echo $row | grep "^[0-9]\+$">> $2
  fi
  i=`expr $i + 1` 
 done < $1
else
 echo Please enter 2 arguments
fi


cat $2
