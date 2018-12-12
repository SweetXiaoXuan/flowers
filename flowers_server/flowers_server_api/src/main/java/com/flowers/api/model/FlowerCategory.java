package com.flowers.api.model;

import lombok.Data;

@Data
public class FlowerCategory {
    private Long id;
    private String createTime;
    private String remarks;
    private Integer delete;
    private Integer type;
    private String name;
}
