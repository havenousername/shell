#!/bin/sh

i=0
if test $# -eq 1
then
  while test $i -lt $1
  do
    echo "melon \c"
    i=`expr $i + 1`
  done
else
  read count
  while test $i -lt $count
  do
   echo "melon \c" 
   i=`expr $i + 1`
  done 
fi
