package com.flowers.server.service;

import com.flowers.api.model.Api;
import com.flowers.api.service.ApiService;
import com.flowers.server.mapper.ApiMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class ApiServiceImpl implements ApiService {
    @Autowired
    private ApiMapper apiMapper;

    @GetMapping("/url")
    @ResponseBody
    @Override
    public Api url(String url) {
        return apiMapper.url(url);
    }
}
