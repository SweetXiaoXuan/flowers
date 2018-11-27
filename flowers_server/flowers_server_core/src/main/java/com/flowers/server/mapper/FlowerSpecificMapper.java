package com.flowers.server.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.flowers.api.model.FlowerSpecific;
import com.flowers.server.provider.FlowerSpecificProvider;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FlowerSpecificMapper extends BaseMapper<FlowerSpecific> {

    @InsertProvider(type = FlowerSpecificProvider.class, method = "inserts")
    void inserts(String specific, Long fid);
}
