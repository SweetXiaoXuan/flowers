package com.flowers.api.model;

import lombok.Data;

@Data
public class FlowerCountry {
    private Long id;
    private String createTime;
    private String remarks;
    private Integer delete;
    private String name;
}
