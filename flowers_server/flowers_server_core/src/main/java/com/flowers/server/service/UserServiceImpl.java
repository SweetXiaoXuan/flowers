package com.flowers.server.service;

import com.flowers.api.model.User;
import com.flowers.api.service.UserService;
import com.flowers.server.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * @author liumengwei
 * @date 2018/7/29 下午6:16
 */
@RestController
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    @GetMapping("/user/{id}")
    public User getUserById(@PathVariable("id") Integer id) {
        return userMapper.findById(id);
    }

    @Override
    @GetMapping("/user")
    public List<User> listUsers() {
        return userMapper.findAll();
    }

    @Override
    @DeleteMapping("/user/{id}")
    public void deleteUserById(@PathVariable("id") Integer id) {
        userMapper.deleteById(id);
    }


    @Override
    public User getUserByUsernameAndPassword(@RequestBody User user) {
        return userMapper.getUserByUsernameAndPassword(user);
    }
}
