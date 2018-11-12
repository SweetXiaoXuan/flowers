#!/usr/bin/env bash
# 终止监听8089端口的程序
lsof -i:8761 |awk '{print $2}' | sed -n '2p' | xargs kill -9

# 启动程序
cd flowers_eureka_server
mvn clean
mvn spring-boot:run