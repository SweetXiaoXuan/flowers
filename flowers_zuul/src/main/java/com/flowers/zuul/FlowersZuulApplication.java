package com.flowers.zuul;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@SpringCloudApplication
//@EnableZuulProxy简单理解为@EnableZuulServer的增强版
@EnableZuulProxy
public class FlowersZuulApplication {
    public static void main(String[] args) {
        SpringApplication.run(FlowersZuulApplication.class, args);
    }
}
