/*
 Navicat Premium Data Transfer

 Source Server         : dev.wind.com
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 127.0.0.1
 Source Database       : wind_auth

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : utf-8

 Date: 08/16/2019 15:20:23 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `app`
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `home_page_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首页URL',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：1、启用；0、停用',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='应用APP';

-- ----------------------------
--  Table structure for `link_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `link_role_permission`;
CREATE TABLE `link_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `permission_id` bigint(20) NOT NULL COMMENT '权限id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色权限关系表';

-- ----------------------------
--  Records of `link_role_permission`
-- ----------------------------
BEGIN;
INSERT INTO `link_role_permission` VALUES ('1', '1', '1', '2019-03-18 18:04:49', '2019-03-18 18:04:51'), ('2', '1', '2', '2019-03-18 18:05:02', '2019-03-18 18:05:05'), ('3', '1', '3', '2019-03-18 18:05:14', '2019-03-18 18:05:18'), ('4', '1', '2', '2019-03-19 18:14:10', '2019-03-19 18:14:12'), ('5', '1', '1', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('6', '1', '5', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('7', '1', '6', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('8', '1', '7', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('9', '1', '8', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('10', '1', '9', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('11', '1', '10', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('12', '1', '11', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('13', '1', '12', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('14', '1', '13', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('15', '1', '14', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('16', '1', '15', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('17', '1', '16', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('18', '1', '17', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('19', '1', '18', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('20', '1', '19', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('21', '1', '20', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('22', '1', '21', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('23', '1', '22', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('24', '1', '23', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('25', '1', '24', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('26', '1', '25', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('27', '1', '26', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('28', '1', '27', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('29', '1', '28', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('30', '1', '29', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('31', '1', '30', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('32', '1', '31', '2019-05-27 16:48:05', '2019-05-27 16:48:05'), ('33', '1', '321', '2019-05-27 16:48:05', '2019-05-27 16:48:05');
COMMIT;

-- ----------------------------
--  Table structure for `link_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `link_user_role`;
CREATE TABLE `link_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户角色关系表';

-- ----------------------------
--  Records of `link_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `link_user_role` VALUES ('16', '1', '1', '2019-04-03 15:58:52', '2019-04-03 15:58:52'), ('17', '4', '2', '2019-04-03 15:59:10', '2019-04-03 15:59:10'), ('18', '4', '4', '2019-04-03 15:59:10', '2019-04-03 15:59:10'), ('19', '4', '1', '2019-04-03 15:59:10', '2019-04-03 15:59:10');
COMMIT;

-- ----------------------------
--  Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：1、启用；0、停用',
  `app_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '应用id',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '""' COMMENT '菜单访问url',
  `create_time` timestamp(6) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(6) NULL DEFAULT NULL COMMENT '更新时间',
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '上一级目录（根目录为0）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限值',
  `status` tinyint(255) NOT NULL DEFAULT '1' COMMENT '状态：1、启用；0、停用',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'parent_id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx.value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限表';

-- ----------------------------
--  Records of `permission`
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES ('1', '权限系统', 'auth', '1', '2019-05-27 11:49:42', '2019-05-28 00:00:06', '0'), ('5', '用户管理', 'auth.user', '1', '2019-05-27 11:48:20', '2019-05-27 23:58:43', '1'), ('6', '列表', 'auth.user.list', '1', '2019-05-27 11:48:20', '2019-05-27 23:58:39', '5'), ('7', '详情', 'auth.user.detail', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '5'), ('8', '新增', 'auth.user.add', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '5'), ('9', '更新', 'auth.user.update', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '5'), ('10', '启用', 'auth.user.enable', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '5'), ('11', '停用', 'auth.user.disable', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '5'), ('12', '角色管理', 'auth.role', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '1'), ('13', '列表', 'auth.role.list', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '12'), ('14', '详情', 'auth.role.detail', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '12'), ('15', '新增', 'auth.role.add', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '12'), ('16', '更新', 'auth.role.update', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '12'), ('17', '启用', 'auth.role.enable', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '12'), ('18', '停用', 'auth.role.disable', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '12'), ('19', '权限管理', 'auth.permission', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '1'), ('20', '权限列表', 'auth.permission.list', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '19'), ('21', '详情', 'auth.permission.detail', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '19'), ('22', '新增', 'auth.permission.add', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '19'), ('23', '更新', 'auth.permission.update', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '19'), ('24', '启用', 'auth.permission.enable', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '19'), ('25', '停用', 'auth.permission.disable', '1', '2019-05-27 11:48:20', '2019-05-27 11:48:20', '19'), ('26', '菜单管理', 'auth.menu', '1', '2019-05-27 14:10:42', '2019-05-27 14:10:42', '1'), ('27', '列表', 'auth.menu.list', '1', '2019-05-27 14:10:42', '2019-05-27 14:10:42', '26'), ('28', '详情', 'auth.menu.detail', '1', '2019-05-27 14:10:42', '2019-05-27 14:10:42', '26'), ('29', '新增', 'auth.menu.add', '1', '2019-05-27 14:10:42', '2019-05-27 14:10:42', '26'), ('30', '更新', 'auth.menu.update', '1', '2019-05-27 14:10:42', '2019-05-27 14:10:42', '26'), ('31', '启用', 'auth.menu.enable', '1', '2019-05-27 14:10:42', '2019-05-27 14:10:42', '26'), ('32', '停用', 'auth.menu.disable', '1', '2019-05-27 14:10:42', '2019-05-28 00:20:47', '26');
COMMIT;

-- ----------------------------
--  Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：1、启用；0、停用',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx.name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `role`
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('1', '超级管理', '1', '2019-03-29 17:24:17', '2019-05-24 00:41:30'), ('2', 'role2', '1', '2019-03-18 18:03:27', '2019-03-18 18:03:29'), ('3', '菜单管理', '1', '2019-03-29 17:27:09', '2019-03-29 17:27:09');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `realname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `salt` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '盐值',
  `password` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态：1、启用；0、停用',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `idcard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx.username` (`username`) USING BTREE,
  UNIQUE KEY `idx.mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `idx.idcard` (`idcard`) USING BTREE,
  UNIQUE KEY `idx.email` (`email`) USING BTREE,
  KEY `idx.realname` (`realname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', '超级管理员', 'user1', 'user1', 'user1', '1', '2019-01-28 20:08:27', '2019-05-19 23:52:23', null, '610402198802013921', null), ('5', 'user5', 'user5', 'user5', 'user5', '0', '2019-01-28 20:08:28', '2019-05-19 23:52:24', null, null, null), ('6', 'user6', 'user6', 'user6', 'user6', '0', '2019-01-28 20:08:28', '2019-05-19 23:52:25', null, null, null), ('7', 'user7', 'user7', 'user7', 'user7', '1', '2019-01-28 20:08:28', '2019-01-28 20:08:28', null, null, null), ('8', 'user8', 'user8', 'user8', 'user8', '1', '2019-01-28 20:08:30', '2019-01-28 20:08:30', null, null, null), ('9', 'user9', 'user9', 'user9', 'user9', '0', '2019-01-28 20:08:30', '2019-05-19 23:52:30', null, null, null), ('10', 'user10', 'user10', 'user10', 'user10', '1', '2019-01-28 20:10:48', '2019-01-28 20:10:48', '13000000000', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `user_token`
-- ----------------------------
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ä¸»é”®id',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'token',
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '客户端IP',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ç”¨æˆ·ç™»å½•token';

-- ----------------------------
--  Records of `user_token`
-- ----------------------------
BEGIN;
INSERT INTO `user_token` VALUES ('1', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMjcwNSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzMzk5MDV9.OBUUmdup_e2u-823P6yWw3636iX5HMDEJv5QZ5iSJog', '0:0:0:0:0:0:0:1', '2019-05-20 14:11:57', 'user4'), ('2', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMjg1MywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDAwNTN9.D3gnN0zJDLLyWfk13SQG98l_GBbVJ07feYfdJcDilW0', '0:0:0:0:0:0:0:1', '2019-05-20 14:14:14', 'user4'), ('3', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMjk4NiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDAxODZ9.0hHRKm1pgJzktuwwU6r7PXam_TKtJt7gmLZSVy6b5VY', '0:0:0:0:0:0:0:1', '2019-05-20 14:16:27', 'user4'), ('4', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzAwOSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDAyMDl9.fbbfkJkEbFI2oYJ9BHI0yOLMtapqtVgsaIEED1WTX3E', '127.0.0.1', '2019-05-20 14:16:49', 'user4'), ('5', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzA4NiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDAyODZ9.Xeb7_zxYTnKsQnfUBqBmM-0WKXgiz4gQqBlL7zEtHfQ', '127.0.0.1', '2019-05-20 14:18:07', 'user4'), ('6', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzA4OCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDAyODh9.uAPIdvI2s8sVP2LezMnlqZq-Ktn7pvYeOq2ZRjBLsU4', '127.0.0.1', '2019-05-20 14:18:08', 'user4'), ('7', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzA5OCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDAyOTh9.Efj8u1WKvzXRpodT58Bv0JBdH_9M9sye6fmz-5A7Isk', '127.0.0.1', '2019-05-20 14:18:18', 'user4'), ('8', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzE3OCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDAzNzh9.HmSjTKBAysPLn4aV9aZlQbXQUQeJModE27cxMR7VFHc', '127.0.0.1', '2019-05-20 14:19:38', 'user4'), ('9', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzE5NCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDAzOTR9.caYHR3m4WPZB_IUHPXI5ZNWT0-02aJliEnB01hycBYM', '127.0.0.1', '2019-05-20 14:19:55', 'user4'), ('10', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzIzNSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDA0MzV9.8gY9B0_5rbKKDeqv4vsCf6w1umujmxXa5KQlnfZ7ESk', '127.0.0.1', '2019-05-20 14:20:36', 'user4'), ('11', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzQ1OCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDA2NTh9.gbvkbdkAUUsLvKkJUfRWRojoSGLi9IVNWNgrniPKMz0', '127.0.0.1', '2019-05-20 14:24:19', 'user4'), ('12', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzcxMSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDA5MTF9.iRGVZFaHeGhJoMY4iNqK4ZYN3U2R3b-6jowOjG15uUc', '127.0.0.1', '2019-05-20 14:28:33', 'user4'), ('13', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzcyMCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDA5MjB9.YQnK_xylHU4ita59RAlDmWa-tYOQKs9-ue627IP3eas', '127.0.0.1', '2019-05-20 14:28:41', 'user4'), ('14', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzczMiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDA5MzJ9.i9TSBMWuV9Am40129OhFs0D8LTT_6GAaYzPRUVFxn64', '127.0.0.1', '2019-05-20 14:28:53', 'user4'), ('15', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzczOSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDA5Mzl9.GgfNF0QrV0bR7NFL2dgZ3rXawYNJuIG8dgtZngMZ7co', '127.0.0.1', '2019-05-20 14:29:00', 'user4'), ('16', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzc0NCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDA5NDR9.EjQa5qPQQ7kWXnjcksuZtYPgXl6EgZeKjLHZOyuM6L4', '127.0.0.1', '2019-05-20 14:29:04', 'user4'), ('17', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzc1NSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDA5NTV9.Y4bsMgToeTf97GlU46aJGAlV7LVqghRBIPLvp1DW9Ho', '127.0.0.1', '2019-05-20 14:29:16', 'user4'), ('18', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzgwOSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDEwMDl9.AsS2dKd1uv9HeWXPHkkHUUmPqKp7RSXLZgODb4Ya1FA', '127.0.0.1', '2019-05-20 14:30:10', 'user4'), ('19', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzg1NiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDEwNTZ9.8aazfjMbFqC43e8X3H3urmTPLMSypyD0dKkB8RFDYd0', '127.0.0.1', '2019-05-20 14:30:57', 'user4'), ('20', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzg2MCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDEwNjB9.Aow74bqCgJ0a0Ke0jtxy93FG-9iSoc3Md4eW3YHN8Z4', '127.0.0.1', '2019-05-20 14:31:01', 'user4'), ('21', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzMzk1NCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDExNTR9.GVzAQtF2WoUNgvB3DLp6L52wHJn8j7ZLHCm0eS4zMM8', '127.0.0.1', '2019-05-20 14:32:35', 'user4'), ('22', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzNDM0MSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDE1NDF9.k3xk3oEqJIxp4I3CDBk3QtL6wCJ2VhwjLMbfJ1apqq8', '127.0.0.1', '2019-05-20 14:39:02', 'user4'), ('23', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzNDc5OCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDE5OTh9.JXGQ3RrQeeYW58KPrViQmP6PPQ7k87BxkRpzsJFb-hM', '127.0.0.1', '2019-05-20 14:46:40', 'user4'), ('24', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzNDgyMywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDIwMjN9.R795G2QJNUSdo5vKfS7XbZTweDBVosO3HzQPtT_QSas', '127.0.0.1', '2019-05-20 14:47:04', 'user4'), ('25', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODMzNTAyMSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNDIyMjF9.5YT5wbAbFI9PrQbKP_HIssg7MLhlX4UVYZ_wq9Q5pbo', '127.0.0.1', '2019-05-20 14:50:23', 'user4'), ('26', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODM0NzUxMCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTgzNTQ3MTB9.9PkKSQoi_-a6eWr-44ZJHPp7df88TgzcZ12j2fpbdd8', '127.0.0.1', '2019-05-20 18:18:30', 'user4'), ('27', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI1MywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NTN9.Sc0XR6wUmmqU7EOFK_Frcaa5glyYLVtwegt0IApytUM', '127.0.0.1', '2019-05-21 10:37:35', 'user4'), ('28', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI1NSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NTV9.-z4MG5EqGjeYFfp8iHAXpORoOQLu7oOweOMBCGXE_fc', '127.0.0.1', '2019-05-21 10:37:36', 'user4'), ('29', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3MywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzN9.bpjb6ADJklcZ1B13S-BzMpsP9xS2D-8pxZl0HQP0gIo', '127.0.0.1', '2019-05-21 10:37:53', 'user4'), ('30', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzV9.NFJlCUFhYI_70WLmMAwOunskChb4CyPKHRxKuy0Avlw', '127.0.0.1', '2019-05-21 10:37:55', 'user4'), ('31', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzV9.NFJlCUFhYI_70WLmMAwOunskChb4CyPKHRxKuy0Avlw', '127.0.0.1', '2019-05-21 10:37:56', 'user4'), ('32', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzV9.NFJlCUFhYI_70WLmMAwOunskChb4CyPKHRxKuy0Avlw', '127.0.0.1', '2019-05-21 10:37:56', 'user4'), ('33', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzZ9.CnwKvtoHrojp3SieQHYMh_lmgEMcsXyA4_xilwuFjhM', '127.0.0.1', '2019-05-21 10:37:56', 'user4'), ('34', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzZ9.CnwKvtoHrojp3SieQHYMh_lmgEMcsXyA4_xilwuFjhM', '127.0.0.1', '2019-05-21 10:37:56', 'user4'), ('35', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzZ9.CnwKvtoHrojp3SieQHYMh_lmgEMcsXyA4_xilwuFjhM', '127.0.0.1', '2019-05-21 10:37:57', 'user4'), ('36', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzZ9.CnwKvtoHrojp3SieQHYMh_lmgEMcsXyA4_xilwuFjhM', '127.0.0.1', '2019-05-21 10:37:57', 'user4'), ('37', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0NzZ9.CnwKvtoHrojp3SieQHYMh_lmgEMcsXyA4_xilwuFjhM', '127.0.0.1', '2019-05-21 10:37:57', 'user4'), ('38', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0Nzd9.TW8KV_4iklFOpOsHFLVViMt9GKgig4_N4FTKVqm1Cc4', '127.0.0.1', '2019-05-21 10:37:57', 'user4'), ('39', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0Nzd9.TW8KV_4iklFOpOsHFLVViMt9GKgig4_N4FTKVqm1Cc4', '127.0.0.1', '2019-05-21 10:37:57', 'user4'), ('40', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0Nzd9.TW8KV_4iklFOpOsHFLVViMt9GKgig4_N4FTKVqm1Cc4', '127.0.0.1', '2019-05-21 10:37:58', 'user4'), ('41', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI3NywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0Nzd9.TW8KV_4iklFOpOsHFLVViMt9GKgig4_N4FTKVqm1Cc4', '127.0.0.1', '2019-05-21 10:37:58', 'user4'), ('42', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI4MCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0ODB9.nCEA7A6IC_gE9vxtEdAdOecPpwo-huMUQFd5Ehu0txA', '127.0.0.1', '2019-05-21 10:38:01', 'user4'), ('43', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI4MSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0ODF9.JJE2rXY91e2S6B80VOvXDmDPugXfks0qu7VgjgBd4A8', '127.0.0.1', '2019-05-21 10:38:02', 'user4'), ('44', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNjI4MiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTM0ODJ9.oxJ-4H36eQgr-goYiW2x-ZxI_6ltv5fXnuaS5aZxOYc', '127.0.0.1', '2019-05-21 10:38:02', 'user4'), ('45', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNzY1OSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTQ4NTl9.ShO4_ESNal_yVJug9OQk1ODeCFlr5ptoXiftnpOFqOc', '127.0.0.1', '2019-05-21 11:01:00', 'user4'), ('46', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNzc4MiwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTQ5ODJ9.1k_uFWWuRls7I8iKmeHxDyTmcDZQ-MMb3jZ-bGAWrV8', '127.0.0.1', '2019-05-21 11:03:03', 'user4'), ('47', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwNzkyMywiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTUxMjN9.yhFuijrpQ2fZnnTz9DEdVTlWnPvzOltktVqCHFHi44k', '127.0.0.1', '2019-05-21 11:05:24', 'user4'), ('48', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwODMyOSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTU1Mjl9.fXg841Qg__bxX0MdkTQRMJw1rWWwOdbxENu4ATwlwus', '127.0.0.1', '2019-05-21 11:12:10', 'user4'), ('49', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQwODQzOSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0MTU2Mzl9.t-pAC1WRQyLvBOIZdmpbZ2Yoi0y0vJX2D5TTIYrQ6ig', '127.0.0.1', '2019-05-21 11:14:00', 'user4'), ('50', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODQzNTY4NSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg0NDI4ODV9.uPXbHzFSQ0CEyItsRb3tMuIvLSBftPXOHzTKYhfx0PM', '127.0.0.1', '2019-05-21 18:48:06', 'user4'), ('51', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODYyNjA0NCwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg2MzMyNDR9.8dXoS-LWaE0JumF08bb5Mzx_R9j1cx1rGJGYUmpAOJI', '127.0.0.1', '2019-05-23 23:40:45', 'user4'), ('52', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODYyNjU2OSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg2MzM3Njl9.v9GzaO_MwOAap-JRX3P0dzqe4boE0VvnjwhsmX2AEEg', '127.0.0.1', '2019-05-23 23:49:30', 'user4'), ('53', '4', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyNCIsImlhdCI6MTU1ODYyODA2MSwiaXNzIjoiT25saW5lIFlBdXRoIEJ1aWxkZXIiLCJleHAiOjE1NTg2MzUyNjF9.XCnywTGaRFAIHmt3NiuOAZ8qWZyuXGCQG7rR3ooV-lU', '127.0.0.1', '2019-05-24 00:14:22', 'user4');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
