## Docker scipy jupyter

### pre-setup
```
- .env 의 KONGR_HOME 변경
    mkdir -p $sudo_user/kongr
    cd $sudo_user; cd kongr
    pwd
    확인된 결과로  KONGR_HOME 변경
```

### Usage

* start
> `sh jupyter.sh start`

* stop
> `sh jupyuter.sh stop`

### Base docker command
```
- 실행:
    docker-compose up -d
- 중지:
    docker-compose down    
- 확인:
    docker ps | grep 'kongr-jupyter' | awk '{print $1}'
- 로그 확인 및 접속주소 확인:
    docker logs `docker ps | grep 'kongr-jupyter' | awk '{print $1}'`
```

### Ref

- [**jupyter-disable-password**](https://stackoverflow.com/questions/41159797/how-to-disable-password-request-for-a-jupyter-notebook-session)

## Todo
<pre>
- create directory
- notebook mount to directory
</pre>