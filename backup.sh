#!/bin/sh
echo Files copied from $1 to $2 are:
ls $1 | while read p; do
  if [ ! -e $2/$p ]
  then
    echo $p
    cp $1/$p $2/
  fi
done
