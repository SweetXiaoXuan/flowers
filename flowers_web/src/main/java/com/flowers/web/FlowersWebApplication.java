package com.flowers.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients(basePackages = "com.flowers")
public class FlowersWebApplication {
    public static void main(String[] args) {
        SpringApplication.run(FlowersWebApplication.class, args);
    }
}
