package com.flowers.zuul.filter;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.utils.*;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.Filter;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

@Component
@WebFilter(urlPatterns = "/*", filterName = "passHttpFilter")
public class PassHttpFilter implements Filter {
    private MeaasgeUtil me = new MeaasgeUtil();
    private Logger logger = LogManager.getLogger(PassHttpFilter.class);

    @Override
    public void init(FilterConfig filterConfig){
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
        httpResponse.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
        httpResponse.setHeader("Access-Control-Allow-Methods", "HEAD, POST, PUT, DELETE, GET");
        httpResponse.setHeader("Access-Control-Allow-Credentials", "true");
//        httpResponse.addHeader("Access-Control-Allow-Origin", "http://" + ip + ":17900");
        httpResponse.addHeader("Access-Control-Allow-Origin", "*");

        HttpServletRequest request = (HttpServletRequest) servletRequest;

        String url = request.getRequestURI();
        Map<String, Object> map = new HashMap<>();
        map.put("url", url);
        ResultJson resultJson = HttpRequest.tempLateGet(Constant.API, map);
        if (resultJson.getCode().equals(CodeConstant.ERROR)) {
            returnMsg(httpResponse, new ResultJson(CodeConstant.ERROR, String.format(me.getValue(ResultMsgConstant.apiNotEntered), url)));
            return;
        } else {
            JSONObject jsonObject = JSONObject.parseObject(JSON.toJSONString(resultJson.getBody()));
            if (jsonObject.getInteger("level") == 0) {
                logger.info("direct access " + url);
            } else {
                String device = getStr(request, "device");
                if (!"manager".equals(device)) {
                    HttpSession session = request.getSession();
                    if (session == null) {
                        logger.info("session is null");
                        returnMsg(httpResponse, new ResultJson(CodeConstant.NOT_LOGIN, me.getValue(ResultMsgConstant.notLogin)));
                        return;
                    }
                    String rsid = getStr(request, "rsid");
                    String rv = get(rsid, request);
                    if (StringUtil.isEmpty(rv)) {
                        logger.info("redis not save " + rsid);
                        returnMsg(httpResponse, new ResultJson(CodeConstant.NOT_LOGIN, me.getValue(ResultMsgConstant.notLogin)));
                        return;
                    }

                    if (session.getAttribute("uid") == null) {
                        returnMsg(httpResponse, new ResultJson(CodeConstant.NOT_LOGIN, me.getValue(ResultMsgConstant.notLogin)));
                        return;
                    }
                }
            }
        }
        filterChain.doFilter(servletRequest, httpResponse);
    }

    private String getStr(HttpServletRequest request, String header) {
        Enumeration<String> strs = request.getHeaders(header);
        while (strs.hasMoreElements()) {
            return strs.nextElement();
        }
        return null;
    }

    private void returnMsg(HttpServletResponse httpResponse, ResultJson resultJson) throws IOException {
        httpResponse.setCharacterEncoding("utf-8");
        httpResponse.setContentType("application/json; charset=utf-8");
        PrintWriter writer = httpResponse.getWriter();
        writer.write(JSON.toJSONString(resultJson));
    }

    private String get(String rsid, HttpServletRequest req) {
        if (rsid == null) {
            return null;
        }
        Object sessionid = req.getSession().getAttribute("rsid");
        if (sessionid == null) {
            return null;
        } else {
            return sessionid.toString();
        }
    }

    @Override
    public void destroy() {
    }
}