#!/bin/sh

i=0
if test $# -eq 2
then
  if test -f $1
  then
    while read row
    do 
      word=`echo $row | awk '{print $1}'`
      char=`echo $word | cut -c1-1`
      if test $char == $2
      then
        i=`expr $i + 1`
      fi
    done < $1
    echo $i
  else
   echo Make sure that file exists
  fi 
else
  echo Please write file name and the word line should start with
fi
