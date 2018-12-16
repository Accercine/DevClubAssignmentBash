if [ -n @2 ]
then
  var=$( ls $1/*$2 | wc -l )
else
  var=$( ls $1 | wc -l )
fi
echo $var
