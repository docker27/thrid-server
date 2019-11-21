#!/bin/bash

password='Dev123@wind.COM';

# config
function _start() {
	# start mysql
	echo "start mysql ..."
	su mysql -c "systemctl start mysqld"
	echo "start mysql finish"	
}

# change pwd
function _changePwd() {
	# 获取数据库密码
	prefix='A temporary password is generated for root@localhost: '
	pwd_default=`grep  "$prefix"  /opt/mysql/log/mysqld.log | awk  -F "$prefix" '{print  $2}'`
	echo $pwd_default
	echo "update password and grant privileges ..."
	mysql -uroot -p"$pwd_default" -e "SET PASSWORD = PASSWORD('Dev123@wind.COM')"  --connect-expired-password;
	mysql -uroot -pDev123@wind.COM -e "use mysql;grant all privileges on *.* to 'root'@'%' identified by 'Dev123@wind.COM';flush privileges;"
	echo "update password and grant privileges finish"
}
_start
_changePwd
