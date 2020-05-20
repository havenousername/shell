#!/bin/sh


if test $# -eq 3
then
for var in $@
do
  echo "$var"
done | sort
else
  read -p "Please enter: " one two three
  for var in $one $two $three
  do  
    echo $var
  done | sort
fi 
