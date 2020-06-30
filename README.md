## Docker scipy jupyter

### pre-setup
```
- docker-compose 의 volums 변경
    mkdir -p $sudo_user/kongr
    cd $sudo_user; cd kongr
    pwd
    확인된 결과로  volums 변경
```
### Base docker command
```
- 실행:
    docker-compose up -d
- 중지:
    docker-compose down    
- 확인:
    docker ps | grep 'kongr' | awk '{print $1}'
- 로그 확인 및 접속주소 확인:
    docker logs `docker ps | grep 'kongr' | awk '{print $1}'`

```

### Usage

* start
> sh jupyter.sh start

* access
> sh jupyter.sh access

* stop
> sh jupyuter.sh stop