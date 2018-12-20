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

 Date: 20/12/2018 14:11:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flower_association
-- ----------------------------
DROP TABLE IF EXISTS `flower_association`;
CREATE TABLE `flower_association` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `fid` bigint(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `delete` int(1) DEFAULT '0' COMMENT '0否1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `cid` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_association
-- ----------------------------
BEGIN;
INSERT INTO `flower_association` VALUES (1, 1, NULL, 0, '2018-12-11 14:48:19', 1);
INSERT INTO `flower_association` VALUES (2, 2, NULL, 0, '2018-12-11 14:48:19', 2);
INSERT INTO `flower_association` VALUES (3, 3, NULL, 0, '2018-12-11 14:48:19', 3);
INSERT INTO `flower_association` VALUES (4, 4, NULL, 0, '2018-12-11 14:48:19', 4);
INSERT INTO `flower_association` VALUES (5, 5, NULL, 0, '2018-12-11 14:48:19', 5);
INSERT INTO `flower_association` VALUES (6, 6, NULL, 0, '2018-12-11 14:48:19', 6);
INSERT INTO `flower_association` VALUES (7, 1067322425079787557, NULL, 0, '2018-12-11 14:48:19', 7);
INSERT INTO `flower_association` VALUES (8, 1067322425079787558, NULL, 0, '2018-12-11 14:48:19', 8);
INSERT INTO `flower_association` VALUES (9, 1067322425079787559, NULL, 0, '2018-12-11 14:48:19', 9);
INSERT INTO `flower_association` VALUES (10, 1067322425079787560, NULL, 0, '2018-12-11 14:48:19', 10);
INSERT INTO `flower_association` VALUES (11, 1067322425079787561, NULL, 0, '2018-12-11 14:48:19', 11);
INSERT INTO `flower_association` VALUES (12, 1, NULL, 0, '2018-12-11 14:48:53', 12);
INSERT INTO `flower_association` VALUES (13, 2, NULL, 0, '2018-12-11 14:48:53', 13);
INSERT INTO `flower_association` VALUES (14, 3, NULL, 0, '2018-12-11 14:48:53', 14);
INSERT INTO `flower_association` VALUES (15, 4, NULL, 0, '2018-12-11 14:48:53', 15);
INSERT INTO `flower_association` VALUES (16, 5, NULL, 0, '2018-12-11 14:48:53', 16);
INSERT INTO `flower_association` VALUES (17, 6, NULL, 0, '2018-12-11 14:48:53', 17);
INSERT INTO `flower_association` VALUES (18, 1067322425079787557, NULL, 0, '2018-12-11 14:48:53', 18);
INSERT INTO `flower_association` VALUES (19, 1067322425079787558, NULL, 0, '2018-12-11 14:48:53', 19);
INSERT INTO `flower_association` VALUES (20, 1067322425079787559, NULL, 0, '2018-12-11 14:48:53', 20);
INSERT INTO `flower_association` VALUES (21, 1067322425079787560, NULL, 0, '2018-12-11 14:48:53', 21);
INSERT INTO `flower_association` VALUES (22, 1067322425079787561, NULL, 0, '2018-12-11 14:48:53', 22);
COMMIT;

-- ----------------------------
-- Table structure for flower_category
-- ----------------------------
DROP TABLE IF EXISTS `flower_category`;
CREATE TABLE `flower_category` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `delete` int(1) DEFAULT '0' COMMENT '0否1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL,
  `type` int(5) DEFAULT NULL COMMENT '1季节 2颜色 3国花 4节日 5世界',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_category
-- ----------------------------
BEGIN;
INSERT INTO `flower_category` VALUES (4, '红', 0, '2018-12-11 14:40:55', NULL, 2);
INSERT INTO `flower_category` VALUES (5, '橙', 0, '2018-12-11 14:41:20', NULL, 2);
INSERT INTO `flower_category` VALUES (6, '黄', 0, '2018-12-11 14:42:03', NULL, 2);
INSERT INTO `flower_category` VALUES (7, '绿', 0, '2018-12-11 14:42:03', NULL, 2);
INSERT INTO `flower_category` VALUES (8, '蓝', 0, '2018-12-11 14:42:03', NULL, 2);
INSERT INTO `flower_category` VALUES (9, '靛', 0, '2018-12-11 14:42:03', NULL, 2);
INSERT INTO `flower_category` VALUES (10, '紫', 0, '2018-12-11 14:42:03', NULL, 2);
INSERT INTO `flower_category` VALUES (11, '中国', 0, '2018-12-11 14:46:33', NULL, 3);
INSERT INTO `flower_category` VALUES (12, '英国', 0, '2018-12-11 14:46:33', NULL, 3);
INSERT INTO `flower_category` VALUES (13, '美国', 0, '2018-12-11 14:46:33', NULL, 3);
INSERT INTO `flower_category` VALUES (14, '法国', 0, '2018-12-11 14:46:33', NULL, 3);
INSERT INTO `flower_category` VALUES (15, '日本', 0, '2018-12-11 14:46:33', NULL, 3);
INSERT INTO `flower_category` VALUES (16, '春节', 0, '2018-12-11 14:46:33', NULL, 4);
INSERT INTO `flower_category` VALUES (17, '端午节', 0, '2018-12-11 14:46:33', NULL, 4);
INSERT INTO `flower_category` VALUES (18, '清明节', 0, '2018-12-11 14:46:33', NULL, 4);
INSERT INTO `flower_category` VALUES (19, '国庆节', 0, '2018-12-11 14:46:33', NULL, 4);
INSERT INTO `flower_category` VALUES (20, '中秋节', 0, '2018-12-11 14:46:33', NULL, 4);
INSERT INTO `flower_category` VALUES (21, '春', 0, '2018-12-11 14:46:33', NULL, 1);
INSERT INTO `flower_category` VALUES (22, '夏', 0, '2018-12-11 14:46:33', NULL, 1);
INSERT INTO `flower_category` VALUES (23, '秋', 0, '2018-12-11 14:46:33', NULL, 1);
INSERT INTO `flower_category` VALUES (24, '冬', 0, '2018-12-11 14:46:33', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for flower_color
-- ----------------------------
DROP TABLE IF EXISTS `flower_color`;
CREATE TABLE `flower_color` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '颜色',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_color
-- ----------------------------
BEGIN;
INSERT INTO `flower_color` VALUES (1, '红', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (2, '橙', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (3, '黄', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (4, '绿', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (5, '蓝', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (6, '靛', 0, '2018-11-29 17:08:28', NULL);
INSERT INTO `flower_color` VALUES (7, '紫', 0, '2018-11-29 17:08:28', NULL);
COMMIT;

-- ----------------------------
-- Table structure for flower_comment
-- ----------------------------
DROP TABLE IF EXISTS `flower_comment`;
CREATE TABLE `flower_comment` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `delete` int(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `fid` bigint(11) DEFAULT NULL,
  `uid` bigint(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_comment
-- ----------------------------
BEGIN;
INSERT INTO `flower_comment` VALUES (1, 0, '2018-12-19 11:30:01', 1, 1, '11111111111111111111111111111111111111111111111111');
INSERT INTO `flower_comment` VALUES (2, 0, '2018-12-19 14:22:48', 123, 1, '1');
INSERT INTO `flower_comment` VALUES (3, 0, '2018-12-19 14:25:49', 1, 1, '12345');
INSERT INTO `flower_comment` VALUES (4, 0, '2018-12-19 14:25:56', 1, 1, '234567987');
INSERT INTO `flower_comment` VALUES (5, 0, '2018-12-19 16:15:21', 1, 1, '123231212312312321312');
INSERT INTO `flower_comment` VALUES (6, 0, '2018-12-19 16:16:54', 1, 1, '12345');
INSERT INTO `flower_comment` VALUES (7, 0, '2018-12-19 16:17:17', 1, 1, '98976776667');
INSERT INTO `flower_comment` VALUES (8, 0, '2018-12-19 16:37:27', 1, 1, 'jdoqwidjoqfhewif');
INSERT INTO `flower_comment` VALUES (9, 0, '2018-12-19 11:30:01', 1, 1, '11111111111111111111111111111111111111111111111111');
INSERT INTO `flower_comment` VALUES (10, 0, '2018-12-19 14:22:48', 123, 1, '1');
INSERT INTO `flower_comment` VALUES (11, 0, '2018-12-19 14:25:49', 1, 1, '12345');
INSERT INTO `flower_comment` VALUES (12, 0, '2018-12-19 14:25:56', 1, 1, '234567987');
INSERT INTO `flower_comment` VALUES (13, 0, '2018-12-19 16:15:21', 1, 1, '123231212312312321312');
INSERT INTO `flower_comment` VALUES (14, 0, '2018-12-19 16:16:54', 1, 1, '12345');
INSERT INTO `flower_comment` VALUES (15, 0, '2018-12-19 16:17:17', 1, 1, '98976776667');
INSERT INTO `flower_comment` VALUES (16, 0, '2018-12-19 16:37:27', 1, 1, 'jdoqwidjoqfhewif');
INSERT INTO `flower_comment` VALUES (17, 0, '2018-12-19 11:30:01', 1, 1, '11111111111111111111111111111111111111111111111111');
INSERT INTO `flower_comment` VALUES (18, 0, '2018-12-19 14:22:48', 123, 1, '1');
INSERT INTO `flower_comment` VALUES (19, 0, '2018-12-19 14:25:49', 1, 1, '12345');
INSERT INTO `flower_comment` VALUES (20, 0, '2018-12-19 11:30:01', 1, 1, '11111111111111111111111111111111111111111111111111');
INSERT INTO `flower_comment` VALUES (21, 0, '2018-12-19 14:22:48', 123, 1, '1');
INSERT INTO `flower_comment` VALUES (22, 0, '2018-12-19 14:25:49', 1, 1, '12345');
INSERT INTO `flower_comment` VALUES (23, 0, '2018-12-19 14:25:56', 1, 1, '234567987');
INSERT INTO `flower_comment` VALUES (24, 0, '2018-12-19 16:15:21', 1, 1, '123231212312312321312');
COMMIT;

-- ----------------------------
-- Table structure for flower_country
-- ----------------------------
DROP TABLE IF EXISTS `flower_country`;
CREATE TABLE `flower_country` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '国家',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_country
-- ----------------------------
BEGIN;
INSERT INTO `flower_country` VALUES (1, '中国', 0, '2018-11-29 17:09:07', NULL);
INSERT INTO `flower_country` VALUES (2, '英国', 0, '2018-11-29 17:09:07', NULL);
INSERT INTO `flower_country` VALUES (3, '美国', 0, '2018-11-29 17:09:07', NULL);
INSERT INTO `flower_country` VALUES (4, '法国', 0, '2018-11-29 17:09:07', NULL);
INSERT INTO `flower_country` VALUES (5, '日本', 0, '2018-11-29 17:09:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for flower_festival
-- ----------------------------
DROP TABLE IF EXISTS `flower_festival`;
CREATE TABLE `flower_festival` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '国家',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_festival
-- ----------------------------
BEGIN;
INSERT INTO `flower_festival` VALUES (1, '春节', 0, '2018-11-29 17:09:43', NULL);
INSERT INTO `flower_festival` VALUES (2, '端午节', 0, '2018-11-29 17:09:43', NULL);
INSERT INTO `flower_festival` VALUES (3, '清明节', 0, '2018-11-29 17:09:43', NULL);
INSERT INTO `flower_festival` VALUES (4, '国庆节', 0, '2018-11-29 17:09:43', NULL);
INSERT INTO `flower_festival` VALUES (5, '中秋节', 0, '2018-11-29 17:09:43', NULL);
COMMIT;

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
  `recommend` int(1) DEFAULT '0' COMMENT '首页推荐 0否 1是',
  `popu` int(1) DEFAULT '0' COMMENT ' 热门列表 0否1是',
  `details` int(1) DEFAULT '0' COMMENT '详情 0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1067322425079787562 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_info
-- ----------------------------
BEGIN;
INSERT INTO `flower_info` VALUES (1, '2018-11-16 09:34:03', '', '紫滕花', 0, '对你执着，最幸福的时刻', '../flowers/紫藤.jpg', 0, 1, 1);
INSERT INTO `flower_info` VALUES (2, '2018-11-01 09:34:06', '', '紫罗兰', 0, '永恒的美丽，最适合送给天秤的淑女。', '../flowers/蓝色紫罗兰.jpg', 0, 0, 0);
INSERT INTO `flower_info` VALUES (3, '2018-11-08 09:34:10', '', '勿忘我', 0, '永恒的爱，浓情厚谊 ，永不变的心，永远的回忆', '../flowers/蓝色勿忘我.jpg', 0, 0, 0);
INSERT INTO `flower_info` VALUES (4, '2018-11-16 09:34:15', NULL, '水仙花', 0, '只爱自己', '../flowers/水仙花.jpg', 0, 0, 1);
INSERT INTO `flower_info` VALUES (5, '2018-11-16 09:34:17', NULL, '满天星', 0, '思念、清纯、梦境、真心喜欢、喜悦', '../flowers/满天星.jpg', 0, 1, 1);
INSERT INTO `flower_info` VALUES (6, '2018-11-16 09:34:20', NULL, '蝴蝶兰', 0, '我爱你、幸福向你飞来', '../flowers/蝴蝶兰.jpg', 0, 1, 0);
INSERT INTO `flower_info` VALUES (1067322425079787557, '2018-11-27 16:59:21', '', '玫瑰花', 0, '爱情、爱与美、容光焕发  ', '../flowers/白玫瑰1.jpg', 1, 0, 1);
INSERT INTO `flower_info` VALUES (1067322425079787558, '2018-11-29 09:14:30', '', '百合花', 0, '在中国百合具有百年好合美好家庭、伟大的爱之含意，有深深祝福的意义。受到这种花的祝福的人具有清纯天真的性格，集众人宠爱于一身，不过光凭这一点并不能平静度过一生，必须具备自制力，抵抗外界的诱惑，才能保持不被污染的纯真。', '../flowers/粉色百合花.jpg', 0, 1, 0);
INSERT INTO `flower_info` VALUES (1067322425079787559, '2018-11-29 09:19:17', '', '牡丹花', 0, '圆满、浓情、富贵 。', '../flowers/牡丹.jpg', 0, 1, 1);
INSERT INTO `flower_info` VALUES (1067322425079787560, '2018-11-29 09:28:52', '', '雏菊', 0, '永远的快乐（Happy forever）', '../flowers/蓝色雏菊花.jpg', 0, 0, 0);
INSERT INTO `flower_info` VALUES (1067322425079787561, '2018-11-29 09:33:15', NULL, '樱花', 0, '生命、幸福一生一世永不放弃，命运的法则就是循环。　　\n', '../flowers/樱花1.jpg', 0, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for flower_read
-- ----------------------------
DROP TABLE IF EXISTS `flower_read`;
CREATE TABLE `flower_read` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(50) DEFAULT NULL,
  `uid` bigint(11) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `delete` int(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_read
-- ----------------------------
BEGIN;
INSERT INTO `flower_read` VALUES (2, '1', 1, '2018-12-18 17:10:08', 0);
INSERT INTO `flower_read` VALUES (3, '1067322425079787557', 1, '2018-12-18 17:10:27', 0);
INSERT INTO `flower_read` VALUES (4, '1', 1, '2018-12-18 17:27:14', 0);
INSERT INTO `flower_read` VALUES (5, '6', 1, '2018-12-18 17:27:20', 0);
INSERT INTO `flower_read` VALUES (6, '6', 1, '2018-12-18 17:27:39', 0);
INSERT INTO `flower_read` VALUES (7, '2', 1, '2018-12-18 17:27:51', 0);
INSERT INTO `flower_read` VALUES (8, '1', 1, '2018-12-18 17:42:42', 0);
INSERT INTO `flower_read` VALUES (9, '1', 1, '2018-12-18 17:44:51', 0);
INSERT INTO `flower_read` VALUES (10, '1', 1, '2018-12-18 17:49:48', 0);
INSERT INTO `flower_read` VALUES (11, '1', 1, '2018-12-18 17:50:09', 0);
INSERT INTO `flower_read` VALUES (12, '1', 1, '2018-12-18 17:50:10', 0);
INSERT INTO `flower_read` VALUES (13, '2', 1, '2018-12-19 10:41:22', 0);
INSERT INTO `flower_read` VALUES (14, '1', 1, '2018-12-19 10:41:35', 0);
INSERT INTO `flower_read` VALUES (15, '1', 1, '2018-12-19 10:41:43', 0);
INSERT INTO `flower_read` VALUES (16, '1', 1, '2018-12-19 10:42:12', 0);
INSERT INTO `flower_read` VALUES (17, '1', 1, '2018-12-19 11:15:07', 0);
INSERT INTO `flower_read` VALUES (18, '1', 1, '2018-12-19 11:16:19', 0);
INSERT INTO `flower_read` VALUES (19, '1', 1, '2018-12-19 11:16:57', 0);
INSERT INTO `flower_read` VALUES (20, '1', 1, '2018-12-19 11:34:52', 0);
INSERT INTO `flower_read` VALUES (21, '1', 1, '2018-12-19 11:39:58', 0);
INSERT INTO `flower_read` VALUES (22, '1', 1, '2018-12-19 11:41:08', 0);
INSERT INTO `flower_read` VALUES (23, '1', 1, '2018-12-19 11:41:28', 0);
INSERT INTO `flower_read` VALUES (24, '1', 1, '2018-12-19 11:42:37', 0);
INSERT INTO `flower_read` VALUES (25, '1', 1, '2018-12-19 11:43:27', 0);
INSERT INTO `flower_read` VALUES (26, '1', 1, '2018-12-19 11:43:41', 0);
INSERT INTO `flower_read` VALUES (27, '1', 1, '2018-12-19 11:46:24', 0);
INSERT INTO `flower_read` VALUES (28, '1', 1, '2018-12-19 11:46:29', 0);
INSERT INTO `flower_read` VALUES (29, '1', 1, '2018-12-19 11:46:34', 0);
INSERT INTO `flower_read` VALUES (30, '1', 1, '2018-12-19 11:47:49', 0);
INSERT INTO `flower_read` VALUES (31, '1', 1, '2018-12-19 11:48:02', 0);
INSERT INTO `flower_read` VALUES (32, '1', 1, '2018-12-19 11:48:36', 0);
INSERT INTO `flower_read` VALUES (33, '1', 1, '2018-12-19 11:48:47', 0);
INSERT INTO `flower_read` VALUES (34, '1', 1, '2018-12-19 11:48:59', 0);
INSERT INTO `flower_read` VALUES (35, '1', 1, '2018-12-19 11:49:28', 0);
INSERT INTO `flower_read` VALUES (36, '1', 1, '2018-12-19 11:49:37', 0);
INSERT INTO `flower_read` VALUES (37, '1', 1, '2018-12-19 11:51:56', 0);
INSERT INTO `flower_read` VALUES (38, '1', 1, '2018-12-19 11:51:58', 0);
INSERT INTO `flower_read` VALUES (39, '1', 1, '2018-12-19 11:52:02', 0);
INSERT INTO `flower_read` VALUES (40, '1', 1, '2018-12-19 11:52:42', 0);
INSERT INTO `flower_read` VALUES (41, '1', 1, '2018-12-19 11:53:27', 0);
INSERT INTO `flower_read` VALUES (42, '1', 1, '2018-12-19 11:53:30', 0);
INSERT INTO `flower_read` VALUES (43, '1', 1, '2018-12-19 11:53:59', 0);
INSERT INTO `flower_read` VALUES (44, '1', 1, '2018-12-19 11:54:10', 0);
INSERT INTO `flower_read` VALUES (45, '1', 1, '2018-12-19 11:54:13', 0);
INSERT INTO `flower_read` VALUES (46, '1', 1, '2018-12-19 11:54:23', 0);
INSERT INTO `flower_read` VALUES (47, '1', 1, '2018-12-19 11:54:27', 0);
INSERT INTO `flower_read` VALUES (48, '1', 1, '2018-12-19 11:55:45', 0);
INSERT INTO `flower_read` VALUES (49, '1', 1, '2018-12-19 11:55:56', 0);
INSERT INTO `flower_read` VALUES (50, '1', 1, '2018-12-19 14:12:05', 0);
INSERT INTO `flower_read` VALUES (51, '1', 1, '2018-12-19 14:12:09', 0);
INSERT INTO `flower_read` VALUES (52, '1', 1, '2018-12-19 14:12:42', 0);
INSERT INTO `flower_read` VALUES (53, '1', 1, '2018-12-19 14:12:51', 0);
INSERT INTO `flower_read` VALUES (54, '1', 1, '2018-12-19 14:12:58', 0);
INSERT INTO `flower_read` VALUES (55, '1', 1, '2018-12-19 14:13:05', 0);
INSERT INTO `flower_read` VALUES (56, '1', 1, '2018-12-19 14:13:15', 0);
INSERT INTO `flower_read` VALUES (57, '1', 1, '2018-12-19 14:14:44', 0);
INSERT INTO `flower_read` VALUES (58, '1', 1, '2018-12-19 14:17:44', 0);
INSERT INTO `flower_read` VALUES (59, '1', 1, '2018-12-19 14:21:18', 0);
INSERT INTO `flower_read` VALUES (60, '1', 1, '2018-12-19 14:22:44', 0);
INSERT INTO `flower_read` VALUES (61, '1', 1, '2018-12-19 14:22:53', 0);
INSERT INTO `flower_read` VALUES (62, '1', 1, '2018-12-19 14:25:43', 0);
INSERT INTO `flower_read` VALUES (63, '1', 1, '2018-12-19 14:25:52', 0);
INSERT INTO `flower_read` VALUES (64, '1', 1, '2018-12-19 14:26:04', 0);
INSERT INTO `flower_read` VALUES (65, '1', 1, '2018-12-19 16:08:02', 0);
INSERT INTO `flower_read` VALUES (66, '1', 1, '2018-12-19 16:08:08', 0);
INSERT INTO `flower_read` VALUES (67, '1', 1, '2018-12-19 16:11:59', 0);
INSERT INTO `flower_read` VALUES (68, '1', 1, '2018-12-19 16:13:50', 0);
INSERT INTO `flower_read` VALUES (69, '1', 1, '2018-12-19 16:14:40', 0);
INSERT INTO `flower_read` VALUES (70, '1', 1, '2018-12-19 16:14:47', 0);
INSERT INTO `flower_read` VALUES (71, '1', 1, '2018-12-19 16:15:17', 0);
INSERT INTO `flower_read` VALUES (72, '1', 1, '2018-12-19 16:16:51', 0);
INSERT INTO `flower_read` VALUES (73, '1', 1, '2018-12-19 16:16:55', 0);
INSERT INTO `flower_read` VALUES (74, '1', 1, '2018-12-19 16:17:01', 0);
INSERT INTO `flower_read` VALUES (75, '1', 1, '2018-12-19 16:17:05', 0);
INSERT INTO `flower_read` VALUES (76, '1', 1, '2018-12-19 16:17:18', 0);
INSERT INTO `flower_read` VALUES (77, '1', 1, '2018-12-19 16:22:57', 0);
INSERT INTO `flower_read` VALUES (78, '1', 1, '2018-12-19 16:23:14', 0);
INSERT INTO `flower_read` VALUES (79, '1', 1, '2018-12-19 16:25:11', 0);
INSERT INTO `flower_read` VALUES (80, '1', 1, '2018-12-19 16:37:20', 0);
INSERT INTO `flower_read` VALUES (81, '1', 1, '2018-12-19 16:37:28', 0);
INSERT INTO `flower_read` VALUES (82, '1', 1, '2018-12-19 16:39:36', 0);
INSERT INTO `flower_read` VALUES (83, '1', 1, '2018-12-19 16:40:06', 0);
INSERT INTO `flower_read` VALUES (84, '1', 1, '2018-12-19 16:40:17', 0);
INSERT INTO `flower_read` VALUES (85, '1', 1, '2018-12-19 16:40:26', 0);
INSERT INTO `flower_read` VALUES (86, '1', 1, '2018-12-19 16:40:41', 0);
INSERT INTO `flower_read` VALUES (87, '1', 1, '2018-12-19 16:40:46', 0);
INSERT INTO `flower_read` VALUES (88, '1', 1, '2018-12-19 16:41:08', 0);
INSERT INTO `flower_read` VALUES (89, '1', 1, '2018-12-19 16:41:17', 0);
INSERT INTO `flower_read` VALUES (90, '1', 1, '2018-12-19 16:42:00', 0);
INSERT INTO `flower_read` VALUES (91, '1', 1, '2018-12-19 16:42:45', 0);
INSERT INTO `flower_read` VALUES (92, '1', 1, '2018-12-19 16:43:15', 0);
INSERT INTO `flower_read` VALUES (93, '1', 1, '2018-12-19 16:44:27', 0);
INSERT INTO `flower_read` VALUES (94, '1067322425079787557', 1, '2018-12-19 16:44:29', 0);
INSERT INTO `flower_read` VALUES (95, '1', 1, '2018-12-19 16:47:08', 0);
INSERT INTO `flower_read` VALUES (96, '1', 1, '2018-12-19 16:47:26', 0);
INSERT INTO `flower_read` VALUES (97, '1067322425079787557', 1, '2018-12-19 16:47:30', 0);
INSERT INTO `flower_read` VALUES (98, '1', 1, '2018-12-19 16:51:21', 0);
COMMIT;

-- ----------------------------
-- Table structure for flower_season
-- ----------------------------
DROP TABLE IF EXISTS `flower_season`;
CREATE TABLE `flower_season` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_season
-- ----------------------------
BEGIN;
INSERT INTO `flower_season` VALUES (1, '春', 0, '2018-11-29 17:06:52', NULL);
INSERT INTO `flower_season` VALUES (2, '夏', 0, '2018-11-29 17:07:57', NULL);
INSERT INTO `flower_season` VALUES (3, '秋', 0, '2018-11-29 17:07:57', NULL);
INSERT INTO `flower_season` VALUES (4, '冬', 0, '2018-11-29 17:07:57', NULL);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flower_specific
-- ----------------------------
BEGIN;
INSERT INTO `flower_specific` VALUES (1, 2, '2018-11-26 16:37:02', NULL, 0, '传说', '据希腊神话记述，主管爱与美的女神维纳斯，因情人远行，依依惜别，晶莹的泪珠滴落到泥土上，第二年春天竟然发芽生枝，开出一朵朵美丽芳香的花儿来，这就是紫罗兰。 ');
INSERT INTO `flower_specific` VALUES (2, 2, '2018-11-26 17:05:49', NULL, 0, '拿破仑与紫罗兰', '拿破仑独钟情于紫罗兰。他的追随者们把它作为拿破仑派的标志，相信它会为这位受挫的君主重新带来成功和幸福。1815年3月20日，当紫罗兰在法国南方开出第一批花朵时，拿破仑成功地逃出厄尔巴岛，回到他的崇拜者中间。他们迎接他时，不住地高呼：\"欢迎您，紫罗兰之父！\"此时，人们手里举着紫罗兰，头上插着紫罗兰，所有的商店、公用建筑乃至家家户户都用紫罗兰装饰起来了，希望这春天的花能给他们带来好运，让拿破仑重新称霸欧洲。 可惜这股高兴劲没有持续多久。6月22日拿破仑被迫宣布放弃皇位，将它传给年幼的\\儿子拿破仑第二。可是这位皇太子并没有继承父亲的雄心和伟业：他没有接受皇位，而是到他外祖父--奥地利皇帝弗兰茨一世的宫庭中过与世无争的悠闲日子去了。 拿破仑失去皇位后，在被押解到圣海伦岛去之前的一个星期，突然念起约瑟芬的旧情，最后一次到马里美宁城堡去为她扫墓，并在墓前种了一丛终年开花的名贵的紫罗兰。 拿破仑死后，人们在他从未离身的金首饰盒里发现了两样东西：两朵枯萎的紫罗兰和一绺浅栗色的头发。后者是他爱子的胎发，而前者是他与约瑟芬的定情之物。 拿破仑第三与紫罗兰 拿破仑的侄子拿破仑第三与紫罗兰也有不解之缘。');
INSERT INTO `flower_specific` VALUES (3, 2, '2018-11-26 17:34:05', NULL, 0, '描述', '紫罗兰又名草桂花、草紫罗兰，是十字花科紫罗兰属的一、二年生或多年生草本，是欧洲名花之一。株高20--70厘米，全株有灰白色星状柔毛。茎直立，多分枝。叶互生，矩圆形或倒披针形，长3--5厘米。总状花序顶生或腋生，两侧薯片基垂囊状，花梗粗壮，花径2厘米，花瓣4枚，有长爪，瓣铺张为十字形。花有紫红、淡红、淡黄、白色等，微香。花期依品种而不同，有春紫罗兰，四、五月开花；夏紫罗兰，六至八月开花；秋紫罗兰，七至九月开花。 紫罗兰喜欢冬季温暖、夏季凉爽、通风良好的环境。冬季能耐短暂的-5℃低温，夏季忌酷热。需肥沃疏松而湿润的土壤，施肥不宜过多，否则对开花不利。喜阳光，为长日照植物。光照和通风不充分，易罹病虫害。春紫罗兰繁殖在9月初播种，发芽适温为20℃。夏紫罗兰在早春温室育苗。秋紫罗兰在秋末播种。紫罗兰是直根性植物，须根不发达，育苗宜于真叶展开前分苗，并尽量少伤根，多带宿土。不易结实的重瓣品种，还可扦插或分根繁殖。');
INSERT INTO `flower_specific` VALUES (6, 1067322425079787557, '2018-11-27 16:59:21', '', 0, '英国国花', '于蔷薇、月季、玫瑰这三种花来说，人们总把它搞混，它们虽同科同属，但却并不完全相同，但人们似乎比较偏爱玫瑰这个词，所以把这三种花统称为玫瑰了。在英国及欧美许多国家，都把攻瑰(月季)定为国花，以表示亲爱，又因茎上有刺,表示严肃。基督教中，相传耶稣被出卖后，被钉在十字架上，鲜血滴在泥土中，十字架下便生长出玫瑰花。\n　　红玫瑰象征了爱情，这可能是世界通用的花语。相传爱神为了救她的情人，跑得太匆忙，玫瑰的刺划破了她的手脚，鲜血染红了玫瑰花。红玫瑰因此成了爱情的信物。');
INSERT INTO `flower_specific` VALUES (7, 1067322425079787557, '2018-11-27 16:59:21', '', 0, '爱情信物', '玫瑰长久以来就象征着美丽和爱情。古希腊和古罗马民族用玫瑰象征他们的爱神阿芙罗狄蒂（维纳斯）。英国著名的Lancaster与York的玫瑰战争（1455-1485），也是各以红、白玫瑰各为象征。最后以亨利七世与伊丽莎白通婚收场，为了纪念，从此之后英格兰以玫瑰为国花，并把皇室徽章改为红白玫瑰。此外，美国、西班牙、卢森堡、保加利亚的国花也是玫瑰。\n    蔷薇、月季、玫瑰这三种花，人们总把它们搞混，它们虽同科同属，但却并不完全相同，但人们似乎比较偏爱玫瑰这个词，所以往往把这三种花统称为“玫瑰”了。在英国及欧美许多国家，都把攻瑰（月季）定为国花，以表示亲爱，又因茎上有刺，表示严肃。基督教中，相传耶稣被出卖后，被钉在十字架上，鲜血滴在泥土中，十字架下便生长出玫瑰花。\n    红玫瑰象征了爱情，这可能是世界通用的花语。相传爱神为了救她的情人，跑得太匆忙，玫瑰的刺划破了她的手脚，鲜血染红了玫瑰花。红玫瑰因此成了爱情的信物。');
INSERT INTO `flower_specific` VALUES (8, 1067322425079787558, '2018-11-29 09:14:30', '', 0, '传说', '相传，在遥远的古代，智利的百合花只有蓝、白两色。公元16世纪，印第安人阿拉乌加诺部族，与西班牙殖民者进行了不屈不捕的抗争。在民族英雄劳塔罗的领导下，阿拉乌加诺人把尔侵者打得落花流水，狼狈逃窜。正当义军节节胜利之际，却由于叛徒的出卖，仲塔罗和他的3万名爱国将士误中殖民主义者埋伏，经过浴血奋战，全部壮烈牺牲。第二年在天，爱国爱国志士捐躯的地方，漫山遍野绽开了红艳艳的百合花——\"戈比爱\"。人们认为这是烈士们今血浇灌过的蓝色、白色百合变成的。因此，在智利获得国家独立后，人们一致赞成将这种野百合花\"戈比爱\"定为国花。智利的国徽国案上，有一族美丽多姿、质朴可爱的花束，它就是一束红色的野百合花\"戈比爱\"，是独立自由的象征。');
INSERT INTO `flower_specific` VALUES (9, 1067322425079787559, '2018-11-29 09:19:17', '', 0, '黑牡丹传说', '相传，很久很久以前，有个年青人，爱上一个任性的公主，她接受任何人的爱，却不给任何人爱。年轻人和公主见了面，公主肆意妄为，想要墨池对面那丛花中的牡丹，墨池是没人可以过去的，它的黑色就是为了保护对面那丛美丽的花，那只牡丹。掉入池中的人，会化为墨色，永远消失。年轻人爱的太深了，一步一步踏入墨池。 他的腿变成了墨色，他的腰变成了墨色，终于拿到了那支牡丹，他往回走，他的手变成了墨色，他的颈变成了墨色，直到那支牡丹变成了墨色，那样娇艳的散发着墨色的光，年轻人变成了墨色，那支牡丹却交到了公主手中，公主呆住了，看到的确实年轻人消失的身躯，她泪流满面。 之后，那个公主也消失了，人们不知道她去了哪里，但在那之后，在池边多了一片墨色叶子的林子，林子中间，有一丛美丽的黑色牡丹，那样娇媚，那样妖娆。林中的叶子很重，凋落的时候会像利刃一样将人劈开，没人敢进那片林。有人说，那是公主的爱。。。。所以，它的花语为：死了都要爱！');
INSERT INTO `flower_specific` VALUES (10, 1067322425079787559, '2018-11-29 09:19:17', '', 0, '白牡丹观赏价值及寓意', '1、白牡丹盆景花摆设于家中，是品位至荣至贵的身份象征。\n2、白牡丹寓意高洁、端庄秀雅、仪态万千、国色天香，是对女人的最高赞美，是女人心中最心仪的礼物。 \n3、 在盆景花中，牡丹花为花中之王，王者风范，系高档次，是送给亲朋好友最理想的选择，表达内心诚挚的祝愿和崇高的敬意。 \n4、 白牡丹摆设在办公室、卧室，当您看到她的美，给人以舒畅的视觉享受，睹物思人、启迪人生，以明智远、激发出内心深处的灵感。 \n5、 摆设在酒店、宾馆经商之地象征生意发达。 \n6、 白牡丹寓意做人的风格：王者风范，以及人对美好事物的追求和向往。\n7、 净化室内空气，美化居室环境。实践证明白牡丹可以消除室内墙壁散发出的有毒气体。');
INSERT INTO `flower_specific` VALUES (11, 1067322425079787560, '2018-11-29 09:28:52', '', 0, '介绍', '雏菊又名延命菊，是菊科多年生草本植物，原产欧洲。它的叶为匙形丛生呈莲座状，密集矮生，颜色碧翠。从叶间抽出花葶，葶一花，错落排列，外观古朴，花朵娇小玲珑，色彩和谐。早春开花，生气盎然，具有君子的风度和天真烂漫的风采，深得意大利人的喜爱，因而推举为国花。');
INSERT INTO `flower_specific` VALUES (12, 1067322425079787561, '2018-11-29 09:33:32', NULL, 0, '传说1', '日本的国花樱花(Cherryblossom)就源于一个美丽动人的神话故事。据说，在很久以前，有一个聪明美丽的姑娘、名叫木花开耶姬。木花开耶姬即樱花的意思。有一年年底，她从日本冲绳出发，途经九洲，关西、关东，于第二年五，六月间到达北海道，沿途中，她把一朵朵樱花撒遍日本各地。从此，樱花在日本盛开千载。且年年灿若云霞。日本人民非常喜爱樱花。日本人民之所以将樱花定为国花，除了它的纯洁、雅丽、崇高外，还为了纪念那勤劳、善良的木花开耶姬姑娘、并以此象征勤劳、智慧、勇敢的日本人民。');
INSERT INTO `flower_specific` VALUES (13, 1067322425079787561, '2018-11-29 09:33:43', NULL, 0, '传说2', '相传，以前樱花只有白色的 英勇的武士选择了在心爱的樱花树下剖腹 因为当一个武士认为自己达到了人生的辉煌 就会选择结束自己生命 所以樱花树下血流成河 从此樱花开出了红色的⋯⋯樱花的花瓣越红，说明树下的亡魂就越多。\n');
INSERT INTO `flower_specific` VALUES (14, 1067322425079787561, '2018-11-29 09:33:57', NULL, 0, '传说3', '樱花在樱花城中，静静的绽放了数月，每天都看到很多情侣在樱花树下，聊天，谈心，樱花的花瓣渐渐的飘落下来，美及了。所以，樱花就成为了爱情的象征。但是，每个人都希望自己得到爱情，得到幸福，樱花树上的妖精(樱の花)也一样，她看到别人是那么的幸福，自己也想得到，就独自离开了樱花树。 樱花的花瓣仍然在飘落，樱の花在人群中，寻找着自己的另一半，她找了好久好久，当她想放弃而回到樱花树上时，他出现了，他开始为她带来快乐，他开始照顾她，他们一起聊天到深夜。这才得知他是从遥远的国家，因船迷失了方向而来到了这里，樱の花听了，知道，他一定会走的，一定会回到自己的国家。樱の花为了珍惜这段时光，她每天都和他相遇在樱花树下，天天聊天⋯⋯但是，好时光总是短暂的，他要离开了，他来和樱の花道别了。樱の花虽然早有准备，可还是禁不起这个打击，她背对着他，只说了一个字“哦”。他走了，在茫茫的海上，走了。樱の花一个人在樱花树下，哭泣着，樱花的花瓣为了安慰她，而飘落下来，微风吹过，满地的花瓣飘了起来，樱の花的心碎了，她哭了几天几夜，最终决定了，她是该回去的时候了。她看着樱花树，想到：我是樱花的妖精，我最终是樱花树上的一片花瓣，最终是只能看着别人有情人终成眷属的，自己是不会得到幸福的⋯⋯就这样，她消失了，有人说，她回到了树上，有人说，她因为过度的失落，而化为花瓣，随着风一起去寻找他了⋯⋯ 几年后，他回来了，他竟然回来了，他来到当初约定的地方，寻找着她，一直都没有找到，他失落了。原来，他回来是为了告诉她，他已经爱上了她。当他听到村里人在流传的传说时，他知道一切都晚了，他在樱花树下发誓，希望所以有情人能忠诚眷属，不要再有谁像自己一样错过了⋯⋯这次，他再也没离开樱花城了，他还在不断的寻找着她的身影，直到死去⋯⋯⋯⋯ 几百年过去了，樱花仍然在绽放着，许多的情侣为了这个传说而来到这里，见证自己的幸福。不知道是命运的安排，还是⋯⋯樱の花转世投胎成为了世人，她来到樱花树下，总觉得这里似成相识。风突然刮了起来，花瓣瞬间吹过，她的帽子被吹走了，被一名男子接到了，是他，他也来了，这一次，他们一定不会再错过了⋯⋯');
COMMIT;

-- ----------------------------
-- Table structure for flower_world
-- ----------------------------
DROP TABLE IF EXISTS `flower_world`;
CREATE TABLE `flower_world` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '国家',
  `delete` int(1) DEFAULT '0' COMMENT '0否 1是',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES (1, '季节分类', '按季节查询', 0, 0, '2018-11-28 09:52:58', NULL);
INSERT INTO `menu` VALUES (2, '颜色分类', '按颜色查询', 0, 0, '2018-11-28 09:53:08', NULL);
INSERT INTO `menu` VALUES (3, '国花查询', '各国国花', 0, 0, '2018-11-28 09:53:19', NULL);
INSERT INTO `menu` VALUES (4, '节日之花', '节日之花', 0, 0, '2018-11-28 09:53:55', NULL);
INSERT INTO `menu` VALUES (5, '世界之花', '世界之花', 0, 0, '2018-11-28 14:40:14', NULL);
COMMIT;

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
  `headpic` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'aaa', 'aaa', NULL, NULL, 0, 0, 0, '2018-11-26 14:39:44', NULL, NULL);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=3077 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_log
-- ----------------------------
BEGIN;
INSERT INTO `user_log` VALUES (10, 1, '用户登录', 0, '2018-11-26 11:27:57', 2);
INSERT INTO `user_log` VALUES (11, 1, '查询日志列表', 0, '2018-11-26 11:28:15', 2);
INSERT INTO `user_log` VALUES (12, 1, '查询总数', 0, '2018-11-26 11:28:19', 2);
INSERT INTO `user_log` VALUES (13, 1, '查询日志列表', 0, '2018-11-26 11:28:22', 2);
INSERT INTO `user_log` VALUES (14, 1, '用户登录', 0, '2018-11-26 11:29:30', 2);
INSERT INTO `user_log` VALUES (15, 1, '查询总数', 0, '2018-11-26 11:31:22', 2);
INSERT INTO `user_log` VALUES (16, 1, '查询总数', 0, '2018-11-26 11:31:26', 2);
INSERT INTO `user_log` VALUES (17, 1, '查询总数', 0, '2018-11-26 11:31:43', 2);
INSERT INTO `user_log` VALUES (3072, 1, '查询鲜花列表', 0, '2018-12-19 17:00:17', 2);
INSERT INTO `user_log` VALUES (3073, 1, '查询鲜花列表', 0, '2018-12-19 17:00:18', 2);
INSERT INTO `user_log` VALUES (3074, 1, '查询热门鲜花列表', 0, '2018-12-19 17:00:19', 2);
INSERT INTO `user_log` VALUES (3075, 1, '查询鲜花列表', 0, '2018-12-19 17:00:19', 2);
INSERT INTO `user_log` VALUES (3076, 1, '查询鲜花列表', 0, '2018-12-19 17:00:21', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
