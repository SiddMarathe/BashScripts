	#!/bin/bash
	diskUsage=`df -h --total |
	grep total|
	cut --fields=4 --delimiter=G|
	cut --characters=3-4`
	if [[ $diskUsage -gt 70 ]]
	then 
		echo high disk usage $diskUsage| mail -vs "Disk Alert" root@qserver2.com
	else
		echo disk space availabe
	fi
