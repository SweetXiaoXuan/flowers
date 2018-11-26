package com.flowers.server.provider;

import com.alibaba.fastjson.JSON;
import com.flowers.common.utils.SqlUtil;
import com.flowers.common.utils.StringUtil;

import java.util.HashMap;
import java.util.Map;

public class UserLogProvider {
    public String logs(Map<String, Object> param) {
        param.remove("page");
        param.remove("size");
        return StringUtil.isEmpty(String.valueOf(param.get("type")))
                ? SqlUtil.conditionalQuery(null, "user_log", "select")
                : SqlUtil.conditionalQueryLike(param, "user_log", "select");
    }

    public String findAll(Map<String, Object> param) {
        param.remove("page");
        param.remove("size");
        Map<String, Object> map = new HashMap<>();
        for (Map.Entry<String, Object> str : param.entrySet()) {
            if (!StringUtil.isEmpty(str.getValue() + "")) {
                map.put(str.getKey(), str.getValue());
            }
        }
        return map.size() < 1
                ? SqlUtil.conditionalQuery(null, "user", "select")
                : SqlUtil.conditionalQueryLike(map, "user", "select");
    }
}
