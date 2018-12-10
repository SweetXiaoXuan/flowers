package com.flowers.server.service;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.FlowerSpecific;
import com.flowers.api.service.FlowerService;
import com.flowers.common.page.PageBean;
import com.flowers.common.utils.StringUtil;
import com.flowers.common.utils.TransferUtils;
import com.flowers.server.mapper.FlowerMapper;
import com.flowers.server.mapper.FlowerSpecificMapper;
import com.flowers.server.mapper.UserLogMapper;
import com.flowers.server.mapper.UserMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
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
    @Autowired
    private FlowerSpecificMapper flowerSpecificMapper;

    @Override
    @GetMapping("/flowersInfo")
    @ResponseBody
    public FlowerInfo getInfoById(
            @RequestParam("fid") String fid
    ) {
        userLogMapper.insertLog("根据 id 查询鲜花信息", 2, 1L);
        return flowerMapper.getInfoById(fid);
    }

    @Override
    @GetMapping("/flowerSpecific")
    public Map<String, Object> flowerSpecific( @RequestParam("fid") String fid) {
        userLogMapper.insertLog("根据 id 查询鲜花其他信息", 2, 1L);
        List<FlowerSpecific> flowerSpecifics = flowerMapper.flowerSpecific((fid));

        Map<String, Object> map = new HashMap<>();
        if (flowerSpecifics.size() > 0) {
            List<Map<String, Object>> list = new ArrayList<>();
            for (FlowerSpecific specific : flowerSpecifics) {
                Map<String, Object> specificMap = TransferUtils.transBeanToMap(specific);
                list.add(specificMap);
            }
            map.put("flowerSpecifics", list);
        }
        map.put("recommend", flowerMapper.getRecommend() == 0 ? 0 : 1);
        return map;
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
        String type = param.get("type").toString();
        String flowerName = param.get("flowerName").toString();
        Integer page = Integer.parseInt(param.get("page").toString());
        Integer size = Integer.parseInt(param.get("size").toString());
        List<FlowerInfo> infos = flowerMapper.flowers(flowerName, type);
        Page<FlowerInfo> pageData = PageHelper.startPage(page, size).doSelectPage(()-> flowerMapper.flowers(flowerName, type));
        pageData.setTotal(infos.size());
        PageBean<FlowerInfo> pageBean = new PageBean<>();
        pageBean.setItems(pageData);
        pageBean.setTotalNum(infos.size());
        pageBean.setHasNext(infos.size(), size, page);
        userLogMapper.insertLog("查询鲜花列表", 2, 1L);
        return pageBean;
    }

    @Override
    @PostMapping("/flower")
    @ResponseBody
    public void flower(
            @RequestParam("remarks") String remarks,
            @RequestParam("flowerName") String flowerName,
            @RequestParam("flowerLanguage") String flowerLanguage,
            @RequestParam("flowerImg") String flowerImg,
            @RequestParam("specific") String specific) {
        userLogMapper.insertLog("添加鲜花基本信息", 1, 1L);
        flowerMapper.saveFlower(remarks, flowerName, flowerLanguage, flowerImg);
        userLogMapper.insertLog("查询鲜花 id", 2, 1L);
        Long fid = flowerMapper.getFid(remarks, flowerName, flowerLanguage, flowerImg);
        if (!StringUtil.isEmpty(specific)) {
            userLogMapper.insertLog("添加鲜花其他信息", 1, 1L);
            flowerSpecificMapper.inserts(specific, fid);
        }
    }

    @GetMapping("/recommendFlower")
    @Override
    public FlowerInfo recommendFlower() {
        userLogMapper.insertLog("查询首页推荐鲜花信息", 2, 1L);
        return flowerMapper.recommendFlower();
    }

    @PostMapping("/popular")
    @Override
    public void popular(
            @RequestParam("fid") String fid,
            @RequestParam("whether") String whether,
            @RequestParam("type") String type) {
        String name = null;
        if ("3".equals(type)) {
            name = "热门列表";
            flowerMapper.popu(fid, whether);
        }
        if ("1".equals(type)) {
            name = "首页推荐";
            flowerMapper.recommend(fid, whether);
        }
        if ("2".equals(type)) {
            name = "详情推荐列表";
            flowerMapper.details(fid, whether);
        }
        userLogMapper.insertLog("推荐鲜花到" + name , 3, 1L);
    }

    @Override
    @GetMapping("/popuList")
    public PageBean<FlowerInfo> popuList(Integer page, Integer size) {
        List<FlowerInfo> infos = flowerMapper.popuList();
        Page<FlowerInfo> pageData = PageHelper.startPage(page, size).doSelectPage(()-> flowerMapper.popuList());
        pageData.setTotal(infos.size());
        PageBean<FlowerInfo> pageBean = new PageBean<>();
        pageBean.setItems(pageData);
        pageBean.setTotalNum(infos.size());
        pageBean.setHasNext(infos.size(), size, page);
        userLogMapper.insertLog("查询热门鲜花列表", 2, 1L);
        return pageBean;
    }

    @Override
    @GetMapping("/detailsList")
    public List<FlowerInfo> detailsList() {
        userLogMapper.insertLog("查询详情推荐鲜花列表", 2, 1L);
        return flowerMapper.detailsList();
    }

}
