package com.flowers.server.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface FlowerCommentMapper {
    @Select("select count(id) from flower_comment where fid = #{fid} and `delete` = 0")
    int count(String fid);
}
