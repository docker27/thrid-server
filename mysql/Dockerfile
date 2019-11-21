FROM qianchun27/centos:7

MAINTAINER qianchun, qianchun27@hotmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV BASE_INSTALL_DIR  /opt/install

RUN mkdir -p ${BASE_INSTALL_DIR}

COPY my.cnf ${BASE_INSTALL_DIR}

COPY start.sh ${BASE_INSTALL_DIR}
COPY user.sh ${BASE_INSTALL_DIR}
COPY pwd.sh ${BASE_INSTALL_DIR}
COPY mysql.sh ${BASE_INSTALL_DIR}
COPY mysql.sh.bak ${BASE_INSTALL_DIR}
COPY install.sh ${BASE_INSTALL_DIR}

COPY mysql-5.7.27-1.el7.x86_64.rpm-bundle.tar ${BASE_INSTALL_DIR}

RUN sh ${BASE_INSTALL_DIR}/install.sh
