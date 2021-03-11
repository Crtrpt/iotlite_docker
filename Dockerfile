FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add git
EXPOSE  9000
RUN mkdir -p /run/nginx
#RUN apk add --no-cache mysql-server
#RUN apk add --no-cache redis
RUN apk add nginx

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"
RUN apk add openjdk11
# Has to be set explictly to find binaries 
ENV PATH=$PATH:${JAVA_HOME}/bin

CMD ["jshell"]
