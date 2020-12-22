	#!/bin/bash
	curl http://qserver2.com &>/dev/null
	if [ $? = 0 ]
	then 
		echo Apache server is running 
	else
		echo Apache server is not running
	fi

