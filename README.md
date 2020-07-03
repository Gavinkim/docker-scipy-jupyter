## Docker scipy jupyter

### Usage

* start
> `sh jupyter.sh start`

* stop
> `sh jupyuter.sh stop`

* package install
> `"!pip3 install <package name>"`


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

- [***scipy-notebook***](https://github.com/Paperspace/jupyter-docker-stacks/blob/master/scipy-notebook/README.md)
## Todo
<pre>
- create directory
- notebook mount to directory
</pre>