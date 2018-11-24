package com.flowers.server.service;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.service.FlowerService;
import com.flowers.common.page.PageBean;
import com.flowers.server.mapper.FlowerMapper;
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
    public PageBean<FlowerInfo> flowers(
            @RequestParam("flowerName") String flowerName,
            @RequestParam("page") Integer page,
            @RequestParam("size") Integer size
    ) {
//        PageHelper.startPage(page, size);
//        List<FlowerInfo> withdrawBeanList = flowerMapper.flowers(flowerName);
//        int countNums = withdrawBeanList.size();
//        PageBean<FlowerInfo> pageData = new PageBean<>(page, size, countNums);
//        pageData.setItems(withdrawBeanList);
        List<FlowerInfo> infos = flowerMapper.flowers(flowerName);
        Page<FlowerInfo> pageData = PageHelper.startPage(page, size).doSelectPage(()-> flowerMapper.flowers(flowerName));

        long total = PageHelper.count(()->flowerMapper.flowers(flowerName));

        pageData.setTotal(infos.size());

        PageBean<FlowerInfo> pageBean = new PageBean<>();
        pageBean.setItems(pageData);
        pageBean.setTotalNum(infos.size());
        pageBean.setHasNext(infos.size(), size, page);



        return pageBean;
//        return flowerMapper.flowers(flowerName, page, size);
    }


}
