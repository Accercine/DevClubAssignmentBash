#!/bin/sh
if [ $# != 2 ]
then
  exit -1
fi
grep ^$2: $1 | cut -d ':' -f 5
