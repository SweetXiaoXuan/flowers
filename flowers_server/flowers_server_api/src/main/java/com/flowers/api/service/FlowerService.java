package com.flowers.api.service;

import com.flowers.api.model.FlowerInfo;
import com.flowers.common.page.PageBean;
import com.github.pagehelper.Page;
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

    @GetMapping("/console")
    @ResponseBody
    Map<String, Object> console();

    @GetMapping("/flowers")
    @ResponseBody
    Page<FlowerInfo> flowers(
            @RequestParam("flowerName") String flowerName,
            @RequestParam("page") Integer page,
            @RequestParam("size") Integer size
    );
}
