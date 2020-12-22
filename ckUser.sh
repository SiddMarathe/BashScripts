	#!/bin/bash
	user=$1
	if ! [ "$1" = "" ] 
	then
		
		varUser=`awk 'BEGIN{FS=":"} $user{print$1}' /etc/passwd|grep $user`
		#echo $varUser
		if  [ "$varUser" == "$user" ]
		then
			echo $user is a user
		else 
			echo $user not a user
		fi
	else
		echo Invalid args...
	fi
