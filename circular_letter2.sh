#!/bin/sh

if test $# -eq 2
then
 sed -e 's/<[^"]*>//' -e 's/ //' -e 's/ $//'  -e 's/$/;/' < $1 | awk 'NR>1{printf "%s ",p}{p=$0}END{print p}' >> $2
 cat $2
 echo	
else
 echo Please enter two parameters 
fi
