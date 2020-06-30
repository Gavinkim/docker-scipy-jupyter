#!/bin/bash

# mkdir -p $sudo_user/kongr

start(){
    echo 'Starting... kongr-jupyter'
    docker-compose up -d
    sleep 2
    echo "access jupyter lab: http://localhost:8888/lab"
    echo "access jupyter: http://localhost:8888"
    echo "jupyter token: kongr"
}
access(){
    docker logs `docker ps | grep 'kongr-jupyter' | awk '{print $1}'`
}
stop(){
    echo 'Stoping... kongr-jupyter'
    docker-compose down
}
case "$1" in
    start)
        start
        sleep 5
        ;;
    stop)
        stop
        ;;
esac
exit 0