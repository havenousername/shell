#!/bin/sh

if test $# -eq 2
then
 for i in `seq $1 $2`
  do
  expr $i
done	  
else
echo I wait a number 
fi	
