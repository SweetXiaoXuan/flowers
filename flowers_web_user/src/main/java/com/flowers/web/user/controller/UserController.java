package com.flowers.web.user.controller;

import com.flowers.api.model.User;
import com.flowers.api.model.UserLog;
import com.flowers.api.service.UserService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.page.PageBean;
import com.flowers.common.utils.MeaasgeUtil;
import com.flowers.common.utils.ResultMsgConstant;
import com.flowers.common.utils.TransferUtils;
import com.flowers.web.user.session.SessionService;
import com.netflix.ribbon.proxy.annotation.Content;
import feign.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
public class UserController {

    @Autowired(required = false)
    private UserService userService;
    private MeaasgeUtil me = new MeaasgeUtil();
    @Autowired
    private SessionService sessionService;

    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> login(
            @Param("username") String username,
            @Param("password") String password,
            HttpServletRequest request) {
        User user = new User();
        user.setPassword(password);
        user.setUsername(username);
        User u = userService.getUserByUsernameAndPassword(user);
        boolean login = u == null;
        String rsid = null;
        if (!login) {
            HttpSession session = request.getSession(true);
            rsid = session.getId();
            ResultJson rj = sessionService.save(session, request);
            if (rj.getCode() != 0) {
                return ResponseEntity.ok().body(new ResultJson(u, "登陆异常"));
            }
        }
        Map<String, Object> map = TransferUtils.transBeanToMap(u);
        map.put("rsid", rsid);
        return ResponseEntity.ok().body(new ResultJson(map, "登陆成功"));
    }

    @RequestMapping(value = "/logs", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> logs(
            @RequestParam("type") String type,
            @RequestParam("page") String page,
            @RequestParam("limit") String size) {
        Map<String, Object> param = new HashMap<>();
        param.put("page", page);
        param.put("size", size);
        param.put("type", type);
        PageBean<UserLog> logs = userService.logs(param);
        return ResponseEntity.ok().body(new ResultJson(logs.getItems(), me.getValue(ResultMsgConstant.querySuccess), logs.getTotalNum()));
    }

    @RequestMapping(value = "/userList", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> userList(
            @RequestParam("username") String username,
            @RequestParam("level") String level,
            @RequestParam("status") String status,
            @RequestParam("page") String page,
            @RequestParam("limit") String size,
            @RequestParam("phone") String phone,
            @Content HttpServletRequest request
    ) {
        Map<String, Object> param = new HashMap<>();
        param.put("username", username);
        param.put("level", level);
        param.put("size", size);
        param.put("page", page);
        param.put("status", status);
        param.put("phone", phone);
        PageBean<User> userList = userService.listUsers(param, getUid(request));
        return ResponseEntity.ok().body(new ResultJson(userList.getItems(), userList.getTotalNum()));
    }

    @GetMapping("/getUser/{id}")
    public ResponseEntity<ResultJson> userList(@PathVariable("id") Integer id) {
        User user = userService.getUserById(id);
        return ResponseEntity.ok().body(new ResultJson(user));
    }

    private Long getUid(HttpServletRequest request) {
        return Long.parseLong(String.valueOf(request.getAttribute("uid")));
    }

}
