package com.flowers.api.fbean;

import lombok.Data;

@Data
public class FlowerInfoBean {
    private String id;
    private String createTime;
    private String flowerImg;
    private String remarks;
    private String flowerName;
    private Integer delete;
    private Integer recommend;
    private Integer popu;
    private Integer rnum;
    private Integer cnum;
    private Integer details;
    private String flowerLanguage;
}
