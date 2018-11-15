package com.flowers.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
@EnableDiscoveryClient
public class FlowersCoreApplication {
    public static void main(String[] args) {
        SpringApplication.run(FlowersCoreApplication.class, args);
    }

//    @Bean
//    public SqlSessionFactoryBean sqlSession() {
//        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
//        Configuration configuration = new Configuration();
//        configuration.setMapUnderscoreToCamelCase(true);
//        sqlSessionFactoryBean.setConfiguration(configuration);
//        return sqlSessionFactoryBean;
//    }
}
