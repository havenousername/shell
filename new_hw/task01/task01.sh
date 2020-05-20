#!/bin/sh

if test $# -eq 1
then
    res=`expr 5 \* $1 \* $1 + 3 \* $1 + 1`
    echo $res
else
  read -p "Enter number now: " number
  res1=`expr 5 \* $number \* $number + 3 \* $number + 1`
  echo $res1    
fi
