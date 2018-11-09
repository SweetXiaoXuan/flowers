package com.flowers.web.controller;

import com.alibaba.fastjson.JSON;
import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.User;
import com.flowers.api.service.FlowerService;
import com.flowers.api.service.UserService;
import com.flowers.web.common.bean.ResultJson;
import feign.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/flower")
public class FlowerController {
    @Autowired(required = false)
    private FlowerService flowerService;

    @ResponseBody
    @RequestMapping(value = "/flowersInfo", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> login(
            @RequestParam("fid") String fid) {
        ResultJson resultJson = new ResultJson();
        FlowerInfo info = flowerService.getInfoById(fid);
        resultJson.setBody(info);
        resultJson.setMsg("查询成功");
        return ResponseEntity.ok().body(resultJson);
    }
}
