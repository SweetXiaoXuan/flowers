package com.flowers.web.manager.controller;

import com.flowers.api.service.MenuService;
import com.flowers.common.bean.ResultJson;
import com.flowers.common.utils.MeaasgeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class ManagerController {
    @Autowired(required = false)
    private MenuService menuService;
    private MeaasgeUtil me = new MeaasgeUtil();

    @ResponseBody
    @RequestMapping(value = "/menuNames", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    public ResponseEntity<ResultJson> menuNames() {
        return ResponseEntity.ok().body(new ResultJson(menuService.menuNames()));
    }
}
