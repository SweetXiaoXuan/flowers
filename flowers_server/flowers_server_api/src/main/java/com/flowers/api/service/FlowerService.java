package com.flowers.api.service;

import com.flowers.api.fbean.FlowerCommentBean;
import com.flowers.api.model.FlowerComment;
import com.flowers.api.model.FlowerInfo;
import com.flowers.common.page.PageBean;
import com.flowers.api.fbean.FlowerInfoBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@FeignClient(name = "flowers-server")
public interface FlowerService {
    @GetMapping("/flowersInfo")
    @ResponseBody
    Map<String, Object> getInfoById(
            @RequestParam("fid") String fid,
            @RequestParam("uid") Long uid);

    @GetMapping("/flowerSpecific")
    @ResponseBody
    Map<String, Object> flowerSpecific(
            @RequestParam("fid") String fid,
            @RequestParam("uid") Long uid);

    @GetMapping("/console")
    @ResponseBody
    Map<String, Object> console(
            @RequestParam("uid") Long uid
    );

    @PostMapping("/flowers")
    @ResponseBody
    PageBean<FlowerInfoBean> flowers(
            @RequestBody Map<String, Object> param,
            @RequestParam("uid") Long uid
    );

    @PostMapping("/flower")
    @ResponseBody
    void flower(
            @RequestParam("remarks") String remarks,
            @RequestParam("flowerName") String flowerName,
            @RequestParam("flowerLanguage") String flowerLanguage,
            @RequestParam("flowerImg") String flowerImg,
            @RequestParam("specific") String specific,
            @RequestParam("uid") Long uid);

    @GetMapping("/recommendFlower")
    @ResponseBody
    FlowerInfo recommendFlower(
            @RequestParam("uid") Long uid
    );

    @PostMapping("/popular")
    @ResponseBody
    void popular(
            @RequestParam("fid") String fid,
            @RequestParam("whether") String whether,
            @RequestParam("type") String type,
            @RequestParam("uid") Long uid);

    @ResponseBody
    @GetMapping("/popuList")
    PageBean<FlowerInfoBean> popuList(
            @RequestParam("page") Integer page,
            @RequestParam("size") Integer size,
            @RequestParam("uid") Long uid
    );

    @ResponseBody
    @GetMapping("/detailsList")
    List<FlowerInfo> detailsList(
            @RequestParam("uid") Long uid
    );

    @RequestMapping("/readInfo")
    void readInfo(
            @RequestParam("fid") String fid,
            @RequestParam("uid") Long uid
    );

    @GetMapping("/commentList")
    @ResponseBody
    PageBean<FlowerCommentBean> commentList(
            @RequestParam("page") Integer page,
            @RequestParam("size") Integer size,
            @RequestParam("fid") String fid,
            @RequestParam("uid") Long uid
    );

    @PostMapping("/comment")
    @ResponseBody
    void comment(
            @RequestParam("fid") String fid,
            @RequestParam("content") String content,
            @RequestParam("uid") Long uid
    );

}
