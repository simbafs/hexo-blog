#!/bin/bash

# IoC.sh <folder path> <distinctive>
# IoC.sh -r <folder path>


function _IoC(){
	[[ -d "$1" ]] || exit
	[[ -d "$2" ]] && exit

	echo "> $1 $2"

	echo --- > $2
	echo title: $1 >> $2
	echo date: $(date +%Y-%m-%d\ %H:%M:%S) >> $2
	echo --- >> $2

	for i in $(ls $1); do
		# exclude index.md
		[[ "$i" == "index.md" ]] && continue

		# jpg
		if  [[ "${i##*.}" == "jpg" ]] ; then
			echo "![$i](/$1/$i)  " >> $2
			continue
		fi

		echo "[$i](/$1/$i)  " >> $2

	done
}

function _r(){
	DIR=$1;
	for i in $(\ls $DIR); do
		_IoC $DIR/$i $DIR/$i/index.md;
	done
}

# help message
if [[ $1 == "-h" ]]; then
	echo 'IoC.sh <folder path> <distinctive>'
	echo 'IoC.sh -r <folder path>'
	exit
fi

[[ "$1" == "-r" ]] && _r $2 || _IoC $1 $2


