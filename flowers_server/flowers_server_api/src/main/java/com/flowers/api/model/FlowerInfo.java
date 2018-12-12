package com.flowers.api.model;

import lombok.Data;

@Data
public class FlowerInfo {
    private String id;
    private String createTime;
    private String flowerImg;
    private String remarks;
    private String flowerName;
    private Integer delete;
    private Integer recommend;
    private Integer popu;
    private Integer details;
    private String flowerLanguage;
}
