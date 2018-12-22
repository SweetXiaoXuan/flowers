package com.flowers.web.user.config;

import com.flowers.web.user.session.RSIDHttpSessionStrategy;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.session.data.redis.config.ConfigureRedisAction;
import org.springframework.session.web.http.HeaderHttpSessionIdResolver;

@Configuration
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

}
