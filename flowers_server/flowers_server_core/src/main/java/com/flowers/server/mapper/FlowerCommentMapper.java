package com.flowers.server.mapper;

import com.flowers.api.fbean.FlowerCommentBean;
import com.flowers.api.model.FlowerComment;
import com.flowers.server.provider.FlowerCommentProvider;
import com.flowers.server.provider.FlowerInfoProvider;
import org.apache.ibatis.annotations.*;
import tk.mybatis.mapper.common.MySqlMapper;

import java.util.List;

@Mapper
public interface FlowerCommentMapper<T>
//        extends tk.mybatis.mapper.common.Mapper<T>, MySqlMapper<T>
{
    @Select("select count(id) from flower_comment where fid = #{fid} and `delete` = 0")
    int count(String fid);

    @SelectProvider(type = FlowerCommentProvider.class, method = "comments")
    @Results({
            @Result(column = "create_time", property = "createTime")
    })
    List<FlowerCommentBean> comments(String fid);

    @Insert("insert into flower_comment(fid, uid, content) values(#{fid}, #{uid}, #{content})")
    void insert(FlowerComment comment);
}
