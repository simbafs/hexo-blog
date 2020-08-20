#!/bin/bash
if [[ -z $1 ]];then
	file="source/_posts/time"
else
	file=$1
fi
for i in $(cat $file);do
	n=$(echo $i | cut -d: -f1);
	d=$(echo $i | cut -d: -f2);
	touch -t$d $n;
done
