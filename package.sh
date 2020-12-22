	#!/bin/bash
	if ! [ "$1" = "" ];
	then
		packName=$1;
		inPack=$(yum list installed | grep $packName | cut --fields=1 --delimiter=" ");
		if ! [ "$inPack" = "" ]
		then
			rpm -q -i $inPack &>>/dev/null    
				echo "The package was installed on $(rpm -q -i $inPack | grep Inst* |						cut --delimiter=":" --fields=2)";
		else
			echo Trying to install $packName ...
			yum install -y $packName &>/dev/null
			if ! [ $? = 0 ] 
			then
				echo Invalid Package
			else
				yum info $packName
			fi	
		fi
	else
		echo Invalid args..
	fi
