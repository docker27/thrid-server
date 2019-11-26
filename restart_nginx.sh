#!/bin/bash

nginx_pid=`cat /opt/pid/nginx.pid`
if [ $nginx_pid != 0 ];then
	kill -HUP $nginx_pid
else 
	/usr/sbin/nginx	
fi
