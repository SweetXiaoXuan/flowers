package com.flowers.server.service;

import com.flowers.api.model.Menu;
import com.flowers.api.service.MenuService;
import com.flowers.server.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Override
    @GetMapping("/menuNames")
    public List<Menu> menuNames() {
        return menuMapper.menuNames();
    }
}
