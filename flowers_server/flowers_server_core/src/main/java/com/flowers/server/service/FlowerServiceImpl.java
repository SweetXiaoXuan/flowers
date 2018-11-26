package com.flowers.server.service;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.service.FlowerService;
import com.flowers.common.page.PageBean;
import com.flowers.server.mapper.FlowerMapper;
import com.flowers.server.mapper.UserLogMapper;
import com.flowers.server.mapper.UserMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
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
    @Autowired
    private UserLogMapper userLogMapper;

    @Override
    @GetMapping("/flowersInfo")
    @ResponseBody
    public FlowerInfo getInfoById(
            @RequestParam("fid") String fid
    ) {
        userLogMapper.insertLog("根据 id 查询鲜花信息", 2, 1L);
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
        userLogMapper.insertLog("查询总数", 2, 1L);
        return map;
    }

    @Override
    @PostMapping("/flowers")
    @ResponseBody
    public PageBean<FlowerInfo> flowers(
            @RequestBody Map<String, Object> param
    ) {
        String flowerName = param.get("flowerName").toString();
        Integer page = Integer.parseInt(param.get("page").toString());
        Integer size = Integer.parseInt(param.get("size").toString());
        List<FlowerInfo> infos = flowerMapper.flowers(flowerName);
        Page<FlowerInfo> pageData = PageHelper.startPage(page, size).doSelectPage(()-> flowerMapper.flowers(flowerName));
        pageData.setTotal(infos.size());
        PageBean<FlowerInfo> pageBean = new PageBean<>();
        pageBean.setItems(pageData);
        pageBean.setTotalNum(infos.size());
        pageBean.setHasNext(infos.size(), size, page);
        userLogMapper.insertLog("查询鲜花列表", 2, 1L);
        return pageBean;
    }


}
