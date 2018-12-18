package com.flowers.server.mapper;

import com.flowers.api.model.FlowerRead;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface FlowerReadMapper {
    @Insert("insert into flower_read(fid, uid) values(#{fid}, #{uid})")
    void insert(FlowerRead read);

    @Select("select count(id) from flower_read where fid = #{fid} and `delete` = 0")
    int count(String fid);
}
