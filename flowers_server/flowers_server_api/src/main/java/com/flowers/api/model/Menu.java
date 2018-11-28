package com.flowers.api.model;

import lombok.Data;

@Data
public class Menu {
    private String id;
    private String createTime;
    private String name;
    private String content;
    private String status;
    private Integer delete;
}
