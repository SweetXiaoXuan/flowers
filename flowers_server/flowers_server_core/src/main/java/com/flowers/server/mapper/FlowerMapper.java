package com.flowers.server.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.FlowerSpecific;
import com.flowers.api.model.User;
import com.flowers.server.provider.FlowerInfoProvider;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface FlowerMapper extends BaseMapper<FlowerInfo> {
    @Select("select * from flower_info where id = #{fid}")
    @Results({
            @Result(column = "flower_name", property = "flowerName"),
            @Result(column = "flower_language", property = "flowerLanguage"),
            @Result(column = "flower_img", property = "flowerImg"),
            @Result(column = "create_time", property = "createTime")
    })
    FlowerInfo getInfoById( String fid);

    @SelectProvider(type = FlowerInfoProvider.class, method = "flowers")
    @Results({
            @Result(column = "flower_name", property = "flowerName"),
            @Result(column = "flower_img", property = "flowerImg"),
            @Result(column = "flower_language", property = "flowerLanguage"),
            @Result(column = "create_time", property = "createTime")
    })
    List<FlowerInfo> flowers(String flowerName, String type);

    @Select("select count(id) from flower_info where TO_DAYS(create_time) = TO_DAYS(NOW())")
    int countToday();

    @Select("select count(id) from flower_info")
    int countAll();

    @Select("select * from flower_specific where fid = #{fid}")
    @Results({
            @Result(column = "create_time", property = "createTime")
    })
    List<FlowerSpecific> flowerSpecific(@Param("fid") String fid);

    @Select("select count(id) from flower_info where recommend = 1")
    int getRecommend();

    @Select("select id from flower_info where flower_name = #{flowerName} and flower_language = #{flowerLanguage} and flower_img = #{flowerImg} and remarks = #{remarks}")
    Long getFid(@Param("remarks") String remarks, @Param("flowerName") String flowerName, @Param("flowerLanguage") String flowerLanguage, @Param("flowerImg") String flowerImg);


    @Insert("insert into flower_info(remarks, flower_name, flower_language, flower_img) values(#{remarks}, #{flowerName}, #{flowerLanguage}, #{flowerImg})")
    int saveFlower(@Param("remarks") String remarks, @Param("flowerName") String flowerName, @Param("flowerLanguage") String flowerLanguage, @Param("flowerImg") String flowerImg);

    @Select("select * from flower_info where recommend = 1 and `delete` = 0")
    @Results({
            @Result(column = "flower_name", property = "flowerName"),
            @Result(column = "flower_img", property = "flowerImg"),
            @Result(column = "flower_language", property = "flowerLanguage"),
            @Result(column = "create_time", property = "createTime")
    })
    FlowerInfo recommendFlower();

    @Update("update flower_info set popu = #{type} where id = #{fid}")
    void popu(@Param("fid") String fid, @Param("type") String whether);

    @Update("update flower_info set recommend = #{type} where id = #{fid}")
    void recommend(@Param("fid") String fid, @Param("type") String whether);

    @Update("update flower_info set details = #{type} where id = #{fid}")
    void details(@Param("fid") String fid, @Param("type") String whether);

    @Select("select * from flower_info where popu = 1 and `delete` = 0")
    @Results({
            @Result(column = "flower_name", property = "flowerName"),
            @Result(column = "flower_img", property = "flowerImg"),
            @Result(column = "flower_language", property = "flowerLanguage"),
            @Result(column = "create_time", property = "createTime")
    })
    List<FlowerInfo> popuList();

    @Select("select * from flower_info where details = 1 and `delete` = 0 limit 0, 5")
    @Results({
            @Result(column = "flower_name", property = "flowerName"),
            @Result(column = "flower_img", property = "flowerImg"),
            @Result(column = "flower_language", property = "flowerLanguage"),
            @Result(column = "create_time", property = "createTime")
    })
    List<FlowerInfo> detailsList();
}
