/*
 Navicat Premium Data Transfer

 Source Server         : dev.wind.com
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 127.0.0.1
 Source Database       : wind_dict

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : utf-8

 Date: 08/16/2019 15:20:34 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `code_item`
-- ----------------------------
DROP TABLE IF EXISTS `code_item`;
CREATE TABLE `code_item` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `code_set` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '所属代码集code',
  `parent_code` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '上级代码code',
  `code_name` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '代码名称',
  `code_value` varchar(128) COLLATE utf8mb4_bin NOT NULL COMMENT '代码值',
  `zh_spell` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '汉语拼音（全拼）',
  `zh_spell_short` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '汉语拼音（简拼）',
  `sn` int(11) DEFAULT '1' COMMENT '顺序号',
  `remark` text COLLATE utf8mb4_bin COMMENT '说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态: 1启用; 0 停用',
  `create_user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '创建人',
  `update_user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '最近修改人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当条记录的创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `belong` varchar(225) COLLATE utf8mb4_bin DEFAULT '' COMMENT '生成服务端js时，生成到指定的N个js文件中，该字段是多个js文件名，以逗号分隔',
  PRIMARY KEY (`id`),
  KEY `idx_code_value` (`code_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
--  Table structure for `msg_template`
-- ----------------------------
DROP TABLE IF EXISTS `msg_template`;
CREATE TABLE `msg_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ä¸»é”®',
  `template_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'æ¨¡æ¿ç±»åž‹:1ã€sms,2ã€email,3ã€ ç«™å†…æ¶ˆæ¯,4ã€app-notice',
  `template_id` varchar(50) NOT NULL DEFAULT '' COMMENT 'æ¨¡æ¿æ ‡è¯†',
  `template_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'æ¨¡æ¿åç§°',
  `template_version` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'æ¨¡æ¿ç‰ˆæœ¬:å¦‚1,2,3,4',
  `msg_title` varchar(255) NOT NULL COMMENT 'æ¶ˆæ¯æ ‡é¢˜',
  `msg_content` varchar(2000) NOT NULL COMMENT 'æ¶ˆæ¯å†…å®¹',
  `sender_id` bigint(11) NOT NULL DEFAULT '0' COMMENT 'å‘é€äººid',
  `sender_name` varchar(50) NOT NULL DEFAULT '' COMMENT 'å‘é€äººåå­—',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'çŠ¶æ€:0ã€ç¦ç”¨,1ã€å¯ç”¨;',
  `req_sys_code` varchar(64) NOT NULL DEFAULT 'souyidai' COMMENT 'è¯·æ±‚æ–¹ç³»ç»Ÿæ ‡è¯†(å¹³å°æ ‡è¯†)',
  `create_user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'åˆ›å»ºäººUID',
  `create_user_name` varchar(20) NOT NULL DEFAULT '' COMMENT 'åˆ›å»ºäºº',
  `update_user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'æœ€åŽæ›´æ–°äººUID',
  `update_user_name` varchar(20) NOT NULL DEFAULT '' COMMENT 'æœ€åŽæ›´æ–°äºº',
  `template_config` varchar(2000) DEFAULT '' COMMENT 'æ¨¡æ¿å‚æ•°é…ç½®',
  `msg_link` varchar(200) NOT NULL DEFAULT '' COMMENT 'æ¶ˆæ¯é“¾æŽ¥ wechatä½¿ç”¨',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'æ›´æ–°æ—¶é—´',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_template` (`template_type`,`template_id`,`template_version`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='æ¨¡æ¿ç®¡ç†(çŸ­ä¿¡,é‚®ä»¶,ç«™å†…ä¿¡,é€šçŸ¥)';

SET FOREIGN_KEY_CHECKS = 1;
