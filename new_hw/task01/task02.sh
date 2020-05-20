#!/bin/sh

if test $# -eq 1
then
  if test $1 == "-g"
  then  
    echo "Welcome of board, captain"
  elif test $1 == "-l" 
  then
    ls
  elif test $1 == "-w"
  then  
    finger 
  elif test $1 == "-?"
  then
    echo "Write -g for greeting, -l for file list, -w for echo all active
    users, and -? for help"   
  fi
else
  echo Please enter one parameter
fi
