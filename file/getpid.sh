#!/bin/sh

# set -x
SCRIPT=$0
OPERATOR=$1

[[ $# -lt 1 ]] && { echo 'param error: must have one param(port)'; exit -1; }
[[ $# -gt 1 ]] && { echo 'param error: only support one param(port)'; exit -1; }

 get_pid_by_listen_port() {
     pattern_str="*:${APP_NAME}\\b"
     pid=$(ss -n -t -l -p | grep "$pattern_str" | column -t | awk -F ',' '{print $(NF-1)}')

     # 当版本号为 "ss utility, iproute2-ss161009" 时, ss 命令输出格式为:
     #         LISTEN  0  5  *:8000  *:*  users:(("python2.7",pid=7130,fd=3))
     # 此时需要进一步处理, 只获取进程 PID 值.
     [[ $pid =~ "pid" ]] && pid=$(echo $pid | awk -F '=' '{print $NF}')

     echo $pid
}



getpid(){
port=8761
#根据端口号查询对应的pid
pid=$(lsof -n -i4TCP:"${port}" | grep LISTEN | grep -v grep | awk '{print $2}');
if [  -n  "$pid"  ];
then
    echo "有"
fi
}


case "$OPERATOR" in
  "pid")
    getpid ;;
esac






#pid=$(get_pid_by_listen_port $1)
#if [ -n "$pid" ]
#then
#     echo "find pid: $pid, kill it..."
#     kill $pid
#else
#     echo 'cannot find listened port: '$1
#     exit -1
#fi
#
## 如果只是想放入 .bashrc 或 .zshrc 的话, 可以使用下面这个版本:
#
#function kill_pid_by_listen_port() {
#     [[ $# -lt 1 ]] && { echo 'param error: must have one param(port)'; return -1; }
#     [[ $# -gt 1 ]] && { echo 'param error: only support one param(port)'; return -1; }
#
#     pattern_str="*:$1\\b"
#     pid=$(ss -n -t -l -p | grep "$pattern_str" | column -t | awk -F ',' '{print $(NF-1)}')
#
#     # 当版本号为 "ss utility, iproute2-ss161009" 时, ss 命令输出格式为:
#     #         LISTEN  0  5  *:8000  *:*  users:(("python2.7",pid=7130,fd=3))
#     # 此时需要进一步处理, 只获取进程 PID 值.
#     [[ $pid =~ "pid" ]] && pid=$(echo $pid | awk -F '=' '{print $NF}')
#
#     [[ -n "$pid" ]] && { "find pid: $pid, kill it..." }
#     [[ -n "$pid" ]] || { echo "not found listened port: $1" }
#}