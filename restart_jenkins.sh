#!/bin/bash

jenkins_pid=`ps -ef|grep -w 'jenkins'|grep -v grep|cut -c 9-15`
if [ $jenkins_pid ]; then
	su - dev -c "kill -9 $jenkins_pid"
	echo "kill jenkins pid : $jenkins_pid"
fi
su - dev -c "java -jar /usr/lib/jenkins/jenkins.war --ajp13Port=-1 --httpPort=8082 --prefix=/jenkins &"
echo "start jenkins success"
