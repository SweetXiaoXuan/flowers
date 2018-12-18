package com.flowers.api.model;

import lombok.Data;

@Data
public class FlowerComment {
    private String id;
    private String createTime;
    private Integer delete;
    private Long uid;
    private Long fid;
    private String content;
}
