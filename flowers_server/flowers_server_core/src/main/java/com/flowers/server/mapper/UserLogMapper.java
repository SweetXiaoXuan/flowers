package com.flowers.server.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserLogMapper {
    @Insert("insert into user_log(uid, description, `delete`, create_time, type) values(#{uid}, #{description}, 0, now(), #{type})")
    void insertLog(@Param("description") String description, @Param("type") Integer type, @Param("uid") Long uid);

}
