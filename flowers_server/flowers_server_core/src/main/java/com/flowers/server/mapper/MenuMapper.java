package com.flowers.server.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.flowers.api.model.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MenuMapper extends BaseMapper<Menu> {

    @Select("select * from menu where status = 0 and `delete` = 0")
    @Results({
            @Result(property = "create_time", column = "createTime")
    })
    List<Menu> menuNames();
}
