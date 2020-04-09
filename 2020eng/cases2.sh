#!/bin/sh

if test $# -eq 1
 then
  if $1 -gt 5
   then
    if test $1 -lt 10
     then 
      echo Yes it is between
    else
     echo It is too much	    
    fi	    
  else
    echo Too small	  
  fi	  
else
  echo I am waiting for parameter
fi 

