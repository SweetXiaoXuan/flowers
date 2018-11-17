#!/bin/bash


SCRIPT=$0
PORT=$1
APP_NAME=flowers_eureka_server
OPERATOR=$2

usage() {
    echo "Usage: sh $SCRIPT [app_name] [start|stop|restart|status]"
    exit 1
}

if [ $# != 2 ]; then
    usage
fi

is_exist(){
  pid=`ps -ef|grep $APP_NAME|grep -v grep|awk '{print $2}' `
  echo "pid ----${pid}"
  if [ -z "${pid}" ];
  then
    return 1
  else
    return 0
  fi
}

getpid(){
    pid=$(lsof -n -i4TCP:"${PORT}" | grep LISTEN | grep -v grep | awk '{print $2}');

    if [  -n  "$pid"  ];
    then
        return 1
    else
        return 0
    fi
}

start() {
    getpid
    if [ $? -eq "1" ]
    then
       echo "${APP_NAME} is already running. port=${PORT}."
    else
       mvn spring-boot:run
    fi
}

stop(){
    getpid
    if [ $? -eq "1" ]
    then
       echo "${pid}"
       kill -9 $pid
    else
       echo "flowers_eureka_server is not running"
    fi
  echo `lsof -i:${PORT}`
}

status(){
  getpid
  if [ $? -eq "1" ]; then
    echo "${APP_NAME} is running. Pid is ${pid}"
  else
    echo "${APP_NAME} is NOT running."
  fi
}

restart(){
  stop
  start
}

case "$OPERATOR" in
  "start")
    start ;;
  "stop")
    stop ;;
  "status")
    status ;;
  "restart")
    restart ;;
  *)
    usage ;;
esac
