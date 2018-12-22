package com.flowers.zuul.config;

import com.flowers.zuul.session.RSIDHttpSessionStrategy;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.session.data.redis.config.ConfigureRedisAction;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.session.web.http.HeaderHttpSessionIdResolver;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Configuration
//@EnableRedisHttpSession
public class HttpSessionConfig {
    @Bean
    public static ConfigureRedisAction configureRedisAction() {
        return ConfigureRedisAction.NO_OP;
    }

    @Bean
    public LettuceConnectionFactory connectionFactory() {
        LettuceConnectionFactory let= new LettuceConnectionFactory("127.0.0.1",6379);
        let.setPassword("redis");
        return let;
    }

    @Bean
    public HeaderHttpSessionIdResolver httpSessionStrategy() {
        return new RSIDHttpSessionStrategy("rsid");
    }

//    @Bean
//    public HeaderHttpSessionIdResolver httpSessionStrategy() {
//        return new HeaderHttpSessionIdResolver("x-auth-token");
//    }

}
