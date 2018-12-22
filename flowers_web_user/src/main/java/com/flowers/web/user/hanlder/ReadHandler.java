package com.flowers.web.user.hanlder;

import com.alibaba.fastjson.JSON;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

@Aspect
@Order(1)
@Component
public class ReadHandler {
    private Logger logger = LogManager.getLogger(ReadHandler.class);
    private Long startTime = null;

    private static final String PRE_TAG = "「flowers_web_user」 ----------------- ";
    @Pointcut("execution(public * com.flowers.web.user.controller.*.*(..))")
    public void webLog(){}

    @Before("webLog()")
    public void doBefore(JoinPoint joinPoint) {
        startTime = System.currentTimeMillis();
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        log(request, joinPoint, true, null);
    }

    @AfterReturning(returning = "ret", pointcut = "webLog()")
    public void doAfterReturning(Object ret) {
        log(null, null, false, ret);
    }

    private void log(HttpServletRequest request, JoinPoint joinPoint, boolean before, Object ret) {
        if (before) {
            logger.info("=======================================================================================");
            logger.info(PRE_TAG + "(doBefore) URL : " + request.getRequestURL().toString());
            logger.info(PRE_TAG + "(doBefore) HTTP_METHOD : " + request.getMethod());
            logger.info(PRE_TAG + "(doBefore) IP : " + request.getRemoteAddr());
            logger.info(PRE_TAG + "(doBefore) CLASS_METHOD : " + joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
            logger.info(PRE_TAG + "(doBefore) ARGS : " + Arrays.toString(joinPoint.getArgs()));
            logger.info(PRE_TAG + "(doBefore) BODY : " + JSON.toJSONString(request.getParameterMap()));

        } else {
            logger.info(PRE_TAG + "(doAfterReturning) RESPONSE : " + ret);
            logger.info(PRE_TAG + "(doAfterReturning) SPEND TIME : " + (System.currentTimeMillis() - startTime));
        }
    }
}