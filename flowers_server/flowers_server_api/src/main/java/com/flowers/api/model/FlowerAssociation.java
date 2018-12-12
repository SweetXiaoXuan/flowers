package com.flowers.api.model;

import lombok.Data;

@Data
public class FlowerAssociation {
    private Long id;
    private String createTime;
    private String remarks;
    private Integer delete;
    private Long cid;
    private Long fid;
}
