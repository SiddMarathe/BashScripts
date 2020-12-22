	#!/bin/bash
	userFile=/etc/passwd
	if ! [ "$1" = "" ] 
	then
		testusers=`awk '{FS=":"} $3<2000 && $3>1000 {print$1}' $userFile`
		for n in $testusers;
		do
		userdel -r $n;
		done
	else
		echo Invalid args...
	fi
