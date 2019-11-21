/*
 Navicat Premium Data Transfer

 Source Server         : dev.wind.com
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 127.0.0.1
 Source Database       : wind_form

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : utf-8

 Date: 08/16/2019 15:20:45 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `field`
-- ----------------------------
DROP TABLE IF EXISTS `field`;
CREATE TABLE `field` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `form_id` bigint(20) NOT NULL COMMENT '表单id',
  `name` varchar(255) NOT NULL COMMENT '表单属性名称',
  `is_must` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否必填：1、是；0、否',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型：1、input_text',
  `css_class` varchar(255) DEFAULT '' COMMENT 'css 样式',
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示：1、显示；0、隐藏',
  `default_val` varchar(255) DEFAULT '' COMMENT '默认值',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='表单属性信息表';

-- ----------------------------
--  Table structure for `form`
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '表单名称',
  `css_class` varchar(255) DEFAULT '' COMMENT '表单css样式',
  `tr_css_class` varchar(255) DEFAULT '' COMMENT 'tr css 样式',
  `td_class` varchar(255) DEFAULT '' COMMENT 'td css 样式',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='表单信息表';

-- ----------------------------
--  Table structure for `record`
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `form_id` bigint(20) NOT NULL COMMENT '表单id',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT '表单结果',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='表单记录表';

SET FOREIGN_KEY_CHECKS = 1;
