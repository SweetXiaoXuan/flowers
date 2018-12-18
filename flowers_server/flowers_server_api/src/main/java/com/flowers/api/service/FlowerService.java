package com.flowers.api.service;

import com.flowers.api.model.FlowerInfo;
import com.flowers.common.page.PageBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@FeignClient(name = "flowers-server")
public interface FlowerService {
    @GetMapping("/flowersInfo")
    @ResponseBody
    FlowerInfo getInfoById(@RequestParam("fid") String fid);

    @GetMapping("/flowerSpecific")
    @ResponseBody
    Map<String, Object> flowerSpecific(@RequestParam("fid") String fid);

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

    @PostMapping("/popular")
    @ResponseBody
    void popular(
            @RequestParam("fid") String fid,
            @RequestParam("whether") String whether,
            @RequestParam("type") String type);

    @ResponseBody
    @GetMapping("/popuList")
    PageBean<FlowerInfo> popuList(
            @RequestParam("page") Integer page,
            @RequestParam("size") Integer size
    );

    @ResponseBody
    @GetMapping("/detailsList")
    List<FlowerInfo> detailsList();

    @RequestMapping("/readInfo")
    void readInfo(@RequestParam("fid") String fid);

}
