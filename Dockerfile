FROM qianchun27/centos-jdk-maven:7.8.3

MAINTAINER qianchun, qianchun27@hotmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV BASE_INSTALL_DIR /opt/install

ENV NGINX_INSTALL_DIR /opt/install/nginx
ENV NEXUS_INSTALL_DIR /opt/install/nexus
ENV JENKINS_INSTALL_DIR /opt/install/jenkins

RUN mkdir -p ${NGINX_INSTALL_DIR}
RUN mkdir -p ${NEXUS_INSTALL_DIR}
RUN mkdir -p ${JENKINS_INSTALL_DIR}

COPY install.sh ${BASE_INSTALL_DIR}
COPY restart_jenkins.sh ${BASE_INSTALL_DIR}
COPY restart_nexus.sh ${BASE_INSTALL_DIR}
COPY restart_nginx.sh ${BASE_INSTALL_DIR}

COPY nginx/ ${NGINX_INSTALL_DIR}
COPY nexus/ ${NEXUS_INSTALL_DIR}
COPY jenkins/ ${JENKINS_INSTALL_DIR}

RUN sh ${BASE_INSTALL_DIR}/install.sh;
