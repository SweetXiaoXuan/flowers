package com.flowers.server.provider;

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
}
