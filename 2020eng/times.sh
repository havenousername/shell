#!/bin/sh

sum=0

while read row
do
 x=`echo $row | grep "^[1-9]\+$" | wc -c`
 if test $x -gt 0
  then
   sum=`expr $sum + 1`	   
  fi
done < $1	

echo $sum
