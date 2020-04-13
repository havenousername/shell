#!/bin/sh 

i=0

if test $# -eq 1
then
  if test -f $1
  then 
    while read row
    do
      for word in $row
      do 
        count=`grep -q $word $1 && echo $?`
        if test $count -eq 0
        then
          echo "Found it ($count times)"
        else
          echo I didnt
        fi 
      done
    done < $1
  else 
    echo Please enter existing file
  fi  
else
  echo Please enter right amount of files\(1\)
fi
