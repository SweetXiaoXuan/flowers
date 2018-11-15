#!/bin/bash



#./flowers_zuul.sh
#
#./flowers_server_core.sh
#
#./flowers_web_flower.sh
#
#./flowers_web_user.sh


SCRIPT=$0
OPERATOR=$1
eureka="8761"
zuul=" 17900"
core="8090"
flower=" 8080"
user=" 8181"

usage() {
    echo "Usage: sh $SCRIPT [app_name] [start|stop|restart|status]"
    exit 1
}

start(){
    ./content.sh ${eureka} ${OPERATOR}
    ./content.sh ${zuul} ${OPERATOR}
    ./content.sh ${core} ${OPERATOR}
    ./content.sh ${flower} ${OPERATOR}
    ./content.sh ${user} ${OPERATOR}

}

stop(){
    ./content.sh ${eureka} ${OPERATOR}
    ./content.sh ${zuul} ${OPERATOR}
    ./content.sh ${core} ${OPERATOR}
    ./content.sh ${flower} ${OPERATOR}
    ./content.sh ${user} ${OPERATOR}


}

status(){
    ./content.sh ${eureka} ${OPERATOR}
    ./content.sh ${zuul} ${OPERATOR}
    ./content.sh ${core} ${OPERATOR}
    ./content.sh ${flower} ${OPERATOR}
    ./content.sh ${user} ${OPERATOR}
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
