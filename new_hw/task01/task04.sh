#/bin/sh

i=0

if test $# -eq 1
then
  while read row
  do 
    if test `expr $i % 2` -eq 0
    then
      echo $row
    fi
  done < $1
else
  echo Write name of the file first
fi
