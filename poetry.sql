/*
 Navicat MySQL Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 39.97.127.37:3306
 Source Schema         : poetry

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 10/10/2020 10:06:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id即作者id',
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `cid` int(11) NULL DEFAULT NULL COMMENT '文章种类id',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者名',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `favor_number` int(11) NULL DEFAULT 0 COMMENT '文章点赞数',
  `comment_number` int(11) NULL DEFAULT 0 COMMENT '文章评论数',
  `collect_number` int(11) NULL DEFAULT 0 COMMENT '文章收藏数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 1, '文章1', 1, '1', '111111111111111', '2020-09-06 14:45:16', 1, 2, 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '分类1');
INSERT INTO `category` VALUES (2, '分类2');
INSERT INTO `category` VALUES (3, '分类3');
INSERT INTO `category` VALUES (4, '分类4');
INSERT INTO `category` VALUES (5, '分类5');
INSERT INTO `category` VALUES (6, '分类6');
INSERT INTO `category` VALUES (7, '分类7');
INSERT INTO `category` VALUES (8, '分类8');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `aid` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 1, '1111', '2020-09-06 14:47:34');
INSERT INTO `comment` VALUES (2, 2, 1, '333333', '2020-09-06 14:50:10');

-- ----------------------------
-- Table structure for favor
-- ----------------------------
DROP TABLE IF EXISTS `favor`;
CREATE TABLE `favor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `aid` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点赞状态；1:点赞；0:取消点赞',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of favor
-- ----------------------------
INSERT INTO `favor` VALUES (1, 1, 1, '1', '2020-09-06 14:49:47');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `status` bit(1) NULL DEFAULT NULL COMMENT '商品状态1:上架；0:下架',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '上架时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '2020-10-05/35F038D03A644D7E859B5C41E8E5C246.png', '粽', 5.00, b'1', '2020-10-05 17:40:47');
INSERT INTO `goods` VALUES (2, '2020-10-05/9822D23CC85545EC94935417AD6CAE23.jpg', '月饼', 222.00, b'0', '2020-10-05 05:41:40');

-- ----------------------------
-- Table structure for loginfo
-- ----------------------------
DROP TABLE IF EXISTS `loginfo`;
CREATE TABLE `loginfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名称',
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `logintime` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 236 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of loginfo
-- ----------------------------
INSERT INTO `loginfo` VALUES (2, '超级管理员-system', '127.0.0.1', '2018-12-21 16:54:52');
INSERT INTO `loginfo` VALUES (3, '超级管理员-system', '127.0.0.1', '2018-12-21 16:55:15');
INSERT INTO `loginfo` VALUES (4, '超级管理员-system', '127.0.0.1', '2018-12-21 17:29:22');
INSERT INTO `loginfo` VALUES (5, '超级管理员-system', '127.0.0.1', '2018-12-22 09:05:22');
INSERT INTO `loginfo` VALUES (6, '超级管理员-system', '127.0.0.1', '2018-12-22 09:20:43');
INSERT INTO `loginfo` VALUES (7, '超级管理员-system', '127.0.0.1', '2018-12-22 09:25:40');
INSERT INTO `loginfo` VALUES (8, '超级管理员-system', '127.0.0.1', '2018-12-22 09:27:11');
INSERT INTO `loginfo` VALUES (9, '超级管理员-system', '127.0.0.1', '2018-12-22 09:29:58');
INSERT INTO `loginfo` VALUES (10, '超级管理员-system', '127.0.0.1', '2018-12-22 09:36:49');
INSERT INTO `loginfo` VALUES (11, '超级管理员-system', '127.0.0.1', '2018-12-22 09:46:56');
INSERT INTO `loginfo` VALUES (12, '超级管理员-system', '127.0.0.1', '2018-12-22 09:48:29');
INSERT INTO `loginfo` VALUES (13, '超级管理员-system', '127.0.0.1', '2018-12-22 09:49:13');
INSERT INTO `loginfo` VALUES (14, '超级管理员-system', '127.0.0.1', '2018-12-22 09:49:57');
INSERT INTO `loginfo` VALUES (15, '超级管理员-system', '127.0.0.1', '2018-12-22 09:57:46');
INSERT INTO `loginfo` VALUES (16, '超级管理员-system', '127.0.0.1', '2018-12-22 10:21:53');
INSERT INTO `loginfo` VALUES (17, '超级管理员-system', '127.0.0.1', '2018-12-22 10:38:25');
INSERT INTO `loginfo` VALUES (18, '超级管理员-system', '127.0.0.1', '2018-12-22 10:49:21');
INSERT INTO `loginfo` VALUES (19, '超级管理员-system', '127.0.0.1', '2018-12-22 14:01:42');
INSERT INTO `loginfo` VALUES (20, '超级管理员-system', '127.0.0.1', '2018-12-22 14:19:48');
INSERT INTO `loginfo` VALUES (21, '超级管理员-system', '127.0.0.1', '2018-12-22 14:45:29');
INSERT INTO `loginfo` VALUES (22, '超级管理员-system', '127.0.0.1', '2018-12-22 15:58:05');
INSERT INTO `loginfo` VALUES (23, '超级管理员-system', '127.0.0.1', '2018-12-22 16:40:53');
INSERT INTO `loginfo` VALUES (24, '超级管理员-system', '127.0.0.1', '2018-12-22 17:12:01');
INSERT INTO `loginfo` VALUES (25, '超级管理员-system', '127.0.0.1', '2018-12-24 09:19:15');
INSERT INTO `loginfo` VALUES (26, '超级管理员-system', '127.0.0.1', '2018-12-24 09:37:28');
INSERT INTO `loginfo` VALUES (27, '超级管理员-system', '127.0.0.1', '2018-12-24 09:46:51');
INSERT INTO `loginfo` VALUES (28, '超级管理员-system', '127.0.0.1', '2018-12-24 09:50:40');
INSERT INTO `loginfo` VALUES (29, '超级管理员-system', '127.0.0.1', '2018-12-24 09:52:52');
INSERT INTO `loginfo` VALUES (30, '超级管理员-system', '127.0.0.1', '2018-12-24 10:00:26');
INSERT INTO `loginfo` VALUES (31, '超级管理员-system', '127.0.0.1', '2018-12-24 10:10:58');
INSERT INTO `loginfo` VALUES (32, '超级管理员-system', '127.0.0.1', '2018-12-24 10:21:28');
INSERT INTO `loginfo` VALUES (33, '超级管理员-system', '127.0.0.1', '2018-12-24 11:22:27');
INSERT INTO `loginfo` VALUES (34, '超级管理员-system', '127.0.0.1', '2018-12-24 11:35:28');
INSERT INTO `loginfo` VALUES (35, '超级管理员-system', '127.0.0.1', '2018-12-24 14:05:28');
INSERT INTO `loginfo` VALUES (36, '超级管理员-system', '127.0.0.1', '2018-12-24 15:16:29');
INSERT INTO `loginfo` VALUES (37, '李四-ls', '127.0.0.1', '2018-12-24 15:16:50');
INSERT INTO `loginfo` VALUES (38, '王五-ww', '127.0.0.1', '2018-12-24 15:17:36');
INSERT INTO `loginfo` VALUES (39, '赵六-zl', '127.0.0.1', '2018-12-24 15:17:47');
INSERT INTO `loginfo` VALUES (40, '孙七-sq', '127.0.0.1', '2018-12-24 15:17:58');
INSERT INTO `loginfo` VALUES (41, '刘八-lb', '127.0.0.1', '2018-12-24 15:18:09');
INSERT INTO `loginfo` VALUES (42, '超级管理员-system', '127.0.0.1', '2018-12-24 15:34:59');
INSERT INTO `loginfo` VALUES (43, '超级管理员-system', '127.0.0.1', '2018-12-24 15:35:09');
INSERT INTO `loginfo` VALUES (44, '刘八-lb', '127.0.0.1', '2018-12-24 15:36:09');
INSERT INTO `loginfo` VALUES (45, '刘八-lb', '127.0.0.1', '2018-12-24 15:42:58');
INSERT INTO `loginfo` VALUES (46, '刘八-lb', '127.0.0.1', '2018-12-24 15:43:04');
INSERT INTO `loginfo` VALUES (47, '超级管理员-system', '127.0.0.1', '2018-12-24 15:46:01');
INSERT INTO `loginfo` VALUES (48, '超级管理员-system', '127.0.0.1', '2018-12-24 17:03:54');
INSERT INTO `loginfo` VALUES (49, '超级管理员-system', '127.0.0.1', '2018-12-24 17:26:32');
INSERT INTO `loginfo` VALUES (50, '超级管理员-system', '127.0.0.1', '2018-12-25 09:07:42');
INSERT INTO `loginfo` VALUES (51, '超级管理员-system', '127.0.0.1', '2018-12-25 09:16:27');
INSERT INTO `loginfo` VALUES (52, '超级管理员-system', '127.0.0.1', '2018-12-25 09:59:03');
INSERT INTO `loginfo` VALUES (53, '超级管理员-system', '127.0.0.1', '2018-12-25 10:05:13');
INSERT INTO `loginfo` VALUES (54, '超级管理员-system', '127.0.0.1', '2018-12-25 10:05:47');
INSERT INTO `loginfo` VALUES (55, '超级管理员-system', '127.0.0.1', '2018-12-25 10:11:17');
INSERT INTO `loginfo` VALUES (56, '超级管理员-system', '127.0.0.1', '2018-12-25 10:14:06');
INSERT INTO `loginfo` VALUES (57, '超级管理员-system', '127.0.0.1', '2018-12-25 10:36:16');
INSERT INTO `loginfo` VALUES (58, '超级管理员-system', '127.0.0.1', '2018-12-25 14:17:21');
INSERT INTO `loginfo` VALUES (59, '超级管理员-system', '127.0.0.1', '2018-12-25 14:20:00');
INSERT INTO `loginfo` VALUES (60, '超级管理员-system', '127.0.0.1', '2018-12-25 14:34:22');
INSERT INTO `loginfo` VALUES (61, '超级管理员-system', '127.0.0.1', '2018-12-25 14:34:27');
INSERT INTO `loginfo` VALUES (62, '超级管理员-system', '127.0.0.1', '2018-12-25 14:38:37');
INSERT INTO `loginfo` VALUES (63, '超级管理员-system', '127.0.0.1', '2018-12-25 14:50:37');
INSERT INTO `loginfo` VALUES (64, '超级管理员-system', '127.0.0.1', '2018-12-25 16:01:35');
INSERT INTO `loginfo` VALUES (65, '超级管理员-system', '127.0.0.1', '2018-12-25 16:25:28');
INSERT INTO `loginfo` VALUES (66, '超级管理员-system', '127.0.0.1', '2018-12-25 16:27:37');
INSERT INTO `loginfo` VALUES (67, '超级管理员-system', '127.0.0.1', '2018-12-25 16:28:28');
INSERT INTO `loginfo` VALUES (68, '超级管理员-system', '127.0.0.1', '2018-12-25 16:44:02');
INSERT INTO `loginfo` VALUES (69, '超级管理员-system', '127.0.0.1', '2018-12-25 16:47:55');
INSERT INTO `loginfo` VALUES (70, '超级管理员-system', '127.0.0.1', '2018-12-28 15:59:34');
INSERT INTO `loginfo` VALUES (71, '超级管理员-system', '127.0.0.1', '2018-12-28 17:27:16');
INSERT INTO `loginfo` VALUES (72, '超级管理员-system', '127.0.0.1', '2018-12-28 17:29:40');
INSERT INTO `loginfo` VALUES (73, '超级管理员-system', '127.0.0.1', '2018-12-28 17:51:10');
INSERT INTO `loginfo` VALUES (74, '超级管理员-system', '127.0.0.1', '2019-04-15 17:05:02');
INSERT INTO `loginfo` VALUES (75, '超级管理员-system', '127.0.0.1', '2019-04-15 17:05:12');
INSERT INTO `loginfo` VALUES (76, '超级管理员-system', '127.0.0.1', '2019-04-15 17:10:22');
INSERT INTO `loginfo` VALUES (77, '刘八-lb', '127.0.0.1', '2019-04-15 17:11:45');
INSERT INTO `loginfo` VALUES (78, '刘八-lb', '127.0.0.1', '2019-04-15 17:28:50');
INSERT INTO `loginfo` VALUES (79, '超级管理员-system', '127.0.0.1', '2019-04-15 17:29:13');
INSERT INTO `loginfo` VALUES (80, '刘八-lb', '127.0.0.1', '2019-04-15 17:30:59');
INSERT INTO `loginfo` VALUES (81, '刘八-lb', '127.0.0.1', '2019-04-15 17:32:42');
INSERT INTO `loginfo` VALUES (82, '刘八-lb', '127.0.0.1', '2019-04-15 17:33:48');
INSERT INTO `loginfo` VALUES (83, '刘八-lb', '127.0.0.1', '2019-04-15 17:34:17');
INSERT INTO `loginfo` VALUES (84, '超级管理员-system', '127.0.0.1', '2019-04-15 17:36:40');
INSERT INTO `loginfo` VALUES (85, '超级管理员-system', '127.0.0.1', '2019-04-15 17:47:21');
INSERT INTO `loginfo` VALUES (86, '超级管理员-system', '127.0.0.1', '2019-04-15 17:54:10');
INSERT INTO `loginfo` VALUES (87, '超级管理员-system', '127.0.0.1', '2019-04-15 17:55:52');
INSERT INTO `loginfo` VALUES (88, '超级管理员-system', '127.0.0.1', '2019-04-16 09:26:01');
INSERT INTO `loginfo` VALUES (89, '超级管理员-system', '127.0.0.1', '2019-04-16 09:26:25');
INSERT INTO `loginfo` VALUES (90, '超级管理员-system', '127.0.0.1', '2019-04-16 09:46:54');
INSERT INTO `loginfo` VALUES (91, '超级管理员-system', '127.0.0.1', '2019-04-16 10:07:48');
INSERT INTO `loginfo` VALUES (92, '超级管理员-system', '127.0.0.1', '2019-04-16 10:10:30');
INSERT INTO `loginfo` VALUES (93, '超级管理员-system', '127.0.0.1', '2019-04-16 10:14:29');
INSERT INTO `loginfo` VALUES (94, '超级管理员-system', '127.0.0.1', '2019-04-16 10:15:04');
INSERT INTO `loginfo` VALUES (95, '超级管理员-system', '127.0.0.1', '2019-04-16 10:15:58');
INSERT INTO `loginfo` VALUES (96, '超级管理员-system', '127.0.0.1', '2019-04-16 10:28:14');
INSERT INTO `loginfo` VALUES (97, '超级管理员-system', '127.0.0.1', '2019-04-16 10:32:42');
INSERT INTO `loginfo` VALUES (98, '超级管理员-system', '127.0.0.1', '2019-04-16 10:33:03');
INSERT INTO `loginfo` VALUES (99, '超级管理员-system', '127.0.0.1', '2019-04-16 11:02:01');
INSERT INTO `loginfo` VALUES (100, '超级管理员-system', '127.0.0.1', '2019-04-16 11:03:09');
INSERT INTO `loginfo` VALUES (101, '超级管理员-system', '127.0.0.1', '2019-04-16 11:13:42');
INSERT INTO `loginfo` VALUES (102, '超级管理员-system', '127.0.0.1', '2019-04-16 11:24:55');
INSERT INTO `loginfo` VALUES (104, '超级管理员-system', '127.0.0.1', '2019-08-14 01:11:34');
INSERT INTO `loginfo` VALUES (105, '超级管理员-system', '127.0.0.1', '2019-08-14 01:24:03');
INSERT INTO `loginfo` VALUES (106, '李四-ls', '127.0.0.1', '2019-08-14 01:25:47');
INSERT INTO `loginfo` VALUES (107, '李四-ls', '127.0.0.1', '2019-08-14 01:26:41');
INSERT INTO `loginfo` VALUES (108, '孙七-sq', '127.0.0.1', '2019-08-14 01:28:22');
INSERT INTO `loginfo` VALUES (109, '刘八-lb', '127.0.0.1', '2019-08-14 01:28:32');
INSERT INTO `loginfo` VALUES (110, '超级管理员-system', '127.0.0.1', '2019-08-14 01:46:18');
INSERT INTO `loginfo` VALUES (111, '超级管理员-system', '127.0.0.1', '2019-08-14 02:18:44');
INSERT INTO `loginfo` VALUES (112, '超级管理员-system', '127.0.0.1', '2019-08-14 02:32:06');
INSERT INTO `loginfo` VALUES (113, '李四-ls', '127.0.0.1', '2019-08-14 03:00:19');
INSERT INTO `loginfo` VALUES (114, '李四-ls', '127.0.0.1', '2019-08-14 03:00:56');
INSERT INTO `loginfo` VALUES (115, '李四-ls', '127.0.0.1', '2019-08-14 03:01:31');
INSERT INTO `loginfo` VALUES (116, '李四-ls', '127.0.0.1', '2019-08-14 03:01:39');
INSERT INTO `loginfo` VALUES (117, '李四-ls', '127.0.0.1', '2019-08-14 03:02:25');
INSERT INTO `loginfo` VALUES (118, '李四-ls', '127.0.0.1', '2019-08-14 03:04:57');
INSERT INTO `loginfo` VALUES (119, '李四-ls', '127.0.0.1', '2019-08-14 03:07:19');
INSERT INTO `loginfo` VALUES (120, '李四-ls', '127.0.0.1', '2019-08-14 03:07:54');
INSERT INTO `loginfo` VALUES (121, '超级管理员-system', '127.0.0.1', '2019-08-14 03:13:06');
INSERT INTO `loginfo` VALUES (122, '李四-ls', '127.0.0.1', '2019-08-14 03:14:46');
INSERT INTO `loginfo` VALUES (123, '超级管理员-system', '127.0.0.1', '2019-08-14 06:03:47');
INSERT INTO `loginfo` VALUES (124, '超级管理员-system', '127.0.0.1', '2019-08-14 07:20:12');
INSERT INTO `loginfo` VALUES (125, '超级管理员-system', '127.0.0.1', '2019-08-14 07:23:05');
INSERT INTO `loginfo` VALUES (126, '超级管理员-system', '127.0.0.1', '2019-08-14 07:25:30');
INSERT INTO `loginfo` VALUES (127, '超级管理员-system', '127.0.0.1', '2019-08-14 07:26:34');
INSERT INTO `loginfo` VALUES (128, '超级管理员-system', '127.0.0.1', '2019-08-14 07:27:22');
INSERT INTO `loginfo` VALUES (129, '超级管理员-system', '127.0.0.1', '2019-08-14 07:27:51');
INSERT INTO `loginfo` VALUES (130, '超级管理员-system', '127.0.0.1', '2019-08-14 08:22:05');
INSERT INTO `loginfo` VALUES (131, '超级管理员-system', '127.0.0.1', '2019-08-14 08:43:53');
INSERT INTO `loginfo` VALUES (132, '超级管理员-system', '127.0.0.1', '2019-08-14 08:45:55');
INSERT INTO `loginfo` VALUES (133, '超级管理员-system', '127.0.0.1', '2019-08-14 08:47:13');
INSERT INTO `loginfo` VALUES (134, '超级管理员-system', '127.0.0.1', '2019-08-14 09:35:20');
INSERT INTO `loginfo` VALUES (135, '超级管理员-system', '127.0.0.1', '2019-08-14 09:41:02');
INSERT INTO `loginfo` VALUES (136, '超级管理员-system', '127.0.0.1', '2019-08-14 09:44:04');
INSERT INTO `loginfo` VALUES (137, '超级管理员-system', '127.0.0.1', '2019-08-14 09:50:27');
INSERT INTO `loginfo` VALUES (138, '超级管理员-system', '127.0.0.1', '2019-08-14 09:56:57');
INSERT INTO `loginfo` VALUES (139, '超级管理员-system', '127.0.0.1', '2019-08-14 09:59:02');
INSERT INTO `loginfo` VALUES (140, '超级管理员-system', '127.0.0.1', '2019-08-16 01:05:37');
INSERT INTO `loginfo` VALUES (141, '超级管理员-system', '127.0.0.1', '2019-08-16 02:01:44');
INSERT INTO `loginfo` VALUES (142, '超级管理员-system', '127.0.0.1', '2019-08-16 02:05:57');
INSERT INTO `loginfo` VALUES (143, '超级管理员-system', '127.0.0.1', '2019-08-16 02:07:04');
INSERT INTO `loginfo` VALUES (144, '超级管理员-system', '127.0.0.1', '2019-08-16 02:20:02');
INSERT INTO `loginfo` VALUES (145, '超级管理员-system', '127.0.0.1', '2019-08-16 02:20:20');
INSERT INTO `loginfo` VALUES (146, '超级管理员-system', '127.0.0.1', '2019-08-16 02:21:42');
INSERT INTO `loginfo` VALUES (147, '超级管理员-system', '127.0.0.1', '2019-08-16 03:37:37');
INSERT INTO `loginfo` VALUES (148, '超级管理员-system', '127.0.0.1', '2019-08-16 03:52:40');
INSERT INTO `loginfo` VALUES (149, '超级管理员-system', '127.0.0.1', '2019-08-16 03:59:37');
INSERT INTO `loginfo` VALUES (150, '超级管理员-system', '127.0.0.1', '2019-08-16 06:11:45');
INSERT INTO `loginfo` VALUES (151, '超级管理员-system', '127.0.0.1', '2019-08-16 06:23:27');
INSERT INTO `loginfo` VALUES (152, '超级管理员-system', '127.0.0.1', '2019-08-16 06:50:31');
INSERT INTO `loginfo` VALUES (153, '超级管理员-system', '127.0.0.1', '2019-08-16 06:54:49');
INSERT INTO `loginfo` VALUES (154, '超级管理员-system', '127.0.0.1', '2019-08-16 07:00:48');
INSERT INTO `loginfo` VALUES (155, '超级管理员-system', '127.0.0.1', '2019-08-16 07:01:18');
INSERT INTO `loginfo` VALUES (156, '超级管理员-system', '127.0.0.1', '2019-08-16 07:03:35');
INSERT INTO `loginfo` VALUES (157, '超级管理员-system', '127.0.0.1', '2019-08-16 07:09:55');
INSERT INTO `loginfo` VALUES (158, '超级管理员-system', '127.0.0.1', '2019-08-16 07:46:09');
INSERT INTO `loginfo` VALUES (159, '超级管理员-system', '127.0.0.1', '2019-08-16 08:17:59');
INSERT INTO `loginfo` VALUES (160, '超级管理员-system', '127.0.0.1', '2019-08-16 08:22:29');
INSERT INTO `loginfo` VALUES (161, '超级管理员-system', '127.0.0.1', '2019-08-16 08:23:32');
INSERT INTO `loginfo` VALUES (162, '超级管理员-system', '127.0.0.1', '2019-08-16 08:26:48');
INSERT INTO `loginfo` VALUES (163, '超级管理员-system', '127.0.0.1', '2019-08-16 08:31:19');
INSERT INTO `loginfo` VALUES (164, '超级管理员-system', '127.0.0.1', '2019-08-16 08:55:36');
INSERT INTO `loginfo` VALUES (165, '超级管理员-system', '127.0.0.1', '2019-08-16 08:55:59');
INSERT INTO `loginfo` VALUES (166, '超级管理员-system', '127.0.0.1', '2019-08-16 08:56:53');
INSERT INTO `loginfo` VALUES (167, '超级管理员-system', '127.0.0.1', '2019-08-16 08:57:42');
INSERT INTO `loginfo` VALUES (168, '超级管理员-system', '127.0.0.1', '2019-08-16 09:00:47');
INSERT INTO `loginfo` VALUES (169, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-09-06 14:18:19');
INSERT INTO `loginfo` VALUES (170, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-09-06 14:31:40');
INSERT INTO `loginfo` VALUES (171, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-09-06 14:35:54');
INSERT INTO `loginfo` VALUES (172, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-09-06 14:40:57');
INSERT INTO `loginfo` VALUES (173, '超级管理员-admin', '123.157.238.34', '2020-09-17 09:59:18');
INSERT INTO `loginfo` VALUES (174, '超级管理员-admin', '123.157.238.34', '2020-09-17 09:59:18');
INSERT INTO `loginfo` VALUES (175, '超级管理员-admin', '123.157.238.34', '2020-09-17 09:59:18');
INSERT INTO `loginfo` VALUES (176, '超级管理员-admin', '123.157.238.34', '2020-09-17 09:59:18');
INSERT INTO `loginfo` VALUES (177, '超级管理员-admin', '123.157.238.34', '2020-09-17 09:59:18');
INSERT INTO `loginfo` VALUES (178, '超级管理员-admin', '123.157.238.34', '2020-09-17 09:59:18');
INSERT INTO `loginfo` VALUES (179, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-09-29 00:08:43');
INSERT INTO `loginfo` VALUES (180, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 01:48:28');
INSERT INTO `loginfo` VALUES (181, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 01:54:30');
INSERT INTO `loginfo` VALUES (182, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 02:14:46');
INSERT INTO `loginfo` VALUES (183, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 02:15:44');
INSERT INTO `loginfo` VALUES (184, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 02:17:14');
INSERT INTO `loginfo` VALUES (185, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 02:40:25');
INSERT INTO `loginfo` VALUES (186, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 02:45:44');
INSERT INTO `loginfo` VALUES (187, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 03:01:46');
INSERT INTO `loginfo` VALUES (188, '超级管理员-admin', '127.0.0.1', '2020-10-05 03:10:06');
INSERT INTO `loginfo` VALUES (189, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 03:13:06');
INSERT INTO `loginfo` VALUES (190, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 03:20:16');
INSERT INTO `loginfo` VALUES (191, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 03:21:08');
INSERT INTO `loginfo` VALUES (192, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 04:45:55');
INSERT INTO `loginfo` VALUES (193, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 05:05:30');
INSERT INTO `loginfo` VALUES (194, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 05:11:25');
INSERT INTO `loginfo` VALUES (195, '超级管理员-admin', '127.0.0.1', '2020-10-05 05:18:05');
INSERT INTO `loginfo` VALUES (196, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 05:46:39');
INSERT INTO `loginfo` VALUES (197, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 06:25:02');
INSERT INTO `loginfo` VALUES (198, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 06:26:29');
INSERT INTO `loginfo` VALUES (199, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 06:44:44');
INSERT INTO `loginfo` VALUES (200, '超级管理员-admin', '127.0.0.1', '2020-10-05 07:38:36');
INSERT INTO `loginfo` VALUES (201, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 07:43:02');
INSERT INTO `loginfo` VALUES (202, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 08:20:24');
INSERT INTO `loginfo` VALUES (203, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 08:40:34');
INSERT INTO `loginfo` VALUES (204, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 08:42:57');
INSERT INTO `loginfo` VALUES (205, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 08:45:53');
INSERT INTO `loginfo` VALUES (206, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 08:49:06');
INSERT INTO `loginfo` VALUES (207, '超级管理员-admin', '127.0.0.1', '2020-10-05 09:31:43');
INSERT INTO `loginfo` VALUES (208, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 09:48:59');
INSERT INTO `loginfo` VALUES (209, '超级管理员-admin', '123.157.238.34', '2020-10-05 09:49:12');
INSERT INTO `loginfo` VALUES (210, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-05 09:49:23');
INSERT INTO `loginfo` VALUES (211, '超级管理员-admin', '123.157.238.34', '2020-10-05 09:53:15');
INSERT INTO `loginfo` VALUES (212, '超级管理员-admin', '36.22.191.99', '2020-10-05 09:53:41');
INSERT INTO `loginfo` VALUES (213, '超级管理员-admin', '123.157.238.34', '2020-10-05 09:55:39');
INSERT INTO `loginfo` VALUES (214, '超级管理员-admin', '123.157.238.34', '2020-10-05 18:40:27');
INSERT INTO `loginfo` VALUES (215, '超级管理员-admin', '123.157.238.34', '2020-10-09 08:27:13');
INSERT INTO `loginfo` VALUES (216, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 08:40:48');
INSERT INTO `loginfo` VALUES (217, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 09:25:46');
INSERT INTO `loginfo` VALUES (218, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 09:31:30');
INSERT INTO `loginfo` VALUES (219, '超级管理员-admin', '123.157.238.34', '2020-10-09 10:15:46');
INSERT INTO `loginfo` VALUES (220, '超级管理员-admin', '123.157.238.34', '2020-10-09 10:15:51');
INSERT INTO `loginfo` VALUES (221, '超级管理员-admin', '123.157.238.34', '2020-10-09 10:16:26');
INSERT INTO `loginfo` VALUES (222, '用户1-admin', '0:0:0:0:0:0:0:1', '2020-10-09 19:51:30');
INSERT INTO `loginfo` VALUES (223, '用户1-admin', '0:0:0:0:0:0:0:1', '2020-10-09 19:51:38');
INSERT INTO `loginfo` VALUES (224, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 19:52:51');
INSERT INTO `loginfo` VALUES (225, '超级管理员-admin', '127.0.0.1', '2020-10-09 20:00:20');
INSERT INTO `loginfo` VALUES (226, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 20:05:58');
INSERT INTO `loginfo` VALUES (227, '超级管理员-admin', '127.0.0.1', '2020-10-09 20:07:39');
INSERT INTO `loginfo` VALUES (228, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 20:09:21');
INSERT INTO `loginfo` VALUES (229, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 20:17:07');
INSERT INTO `loginfo` VALUES (230, '超级管理员-admin', '127.0.0.1', '2020-10-09 20:24:17');
INSERT INTO `loginfo` VALUES (231, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 20:28:42');
INSERT INTO `loginfo` VALUES (232, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 20:31:18');
INSERT INTO `loginfo` VALUES (233, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 20:32:01');
INSERT INTO `loginfo` VALUES (234, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 20:32:05');
INSERT INTO `loginfo` VALUES (235, '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-10-09 20:52:48');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '关于系统V1.3更新公告', '2', '2018-08-07 00:00:00', '管理员');
INSERT INTO `notice` VALUES (10, '关于系统V1.2更新公告', '12312312<img src=\"/resources/layui/images/face/42.gif\" alt=\"[抓狂]\">', '2018-08-07 00:00:00', '超级管理员');
INSERT INTO `notice` VALUES (11, '关于系统V1.1更新公告', '21321321321<img src=\"/resources/layui/images/face/18.gif\" alt=\"[右哼哼]\">', '2018-08-07 00:00:00', '超级管理员');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,表名不能用order',
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'orderid 订单编号',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `postage` decimal(10, 2) NULL DEFAULT NULL COMMENT '配送费',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态;0：取消订单,1:等待买家付款,2:买家已付款,3:等待商家送货,4:商家已送达，5：确定收货，6：订单完成',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '111', 1, 1.00, 1.00, 1, '2020-10-05 20:32:21');
INSERT INTO `orders` VALUES (2, '231231', 2, 2323.00, 234.00, 3, '2020-10-05 21:25:16');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `percode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open` int(11) NULL DEFAULT NULL,
  `ordernum` int(11) NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 0, 'menu', '诗画嘉兴后台管理系统', NULL, '&#xe68e;', 'toDeskManager', '', 1, 1, 1);
INSERT INTO `permission` VALUES (2, 1, 'menu', '用户管理', NULL, '&#xe66f;', '', '', 0, 2, 1);
INSERT INTO `permission` VALUES (3, 1, 'menu', '文章管理', NULL, '&#xe705;', '', '', 0, 3, 1);
INSERT INTO `permission` VALUES (4, 1, 'menu', '系统管理', NULL, '&#xe614;', '', '', 0, 4, 1);
INSERT INTO `permission` VALUES (5, 1, 'menu', '商城管理', NULL, '&#xe657;', '', '', 0, 5, 1);
INSERT INTO `permission` VALUES (6, 1, 'menu', '其它管理', NULL, '&#xe628;', '', '', 0, 6, 1);
INSERT INTO `permission` VALUES (7, 2, 'menu', '用户管理', NULL, '&#xe66f;', '/toUserManager', '', 0, 21, 1);
INSERT INTO `permission` VALUES (8, 2, 'menu', '购物车管理', NULL, '&#xe698;', '', '', 0, 22, 1);
INSERT INTO `permission` VALUES (10, 3, 'menu', '文章管理', NULL, '&#xe663;', '/toArticleManager', '', 0, 31, 1);
INSERT INTO `permission` VALUES (11, 3, 'menu', '分类管理', NULL, '&#xe656;', '/toCategoryManager', '', 0, 32, 1);
INSERT INTO `permission` VALUES (15, 4, 'menu', '菜单管理', NULL, '&#xe857;', '/toMenuManager', '', 0, 41, 1);
INSERT INTO `permission` VALUES (16, 4, 'menu', '权限管理', '', '&#xe857;', '/toPermissionManager', '', 0, 42, 1);
INSERT INTO `permission` VALUES (21, 6, 'menu', '登陆日志', NULL, '&#xe675;', '/toLoginfoManager', '', 0, 51, 1);
INSERT INTO `permission` VALUES (22, 6, 'menu', '系统公告', NULL, '&#xe756;', '/toNoticeManager', '', 0, 52, 1);
INSERT INTO `permission` VALUES (23, 6, 'menu', '图标管理', NULL, '&#xe670;', '../resources/page/icon.html', '', 0, 53, 1);
INSERT INTO `permission` VALUES (34, 15, 'permission', '添加菜单', 'menu:create', '', '', '', 0, 29, 1);
INSERT INTO `permission` VALUES (35, 15, 'permission', '修改菜单', 'menu:update', '', NULL, NULL, 0, 30, 1);
INSERT INTO `permission` VALUES (36, 15, 'permission', '删除菜单', 'menu:delete', '', NULL, NULL, 0, 31, 1);
INSERT INTO `permission` VALUES (38, 16, 'permission', '添加权限', 'permission:create', '', NULL, NULL, 0, 33, 1);
INSERT INTO `permission` VALUES (39, 16, 'permission', '修改权限', 'permission:update', '', NULL, NULL, 0, 34, 1);
INSERT INTO `permission` VALUES (40, 16, 'permission', '删除权限', 'permission:delete', '', NULL, NULL, 0, 35, 1);
INSERT INTO `permission` VALUES (54, 15, 'permission', '菜单查询', 'menu:view', NULL, NULL, NULL, 0, 49, 1);
INSERT INTO `permission` VALUES (55, 16, 'permission', '权限查询', 'permission:view', NULL, NULL, NULL, 0, 50, 1);
INSERT INTO `permission` VALUES (73, 21, 'permission', '日志查询', 'info:view', NULL, NULL, NULL, NULL, 65, 1);
INSERT INTO `permission` VALUES (74, 21, 'permission', '日志删除', 'info:delete', NULL, NULL, NULL, NULL, 66, 1);
INSERT INTO `permission` VALUES (75, 21, 'permission', '日志批量删除', 'info:batchdelete', NULL, NULL, NULL, NULL, 67, 1);
INSERT INTO `permission` VALUES (76, 22, 'permission', '公告查询', 'notice:view', NULL, NULL, NULL, NULL, 68, 1);
INSERT INTO `permission` VALUES (77, 22, 'permission', '公告添加', 'notice:create', NULL, NULL, NULL, NULL, 69, 1);
INSERT INTO `permission` VALUES (78, 22, 'permission', '公告修改', 'notice:update', NULL, NULL, NULL, NULL, 70, 1);
INSERT INTO `permission` VALUES (79, 22, 'permission', '公告删除', 'notice:delete', NULL, NULL, NULL, NULL, 71, 1);
INSERT INTO `permission` VALUES (86, 22, 'permission', '公告查看', 'notice:viewnotice', NULL, NULL, NULL, NULL, 78, 1);
INSERT INTO `permission` VALUES (93, 3, 'menu', '评论管理', NULL, '&#xe611;', '/toCommentManager', '', 1, 33, 1);
INSERT INTO `permission` VALUES (95, 5, 'menu', '商品管理', NULL, '&#xe857;', '/toGoodsManager', '', 1, 51, 1);
INSERT INTO `permission` VALUES (96, 5, 'menu', '订单管理', NULL, '&#xe857;', '/toOrderManager', '', 1, 52, 1);
INSERT INTO `permission` VALUES (97, 3, 'menu', '问答管理', NULL, '&#xe607;', '/toQuestionManager', '', 1, 34, 1);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `topic` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '问题标题',
  `optiona` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项A',
  `optionb` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项B',
  `optionc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项C',
  `optiond` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '选项D',
  `answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '答案',
  `cid` int(11) NULL DEFAULT NULL COMMENT '问题类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '哪里是党的发源地111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '嘉兴', '温州', '杭州', '宁波', 'A', 1);
INSERT INTO `question` VALUES (2, '嘉兴有多大', '11', '1124', '245', '12421', 'A', 2);
INSERT INTO `question` VALUES (3, 'test1', '1', '2', '3', '4', 'D', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `type` int(11) NULL DEFAULT 2 COMMENT '用户类型[0超级管理员1，管理员，2普通用户]',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `signature` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `avatar_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路径',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '超级管理员', 'admin', '532ac00e86893901af5f0be6b704dbc7', 0, '1', '11', '1', '11', '2020-09-06 14:12:46', '2020-10-05/63188CB657A84CD8A6719979AA4C666B.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `user` VALUES (2, '用户2', NULL, NULL, 2, '0', '2', '2', '2', '2020-09-06 14:47:19', '2020-10-05/3FF97FD36F494C6E9FB001EBB1644CA4.png', NULL);
INSERT INTO `user` VALUES (4, 'Mlimit', NULL, NULL, 2, '1', '15657312876', '冲啊', '浙江温州', '2020-10-09 20:01:55', '2020-10-10/1D1E0165D3A04B9DB1BA7E8595D22B44.jpg', NULL);
INSERT INTO `user` VALUES (5, '张三', NULL, NULL, 2, '1', '17858337699', 'nice！', '嘉兴职业技术学院', '2020-10-09 20:19:09', '2020-10-10/D187CCFD3CCD487BB517A04370FF7FD3.jpg', NULL);
INSERT INTO `user` VALUES (6, '张三女', NULL, NULL, 2, '0', '17858337699', 'nice！', '嘉兴职业技术学院', NULL, '2020-10-10/F1EDE0D2911445C78340DB617D4219C6.jpg', NULL);
INSERT INTO `user` VALUES (7, '李四', NULL, 'c620ef7bd3ad0f6dfeec4e2e195bdb6a', 2, '1', '17858337699', 'test', '浙江杭州', '2020-10-09 20:29:01', '2020-10-10/5F7165B1F99A4B92AC2C869C958F6CC6.jpg', '1AE0C3D23B5B49338F9CCB978F44C184');

SET FOREIGN_KEY_CHECKS = 1;
