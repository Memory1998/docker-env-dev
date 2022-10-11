FROM centos:7

MAINTAINER gaoweixuan

ADD jdk/jdk-8u202-linux-x64.tar.gz /usr/local/java

COPY ./fonts/* /usr/share/fonts/
COPY ./fonts/* /usr/local/java/jdk1.8.0_202/jre/lib/fonts/

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV TIME_ZONE Asia/Shanghai

RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
ENV LC_ALL zh_CN.utf8

ENV JAVA_HOME /usr/local/java/jdk1.8.0_202
ENV JRE_HOME /usr/local/java/jdk1.8.0_202/jre
ENV PATH $JAVA_HOME/bin:$PATH
