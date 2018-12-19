package com.flowers.api.fbean;

import lombok.Data;

@Data
public class FlowerCommentBean {
    private String id;
    private String createTime;
    private Integer delete;
    private Long uid;
    private Long fid;
    private String content;
    private String username;
    private String headpic;
}
