package com.flowers.server.mapper;

import com.flowers.api.model.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author liumengwei
 * @date 2018/7/29 下午6:02
 */

@Mapper
//@Component("userMapper")
public interface UserMapper {
    @Delete(" delete from user where id = #{id}")
    int deleteById(Integer id);

    @Select("select * from user where id = #{id}")
    User findById(Integer id);

    @Select("select * from user")
    List<User> findAll();

    @Select("select count(id) from user")
    int countAll();

    @Select("select * from user where username = #{username} and password = #{password}")
    User getUserByUsernameAndPassword(User user);

}
