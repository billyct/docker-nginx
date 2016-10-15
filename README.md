# docker-nginx
a simple docker nginx container for deploying

## usage
```
$ git clone https://github.com/billyct/docker-nginx.git
$ cd docker-nginx
$ docker-compose up -d
```

## something
docker的nginx其实是蛮尴尬的东西，因为对于普通用户来讲，一般都会在同一台云主机上部署>1个的应用，所以在我的想法就单独的一个docker-compose给他，而我大部分都是用他来做反向代理嘛，这样比较合适