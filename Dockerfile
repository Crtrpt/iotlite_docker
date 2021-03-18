FROM alpine:latest
RUN apk add redis
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN mkdir -p /run/nginx
RUN apk add nginx
ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"
RUN apk add openjdk11
ENV WEB_DOWNLOAD_URL=https://github.com/Crtrpt/iotlite_admin/releases/download/latest/iotlite.tar.gz
RUN wget $WEB_DOWNLOAD_URL
RUN mkdir -p /var/data/web
RUN tar -zxvf iotlite.tar.gz -C /var/data/web
RUN cp /var/data/web/dist/nginx.conf /etc/nginx/http.d/default.conf
RUN nginx
ENV PATH=$PATH:${JAVA_HOME}/bin
ENV APPLICATION_DOWNLOAD_URL=https://github.com/Crtrpt/iotlite_core/releases/download/latest/iotlite_core.tar.gz
RUN wget $APPLICATION_DOWNLOAD_URL
RUN tar -zxvf iotlite_core.tar.gz
RUN java -version
RUN ls -a ./target/*
CMD ["nginx","&&","redis-server","&&","java","-jar","./target/iotlite.jar"]

