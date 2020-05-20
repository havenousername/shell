#!/bin/sh

i=0
if test $# -eq 3
then
  if test -f $1 
    then 
      while read row
      do
        n=`awk 'NF>1{print $NF}'`
        #echo -n "$n" | tail -c 1
        if test `echo $n | awk '{print substr($0,length,1)}'` == "?"
        then
          echo "$row" << $2 
        else
          echo "$row" << $3
          i=`expr $i +1 `
        fi
      done < $1
      $i << $3
    else
      echo This file does\'nt exist. Try again with existing file 
  fi
else
  echo Please enter at least one parameter
fi
