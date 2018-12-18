package com.flowers.web.flower.controller;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.service.FlowerService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.page.PageBean;
import com.flowers.common.utils.MeaasgeUtil;
import com.flowers.common.utils.ResultMsgConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
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
        return ResponseEntity.ok().body(new ResultJson(flowerService.console()));
    }

    @ResponseBody
    @RequestMapping(value = "/flowersInfo", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowersInfo(
            @RequestParam("fid") String fid) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.getInfoById(fid)));
    }

    @ResponseBody
    @RequestMapping(value = "/flowerSpecific", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowerSpecific(
            @RequestParam("fid") String fid) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.flowerSpecific(fid)));
    }

    @ResponseBody
    @RequestMapping(value = "/flowers", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowers(
            @RequestParam("flowerName") String flowerName,
            @RequestParam("season") String season,
            @RequestParam("color") String color,
            @RequestParam("page") String page,
            @RequestParam("type") String type,
            @RequestParam("limit") String size
            ) {
        Map<String, Object> param = new HashMap<>();
        param.put("flowerName", flowerName);
        param.put("page", Integer.parseInt(page));
        param.put("size", Integer.parseInt(size));
        param.put("color", color);
        param.put("type", type);
        param.put("season", season);
        PageBean<FlowerInfo> info = flowerService.flowers(param);
        return ResponseEntity.ok().body(new ResultJson(info));
    }

    @ResponseBody
    @RequestMapping(value = "/flower", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flower(
            @RequestParam("remarks") String remarks,
            @RequestParam("flowerName") String flowerName,
            @RequestParam("flowerLanguage") String flowerLanguage,
            @RequestParam("flowerImg") String flowerImg,
            @RequestParam("specific") String specific) {
        flowerService.flower(remarks, flowerName, flowerLanguage, flowerImg, specific);
        return ResponseEntity.ok().body(new ResultJson());
    }

    @ResponseBody
    @RequestMapping(value = "/recommendFlower", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> recommendFlower() {
        return ResponseEntity.ok().body(new ResultJson(flowerService.recommendFlower()));
    }

    @ResponseBody
    @RequestMapping(value = "/popular", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> popular(
            @RequestParam("fid") String fid,
            @RequestParam("whether") String whether,
            @RequestParam("type") String type
            ) {
        flowerService.popular(fid, whether, type);
        return ResponseEntity.ok().body(new ResultJson());
    }

    @ResponseBody
    @RequestMapping(value = "/popuList", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> popuList(
            @RequestParam("page") Integer page,
            @RequestParam("limit") Integer size
            ) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.popuList(page, size)));
    }

    @ResponseBody
    @RequestMapping(value = "/detailsList", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> detailsList() {
        return ResponseEntity.ok().body(new ResultJson(flowerService.detailsList()));
    }

}
