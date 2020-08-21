#!/bin/bash
if [[ -z $1 ]];then
	dir=source/_posts
else
	dir=$1
fi

grep -rnw $dir -e 'date' > t
cut -d: -f1 t > name
cut -d' ' -f2,3 t | sed 's/[- ]//g' | sed 's/://' | sed 's/:/./' > time
paste -d: name time > "$dir/time"

rm t time name
