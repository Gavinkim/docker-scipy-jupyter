#!/bin/bash

# mkdir -p $sudo_user/kongr

start(){
    echo 'Starting... kongr(jupyter-notebook)'
    docker-compose up -d
    # echo 'Check your access address'
    # sleep 5
    # docker logs `docker ps | grep 'kongr' | awk '{print $1}'`
}
access(){
    docker logs `docker ps | grep 'kongr' | awk '{print $1}'`
}
stop(){
    echo 'Stoping... kongr'
    docker-compose down
}
case "$1" in
    start)
        start
        sleep 5
        ;;
    access)
        access
        sleep 1
        ;;
    stop)
        stop
esac
exit 0