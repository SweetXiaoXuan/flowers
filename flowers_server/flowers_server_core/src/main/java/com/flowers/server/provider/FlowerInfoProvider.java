package com.flowers.server.provider;

import com.flowers.common.utils.StringUtil;

public class FlowerInfoProvider {

    public String flowers(String flowerName, String type) {
        StringBuilder sql = new StringBuilder(
                "select * \n" +
                        "from flower_info i \n" +
                        "left join flower_association a on a.fid = i.id \n" +
                        "LEFT JOIN flower_category c on a.cid = c.id\n" +
                        "where 1 = 1  ");
        if (!StringUtil.isEmpty(type) && !"0".equals(type)) {
            sql.append(" and c.type = " + type);
        } else {
            sql = new StringBuilder("select * from flower_info i where 1 = 1 ");
        }
        if (!StringUtil.isEmpty(flowerName)) {
            sql.append(" and flower_name = " + flowerName);
        }
        return sql.toString();
    }

}
