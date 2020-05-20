#!/bin/sh

file=$1
IFS='\n'
for var in `cat $file` 
do
  echo $var
done
