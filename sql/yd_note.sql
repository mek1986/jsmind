/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : yd_note

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 08/02/2023 14:21:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_conver_request
-- ----------------------------
DROP TABLE IF EXISTS `t_conver_request`;
CREATE TABLE `t_conver_request`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `request_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求id',
  `add_time` datetime(0) DEFAULT NULL,
  `convert_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '转换的思维导图网址',
  `status` tinyint(1) DEFAULT 0 COMMENT '状态：0-未处理，1-处理成功，2-处理失败',
  `fail_txt` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '处理失败原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '思维导图转换请求表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_site_request
-- ----------------------------
DROP TABLE IF EXISTS `t_site_request`;
CREATE TABLE `t_site_request`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求ip',
  `ip_v` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'v4' COMMENT 'ip版本：v4,v6',
  `browser` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作系统信息',
  `os` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '浏览器信息',
  `add_time` datetime(0) DEFAULT NULL,
  `page_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求页面网址',
  `request_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求方法：post，get等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '网站访问请求表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
