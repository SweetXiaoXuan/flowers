package com.flowers.web.user.controller;

import com.flowers.api.model.User;
import com.flowers.api.model.UserLog;
import com.flowers.api.service.UserService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.page.PageBean;
import com.flowers.common.utils.MeaasgeUtil;
import com.flowers.common.utils.ResultMsgConstant;
import feign.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class UserController {

    @Autowired(required = false)
    private UserService userService;
    private MeaasgeUtil me = new MeaasgeUtil();

    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> login(
            @Param("username") String username,
            @Param("password") String password) {
        User user = new User();
        user.setPassword(password);
        user.setUsername(username);
        User u = userService.getUserByUsernameAndPassword(user);
        return ResponseEntity.ok().body(new ResultJson(u, u == null ? "用户名或密码错误" : "登陆成功"));
    }

    @RequestMapping(value = "/logs", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> logs(
            @RequestParam("page") String page,
            @RequestParam("limit") String size) {
        Map<String, Object> param = new HashMap<>();
        param.put("page", page);
        param.put("size", size);
        PageBean<UserLog> logs = userService.logs(param);
        return ResponseEntity.ok().body(new ResultJson(logs.getItems(), me.getValue(ResultMsgConstant.querySuccess), logs.getTotalNum()));
    }

    @GetMapping("/userList")
    public ResponseEntity<ResultJson> userList() {
        List<User> userList = userService.listUsers();
        return ResponseEntity.ok().body(new ResultJson(userList, userList.size()));
    }

    @GetMapping("/getUser/{id}")
    public ResponseEntity<ResultJson> userList(@PathVariable("id") Integer id) {
        User user = userService.getUserById(id);
        ResultJson resultJson = new ResultJson();
        resultJson.setBody(user);
        return ResponseEntity.ok().body(resultJson);
    }



}
