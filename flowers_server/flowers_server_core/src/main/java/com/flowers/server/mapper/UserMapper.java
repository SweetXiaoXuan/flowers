package com.flowers.server.mapper;

import com.flowers.api.model.User;
import com.flowers.api.model.UserLog;
import com.flowers.server.provider.FlowerInfoProvider;
import com.flowers.server.provider.UserLogProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

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

    @SelectProvider(type = UserLogProvider.class, method = "findAll")
    @Results({
            @Result(column = "create_time", property = "createTime")
    })
    List<User> findAll(Map<String, Object> param);

    @Select("select count(id) from user")
    int countAll();

    @Select("select * from user where username = #{username} and password = #{password}")
    User getUserByUsernameAndPassword(User user);

    @Results({
            @Result(column = "create_time", property = "createTime")
    })
    @SelectProvider(type = UserLogProvider.class, method = "logs")
    List<UserLog> logs(Map<String, Object> param);

}
