	#!/bin/bash
	if ! [ "$1" = "" ] 
	then
		dir=$1
		val=$(ls -a $dir|wc -l)
		val2=$[$val-2]
		echo There are $val2 number of files in $dir directory
	else	
		echo Enter directory name
	fi
