#/bin/sh

if test $# -eq 1
then
  i=0
  delete_word=0
  if test -f $1
  temp=$1  
  then
    while read row
    do
      : > $1
      for word in $row
      do
        if [ ! -z "${word##*[!0-9]*}" ]
        then
         if test `echo -n $word | wc -m` -eq 3
         then
           delete_word=$word 
         else 
           echo -n "$word " >> $1
           echo $1
         fi 
        fi 
      done
      #echo $row | sed 's/^[0-9]*//'
    done < $1
    #tail -1 $1 > $1
    #cat $1
  else
    echo Please ensure that your file exists
  fi
else
  echo Please write one file after shell
fi
