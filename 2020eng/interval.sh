#!/bin/sh

if test $# -eq 1
 then
  if $1 -gt 5 -a $1 -lt 10
   then
     echo It is too betwen	     
  else
    echo Not between
  fi	  
else
  echo I am waiting for parameter
fi 

