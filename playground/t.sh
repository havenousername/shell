#!/bin/sh

i=0
accum=0
accum_two=0

if test $# -eq 1
then
  if test -f $1  
  then
    #echo $1 | wc -l
    while read row
    do
     i=`expr $i + 1` 
     if test `expr $i % 2` -eq 0
     then
        for word in $row
        do
         if test `expr $word % 2` -eq 0
         then
          accum=`expr $accum + $word`
         fi 
        done
     elif test `expr $i % 2` -ne 0 
     then
       for word in $row
       do 
         if test `expr $word % 2` -ne 0 
         then
           accum_two=`expr $accum_two + $word`
         fi
       done
     fi
    done < $1
    echo "Even lines: $accum"
    echo "Odd lines: $accum_two" 
  else
    echo "This file does'nt exist.\nPlease enter existing file"
  fi 
else
  echo Please enter one parameter file
fi
