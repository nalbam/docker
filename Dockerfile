# Dockerfile

FROM centos:7

MAINTAINER me@nalbam.com

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y git zip curl wget python-pip httpd

EXPOSE 22 80

VOLUME ["/data", "/work"]
ENTRYPOINT ["/usr/bin/bash"]
