
```
或者直接docker pull
```
docker pull jingdor/iotlite
```

或者单独启动 指定 redis 和 mysql
```
docker run -d --name mysql -p 3306:3306/tcp -e MYSQL_ROOT_PASSWORD=root  percona/percona-server:8.0
docker run -d --link mysql:db -p 4021:80/tcp iotlite
```
