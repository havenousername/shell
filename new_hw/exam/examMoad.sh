#!/bin/sh

i=0
if test $# -eq 1
then
  if test -f $1 
    then 
      while read row
      do
        if test `expr $row % 10` -eq "5"
        then
          i=`expr $i + 1`
        fi
      done < $1
      echo $i
    else
      echo This file does\'nt exist. Try again with existing file 
  fi
else
  echo Please enter at least one character
fi
