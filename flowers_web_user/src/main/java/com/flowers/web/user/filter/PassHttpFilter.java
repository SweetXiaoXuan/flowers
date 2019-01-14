package com.flowers.web.user.filter;

import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;

@SuppressWarnings("Duplicates")
@Component
@WebFilter(urlPatterns = "/*", filterName = "passHttpFilter")
public class PassHttpFilter implements Filter {
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

    @Override
    public void destroy() {
    }
}