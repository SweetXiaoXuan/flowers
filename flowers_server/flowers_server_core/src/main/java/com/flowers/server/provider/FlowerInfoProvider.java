package com.flowers.server.provider;

import com.flowers.common.TypeMap;
import com.flowers.common.utils.StringUtil;

public class FlowerInfoProvider {

    public String flowers(String flowerName, String type) {
        StringBuilder sql = new StringBuilder("select * from flower_info where 1 = 1 ");
        if (!StringUtil.isEmpty(flowerName)) {
            sql.append(" and flower_name = " + flowerName);
        }
        if (!StringUtil.isEmpty(type)) {
            if (!"0".equals(type)) {
                TypeMap map = new TypeMap();
                sql.append(" and " + map.map.get(type) + " is not null");
            }
        }
        return sql.toString();
    }

}
