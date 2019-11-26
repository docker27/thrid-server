#!/bin/bash

downloan_url='https://sonatype-download.global.ssl.fastly.net/nexus/3/nexus-3.2.0-01-unix.tar.gz'
downloan_file_name='nexus-3.2.0-01-unix.tar.gz'
nexus_home='/usr/local/nexus/nexus-3.2.0-01'
nexus_install_path=/opt/install/nexus

function _init() {
	mkdir -p /opt/nexus/
	mkdir -p /usr/local/nexus
}

function _install() {
	if [ ! -d /usr/local/nexus/nexus-3.2.0-01/ ]; then
		rm -rf /usr/local/nexus/*
		mkdir -p /usr/local/nexus
		tar -zxvf ${nexus_install_path}/${downloan_file_name} -C /usr/local/nexus
	fi
	cp ${nexus_install_path}/nexus.properties /usr/local/nexus/nexus-3.2.0-01/etc/nexus-default.properties
	chown -R dev:dev /usr/local/nexus
	su - dev -c "${nexus_home}/bin/nexus start &"
	echo "nexus install success !!!"
}

# chkconfig
function _chkconfig() {
	cd /etc/rc.d/init.d/
	rm -rf /etc/rc.d/init.d/nexus 
	touch /etc/rc.d/init.d/nexus
	chmod +x /etc/rc.d/init.d/nexus
	echo '#!/bin/bash' >> /etc/rc.d/init.d/nexus
	echo '# chkconfig: 12345 95 05' >> /etc/rc.d/init.d/nexus
	echo 'su - dev -c "/usr/local/nexus/nexus-3.2.0-01/bin/nexus start &"' >> /etc/rc.d/init.d/nexus
	chkconfig --add nexus
	echo "chkconfig add nexus success"
}
function _clean() {
	rm -rf /opt/install/nexus
}

_init
_download
_install
_chkconfig
#_clean
