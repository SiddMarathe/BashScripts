	#!/bin/bash
	file=$1
	if ! [ "$1" = "" ] && [ -f $file ]
		
	then
		
		ls -ladi $file | awk '{print  "\nname of the file :"$10 "\ninode number is :" $1}; {print "permission of the file are :"$2}; {print "no of link to the file :" $3}; {print "user :"$4 "\ngroup :"$5 "\nsize of the file is :"$6 "\nlast changed date and time of the file is :"$7" "$8" " $9}'
		echo 'the number of lines are :' `wc -l $file|cut --fields=1 --delimiter=" "`
	else
		echo Invalid args...
	fi
