# 基础镜像
FROM breeze-java:8

# author
MAINTAINER gaoweixuan

# 挂载目录
VOLUME /usr/local/breeze

# 创建目录
RUN mkdir -p /usr/local/breeze
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

# 指定路径
WORKDIR /usr/local/breeze

# 复制jar文件到路径
COPY ./java/breeze-boot/breeze-boot.jar /usr/local/breeze/breeze-boot.jar

# 启动应用
ENTRYPOINT ["java","-jar","-Duser.timezone=GMT+08","breeze-boot.jar"]

