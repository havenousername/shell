#!/bin/sh

if test $# -eq 2
then
 sed -e 's/<[^"]*>//' -e 's/ //' -e 's/\n //' < $1 | tr '\n' ';' >> $2
 cat $2
else
 echo Please enter two parameters 
fi
