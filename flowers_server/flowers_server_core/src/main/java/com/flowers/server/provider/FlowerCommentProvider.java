package com.flowers.server.provider;

public class FlowerCommentProvider {
    public String comments(String fid) {
        StringBuilder sql = new StringBuilder(
                "select c.*, u.username\n" +
                "from flower_comment c\n" +
                "left join user u on u.id = c.uid \n" +
                "where c.fid = " + fid + " and c.`delete` = 0");

        return sql.toString();

    }
}
