# iotlite_docker
```
 git clone git@github.com:Crtrpt/iotlite_docker.git
```
构建iot镜像
```
docker build . -t iotlite
```
或者直接docker pull
```
docker pull jingdor/iotlite
```

或者单独启动 指定 redis 和 mysql
```
docker run -d --name mysql -p 3306:3306/tcp -e MYSQL_ROOT_PASSWORD=root  percona/percona-server:8.0 
docker run -d --name iotlite -p 80:80/tcp iotlite
```
