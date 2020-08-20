#!/bin/bash
dir=source/_posts

grep -rnw $dir -e 'date' > t
cut -d: -f1 t > name
cut -d' ' -f2,3 t | sed 's/[- ]//g' | sed 's/://' | sed 's/:/./' > time
paste -d: name time > t

for i in $(cat t);do
	n=$(echo $i | cut -d: -f1);
	d=$(echo $i | cut -d: -f2);
	touch -t$d $n;
done

rm t name time
