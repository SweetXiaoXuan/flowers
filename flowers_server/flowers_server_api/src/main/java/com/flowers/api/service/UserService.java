package com.flowers.api.service;

import com.flowers.api.model.User;
import com.flowers.api.model.UserLog;
import com.flowers.common.page.PageBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * user
 * @author liumengwei
 * @date 2018/10/12
 * @since V1.0
 */
@FeignClient(name = "flowers-server")
public interface UserService {
    /**
     * 根据用户ID获得用户信息
     * @param id
     * @return
     */
    @GetMapping("/user/{id}")
    User getUserById(@PathVariable("id") Integer id);

    /**
     * 获得所有的用户
     * @return
     */
    @PostMapping("/user")
    PageBean<User> listUsers(
            @RequestBody Map<String , Object> param,
            @RequestParam("uid") Long uid
    );

    /**
     * 根据用户ID删除用户
     * @param id
     */
    @DeleteMapping("/user/{id}")
    void deleteUserById(@PathVariable("id") Integer id);

    @PostMapping("/login")
    User getUserByUsernameAndPassword(
            @RequestBody User user,
            @RequestParam("uid") Long uid);

    @PostMapping("/logs")
    PageBean<UserLog> logs(@RequestBody Map<String, Object> param);
}

