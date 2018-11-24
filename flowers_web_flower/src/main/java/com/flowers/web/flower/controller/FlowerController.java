package com.flowers.web.flower.controller;

import com.flowers.api.model.FlowerInfo;
import com.flowers.api.service.FlowerService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.utils.MeaasgeUtil;
import com.flowers.common.utils.ResultMsgConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class FlowerController  {
    @Autowired(required = false)
    private FlowerService flowerService;

//    @PreAuthorize("hasRole('ADMIN')")
    @ResponseBody
    @RequestMapping(value = "/console", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> console() {
        ResultJson resultJson = new ResultJson();
        resultJson.setBody(flowerService.console());
        resultJson.setMsg("查询成功");
        return ResponseEntity.ok().body(resultJson);
    }
    MeaasgeUtil me = new MeaasgeUtil();

    @ResponseBody
    @RequestMapping(value = "/flowersInfo", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowersInfo(
            @RequestParam("fid") String fid) {
        ResultJson resultJson = new ResultJson();
        FlowerInfo info = flowerService.getInfoById(fid);
        resultJson.setBody(info);
        resultJson.setMsg(me.getValue(ResultMsgConstant.querySuccess));
        return ResponseEntity.ok().body(resultJson);
    }

    @ResponseBody
    @RequestMapping(value = "/flowers", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> flowers(
            @RequestParam("flowerName") String flowerName) {
        List<FlowerInfo> info = flowerService.flowers(flowerName);
        return ResponseEntity.ok().body(new ResultJson(info, me.getValue(ResultMsgConstant.querySuccess), info.size()));
    }

}
