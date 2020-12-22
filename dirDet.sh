	#!/bin/bash
	dir=$1
	if ! [ "$1" = "" ];
	then
		[ ! -d $dir ] && echo " Directory $dir does not exists." || echo " Directory $dir exists."

	else
		echo Invalid args...
	fi
