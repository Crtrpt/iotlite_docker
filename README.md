# iotlite_docker
iotlite  all in one
iotlite 一键安装 启动
```
 git clone git@github.com:Crtrpt/iotlite_docker.git
```
构建iot镜像
```
docker build . -t iotlite
```
启动compose
```
docker-compose up
```

或者单独启动
```
docker run -d  -p9000:80  iotlite
```
