#!/bin/bash
if [[ -z $1 ]];then
	dir=source/_posts
else
	dir=$1
fi

ls $dir/*.md > name
stat -c %y $dir/*.md |\
	cut -d' ' -f1,2 |\
	sed 's/[- ]//g' |\
	sed 's/://' |\
	sed 's/:/./' |\
	cut -d. -f1,2 > time
paste -d: name time > t
mv t $dir/time
rm name time
