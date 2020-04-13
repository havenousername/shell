#!/bin/sh

if test $# -eq 1
then
 echo $1 | sed 's/./& /g'
else
 echo Please enter parameter
fi
 
