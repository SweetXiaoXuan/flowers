package com.flowers.api.service;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.FlowerSpecific;
import com.flowers.common.page.PageBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@FeignClient(name = "flowers-server")
public interface FlowerService {
    /**
     * 根据用户ID获得用户信息
     * @param fid
     * @return
     */
    @GetMapping("/flowersInfo")
    @ResponseBody
    FlowerInfo getInfoById(@RequestParam("fid") String fid);

    @GetMapping("/flowerSpecific")
    @ResponseBody
    List<FlowerSpecific> flowerSpecific(@RequestParam("fid") String fid);

    @GetMapping("/console")
    @ResponseBody
    Map<String, Object> console();

    @PostMapping("/flowers")
    @ResponseBody
    PageBean<FlowerInfo> flowers(
            @RequestBody Map<String, Object> param
    );

    @PostMapping("/flower")
    @ResponseBody
    void flower(
            @RequestParam("remarks") String remarks,
            @RequestParam("flowerName") String flowerName,
            @RequestParam("flowerLanguage") String flowerLanguage,
            @RequestParam("flowerImg") String flowerImg,
            @RequestParam("specific") String specific);


    @GetMapping("/recommendFlower")
    @ResponseBody
    FlowerInfo recommendFlower();

}
