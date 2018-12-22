package com.flowers.web.manager.controller;

import com.flowers.api.model.Api;
import com.flowers.api.service.ApiService;
import com.flowers.api.service.MenuService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.utils.CodeConstant;
import com.flowers.common.utils.MeaasgeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class ManagerController {
    @Autowired(required = false)
    private MenuService menuService;
    @Autowired(required = false)
    private ApiService apiService;
    private MeaasgeUtil me = new MeaasgeUtil();

    @ResponseBody
    @RequestMapping(value = "/menuNames", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> menuNames() {
        return ResponseEntity.ok().body(new ResultJson(menuService.menuNames()));
    }

    @ResponseBody
    @RequestMapping(value = "/url", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> url(@RequestParam("url") String url) {
        Api api = apiService.url(url);
        return ResponseEntity.ok().body(new ResultJson(api == null ? CodeConstant.ERROR : CodeConstant.SUCCESS, api));
    }
}
