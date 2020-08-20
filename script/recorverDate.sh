#!/bin/bash
for i in $(cat t);do 
	n=$(echo $i | cut -d: -f1); 
	d=$(echo $i | cut -d: -f2); 
	touch -t$d $n; 
done
