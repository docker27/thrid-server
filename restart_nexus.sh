#!/bin/bash

nexus_pid=`ps -ef|grep -w 'nexus'|grep -v grep|cut -c 9-15`
if [ $nexus_pid ]; then
	su - dev -c "kill -9 $nexus_pid"
	echo "kill nexus pid : $nexus_pid"
fi
su - dev -c "/usr/local/nexus/nexus-3.2.0-01/bin/nexus start &"
echo "start nexus success"
