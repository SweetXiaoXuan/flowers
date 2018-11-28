package com.flowers.web.manager.controller;

import com.flowers.api.service.FlowerService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.utils.MeaasgeUtil;
import com.flowers.common.utils.ResultMsgConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class ManagerController {
    @Autowired(required = false)
    private FlowerService flowerService;
    private MeaasgeUtil me = new MeaasgeUtil();

    @ResponseBody
    @RequestMapping(value = "/console", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> console() {
        return ResponseEntity.ok().body(new ResultJson(flowerService.console(), me.getValue(ResultMsgConstant.querySuccess)));
    }
}
