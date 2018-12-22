package com.flowers.api.service;

import com.flowers.api.model.Api;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@FeignClient(name = "flowers-server")
public interface ApiService {

    @GetMapping("/url")
    @ResponseBody
    Api url(@RequestParam("url") String url);

}
