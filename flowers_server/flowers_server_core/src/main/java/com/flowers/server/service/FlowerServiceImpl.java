package com.flowers.server.service;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.service.FlowerService;
import com.flowers.server.mapper.FlowerMapper;
import com.flowers.server.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class FlowerServiceImpl implements FlowerService {
    @Autowired
    private FlowerMapper flowerMapper;
    @Autowired
    private UserMapper userMapper;

    @Override
    @GetMapping("/flowersInfo")
    @ResponseBody
    public FlowerInfo getInfoById(
            @RequestParam("fid") String fid
    ) {
        return flowerMapper.getInfoById(Long.parseLong(fid));
    }

    @Override
    @GetMapping("/console")
    @ResponseBody
    public Map<String, Object> console() {
        Map<String, Object> map = new HashMap<>();
        map.put("countFlowerToday", flowerMapper.countToday());
        map.put("countFlowerAll", flowerMapper.countAll());
        map.put("countUserAll", userMapper.countAll());
        return map;
    }


    @Override
    @GetMapping("/flowers")
    @ResponseBody
    public List<FlowerInfo> flowers(
            @RequestParam("flowerName") String flowerName
    ) {
        return flowerMapper.flowers(flowerName);
    }
}
