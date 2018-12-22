package com.flowers.web.flower.controller;

import com.flowers.api.service.FlowerService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.page.PageBean;
import com.flowers.common.utils.MeaasgeUtil;
import com.flowers.api.fbean.FlowerInfoBean;
import com.netflix.ribbon.proxy.annotation.Content;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
public class FlowerController  {
    private Logger logger = LogManager.getLogger(FlowerController.class);
    @Autowired(required = false)
    private FlowerService flowerService;
    private MeaasgeUtil me = new MeaasgeUtil();

//    @PreAuthorize("hasRole('ADMIN')")
    @ResponseBody
    @RequestMapping(value = "/console", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> console(
            @Content HttpServletRequest request
    ) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.console(getUid(request))));
    }

    @ResponseBody
    @RequestMapping(value = "/flowersInfo", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowersInfo(
            @RequestParam("fid") String fid,
            @Content HttpServletRequest request) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.getInfoById(fid, getUid(request))));
    }

    @ResponseBody
    @RequestMapping(value = "/flowerSpecific", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowerSpecific(
            @RequestParam("fid") String fid,
            @Content HttpServletRequest request) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.flowerSpecific(fid, getUid(request))));
    }

    @ResponseBody
    @RequestMapping(value = "/flowers", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowers(
            @RequestParam("flowerName") String flowerName,
            @RequestParam("season") String season,
            @RequestParam("color") String color,
            @RequestParam("page") String page,
            @RequestParam("type") String type,
            @RequestParam("limit") String size,
            @Content HttpServletRequest request
            ) {
        Map<String, Object> param = new HashMap<>();
        param.put("flowerName", flowerName);
        param.put("page", Integer.parseInt(page));
        param.put("size", Integer.parseInt(size));
        param.put("color", color);
        param.put("type", type);
        param.put("season", season);
        PageBean<FlowerInfoBean> info = flowerService.flowers(param, getUid(request));
        return ResponseEntity.ok().body(new ResultJson(info));
    }

    @ResponseBody
    @RequestMapping(value = "/flower", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flower(
            @RequestParam("remarks") String remarks,
            @RequestParam("flowerName") String flowerName,
            @RequestParam("flowerLanguage") String flowerLanguage,
            @RequestParam("flowerImg") String flowerImg,
            @RequestParam("specific") String specific,
            @Content HttpServletRequest request) {
        flowerService.flower(remarks, flowerName, flowerLanguage, flowerImg, specific, getUid(request));
        return ResponseEntity.ok().body(new ResultJson());
    }

    @ResponseBody
    @RequestMapping(value = "/recommendFlower", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> recommendFlower(
            @Content HttpServletRequest request
    ) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.recommendFlower(getUid(request))));
    }

    @ResponseBody
    @RequestMapping(value = "/popular", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> popular(
            @RequestParam("fid") String fid,
            @RequestParam("whether") String whether,
            @RequestParam("type") String type,
            @Content HttpServletRequest request
            ) {
        flowerService.popular(fid, whether, type, getUid(request));
        return ResponseEntity.ok().body(new ResultJson());
    }

    @ResponseBody
    @RequestMapping(value = "/popuList", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> popuList(
            @RequestParam("page") Integer page,
            @RequestParam("limit") Integer size,
            @Content HttpServletRequest request
            ) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.popuList(page, size, getUid(request))));
    }

    @ResponseBody
    @RequestMapping(value = "/detailsList", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> detailsList(
            @Content HttpServletRequest request) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.detailsList(getUid(request))));
    }

    @ResponseBody
    @RequestMapping(value = "/commentList", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> commentList(
            @RequestParam("page") String page,
            @RequestParam("fid") String fid,
            @RequestParam("limit") String size,
            @Content HttpServletRequest request
            ) {
        return ResponseEntity.ok().body(new ResultJson(flowerService.commentList(Integer.parseInt(page) ,Integer.parseInt(size), fid, getUid(request))));
    }

    @ResponseBody
    @RequestMapping(value = "/comment", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> comment(
            @RequestParam("fid") String fid,
            @RequestParam("content") String content,
            @Content HttpServletRequest request
    ) {
        flowerService.comment(fid, content, getUid(request));
        return ResponseEntity.ok().body(new ResultJson());
    }

    private Long getUid(HttpServletRequest request) {
        return Long.parseLong(String.valueOf(request.getAttribute("uid")));
    }
}
