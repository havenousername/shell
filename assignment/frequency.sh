#!/bin/sh 

i=0
freq=0

if test $# -eq 1
then
  if test -f $1
  then 
    while read row
    do
      for word in $row
      do 
        count=`grep -o -i $word $1 | wc -l`
        if test $count -gt $i
        then
          i=$count
          freq=$word
        fi  
       # if test $count -eq 0
       # then
       #   echo "Found it"
       #   i=`expr $i + 1`
       #   echo $i
       #  echo $word
       # else
       #   echo I didnt
       # fi 
      done
    done < $1
    echo $i
    echo $freq
  else 
    echo Please enter existing file
  fi  
else
  echo Please enter right amount of files\(1\)
fi
