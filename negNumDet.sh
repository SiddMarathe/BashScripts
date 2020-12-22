	#!/bin/bash 
	number=$1
	if ! [ "$1" = "" ] 

	then
		[ $[$number] -lt 0 ] && echo The $number is negative || echo The $number is positive
	else
		echo Enter the number
		read number
		[ "$number" -lt 0 ] && echo The $number is negative || echo The $number is positive
	fi
