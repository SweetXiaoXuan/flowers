package com.flowers.server.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.User;
import com.flowers.server.provider.FlowerInfoProvider;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface FlowerMapper  {
    @Select("select * from flower_info where id = #{fid}")
    @Results({
            @Result(column = "flower_name", property = "flowerName"),
            @Result(column = "flower_language", property = "flowerLanguage"),
            @Result(column = "flower_img", property = "flowerImg"),
            @Result(column = "create_time", property = "createTime")
    })
    FlowerInfo getInfoById( Long fid);

    @SelectProvider(type = FlowerInfoProvider.class, method = "flowers")
    @Results({
            @Result(column = "flower_name", property = "flowerName"),
            @Result(column = "flower_img", property = "flowerImg"),
            @Result(column = "flower_language", property = "flowerLanguage"),
            @Result(column = "create_time", property = "createTime")
    })
    List<FlowerInfo> flowers(String flowerName);

    @Select("select count(id) from flower_info where TO_DAYS(create_time) = TO_DAYS(NOW())")
    int countToday();

    @Select("select count(id) from flower_info")
    int countAll();
}
