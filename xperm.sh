	
	script=$1.sh
	#echo $script
	find /scripts/ -name $script|grep $script &>>/dev/null 
	if ! [ $? = 0 ] 
	then
	touch /scripts/$script
	cd /scripts/
	chmod ugo=+rwx $script
	ls -al $script
	printf "	#!/bin/bash\n	\n	if ! [ \"\$1\" = \"\" ] \n		\n	then\n		\n	else\n		echo Invalid args...\n	fi" > $script
	else 
	echo file already exsists
	fi
