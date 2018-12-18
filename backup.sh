#!/bin/sh
echo Files copied from $1 to $2 are:
ls $1 | while read p; do
  if [ ! -e $2/$p ]
  then
    echo $p
    cp $1/$p $2/
  fi
done
echo Files copied from $2 to $1 are:
ls $2 | while read q; do
  if [ ! -e $1/$q ]
  then
    echo $q
    cp $2/$q $1/
  fi
done
