	#!/bin/bash
	if  ! [ "$1" = "" ]
	then
	if [ "$1" = "on" ] 
	then
		nmcli connection down ens33 
		nmcli connection up static 
	elif [ "$1" = "off" ] 
	then
		nmcli connection up ens33 
		nmcli connection down static 
	fi
	else
		echo Need on or off as an argument
	fi

