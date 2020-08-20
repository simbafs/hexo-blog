#!/bin/bash
dir=source/_posts

grep -rnw $dir -e 'date' > t
cut -d: -f1 t > name
cut -d' ' -f2,3 t | sed 's/[- ]//g' | sed 's/://' | sed 's/:/./' > time
paste -d: name time > "$dir/time"

cat "$dir/time"

rm t time name 
