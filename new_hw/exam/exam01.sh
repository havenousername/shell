#/bin/sh

if test $# -eq 2
then
  product=`expr $1 \* $2`
  if test $product -lt 100
  then
   echo less 
 else
   echo not less
  fi 
else
  echo Please enter two numbers
fi
