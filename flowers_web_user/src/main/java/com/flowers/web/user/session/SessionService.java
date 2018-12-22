package com.flowers.web.user.session;

import com.flowers.common.bean.ResultJson;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Service
public class SessionService {
//    @Bean
//    private SessionService sessionService() {
//        return new SessionService();
//    }

    @Transactional
    public ResultJson<Map> save(HttpSession session, HttpServletRequest req) {
        ResultJson rv = new ResultJson();
        try {
            req.getSession().setAttribute("rsid", session.getId());
            req.getSession().setAttribute("uid", "1");
            session.setMaxInactiveInterval(60 * 60 * 24);
//            logger.info("session有效时间：" + session.getMaxInactiveInterval());
            return new ResultJson();
        } catch (Exception ex) {
            return new ResultJson(1, ex.getMessage() + " logon register failed");
        }
    }

    /**
     * 根据rsid从session中获取相关信息
     * @param rsid sessionid
     * @param req 请求体
     * @return java.lang.String
     */
    @Transactional
    public String get(String rsid, HttpServletRequest req) {
        if(rsid == null) {
            return "";
        }
        Object sessionid = req.getSession().getAttribute("rsid");
        if (sessionid == null) {
            return "";
        } else {
            return sessionid.toString();
        }
    }

    /**
     * 删除session信息
     * @param request 请求体
     * @return java.lang.Boolean
     * @author liumengwei
     * @Date 2017/9/2
     *
     */
    public Boolean logoutSession(HttpServletRequest request) {
        request.getSession().invalidate();
        Object sessionid = request.getSession().getAttribute("uid");
        return sessionid == null || sessionid == "";
    }

}
