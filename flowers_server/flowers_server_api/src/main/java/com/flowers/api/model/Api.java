package com.flowers.api.model;

import lombok.Data;

@Data
public class Api {
    private Long id;
    private String createTime;
    private Integer level;
    private String url;
}
