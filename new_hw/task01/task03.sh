#!/bin/sh

if test $# -eq 2
then
i=$1
out=0
  for (($i; $i <= $2; i=`expr $i+1`))
  do
    echo `expr $i \* $i `
  done
else
  echo This script requires two parameters 
fi
