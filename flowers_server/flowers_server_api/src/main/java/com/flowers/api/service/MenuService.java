package com.flowers.api.service;

import com.flowers.api.model.Menu;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@FeignClient(name = "flowers-server")
public interface MenuService {
    @GetMapping("/menuNames")
    List<Menu> menuNames();
}
