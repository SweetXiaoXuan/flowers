package com.flowers.api.model;

import lombok.Data;

@Data
public class Menu {
    private String id;
    private String createTime;
    private String name;
    private String content;
    private String url;
    private Integer status;
    private Integer delete;
}
