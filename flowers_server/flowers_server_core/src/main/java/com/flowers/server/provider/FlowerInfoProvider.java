package com.flowers.server.provider;

import com.flowers.common.utils.SqlUtil;
import com.flowers.common.utils.StringUtil;

import java.util.HashMap;
import java.util.Map;

public class FlowerInfoProvider {

    public String flowers(String flowerName) {
        Map<String, Object> param = new HashMap<>();
        param.put("flower_name", flowerName);
        return StringUtil.isEmpty(flowerName)
                ? SqlUtil.conditionalQuery(null, "flower_info", "select")
                : SqlUtil.conditionalQueryLike(param, "flower_info", "select");
    }

}
