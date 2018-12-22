package com.flowers;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;

@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients(basePackages = "com.flowers")
@EnableRedisHttpSession
public class FlowersWebManagerApplication {
    public static void main(String[] args) {
        SpringApplication.run(FlowersWebManagerApplication.class, args);
    }
}
