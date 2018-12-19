package com.flowers.server.provider;

import com.flowers.common.utils.StringUtil;

public class FlowerInfoProvider {

    public String flowers(String flowerName, String type) {
        StringBuilder sql = new StringBuilder(
                "select i.*, ifnull(r.num, 0) as rnum, ifnull(c.num, 0) as cnum \n" +
                        "from flower_info i \n" +
                        "left join flower_association a on a.fid = i.id \n" +
                        "LEFT JOIN flower_category c on a.cid = c.id\n" +
                        "left join (select fid, count(id) as num from flower_read where `delete` = 0 group by fid) r on r.fid = i.id\n" +
                        "left join (select fid, count(id) as num from flower_comment where `delete` = 0 group by fid) c on c.fid = i.id " +
                        "where i.`delete` = 0 ");
        if (!StringUtil.isEmpty(type) && !"0".equals(type)) {
            sql.append(" and c.type = " + type);
        } else {
            sql = new StringBuilder(
                    "select i.*, ifnull(r.num, 0) as rnum, ifnull(c.num, 0) as cnum\n" +
                    "from flower_info i\n" +
                    "left join (select fid, count(id) as num from flower_read where `delete` = 0 group by fid) r on r.fid = i.id\n" +
                    "left join (select fid, count(id) as num from flower_comment where `delete` = 0 group by fid) c on c.fid = i.id " +
                    "where i.`delete` = 0 ");
        }
        if (!StringUtil.isEmpty(flowerName)) {
            sql.append(" and flower_name = " + flowerName);
        }
        return sql.toString();
    }

    public String popuList() {
        return "select i.*, ifnull(r.num, 0) as rnum, ifnull(c.num, 0) as cnum " +
                "from flower_info i \n" +
                " left join (select fid, count(id) as num from flower_read where `delete` = 0 group by fid) r on r.fid = i.id\n" +
                " left join (select fid, count(id) as num from flower_comment where `delete` = 0 group by fid) c on c.fid = i.id" +
                " where i.popu = 1 and i.`delete` = 0";
    }
}
