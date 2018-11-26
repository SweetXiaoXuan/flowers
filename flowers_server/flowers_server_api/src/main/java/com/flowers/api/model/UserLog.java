package com.flowers.api.model;


import lombok.Data;

@Data
public class UserLog {
    private Long id;
    private Long uid;
    private String createTime;
    private String description;
    private Integer delete;
    private Integer type;
}
