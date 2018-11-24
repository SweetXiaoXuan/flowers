package com.flowers.common.bean;

import com.alibaba.fastjson.JSON;

public class ResultJson {
    private String code = "0";
    private Object body = null;
    private String msg = "成功";
    private Integer count = null;

    public ResultJson() {
    }

    public ResultJson(String code, Object body, String msg, Integer count) {
        this.code = code;
        this.body = body;
        this.msg = msg;
        this.count = count;
    }

    public ResultJson(String code, Object body, String msg) {
        this.code = code;
        this.body = body;
        this.msg = msg;
    }

    public ResultJson(String code, Object body, Integer count) {
        this.code = code;
        this.body = body;
        this.count = count;
    }

    public ResultJson(String code, Object body) {
        this.code = code;
        this.body = body;
    }

    public ResultJson(Object body, String msg, Integer count) {
        this.body = body;
        this.msg = msg;
        this.count = count;
    }

    public ResultJson(Object body, String msg) {
        this.body = body;
        this.msg = msg;
    }

    public ResultJson(Object body, Integer count) {
        this.body = body;
        this.count = count;
    }

    public ResultJson(Object body) {
        this.body = body;
    }


    @Override
    public String toString() {
        return JSON.toJSONString(this);
    }

    public Object getBody() {
        return body;
    }

    public void setBody(Object body) {
        this.body = body;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
