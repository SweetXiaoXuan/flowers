package com.flowers.web.flower.controller;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.model.FlowerSpecific;
import com.flowers.api.service.FlowerService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.page.PageBean;
import com.flowers.common.utils.MeaasgeUtil;
import com.flowers.common.utils.ResultMsgConstant;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class FlowerController  {
    @Autowired(required = false)
    private FlowerService flowerService;
    private MeaasgeUtil me = new MeaasgeUtil();

//    @PreAuthorize("hasRole('ADMIN')")
    @ResponseBody
    @RequestMapping(value = "/console", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> console() {
        return ResponseEntity.ok().body(new ResultJson(flowerService.console(), me.getValue(ResultMsgConstant.querySuccess)));
    }

    @ResponseBody
    @RequestMapping(value = "/flowersInfo", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowersInfo(
            @RequestParam("fid") String fid) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.getInfoById(fid), me.getValue(ResultMsgConstant.querySuccess)));
    }

    @ResponseBody
    @RequestMapping(value = "/flowerSpecific", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowerSpecific(
            @RequestParam("fid") String fid) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.flowerSpecific(fid), me.getValue(ResultMsgConstant.querySuccess)));
    }

    @ResponseBody
    @RequestMapping(value = "/flowers", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowers(
            @RequestParam("flowerName") String flowerName,
            @RequestParam("season") String season,
            @RequestParam("color") String color,
            @RequestParam("page") String page,
            @RequestParam("limit") String size
            ) {
        Map<String, Object> param = new HashMap<>();
        param.put("flowerName", flowerName);
        param.put("page", Integer.parseInt(page));
        param.put("size", Integer.parseInt(size));
        param.put("color", color);
        param.put("season", season);
        PageBean<FlowerInfo> info = flowerService.flowers(param);
        return ResponseEntity.ok().body(new ResultJson(info.getItems(), me.getValue(ResultMsgConstant.querySuccess), info.getTotalNum()));
    }


    @ResponseBody
    @RequestMapping(value = "/flower", method = RequestMethod.PUT, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flower(
            @RequestBody FlowerInfo info) {
        flowerService.flower(info);
        return ResponseEntity.ok().body(new ResultJson());
    }

    @ResponseBody
    @RequestMapping(value = "/specific", method = RequestMethod.PUT, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> specific(
            @RequestBody FlowerSpecific specific) {
        flowerService.specific(specific);
        return ResponseEntity.ok().body(new ResultJson());
    }

}
