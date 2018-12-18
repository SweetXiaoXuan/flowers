package com.flowers.server.mapper;

import com.flowers.api.model.FlowerRead;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FlowerReadMapper {
    @Insert("insert into flower_read(fid, uid) values(#{fid}, #{uid})")
    void insert(FlowerRead read);
}
