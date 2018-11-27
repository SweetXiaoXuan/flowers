package com.flowers.server.provider;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class FlowerSpecificProvider {
    public String inserts(String specific, Long fid) {
        StringBuffer sql = new StringBuffer("insert into flower_specific(fid, title, content, remarks) values");
        JSONArray jsonArray = JSONArray.parseArray(specific);
        for (int i = 0; i < jsonArray.size(); i++) {
            JSONObject jsonObject = jsonArray.getJSONObject(i);
            sql.append("(");
            sql.append(fid).append(", ");
            sql.append("'").append(jsonObject.getString("title")).append("', ");
            sql.append("'").append(jsonObject.getString("content")).append("', ");
            sql.append("'").append(jsonObject.getString("remarks")).append("'");
            sql.append("), ");
        }
        String str = sql.toString();
        String str1 = str.substring(0, str.length() - 2);
        return str1;
    }

}
