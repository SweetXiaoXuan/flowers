package com.flowers;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients(basePackages = "com.flowers")
public class FlowersWebFlowerApplication {
    public static void main(String[] args) {
        SpringApplication.run(FlowersWebFlowerApplication.class, args);
    }
}
