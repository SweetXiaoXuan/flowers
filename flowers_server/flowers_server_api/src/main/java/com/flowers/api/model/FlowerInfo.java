package com.flowers.api.model;

import lombok.Data;

@Data
public class FlowerInfo {
    private Long id;
    private String createTime;
    private String remarks;
    private String flowerName;
    private Integer delete;
    private String flowerLanguage;
}
