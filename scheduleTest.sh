	#!/bin/bash
	if ! [ "$1" = "" ] 
	then
		date +"%d%m%Y_%H_%M_%S"
	else
		echo "Trigered at `date +"%d%m%Y_%H_%M_%S"` " >> /tmp/schedule
	fi

