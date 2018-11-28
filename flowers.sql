/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : flowers

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 28/11/2018 15:46:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) DEFAULT NULL COMMENT '用户 id',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `delete` int(1) DEFAULT NULL COMMENT '是否删除 0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` int(1) DEFAULT NULL COMMENT '1新增 2查询 3修改 4删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for flower_info
-- ----------------------------
DROP TABLE IF EXISTS `flower_info`;
CREATE TABLE `flower_info` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `flower_name` varchar(255) DEFAULT NULL COMMENT '名字',
  `delete` int(1) DEFAULT '0' COMMENT '是否删除 0否 1是',
  `flower_language` varchar(500) DEFAULT NULL COMMENT '花语',
  `flower_img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for flower_specific
-- ----------------------------
DROP TABLE IF EXISTS `flower_specific`;
CREATE TABLE `flower_specific` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `fid` bigint(11) DEFAULT NULL COMMENT 'flower_info 表 id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `delete` int(1) DEFAULT '0' COMMENT '是否删除 0否 1是',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `content` varchar(255) DEFAULT NULL COMMENT '说明',
  `status` int(1) DEFAULT '0' COMMENT '0正常 1异常',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) DEFAULT NULL COMMENT '菜单地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `level` int(1) DEFAULT NULL COMMENT '等级，0-超级管理员 1-普通用户',
  `delete` int(1) DEFAULT NULL COMMENT '是否删除，0否 1是',
  `status` int(1) DEFAULT NULL COMMENT '账号状态，0正常 1锁定 2异常',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
