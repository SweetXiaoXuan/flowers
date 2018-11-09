package com.flowers.server.mapper;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.User;
import org.apache.ibatis.annotations.*;

@Mapper
public interface FlowerMapper {
    @Select("select * from flower_info where id = #{fid}")
    @Results({
            @Result(column = "flower_name", property = "flowerName"),
            @Result(column = "flower_language", property = "flowerLanguage"),
            @Result(column = "create_time", property = "createTime")
    })
    FlowerInfo getInfoById( Long fid);
}
