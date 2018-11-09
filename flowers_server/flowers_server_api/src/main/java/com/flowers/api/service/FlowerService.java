package com.flowers.api.service;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@FeignClient(name = "flowers-server")
public interface FlowerService {
    /**
     * 根据用户ID获得用户信息
     * @param fid
     * @return
     */
    @GetMapping("/flower/flowersInfo")
    @ResponseBody
    FlowerInfo getInfoById(@RequestParam("fid") String fid);

    @GetMapping("/flower/flowers")
    @ResponseBody
    List<FlowerInfo> flowers(@RequestParam("flowerName") String flowerName);
}
