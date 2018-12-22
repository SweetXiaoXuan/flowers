package com.flowers.server.mapper;

import com.flowers.api.model.Api;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ApiMapper {
    @Select("select * from api where url = #{url}")
    Api url(@Param("url") String url);
}
