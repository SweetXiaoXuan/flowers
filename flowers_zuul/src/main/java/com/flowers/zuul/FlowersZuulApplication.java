package com.flowers.zuul;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.session.data.redis.RedisFlushMode;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.session.data.redis.config.annotation.web.server.EnableRedisWebSession;

@SpringCloudApplication
//@EnableZuulProxy简单理解为@EnableZuulServer的增强版
@EnableZuulProxy
@EnableRedisHttpSession
public class FlowersZuulApplication {
    public static void main(String[] args) {
        SpringApplication.run(FlowersZuulApplication.class, args);
    }
}
