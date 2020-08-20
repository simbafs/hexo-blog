#!/bin/bash
file=$1 || "source/_posts/time"
for i in $(cat $file);do
	n=$(echo $i | cut -d: -f1);
	d=$(echo $i | cut -d: -f2);
	touch -t$d $n;
done
