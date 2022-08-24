#!/bin/bash
if [ ${1} = "ps" ] ; then
	echo "docker ps -a -n ${2} : docker ps list number"
	docker ps -a -n ${2}
elif [ ${1} = "run" ] ; then
	echo "docker run -p [localhost port]:[docker inner port] [image ID]"
	docker run -p ${2}:${3} ${4} 
fi
