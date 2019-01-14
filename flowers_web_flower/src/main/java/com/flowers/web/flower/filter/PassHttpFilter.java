package com.flowers.web.flower.filter;

import com.alibaba.fastjson.JSON;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.utils.CodeConstant;
import com.flowers.common.utils.MeaasgeUtil;
import com.flowers.common.utils.ResultMsgConstant;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@SuppressWarnings("Duplicates")
@Component
@WebFilter(urlPatterns = "/*", filterName = "passHttpFilter")
public class PassHttpFilter implements Filter {
    private MeaasgeUtil me = new MeaasgeUtil();

    @Override
    public void init(FilterConfig filterConfig){
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpSession session = request.getSession();
        request.setAttribute("uid", session.getAttribute("uid"));
        request.setAttribute("level", session.getAttribute("level"));

        Enumeration<String> strs = request.getHeaders("device");
        String device = null;
        while (strs.hasMoreElements()) {
            device =  strs.nextElement();
        }
        if ("manager".equals(device)) {
            request.setAttribute("uid", 1);
        }
        filterChain.doFilter(servletRequest, httpResponse);
    }
    private void returnMsg(HttpServletResponse httpResponse, ResultJson resultJson) throws IOException {
        httpResponse.setCharacterEncoding("utf-8");
        httpResponse.setContentType("application/json; charset=utf-8");
        PrintWriter writer = httpResponse.getWriter();
        writer.write(JSON.toJSONString(resultJson));
    }

    @Override
    public void destroy() {
    }
}