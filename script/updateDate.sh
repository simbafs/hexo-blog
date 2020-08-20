#!/bin/bash
if [[ -z $1 ]];then
	dir="source/_posts"
else
	dir=$1
fi

grep 'date: [0-9]{4}' $dir/*.md > t
cut -d: -f1 t > name
cut -d' ' -f2,3 t | sed 's/[- ]//g' | sed 's/://' | sed 's/:/./' > time
paste -d: name time > $dir/time

for i in $(cat $dir/time);do
	n=$(echo $i | cut -d: -f1);
	d=$(echo $i | cut -d: -f2);
	touch -t$d $n;
done

rm t name time
