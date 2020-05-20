#!/bin/bash

abc=".qwerttyuiopasdfghjklzxcvbnm"
nums="0123456789"

while read s
do
  for((i=0; i<${#s}; i++)) ;do
    echo -n "${s:i:1}"
done
