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

或者单独启动 指定 redis 和 mysql
```
docker run -d -p 3306:3306/tcp -e MYSQL_ROOT_PASSWORD=root  percona/percona-server:8.0
docker run -d -p 6379:6379/tcp redis
docker run -d -p 80:80/tcp iotlite
```

k8s中启动
```
kubectl apply -f iotlite.k8s.yaml
```
