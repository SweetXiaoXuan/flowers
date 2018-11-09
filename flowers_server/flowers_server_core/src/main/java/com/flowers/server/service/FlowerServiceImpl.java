package com.flowers.server.service;

import com.alibaba.fastjson.JSON;
import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.User;
import com.flowers.api.service.FlowerService;
import com.flowers.server.mapper.FlowerMapper;
import com.flowers.server.mapper.UserMapper;
import com.github.pagehelper.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class FlowerServiceImpl implements FlowerService {
    @Autowired
    private FlowerMapper flowerMapper;

    @Override
    @GetMapping("/flowersInfo")
    @ResponseBody
    public FlowerInfo getInfoById(@RequestParam("fid") String fid) {
        return flowerMapper.getInfoById(Long.parseLong(fid));
    }


    @Override
    @GetMapping("/flowers")
    @ResponseBody
    public List<FlowerInfo> flowers(@RequestParam("flowerName") String flowerName) {
        return flowerMapper.flowers(flowerName);
    }
}
