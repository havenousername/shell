#!/bin/sh

if test $# -eq 0
then
 echo No parameter file
fi

count=0

if test -f $1
then
 while read row 
 do
  if test `echo $row | wc -w` -gt 2
  then
   count=`expr $count + 1`
  fi
 done < $1
else
 echo This file doesnt exist
fi

echo $count
