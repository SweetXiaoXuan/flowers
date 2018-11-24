package com.flowers.web.user.controller;

import com.flowers.api.model.User;
import com.flowers.api.service.UserService;
import com.flowers.common.bean.ResultJson;
import feign.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class UserController {

    @Autowired(required = false)
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> login(
            @Param("username") String username,
            @Param("password") String password) {
        ResultJson resultJson = new ResultJson();
        User user = new User();
        user.setPassword(password);
        user.setUsername(username);
        User u = userService.getUserByUsernameAndPassword(user);
        resultJson.setBody(u == null ? null : u);
        resultJson.setMsg(u == null ? "用户名或密码错误" : "登陆成功");
        return ResponseEntity.ok().body(resultJson);
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
