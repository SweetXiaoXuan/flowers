package com.flowers.api.model;

import lombok.Data;

@Data
public class FlowerSeason {
    private Long id;
    private String createTime;
    private String remarks;
    private Integer delete;
    private String name;
}
