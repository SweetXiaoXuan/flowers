package com.flowers.api.model;

import lombok.Data;

/**
 * user
 * @author liumengwei
 * @date 2018/10/12
 * @since V1.0
 */
@Data
public class User {
    private Long id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private Integer delete;
    private Integer status;
    private String remarks;
    private String createTime;
    private Integer level;
}
