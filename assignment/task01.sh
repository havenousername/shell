#!/bin/sh

if test $# -eq 2 
then
 if test `expr $1 % $2` -eq 0
 then
  echo Numbers $1 and $2 are divisible
 else
  echo Numbers are not divisible
 fi
else
 echo You need to enter two parameters 
fi

