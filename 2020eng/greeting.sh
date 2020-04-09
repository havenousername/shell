#!/bin/sh

for name in `who | cut -f1 -d" "`
do
	  finger $name | head -1 | cut -f3 -d":"
  echo Great $name
done	

