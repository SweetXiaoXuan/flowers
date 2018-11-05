package com.flowers.api.model;

import lombok.Data;

@Data
public class FlowerSpecific {
    private Long id;
    private Long fid;
    private String createTime;
    private String remarks;
    private Integer delete;
    private String title;
    private String content;
}
