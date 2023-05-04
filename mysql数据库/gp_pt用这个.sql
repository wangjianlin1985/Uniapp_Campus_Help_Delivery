/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.6
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : gp_pt

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 12/09/2021 18:46:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article_content
-- ----------------------------
DROP TABLE IF EXISTS `article_content`;
CREATE TABLE `article_content`  (
  `main_id` bigint(20) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`main_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_content
-- ----------------------------
INSERT INTO `article_content` VALUES (35, '<p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20191030/4721f2a8976a4b4aa639e3bcffd85260.png\" max-width=\"600\" style=\"margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\">同城跑腿平台的出现，不仅解决了用户的需求，也提供了就业，催生了跑腿员群体。对跑腿员而言，选择一套功能强大、系统稳定的跑腿配送系统非常重要。因为跑腿系统的稳定性影响着跑腿员接单、抢单的过程，最重要的是直接影响着跑腿员的薪资。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\">影响着跑腿员接单和配送的跑腿系统应该怎么选？选择什么样的跑腿系统对于跑腿配送员来说更有帮助呢？</p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20191030/37e1e65d45954b12972153479138a00f.png\" max-width=\"600\" style=\"margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"></p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">一、能提供跑腿系统免费的更新和维护</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\">能够根据客户、跑腿员反馈和需求对跑腿配送软件进行优化或更新，这样的跑腿配送软件是跑腿员最青睐的。任何软件都会存在或大或小的BUG，关键在于软件公司是否能及时处理、提供免费的售后服务，以提供给跑腿员最佳的体验，最大程度为他们带来工作便捷。</p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">二、跑腿系统的稳定性</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\">跑腿系统的稳定性影响着跑腿员接单、抢单的过程，配送路径的规划是否合理，定位是否准确，精准的定位是一个好的跑腿软件的基本前提。便于跑腿员快速响应客户的需求，高效完成客户订单；同时也便于管理员在跑腿平台后台实时监控跑腿员位置，方便管理；此外还便于客户实时查看跑腿员位置，增加客户信任感。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\">密切影响着跑腿员接单量、配送、薪资的跑腿系统，就选华悟快送跑腿小程序。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\">华悟快送跑腿小系统，功能强大、系统稳定、配置完善，既能为跑腿员提供跑腿系统免费更新和维护，也能保障跑腿系统的稳定性，保证跑腿员快速接单、抢单，实现更高薪资。一套稳定的跑腿系统是商家征战市场的主要武器，也是跑腿员高效率工作、实现高薪资的重要利器。</p>');
INSERT INTO `article_content` VALUES (36, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; font-size: 16px;\">XX服务平台所有权及经营权为XXXX网络科技有限公司所有，在您向XX服务平台提交服务者注册申请之前，您应当仔细阅读本协议方便注册。本协议将成为您和XX之间具有法律效应的文件。</span><br style=\"content: &quot;&quot;; display: block; width: 705px; height: 0px; margin: 20px 0px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; font-size: 16px;\">　　跑腿员系具备完全民事行为能力的自然人。跑腿员申请注册并经XX审核通过后，通过XX信息服务平台自主选择接受、完成任务事项，并在事项完成后获得任务事项信息发布方给付的相应报酬。跑腿员自愿利用闲暇时间并根据自己的行程安排，自主选择是否接受XX信息服务平台上的任务事项信息，为XX用户提供服务完成任务事项。</span><br style=\"content: &quot;&quot;; display: block; width: 705px; height: 0px; margin: 20px 0px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; font-size: 16px;\">　　XX信息服务平台作为信息发布、服务平台，仅为平台用户提供信息服务，供用户自主选择发布、接受任务事项信息。XX不对任务事项信息的真实性或准确性及所涉物品的质量、安全或合法性</span><br></p>');

-- ----------------------------
-- Table structure for article_item
-- ----------------------------
DROP TABLE IF EXISTS `article_item`;
CREATE TABLE `article_item`  (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(4) NULL DEFAULT NULL,
  `remark` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除人',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `delete_flag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_item
-- ----------------------------
INSERT INTO `article_item` VALUES (7, '通知', 100, NULL, 'admin', '2021-05-23 23:02:28', NULL, NULL, NULL, NULL, 0);
INSERT INTO `article_item` VALUES (8, '新闻', 90, NULL, 'admin', '2021-05-23 23:02:36', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for article_main
-- ----------------------------
DROP TABLE IF EXISTS `article_main`;
CREATE TABLE `article_main`  (
  `main_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `main_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_subtitle` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_start` datetime(0) NULL DEFAULT NULL,
  `main_end` datetime(0) NULL DEFAULT NULL,
  `main_summary` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_time` datetime(0) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `istop` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  `cover` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除人',
  `delete_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `delete_flag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (`main_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_main
-- ----------------------------
INSERT INTO `article_main` VALUES (35, '跑腿规则优化', '让跑腿员因订单取消有保障', '管理员', '2021-04-23 00:00:00', '2025-09-27 00:00:00', '让跑腿员因订单取消有保障', '2021-09-11 22:19:38', 100, '1', 7, '/profile/upload/2021/09/11/b9e77839f50d115cf64c9482f08114e8.jpg', NULL, 'admin', '2021-05-23 23:09:09', 'admin', '2021-09-11 22:19:38', NULL, NULL, 0);
INSERT INTO `article_main` VALUES (36, '平台协议', '平台协议', '管理员', '2021-05-18 00:00:00', '2025-10-04 00:00:00', '平台协议', '2021-09-12 15:45:46', 90, '1', 7, '/profile/upload/2021/09/11/2cedc156ea52d85be3947ee02a108c3b.jpg', NULL, 'admin', '2021-05-26 21:17:16', 'admin', '2021-09-12 15:45:46', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delete_flag` tinyint(4) NULL DEFAULT 0,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-green', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-13 21:26:30', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '初始化密码 123456', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-20 09:59:50', '深色主题theme-dark，浅色主题theme-light', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (101, '系统名称', 'sys.name', '校园跑腿系统', 'Y', 'admin', '2019-08-07 00:04:04', 'admin', '2021-05-29 12:45:48', '由“项目配置”页面更改操作', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (102, '系统版权', 'sys.copyright', '欢迎使用校园跑腿系统', 'Y', 'admin', '2019-08-07 00:26:47', 'admin', '2021-05-29 12:45:46', '由“项目配置”页面更改操作', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (103, 'LOGO图片', 'sys.logo', '/profile/logo/2021/05/29/49da1d67090f83f64a75bf1b51ab1695.png', 'Y', 'admin', '2019-08-08 00:03:03', 'admin', '2021-05-29 12:50:02', '由“项目配置”页面更改操作', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (118, '移动端登录背景', 'app_login_bg', '/profile/logo/2021/05/22/905dec2215dbb529473b2d63747bb7c0.jpg', 'Y', 'admin', '2021-05-21 21:48:11', 'admin', '2021-05-22 14:32:25', '由“项目配置”页面更改操作', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (119, '跑腿起步价', 'price_paotu_start', '4', 'Y', 'admin', '2021-05-24 21:30:22', 'admin', '2021-05-24 21:32:49', '跑腿起步价', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (120, '跑腿起步价公里数', 'distance_paotu_start', '3', 'Y', 'admin', '2021-05-24 21:32:45', '', NULL, '即3功力内跑腿只收起步价', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (121, '跑腿每公里价格', 'price_paotu_one', '2', 'Y', 'admin', '2021-05-24 21:33:39', '', NULL, '超过跑腿起步价之后每公里价格', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (122, '打印复印价格/张', 'price_print_one', '0.1', 'Y', 'admin', '2021-05-24 21:37:54', '', NULL, '打印价格', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (123, '打印起步价', 'price_print_start', '1', 'Y', 'admin', '2021-05-24 21:38:44', '', NULL, '若打印张数*打印单价的钱少于起步价，则按起步价算', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (124, '快递起步价', 'price_parcel_start', '3', 'Y', 'admin', '2021-05-24 22:21:07', '', NULL, '快递起步价', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (125, '快递起步重量', 'weight_parcel_start', '3', 'Y', 'admin', '2021-05-24 22:22:09', '', NULL, '快递起步重量', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (126, '快递超起步价后每千克价格', 'price_parcel_one', '1', 'Y', 'admin', '2021-05-24 22:22:45', '', NULL, '快递超起步价后每千克价格', 0, NULL, NULL);
INSERT INTO `sys_config` VALUES (127, '打印起步张数', 'pages_print_start', '5', 'Y', '', NULL, '', NULL, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `short_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `delete_flag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'XX部门', 0, '', '', '', 'XX部门', '0', 0, 'admin', '2018-03-16 11:33:00', 'admin', '2021-05-18 14:12:16', NULL, NULL);
INSERT INTO `sys_dept` VALUES (213, 100, '0,100', '内部', 100, '', '', '', '内部', '0', 0, 'admin', '2021-05-01 23:19:55', 'admin', '2021-05-18 14:12:16', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delete_flag` tinyint(4) NULL DEFAULT 0,
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '性别男', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '性别女', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '性别未知', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '显示菜单', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '隐藏菜单', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '正常状态', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '2', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-07 22:38:22', '停用状态', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '正常状态', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (9, 3, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-07 22:44:00', '停用状态', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '默认分组', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '系统分组', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '系统默认是', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '系统默认否', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '通知', 1, 'admin', '2021-04-12 21:45:32');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '公告', 1, 'admin', '2021-04-12 21:45:32');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '正常状态', 1, 'admin', '2021-04-12 21:45:38');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '关闭状态', 1, 'admin', '2021-04-12 21:45:38');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '新增操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '修改操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '删除操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '授权操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '导出操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '导入操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '强退操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '生成操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '清空操作', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '正常状态', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '停用状态', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 2, '是', '1', 'article_need_audit_status', '', 'default', 'N', '0', 'admin', '2019-08-15 22:53:39', 'admin', '2019-08-15 22:54:12', '需要审核', 1, 'admin', '2021-04-12 21:45:11');
INSERT INTO `sys_dict_data` VALUES (104, 3, '否', '0', 'article_need_audit_status', '', 'default', 'Y', '0', 'admin', '2019-08-15 22:53:55', 'admin', '2019-08-15 22:54:06', '不需要审核', 1, 'admin', '2021-04-12 21:45:11');
INSERT INTO `sys_dict_data` VALUES (105, 2, '否', '0', 'article_istop', NULL, NULL, 'Y', '0', 'admin', '2019-08-17 15:57:50', 'admin', NULL, '不置顶', 0, 'admin', '2021-04-12 21:44:54');
INSERT INTO `sys_dict_data` VALUES (106, 0, '是', '1', 'article_istop', NULL, NULL, 'N', '0', 'admin', '2019-08-17 15:58:07', 'admin', NULL, '置顶', 0, 'admin', '2021-04-12 21:44:54');
INSERT INTO `sys_dict_data` VALUES (107, 10, '正常', '0', 'useable_status', NULL, NULL, 'Y', '0', 'demo', '2019-08-22 10:31:15', 'admin', NULL, NULL, 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 9, '停用', '1', 'useable_status', '', '', 'N', '0', 'demo', '2019-08-22 10:31:47', 'admin', '2020-03-20 10:59:48', 'test', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 8, '毕业', '3', 'useable_status', '', '', 'N', '0', 'demo', '2019-08-22 10:32:12', 'admin', '2020-03-20 11:06:19', 'ts', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 3, '考勤', 'ATTENDANCE', 'sys_job_group', NULL, NULL, 'Y', '0', 'demo', '2019-11-13 10:45:38', '', NULL, '考勤分组', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 4, '接口', 'API', 'sys_job_group', NULL, NULL, 'Y', '0', 'demo', '2019-11-13 11:07:11', '', NULL, NULL, 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 5, '清理数据', 'CLEAN', 'sys_job_group', NULL, NULL, 'Y', '0', 'demo', '2019-11-16 17:01:01', '', NULL, '定时清理一些缓存数据或者数据库', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 4, '使用中', '0', 'use_status', NULL, NULL, 'Y', '0', 'demo', '2019-11-18 18:03:02', '', NULL, NULL, 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 3, '未使用', '1', 'use_status', NULL, 'default', 'Y', '0', 'demo', '2019-11-18 18:03:38', '', NULL, NULL, 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 6, '评价', 'EVALUATE', 'sys_job_group', NULL, NULL, 'Y', '0', 'admin', '2019-11-19 11:23:34', '', NULL, '评价模块', 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 3, '需要', '1', 'article_need_read', NULL, NULL, 'Y', '0', 'admin', '2020-11-30 16:19:15', '', NULL, NULL, 1, 'admin', '2021-04-12 21:45:19');
INSERT INTO `sys_dict_data` VALUES (118, 2, '不需要', '2', 'article_need_read', '', '', 'N', '0', 'admin', '2020-11-30 16:19:26', 'admin', '2020-11-30 16:23:54', '', 1, 'admin', '2021-04-12 21:45:19');
INSERT INTO `sys_dict_data` VALUES (119, 100, '非密', '非密', 'security_classification', NULL, 'default', 'Y', '0', 'admin', '2021-04-13 22:22:30', '', NULL, NULL, 1, 'admin', '2021-05-18 21:19:39');
INSERT INTO `sys_dict_data` VALUES (120, 90, '加密', '加密', 'security_classification', NULL, 'default', 'Y', '0', 'admin', '2021-04-13 22:22:43', '', NULL, NULL, 1, 'admin', '2021-05-18 21:19:39');
INSERT INTO `sys_dict_data` VALUES (121, 80, '绝密', '绝密', 'security_classification', NULL, 'default', 'Y', '0', 'admin', '2021-04-13 22:23:00', '', NULL, NULL, 1, 'admin', '2021-05-18 21:19:39');
INSERT INTO `sys_dict_data` VALUES (122, 100, '普通', '普通', 'task_yxj', NULL, NULL, 'Y', '0', 'admin', '2021-05-18 21:21:33', '', NULL, NULL, 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 120, '紧急', '紧急', 'task_yxj', NULL, NULL, 'Y', '0', 'admin', '2021-05-18 21:21:47', '', NULL, NULL, 0, NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (124, 100, '重要', '重要', 'task_yxj', NULL, NULL, 'Y', '0', 'admin', '2021-05-21 22:42:02', '', NULL, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `dict_sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NULL DEFAULT 0,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 100, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '用户性别列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 90, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '菜单状态列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 80, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '系统开关列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 70, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '任务状态列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 60, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '任务分组列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 50, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '系统是否列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 40, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '通知类型列表', 'admin', 1, '2021-04-12 21:45:56');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 30, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '通知状态列表', 'admin', 1, '2021-04-12 21:45:56');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 20, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '操作类型列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 10, 'admin', '2018-03-16 11:33:00', 'demo', '2018-03-16 11:33:00', '登录状态列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (100, '文章审核状态', 'article_need_audit_status', '0', 110, 'admin', '2019-08-15 22:52:49', 'demo', '2019-08-22 10:29:34', '文章审核状态列表', 'admin', 1, '2021-04-12 21:45:24');
INSERT INTO `sys_dict_type` VALUES (101, '文章置顶', 'article_istop', '0', 120, 'admin', '2019-08-17 15:57:02', 'admin', '2020-03-17 10:06:22', '文章是否置顶', 'admin', 0, '2021-04-12 21:45:06');
INSERT INTO `sys_dict_type` VALUES (102, '可用状态', 'useable_status', '0', 130, 'demo', '2019-08-22 10:30:41', 'demo', '2019-08-22 10:44:51', '年级班级学生等毕业状态列表', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '使用状态', 'use_status', '0', 103, 'demo', '2019-11-18 18:00:04', 'demo', '2019-11-18 18:04:06', '是否使用标签', NULL, 0, NULL);
INSERT INTO `sys_dict_type` VALUES (105, '文章反馈', 'article_need_read', '0', 109, 'admin', '2020-11-30 16:17:44', 'admin', '2020-11-30 16:18:27', '', 'admin', 1, '2021-04-12 21:45:24');
INSERT INTO `sys_dict_type` VALUES (106, '文档密级', 'security_classification', '0', 140, 'admin', '2021-04-13 22:21:42', '', NULL, NULL, 'admin', 1, '2021-05-18 21:19:44');
INSERT INTO `sys_dict_type` VALUES (107, '任务优先级', 'task_yxj', '0', 140, 'admin', '2021-05-18 21:21:18', '', NULL, NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1980 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '212.64.44.92', '上海 上海', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 14:45:53');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '212.64.44.92', '上海 上海', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-10 14:48:46');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 15:12:45');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-10 15:14:46');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Internet Explorer 11', 'Windows 10', '0', '登录成功', '2019-12-10 15:14:51');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Internet Explorer 11', 'Windows 10', '0', '退出成功', '2019-12-10 15:15:15');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 15:15:21');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 15:28:03');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 15:38:12');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 15:53:12');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:02:39');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:12:23');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:21:43');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:30:35');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:33:42');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:38:04');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:44:02');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-10 16:46:33');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:50:21');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 16:53:54');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 17:48:02');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 17:52:30');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 17:53:40');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 17:58:46');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:02:42');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:06:15');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:10:46');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:13:17');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:13:36');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:23:40');
INSERT INTO `sys_logininfor` VALUES (31, '1019', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-10 18:26:46');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:28:39');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-10 18:31:07');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-10 18:31:13');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:46:48');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 18:48:45');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 09:28:44');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '112.26.168.227, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 10:48:27');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 10:49:13');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-11 10:49:35');
INSERT INTO `sys_logininfor` VALUES (41, '1019', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 10:49:44');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-11 10:52:11');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '117.136.100.123, 223.167.152.20', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 10:53:00');
INSERT INTO `sys_logininfor` VALUES (44, '1019', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-11 10:55:58');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 10:56:00');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '117.136.100.36, 101.226.225.59', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 10:58:21');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 11:01:17');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 11:15:45');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 11:17:50');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 11:49:34');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 11:52:33');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 11:54:12');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 11:59:33');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 12:03:22');
INSERT INTO `sys_logininfor` VALUES (55, 'admin', '117.136.100.105, 61.129.7.217', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:00:38');
INSERT INTO `sys_logininfor` VALUES (56, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:05:36');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '112.26.168.227, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 14:06:13');
INSERT INTO `sys_logininfor` VALUES (58, '1018', '112.26.168.227, 223.166.151.234', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:06:23');
INSERT INTO `sys_logininfor` VALUES (59, '1018', '112.26.168.227, 223.166.151.234', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 14:07:17');
INSERT INTO `sys_logininfor` VALUES (60, '341225200412072742', '112.26.168.227, 223.166.151.234', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:07:23');
INSERT INTO `sys_logininfor` VALUES (61, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:11:29');
INSERT INTO `sys_logininfor` VALUES (62, '341225200412072742', '112.26.168.227, 223.166.151.234', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 14:17:34');
INSERT INTO `sys_logininfor` VALUES (63, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误1次', '2019-12-11 14:17:41');
INSERT INTO `sys_logininfor` VALUES (64, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:17:46');
INSERT INTO `sys_logininfor` VALUES (65, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 14:17:53');
INSERT INTO `sys_logininfor` VALUES (66, '1018', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:17:59');
INSERT INTO `sys_logininfor` VALUES (67, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:23:26');
INSERT INTO `sys_logininfor` VALUES (68, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误1次', '2019-12-11 14:24:14');
INSERT INTO `sys_logininfor` VALUES (69, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:24:18');
INSERT INTO `sys_logininfor` VALUES (70, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 14:25:02');
INSERT INTO `sys_logininfor` VALUES (71, '1018', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:25:08');
INSERT INTO `sys_logininfor` VALUES (72, '1018', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 14:32:24');
INSERT INTO `sys_logininfor` VALUES (73, 'admin', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:32:26');
INSERT INTO `sys_logininfor` VALUES (74, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:35:02');
INSERT INTO `sys_logininfor` VALUES (75, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:36:58');
INSERT INTO `sys_logininfor` VALUES (76, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:47:12');
INSERT INTO `sys_logininfor` VALUES (77, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:49:18');
INSERT INTO `sys_logininfor` VALUES (78, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:50:06');
INSERT INTO `sys_logininfor` VALUES (79, 'admin', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 14:57:42');
INSERT INTO `sys_logininfor` VALUES (80, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误1次', '2019-12-11 14:57:48');
INSERT INTO `sys_logininfor` VALUES (81, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 14:57:53');
INSERT INTO `sys_logininfor` VALUES (82, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-11 14:58:42');
INSERT INTO `sys_logininfor` VALUES (83, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 14:59:12');
INSERT INTO `sys_logininfor` VALUES (84, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 15:01:54');
INSERT INTO `sys_logininfor` VALUES (85, '341225200412072742', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 15:10:33');
INSERT INTO `sys_logininfor` VALUES (86, '1018', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 15:10:40');
INSERT INTO `sys_logininfor` VALUES (87, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 15:30:51');
INSERT INTO `sys_logininfor` VALUES (88, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 15:33:12');
INSERT INTO `sys_logininfor` VALUES (89, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 15:45:44');
INSERT INTO `sys_logininfor` VALUES (90, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 15:47:07');
INSERT INTO `sys_logininfor` VALUES (91, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 15:51:50');
INSERT INTO `sys_logininfor` VALUES (92, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 15:56:19');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 15:59:04');
INSERT INTO `sys_logininfor` VALUES (94, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 16:02:42');
INSERT INTO `sys_logininfor` VALUES (95, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 16:05:16');
INSERT INTO `sys_logininfor` VALUES (96, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 16:05:25');
INSERT INTO `sys_logininfor` VALUES (97, 'admin', '223.104.37.221', 'XX XX', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 16:06:45');
INSERT INTO `sys_logininfor` VALUES (98, 'admin', '223.104.37.221', '安徽 XX', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 16:06:45');
INSERT INTO `sys_logininfor` VALUES (99, 'admin', '223.104.37.221', 'XX XX', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 16:06:52');
INSERT INTO `sys_logininfor` VALUES (100, '1018', '223.104.37.221', '安徽 XX', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 16:06:58');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 16:07:39');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 16:09:14');
INSERT INTO `sys_logininfor` VALUES (103, '1018', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-11 16:11:46');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-11 16:11:47');
INSERT INTO `sys_logininfor` VALUES (105, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-11 16:26:05');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-11 16:26:07');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 16:36:15');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 16:39:45');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 17:33:59');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 17:42:56');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 18:07:38');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 08:51:19');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 09:29:59');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 09:39:18');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 09:58:35');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 10:11:48');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 11:01:35');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 11:04:23');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 11:26:45');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 11:33:47');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-12 11:40:02');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 11:40:03');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 11:51:21');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 11:58:29');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 12:13:01');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '223.104.37.221, 119.84.153.208', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 12:31:10');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '117.132.193.149, 218.68.91.112', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 12:34:48');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '117.132.193.149, 218.68.91.112', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 12:44:40');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 12:45:24');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 12:50:32');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 12:50:50');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 12:53:13');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 12:56:09');
INSERT INTO `sys_logininfor` VALUES (134, NULL, '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '* 必须填写', '2019-12-12 13:01:29');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 13:02:21');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:04:52');
INSERT INTO `sys_logininfor` VALUES (137, NULL, '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '* 必须填写', '2019-12-12 14:05:27');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:08:19');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:09:49');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-12 14:09:59');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:10:11');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-12 14:11:12');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:11:31');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 14:13:47');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-12 14:14:48');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:15:06');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:15:07');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:15:08');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:15:11');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:15:12');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 14:15:19');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-12 14:24:00');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 14:24:12');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 14:39:16');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 14:45:52');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 14:56:21');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 15:02:37');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 15:03:17');
INSERT INTO `sys_logininfor` VALUES (159, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 15:03:45');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 15:19:10');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 15:22:54');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 15:27:01');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 15:27:56');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 15:34:22');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 15:34:51');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 15:35:48');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 15:37:11');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 15:39:26');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 15:39:38');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 15:40:39');
INSERT INTO `sys_logininfor` VALUES (171, '1018', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 15:40:48');
INSERT INTO `sys_logininfor` VALUES (172, '1018', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 15:46:54');
INSERT INTO `sys_logininfor` VALUES (173, '1018', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 15:47:09');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 15:49:15');
INSERT INTO `sys_logininfor` VALUES (175, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 15:53:16');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 16:04:45');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 16:08:46');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 16:11:08');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 16:15:47');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 16:19:40');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 16:33:10');
INSERT INTO `sys_logininfor` VALUES (182, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-12 17:02:42');
INSERT INTO `sys_logininfor` VALUES (183, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 17:02:54');
INSERT INTO `sys_logininfor` VALUES (184, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 17:06:08');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:15:46');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:18:16');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:23:13');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:27:27');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:30:21');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:30:28');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:45:04');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:47:53');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 17:56:27');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:00:41');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:05:31');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:05:58');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:09:55');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:13:02');
INSERT INTO `sys_logininfor` VALUES (199, '1018', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-12 18:13:03');
INSERT INTO `sys_logininfor` VALUES (200, '341225200412072742', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-12 18:13:05');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:13:21');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:19:11');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:21:47');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:24:05');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '218.204.252.93', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-12 18:24:43');
INSERT INTO `sys_logininfor` VALUES (206, '1018', '218.204.252.93', '广东 汕头', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 18:24:53');
INSERT INTO `sys_logininfor` VALUES (207, '1018', '218.204.252.93', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-12 18:25:41');
INSERT INTO `sys_logininfor` VALUES (208, '341225200412072742', '218.204.252.93', '广东 汕头', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-12 18:25:49');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:33:48');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 18:59:27');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 19:30:16');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 19:32:17');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 19:37:55');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 19:38:24');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 19:41:21');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-12 19:43:41');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 08:49:45');
INSERT INTO `sys_logininfor` VALUES (218, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 08:59:38');
INSERT INTO `sys_logininfor` VALUES (219, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 08:59:48');
INSERT INTO `sys_logininfor` VALUES (220, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 09:00:29');
INSERT INTO `sys_logininfor` VALUES (221, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 09:00:40');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 09:07:18');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 09:11:50');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 09:51:54');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 10:03:48');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 10:05:07');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 10:05:12');
INSERT INTO `sys_logininfor` VALUES (228, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 10:05:16');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 10:08:07');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 10:25:59');
INSERT INTO `sys_logininfor` VALUES (231, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 10:33:39');
INSERT INTO `sys_logininfor` VALUES (232, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 10:34:00');
INSERT INTO `sys_logininfor` VALUES (233, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 10:34:40');
INSERT INTO `sys_logininfor` VALUES (234, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 10:35:34');
INSERT INTO `sys_logininfor` VALUES (235, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 10:36:32');
INSERT INTO `sys_logininfor` VALUES (236, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 10:36:41');
INSERT INTO `sys_logininfor` VALUES (237, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 10:50:24');
INSERT INTO `sys_logininfor` VALUES (238, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 10:50:31');
INSERT INTO `sys_logininfor` VALUES (239, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 10:51:45');
INSERT INTO `sys_logininfor` VALUES (240, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 10:51:56');
INSERT INTO `sys_logininfor` VALUES (241, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 10:53:22');
INSERT INTO `sys_logininfor` VALUES (242, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 10:53:29');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-13 10:54:12');
INSERT INTO `sys_logininfor` VALUES (244, '1018', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 10:54:17');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 11:05:34');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 11:07:24');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 11:10:22');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 11:15:22');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 11:23:46');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 11:36:05');
INSERT INTO `sys_logininfor` VALUES (251, '341225200412072742', '218.204.252.93', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 11:45:31');
INSERT INTO `sys_logininfor` VALUES (252, '1018', '218.204.252.93', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 11:45:47');
INSERT INTO `sys_logininfor` VALUES (253, '341225200412072742', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-13 11:46:27');
INSERT INTO `sys_logininfor` VALUES (254, '341225200412072742', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-13 11:47:40');
INSERT INTO `sys_logininfor` VALUES (255, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 11:52:43');
INSERT INTO `sys_logininfor` VALUES (256, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 11:52:51');
INSERT INTO `sys_logininfor` VALUES (257, '341225200412072742', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-13 12:20:30');
INSERT INTO `sys_logininfor` VALUES (258, '1018', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-13 12:20:32');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 14:36:43');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 14:40:31');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 14:43:52');
INSERT INTO `sys_logininfor` VALUES (262, '1018', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-13 14:47:33');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-13 14:47:36');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 15:47:04');
INSERT INTO `sys_logininfor` VALUES (265, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 16:38:35');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 16:38:39');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 16:53:11');
INSERT INTO `sys_logininfor` VALUES (268, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 16:53:37');
INSERT INTO `sys_logininfor` VALUES (269, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 16:57:09');
INSERT INTO `sys_logininfor` VALUES (270, '1018', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 16:57:52');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '117.132.193.149, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-13 17:01:02');
INSERT INTO `sys_logininfor` VALUES (272, '341225200412072742', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-13 17:01:32');
INSERT INTO `sys_logininfor` VALUES (273, '1018', '218.204.252.93', '广东 汕头', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 17:02:15');
INSERT INTO `sys_logininfor` VALUES (274, '1018', '218.204.252.93', '广东 汕头', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 17:02:22');
INSERT INTO `sys_logininfor` VALUES (275, '341225200412072742', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-13 17:47:27');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-13 17:47:32');
INSERT INTO `sys_logininfor` VALUES (277, '1018', '218.204.252.93', '广东 汕头', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 17:51:31');
INSERT INTO `sys_logininfor` VALUES (278, '1001', '218.204.252.93', '广东 汕头', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 17:52:01');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 17:52:43');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 17:57:59');
INSERT INTO `sys_logininfor` VALUES (281, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 18:08:46');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 18:08:50');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 18:10:00');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-13 18:17:37');
INSERT INTO `sys_logininfor` VALUES (285, '1018', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-13 18:17:43');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 18:17:58');
INSERT INTO `sys_logininfor` VALUES (287, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 18:18:16');
INSERT INTO `sys_logininfor` VALUES (288, '1018', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 18:18:28');
INSERT INTO `sys_logininfor` VALUES (289, '341225200412072742', '112.26.168.227', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 18:18:37');
INSERT INTO `sys_logininfor` VALUES (290, '1018', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-13 18:19:55');
INSERT INTO `sys_logininfor` VALUES (291, '341225200412072742', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-13 18:19:57');
INSERT INTO `sys_logininfor` VALUES (292, '341225200412072742', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2019-12-13 18:20:01');
INSERT INTO `sys_logininfor` VALUES (293, '1018', '117.132.193.149, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-12-13 18:20:08');
INSERT INTO `sys_logininfor` VALUES (294, '1001', '218.204.252.93', '广东 汕头', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 18:59:25');
INSERT INTO `sys_logininfor` VALUES (295, '1001', '218.204.252.93', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 18:59:41');
INSERT INTO `sys_logininfor` VALUES (296, '1001', '218.204.252.93', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-13 19:00:41');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '218.204.252.93', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-13 19:00:45');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-13 19:05:58');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 11:18:13');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 11:26:45');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 11:36:06');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 11:45:48');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 11:50:18');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '117.132.194.110', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-14 14:22:11');
INSERT INTO `sys_logininfor` VALUES (305, '1017', '117.132.194.110', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-14 14:22:20');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:05:27');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:08:23');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:13:03');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:16:15');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:21:15');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-14 15:24:24');
INSERT INTO `sys_logininfor` VALUES (312, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:24:27');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:26:49');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:31:31');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:41:05');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:44:20');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:48:04');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:51:05');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 15:52:06');
INSERT INTO `sys_logininfor` VALUES (320, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:05:02');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:10:56');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:11:11');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:12:38');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:14:44');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:39:24');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:39:29');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:51:57');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 16:59:24');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 17:09:54');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 17:20:08');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-14 17:21:45');
INSERT INTO `sys_logininfor` VALUES (332, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 17:21:49');
INSERT INTO `sys_logininfor` VALUES (333, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 17:24:14');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 17:26:25');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 17:32:31');
INSERT INTO `sys_logininfor` VALUES (336, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 08:39:04');
INSERT INTO `sys_logininfor` VALUES (337, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 09:34:05');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 09:56:33');
INSERT INTO `sys_logininfor` VALUES (339, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 11:12:28');
INSERT INTO `sys_logininfor` VALUES (340, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 11:31:25');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 11:34:08');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 11:39:05');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 11:43:59');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 11:56:39');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 12:00:11');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 12:36:33');
INSERT INTO `sys_logininfor` VALUES (347, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 14:07:19');
INSERT INTO `sys_logininfor` VALUES (348, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 14:48:57');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 14:51:17');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 16:28:13');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 16:36:27');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 16:40:16');
INSERT INTO `sys_logininfor` VALUES (353, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 16:56:05');
INSERT INTO `sys_logininfor` VALUES (354, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 17:18:56');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-16 17:59:09');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 17:59:13');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 18:40:26');
INSERT INTO `sys_logininfor` VALUES (358, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-16 18:43:37');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 18:43:38');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-16 18:46:28');
INSERT INTO `sys_logininfor` VALUES (361, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 18:46:29');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-16 18:46:37');
INSERT INTO `sys_logininfor` VALUES (363, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 18:46:38');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-16 18:51:30');
INSERT INTO `sys_logininfor` VALUES (365, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 18:51:35');
INSERT INTO `sys_logininfor` VALUES (366, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-16 18:51:49');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 18:51:51');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 19:10:42');
INSERT INTO `sys_logininfor` VALUES (369, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 19:11:53');
INSERT INTO `sys_logininfor` VALUES (370, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 19:16:51');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 19:20:51');
INSERT INTO `sys_logininfor` VALUES (372, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 19:25:19');
INSERT INTO `sys_logininfor` VALUES (373, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 19:28:24');
INSERT INTO `sys_logininfor` VALUES (374, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 21:10:12');
INSERT INTO `sys_logininfor` VALUES (375, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 22:17:12');
INSERT INTO `sys_logininfor` VALUES (376, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 08:45:38');
INSERT INTO `sys_logininfor` VALUES (377, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 09:16:00');
INSERT INTO `sys_logininfor` VALUES (378, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 09:19:42');
INSERT INTO `sys_logininfor` VALUES (379, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 09:35:14');
INSERT INTO `sys_logininfor` VALUES (380, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 09:49:08');
INSERT INTO `sys_logininfor` VALUES (381, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 09:49:35');
INSERT INTO `sys_logininfor` VALUES (382, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 09:56:47');
INSERT INTO `sys_logininfor` VALUES (383, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 10:09:47');
INSERT INTO `sys_logininfor` VALUES (384, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 10:33:08');
INSERT INTO `sys_logininfor` VALUES (385, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 10:48:35');
INSERT INTO `sys_logininfor` VALUES (386, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 10:50:56');
INSERT INTO `sys_logininfor` VALUES (387, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 10:55:16');
INSERT INTO `sys_logininfor` VALUES (388, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 11:08:35');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 11:20:03');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 11:31:31');
INSERT INTO `sys_logininfor` VALUES (391, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 11:42:20');
INSERT INTO `sys_logininfor` VALUES (392, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 11:47:45');
INSERT INTO `sys_logininfor` VALUES (393, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 11:50:23');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 12:01:15');
INSERT INTO `sys_logininfor` VALUES (395, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 14:03:05');
INSERT INTO `sys_logininfor` VALUES (396, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 14:08:02');
INSERT INTO `sys_logininfor` VALUES (397, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 14:09:57');
INSERT INTO `sys_logininfor` VALUES (398, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 14:23:35');
INSERT INTO `sys_logininfor` VALUES (399, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 14:27:34');
INSERT INTO `sys_logininfor` VALUES (400, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 14:58:54');
INSERT INTO `sys_logininfor` VALUES (401, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 14:59:30');
INSERT INTO `sys_logininfor` VALUES (402, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 15:08:36');
INSERT INTO `sys_logininfor` VALUES (403, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:28:02');
INSERT INTO `sys_logininfor` VALUES (404, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:33:40');
INSERT INTO `sys_logininfor` VALUES (405, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:34:39');
INSERT INTO `sys_logininfor` VALUES (406, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:37:20');
INSERT INTO `sys_logininfor` VALUES (407, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:40:14');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:46:16');
INSERT INTO `sys_logininfor` VALUES (409, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:55:21');
INSERT INTO `sys_logininfor` VALUES (410, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:59:02');
INSERT INTO `sys_logininfor` VALUES (411, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:04:13');
INSERT INTO `sys_logininfor` VALUES (412, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:04:21');
INSERT INTO `sys_logininfor` VALUES (413, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:19:53');
INSERT INTO `sys_logininfor` VALUES (414, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:23:36');
INSERT INTO `sys_logininfor` VALUES (415, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:26:08');
INSERT INTO `sys_logininfor` VALUES (416, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:27:05');
INSERT INTO `sys_logininfor` VALUES (417, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:32:44');
INSERT INTO `sys_logininfor` VALUES (418, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:34:48');
INSERT INTO `sys_logininfor` VALUES (419, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:37:09');
INSERT INTO `sys_logininfor` VALUES (420, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:38:23');
INSERT INTO `sys_logininfor` VALUES (421, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:40:27');
INSERT INTO `sys_logininfor` VALUES (422, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:50:56');
INSERT INTO `sys_logininfor` VALUES (423, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:52:43');
INSERT INTO `sys_logininfor` VALUES (424, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:56:44');
INSERT INTO `sys_logininfor` VALUES (425, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 18:00:53');
INSERT INTO `sys_logininfor` VALUES (426, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 18:02:33');
INSERT INTO `sys_logininfor` VALUES (427, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 18:06:34');
INSERT INTO `sys_logininfor` VALUES (428, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 18:07:57');
INSERT INTO `sys_logininfor` VALUES (429, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 18:12:12');
INSERT INTO `sys_logininfor` VALUES (430, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 18:12:29');
INSERT INTO `sys_logininfor` VALUES (431, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 18:15:41');
INSERT INTO `sys_logininfor` VALUES (432, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 18:26:38');
INSERT INTO `sys_logininfor` VALUES (433, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 08:44:12');
INSERT INTO `sys_logininfor` VALUES (434, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 08:58:17');
INSERT INTO `sys_logininfor` VALUES (435, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 08:59:34');
INSERT INTO `sys_logininfor` VALUES (436, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 09:16:35');
INSERT INTO `sys_logininfor` VALUES (437, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 09:28:20');
INSERT INTO `sys_logininfor` VALUES (438, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 09:31:23');
INSERT INTO `sys_logininfor` VALUES (439, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 09:43:30');
INSERT INTO `sys_logininfor` VALUES (440, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 09:47:59');
INSERT INTO `sys_logininfor` VALUES (441, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 09:55:45');
INSERT INTO `sys_logininfor` VALUES (442, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:01:10');
INSERT INTO `sys_logininfor` VALUES (443, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:07:08');
INSERT INTO `sys_logininfor` VALUES (444, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:09:29');
INSERT INTO `sys_logininfor` VALUES (445, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:12:25');
INSERT INTO `sys_logininfor` VALUES (446, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:13:17');
INSERT INTO `sys_logininfor` VALUES (447, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:19:17');
INSERT INTO `sys_logininfor` VALUES (448, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:22:07');
INSERT INTO `sys_logininfor` VALUES (449, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:23:33');
INSERT INTO `sys_logininfor` VALUES (450, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:38:46');
INSERT INTO `sys_logininfor` VALUES (451, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 10:41:45');
INSERT INTO `sys_logininfor` VALUES (452, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 11:35:17');
INSERT INTO `sys_logininfor` VALUES (453, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 11:38:09');
INSERT INTO `sys_logininfor` VALUES (454, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 11:45:22');
INSERT INTO `sys_logininfor` VALUES (455, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 14:03:29');
INSERT INTO `sys_logininfor` VALUES (456, 'admin', '112.26.168.227', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-18 14:30:51');
INSERT INTO `sys_logininfor` VALUES (457, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 14:55:32');
INSERT INTO `sys_logininfor` VALUES (458, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-18 14:56:57');
INSERT INTO `sys_logininfor` VALUES (459, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 14:56:58');
INSERT INTO `sys_logininfor` VALUES (460, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 15:00:17');
INSERT INTO `sys_logininfor` VALUES (461, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 15:13:39');
INSERT INTO `sys_logininfor` VALUES (462, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 15:21:50');
INSERT INTO `sys_logininfor` VALUES (463, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 15:22:01');
INSERT INTO `sys_logininfor` VALUES (464, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 15:39:20');
INSERT INTO `sys_logininfor` VALUES (465, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 16:16:32');
INSERT INTO `sys_logininfor` VALUES (466, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 16:19:45');
INSERT INTO `sys_logininfor` VALUES (467, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 16:27:36');
INSERT INTO `sys_logininfor` VALUES (468, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 16:29:38');
INSERT INTO `sys_logininfor` VALUES (469, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 16:33:38');
INSERT INTO `sys_logininfor` VALUES (470, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 16:53:57');
INSERT INTO `sys_logininfor` VALUES (471, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 17:01:04');
INSERT INTO `sys_logininfor` VALUES (472, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 17:06:32');
INSERT INTO `sys_logininfor` VALUES (473, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 17:25:46');
INSERT INTO `sys_logininfor` VALUES (474, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 17:32:10');
INSERT INTO `sys_logininfor` VALUES (475, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 08:34:13');
INSERT INTO `sys_logininfor` VALUES (476, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 08:42:31');
INSERT INTO `sys_logininfor` VALUES (477, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 08:53:07');
INSERT INTO `sys_logininfor` VALUES (478, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 08:55:19');
INSERT INTO `sys_logininfor` VALUES (479, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:00:55');
INSERT INTO `sys_logininfor` VALUES (480, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 09:09:38');
INSERT INTO `sys_logininfor` VALUES (481, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:09:42');
INSERT INTO `sys_logininfor` VALUES (482, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 09:09:48');
INSERT INTO `sys_logininfor` VALUES (483, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:09:50');
INSERT INTO `sys_logininfor` VALUES (484, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 09:10:25');
INSERT INTO `sys_logininfor` VALUES (485, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:10:33');
INSERT INTO `sys_logininfor` VALUES (486, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 09:11:16');
INSERT INTO `sys_logininfor` VALUES (487, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:11:18');
INSERT INTO `sys_logininfor` VALUES (488, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:13:24');
INSERT INTO `sys_logininfor` VALUES (489, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 09:14:30');
INSERT INTO `sys_logininfor` VALUES (490, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:14:32');
INSERT INTO `sys_logininfor` VALUES (491, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:15:45');
INSERT INTO `sys_logininfor` VALUES (492, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 09:15:50');
INSERT INTO `sys_logininfor` VALUES (493, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:15:52');
INSERT INTO `sys_logininfor` VALUES (494, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:18:51');
INSERT INTO `sys_logininfor` VALUES (495, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:20:51');
INSERT INTO `sys_logininfor` VALUES (496, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:21:11');
INSERT INTO `sys_logininfor` VALUES (497, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:42:26');
INSERT INTO `sys_logininfor` VALUES (498, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 09:42:40');
INSERT INTO `sys_logininfor` VALUES (499, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:42:47');
INSERT INTO `sys_logininfor` VALUES (500, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 09:42:49');
INSERT INTO `sys_logininfor` VALUES (501, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:42:52');
INSERT INTO `sys_logininfor` VALUES (502, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:49:13');
INSERT INTO `sys_logininfor` VALUES (503, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:49:56');
INSERT INTO `sys_logininfor` VALUES (504, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 10:20:24');
INSERT INTO `sys_logininfor` VALUES (505, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 10:29:23');
INSERT INTO `sys_logininfor` VALUES (506, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 10:35:26');
INSERT INTO `sys_logininfor` VALUES (507, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 10:36:00');
INSERT INTO `sys_logininfor` VALUES (508, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 10:38:08');
INSERT INTO `sys_logininfor` VALUES (509, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 10:44:21');
INSERT INTO `sys_logininfor` VALUES (510, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-19 10:46:25');
INSERT INTO `sys_logininfor` VALUES (511, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-19 10:46:36');
INSERT INTO `sys_logininfor` VALUES (512, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 11:11:49');
INSERT INTO `sys_logininfor` VALUES (513, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 11:44:42');
INSERT INTO `sys_logininfor` VALUES (514, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 13:58:58');
INSERT INTO `sys_logininfor` VALUES (515, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-19 14:10:05');
INSERT INTO `sys_logininfor` VALUES (516, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 14:13:18');
INSERT INTO `sys_logininfor` VALUES (517, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 14:19:49');
INSERT INTO `sys_logininfor` VALUES (518, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-19 14:20:32');
INSERT INTO `sys_logininfor` VALUES (519, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 14:24:12');
INSERT INTO `sys_logininfor` VALUES (520, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 14:35:21');
INSERT INTO `sys_logininfor` VALUES (521, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 15:01:27');
INSERT INTO `sys_logininfor` VALUES (522, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 15:51:46');
INSERT INTO `sys_logininfor` VALUES (523, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 16:15:26');
INSERT INTO `sys_logininfor` VALUES (524, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-19 16:17:42');
INSERT INTO `sys_logininfor` VALUES (525, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 16:37:19');
INSERT INTO `sys_logininfor` VALUES (526, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 16:41:45');
INSERT INTO `sys_logininfor` VALUES (527, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-19 16:46:44');
INSERT INTO `sys_logininfor` VALUES (528, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 16:50:23');
INSERT INTO `sys_logininfor` VALUES (529, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 17:00:44');
INSERT INTO `sys_logininfor` VALUES (530, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-19 17:06:11');
INSERT INTO `sys_logininfor` VALUES (531, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 17:28:21');
INSERT INTO `sys_logininfor` VALUES (532, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-19 17:37:01');
INSERT INTO `sys_logininfor` VALUES (533, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 08:44:42');
INSERT INTO `sys_logininfor` VALUES (534, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-20 08:47:29');
INSERT INTO `sys_logininfor` VALUES (535, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-20 08:58:29');
INSERT INTO `sys_logininfor` VALUES (536, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:02:00');
INSERT INTO `sys_logininfor` VALUES (537, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:06:35');
INSERT INTO `sys_logininfor` VALUES (538, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:10:47');
INSERT INTO `sys_logininfor` VALUES (539, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-20 09:23:14');
INSERT INTO `sys_logininfor` VALUES (540, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:23:52');
INSERT INTO `sys_logininfor` VALUES (541, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '退出成功', '2019-12-20 09:36:59');
INSERT INTO `sys_logininfor` VALUES (542, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-20 09:37:07');
INSERT INTO `sys_logininfor` VALUES (543, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:42:54');
INSERT INTO `sys_logininfor` VALUES (544, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-20 09:46:16');
INSERT INTO `sys_logininfor` VALUES (545, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:49:38');
INSERT INTO `sys_logininfor` VALUES (546, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:53:09');
INSERT INTO `sys_logininfor` VALUES (547, 'admin', '112.26.168.227', '安徽 合肥', 'Internet Explorer 11', 'Windows 7', '0', '登录成功', '2019-12-20 09:55:03');
INSERT INTO `sys_logininfor` VALUES (548, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-20 10:15:02');
INSERT INTO `sys_logininfor` VALUES (549, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 10:16:00');
INSERT INTO `sys_logininfor` VALUES (550, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-20 11:08:21');
INSERT INTO `sys_logininfor` VALUES (551, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-20 11:14:53');
INSERT INTO `sys_logininfor` VALUES (552, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 11:24:40');
INSERT INTO `sys_logininfor` VALUES (553, '1018', '117.132.191.60, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2019-12-20 12:45:33');
INSERT INTO `sys_logininfor` VALUES (554, '1017', '221.178.124.38', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-20 12:45:35');
INSERT INTO `sys_logininfor` VALUES (555, 'admin', '221.178.124.38', '重庆 重庆', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-20 12:45:38');
INSERT INTO `sys_logininfor` VALUES (556, 'admin', '117.132.191.60, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2019-12-20 12:45:39');
INSERT INTO `sys_logininfor` VALUES (557, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 13:52:36');
INSERT INTO `sys_logininfor` VALUES (558, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 14:17:40');
INSERT INTO `sys_logininfor` VALUES (559, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 14:30:59');
INSERT INTO `sys_logininfor` VALUES (560, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 14:51:03');
INSERT INTO `sys_logininfor` VALUES (561, 'admin', '112.26.168.227', 'XX XX', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-20 14:59:16');
INSERT INTO `sys_logininfor` VALUES (562, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 15:08:31');
INSERT INTO `sys_logininfor` VALUES (563, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 15:20:26');
INSERT INTO `sys_logininfor` VALUES (564, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 15:37:48');
INSERT INTO `sys_logininfor` VALUES (565, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 16:07:48');
INSERT INTO `sys_logininfor` VALUES (566, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 16:16:32');
INSERT INTO `sys_logininfor` VALUES (567, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 16:21:29');
INSERT INTO `sys_logininfor` VALUES (568, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 16:24:30');
INSERT INTO `sys_logininfor` VALUES (569, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 16:28:09');
INSERT INTO `sys_logininfor` VALUES (570, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 16:56:46');
INSERT INTO `sys_logininfor` VALUES (571, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 08:54:14');
INSERT INTO `sys_logininfor` VALUES (572, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 11:13:25');
INSERT INTO `sys_logininfor` VALUES (573, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 11:47:37');
INSERT INTO `sys_logininfor` VALUES (574, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-23 11:50:51');
INSERT INTO `sys_logininfor` VALUES (575, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 11:50:52');
INSERT INTO `sys_logininfor` VALUES (576, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 11:58:52');
INSERT INTO `sys_logininfor` VALUES (577, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 12:23:06');
INSERT INTO `sys_logininfor` VALUES (578, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 14:06:01');
INSERT INTO `sys_logininfor` VALUES (579, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 14:28:37');
INSERT INTO `sys_logininfor` VALUES (580, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 14:31:47');
INSERT INTO `sys_logininfor` VALUES (581, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 14:34:21');
INSERT INTO `sys_logininfor` VALUES (582, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 14:37:19');
INSERT INTO `sys_logininfor` VALUES (583, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-23 15:28:34');
INSERT INTO `sys_logininfor` VALUES (584, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 15:58:39');
INSERT INTO `sys_logininfor` VALUES (585, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 17:34:47');
INSERT INTO `sys_logininfor` VALUES (586, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 08:42:12');
INSERT INTO `sys_logininfor` VALUES (587, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 11:36:25');
INSERT INTO `sys_logininfor` VALUES (588, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 14:00:55');
INSERT INTO `sys_logininfor` VALUES (589, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 15:05:17');
INSERT INTO `sys_logininfor` VALUES (590, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 15:07:13');
INSERT INTO `sys_logininfor` VALUES (591, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 15:07:18');
INSERT INTO `sys_logininfor` VALUES (592, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 15:09:50');
INSERT INTO `sys_logininfor` VALUES (593, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 15:09:51');
INSERT INTO `sys_logininfor` VALUES (594, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 15:16:03');
INSERT INTO `sys_logininfor` VALUES (595, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 15:20:34');
INSERT INTO `sys_logininfor` VALUES (596, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 15:31:28');
INSERT INTO `sys_logininfor` VALUES (597, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 15:35:05');
INSERT INTO `sys_logininfor` VALUES (598, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 15:47:44');
INSERT INTO `sys_logininfor` VALUES (599, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-24 16:11:45');
INSERT INTO `sys_logininfor` VALUES (600, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 16:17:24');
INSERT INTO `sys_logininfor` VALUES (601, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 16:18:33');
INSERT INTO `sys_logininfor` VALUES (602, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 16:22:43');
INSERT INTO `sys_logininfor` VALUES (603, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 16:23:55');
INSERT INTO `sys_logininfor` VALUES (604, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 16:23:58');
INSERT INTO `sys_logininfor` VALUES (605, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 16:24:15');
INSERT INTO `sys_logininfor` VALUES (606, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 16:24:16');
INSERT INTO `sys_logininfor` VALUES (607, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 16:24:34');
INSERT INTO `sys_logininfor` VALUES (608, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 16:24:38');
INSERT INTO `sys_logininfor` VALUES (609, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 16:29:09');
INSERT INTO `sys_logininfor` VALUES (610, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-24 16:29:24');
INSERT INTO `sys_logininfor` VALUES (611, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 16:42:10');
INSERT INTO `sys_logininfor` VALUES (612, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 16:45:41');
INSERT INTO `sys_logininfor` VALUES (613, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 16:45:42');
INSERT INTO `sys_logininfor` VALUES (614, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-24 16:58:54');
INSERT INTO `sys_logininfor` VALUES (615, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 17:02:49');
INSERT INTO `sys_logininfor` VALUES (616, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 17:08:54');
INSERT INTO `sys_logininfor` VALUES (617, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-24 17:09:07');
INSERT INTO `sys_logininfor` VALUES (618, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-24 17:23:42');
INSERT INTO `sys_logininfor` VALUES (619, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 17:24:25');
INSERT INTO `sys_logininfor` VALUES (620, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 17:24:36');
INSERT INTO `sys_logininfor` VALUES (621, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 17:24:37');
INSERT INTO `sys_logininfor` VALUES (622, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 17:25:19');
INSERT INTO `sys_logininfor` VALUES (623, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 17:25:28');
INSERT INTO `sys_logininfor` VALUES (624, '341225200412072742', '112.26.168.227', '未知', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-24 17:30:19');
INSERT INTO `sys_logininfor` VALUES (625, 'admin', '112.26.168.227', '未知', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-24 17:30:22');
INSERT INTO `sys_logininfor` VALUES (626, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-24 17:34:40');
INSERT INTO `sys_logininfor` VALUES (627, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 17:34:44');
INSERT INTO `sys_logininfor` VALUES (628, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 14:32:09');
INSERT INTO `sys_logininfor` VALUES (629, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 14:49:30');
INSERT INTO `sys_logininfor` VALUES (630, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 14:51:39');
INSERT INTO `sys_logininfor` VALUES (631, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 15:18:34');
INSERT INTO `sys_logininfor` VALUES (632, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 15:22:31');
INSERT INTO `sys_logininfor` VALUES (633, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 15:22:42');
INSERT INTO `sys_logininfor` VALUES (634, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 15:23:08');
INSERT INTO `sys_logininfor` VALUES (635, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 15:31:25');
INSERT INTO `sys_logininfor` VALUES (636, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 15:34:08');
INSERT INTO `sys_logininfor` VALUES (637, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:20:34');
INSERT INTO `sys_logininfor` VALUES (638, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:28:31');
INSERT INTO `sys_logininfor` VALUES (639, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 16:28:33');
INSERT INTO `sys_logininfor` VALUES (640, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:28:37');
INSERT INTO `sys_logininfor` VALUES (641, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 16:28:41');
INSERT INTO `sys_logininfor` VALUES (642, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:28:43');
INSERT INTO `sys_logininfor` VALUES (643, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 16:29:28');
INSERT INTO `sys_logininfor` VALUES (644, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:29:35');
INSERT INTO `sys_logininfor` VALUES (645, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 16:30:20');
INSERT INTO `sys_logininfor` VALUES (646, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:30:24');
INSERT INTO `sys_logininfor` VALUES (647, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 16:30:45');
INSERT INTO `sys_logininfor` VALUES (648, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:30:50');
INSERT INTO `sys_logininfor` VALUES (649, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:34:11');
INSERT INTO `sys_logininfor` VALUES (650, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 16:34:24');
INSERT INTO `sys_logininfor` VALUES (651, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:34:28');
INSERT INTO `sys_logininfor` VALUES (652, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 16:35:12');
INSERT INTO `sys_logininfor` VALUES (653, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:35:14');
INSERT INTO `sys_logininfor` VALUES (654, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-25 16:38:39');
INSERT INTO `sys_logininfor` VALUES (655, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 16:38:43');
INSERT INTO `sys_logininfor` VALUES (656, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-25 17:39:55');
INSERT INTO `sys_logininfor` VALUES (657, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-12-25 17:45:32');
INSERT INTO `sys_logininfor` VALUES (658, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 10:52:45');
INSERT INTO `sys_logininfor` VALUES (659, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 10:57:55');
INSERT INTO `sys_logininfor` VALUES (660, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 10:57:59');
INSERT INTO `sys_logininfor` VALUES (661, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:04:18');
INSERT INTO `sys_logininfor` VALUES (662, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:12:49');
INSERT INTO `sys_logininfor` VALUES (663, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:22:49');
INSERT INTO `sys_logininfor` VALUES (664, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:32:33');
INSERT INTO `sys_logininfor` VALUES (665, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 11:32:56');
INSERT INTO `sys_logininfor` VALUES (666, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:32:59');
INSERT INTO `sys_logininfor` VALUES (667, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 11:33:12');
INSERT INTO `sys_logininfor` VALUES (668, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:33:15');
INSERT INTO `sys_logininfor` VALUES (669, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 11:33:43');
INSERT INTO `sys_logininfor` VALUES (670, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:33:45');
INSERT INTO `sys_logininfor` VALUES (671, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:37:51');
INSERT INTO `sys_logininfor` VALUES (672, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 11:38:07');
INSERT INTO `sys_logininfor` VALUES (673, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:38:10');
INSERT INTO `sys_logininfor` VALUES (674, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 11:38:19');
INSERT INTO `sys_logininfor` VALUES (675, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 11:38:23');
INSERT INTO `sys_logininfor` VALUES (676, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:08:03');
INSERT INTO `sys_logininfor` VALUES (677, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 16:10:32');
INSERT INTO `sys_logininfor` VALUES (678, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:10:33');
INSERT INTO `sys_logininfor` VALUES (679, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:32:41');
INSERT INTO `sys_logininfor` VALUES (680, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:38:45');
INSERT INTO `sys_logininfor` VALUES (681, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 16:39:32');
INSERT INTO `sys_logininfor` VALUES (682, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:39:35');
INSERT INTO `sys_logininfor` VALUES (683, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:52:50');
INSERT INTO `sys_logininfor` VALUES (684, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 16:53:18');
INSERT INTO `sys_logininfor` VALUES (685, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:53:22');
INSERT INTO `sys_logininfor` VALUES (686, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 16:54:06');
INSERT INTO `sys_logininfor` VALUES (687, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:54:08');
INSERT INTO `sys_logininfor` VALUES (688, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 16:59:01');
INSERT INTO `sys_logininfor` VALUES (689, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:03:26');
INSERT INTO `sys_logininfor` VALUES (690, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:03:46');
INSERT INTO `sys_logininfor` VALUES (691, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:04:24');
INSERT INTO `sys_logininfor` VALUES (692, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:04:27');
INSERT INTO `sys_logininfor` VALUES (693, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:16:38');
INSERT INTO `sys_logininfor` VALUES (694, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:16:41');
INSERT INTO `sys_logininfor` VALUES (695, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:16:51');
INSERT INTO `sys_logininfor` VALUES (696, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:16:53');
INSERT INTO `sys_logininfor` VALUES (697, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:22:31');
INSERT INTO `sys_logininfor` VALUES (698, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:22:42');
INSERT INTO `sys_logininfor` VALUES (699, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:22:45');
INSERT INTO `sys_logininfor` VALUES (700, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:38:56');
INSERT INTO `sys_logininfor` VALUES (701, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:39:09');
INSERT INTO `sys_logininfor` VALUES (702, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:39:11');
INSERT INTO `sys_logininfor` VALUES (703, '1001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:39:59');
INSERT INTO `sys_logininfor` VALUES (704, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:40:00');
INSERT INTO `sys_logininfor` VALUES (705, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:40:13');
INSERT INTO `sys_logininfor` VALUES (706, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:40:17');
INSERT INTO `sys_logininfor` VALUES (707, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-26 17:40:27');
INSERT INTO `sys_logininfor` VALUES (708, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-26 17:40:29');
INSERT INTO `sys_logininfor` VALUES (709, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 08:41:33');
INSERT INTO `sys_logininfor` VALUES (710, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 09:23:17');
INSERT INTO `sys_logininfor` VALUES (711, '341225200412072742', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-27 09:23:22');
INSERT INTO `sys_logininfor` VALUES (712, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-27 09:24:32');
INSERT INTO `sys_logininfor` VALUES (713, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-27 09:24:40');
INSERT INTO `sys_logininfor` VALUES (714, 'admin', '192.168.1.81', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 10:17:37');
INSERT INTO `sys_logininfor` VALUES (715, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 10:28:04');
INSERT INTO `sys_logininfor` VALUES (716, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-27 10:42:22');
INSERT INTO `sys_logininfor` VALUES (717, '1001', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-27 10:42:34');
INSERT INTO `sys_logininfor` VALUES (718, 'admin', '192.168.1.81', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 10:43:38');
INSERT INTO `sys_logininfor` VALUES (719, '1001', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-27 10:44:30');
INSERT INTO `sys_logininfor` VALUES (720, '1001', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-27 10:44:48');
INSERT INTO `sys_logininfor` VALUES (721, 'admin', '192.168.1.81', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 11:17:12');
INSERT INTO `sys_logininfor` VALUES (722, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 11:28:05');
INSERT INTO `sys_logininfor` VALUES (723, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-27 11:28:10');
INSERT INTO `sys_logininfor` VALUES (724, 'admin', '192.168.1.81', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 11:39:39');
INSERT INTO `sys_logininfor` VALUES (725, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 14:34:11');
INSERT INTO `sys_logininfor` VALUES (726, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-27 14:34:32');
INSERT INTO `sys_logininfor` VALUES (727, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 14:34:34');
INSERT INTO `sys_logininfor` VALUES (728, '1003', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-27 14:34:36');
INSERT INTO `sys_logininfor` VALUES (729, '1001', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-27 14:34:51');
INSERT INTO `sys_logininfor` VALUES (730, '1003', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-27 14:35:00');
INSERT INTO `sys_logininfor` VALUES (731, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 14:36:27');
INSERT INTO `sys_logininfor` VALUES (732, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 14:58:43');
INSERT INTO `sys_logininfor` VALUES (733, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-27 15:00:16');
INSERT INTO `sys_logininfor` VALUES (734, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 15:00:18');
INSERT INTO `sys_logininfor` VALUES (735, '1003', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-27 15:10:52');
INSERT INTO `sys_logininfor` VALUES (736, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-27 15:11:15');
INSERT INTO `sys_logininfor` VALUES (737, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 15:48:38');
INSERT INTO `sys_logininfor` VALUES (738, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 17:10:15');
INSERT INTO `sys_logininfor` VALUES (739, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-28 11:13:35');
INSERT INTO `sys_logininfor` VALUES (740, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-28 14:36:14');
INSERT INTO `sys_logininfor` VALUES (741, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-28 15:17:12');
INSERT INTO `sys_logininfor` VALUES (742, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-28 15:29:08');
INSERT INTO `sys_logininfor` VALUES (743, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-28 16:20:49');
INSERT INTO `sys_logininfor` VALUES (744, '341225200412072742', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-12-28 17:04:45');
INSERT INTO `sys_logininfor` VALUES (745, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-12-30 08:43:02');
INSERT INTO `sys_logininfor` VALUES (746, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 09:59:04');
INSERT INTO `sys_logininfor` VALUES (747, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 10:13:30');
INSERT INTO `sys_logininfor` VALUES (748, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 10:20:35');
INSERT INTO `sys_logininfor` VALUES (749, 'admin', '192.168.1.68', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 11:00:57');
INSERT INTO `sys_logininfor` VALUES (750, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 11:50:54');
INSERT INTO `sys_logininfor` VALUES (751, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 14:17:36');
INSERT INTO `sys_logininfor` VALUES (752, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 16:02:10');
INSERT INTO `sys_logininfor` VALUES (753, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 17:55:07');
INSERT INTO `sys_logininfor` VALUES (754, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 17:58:14');
INSERT INTO `sys_logininfor` VALUES (755, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 08:35:54');
INSERT INTO `sys_logininfor` VALUES (756, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 08:43:53');
INSERT INTO `sys_logininfor` VALUES (757, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 09:59:43');
INSERT INTO `sys_logininfor` VALUES (758, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 10:07:40');
INSERT INTO `sys_logininfor` VALUES (759, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 10:37:28');
INSERT INTO `sys_logininfor` VALUES (760, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 11:12:00');
INSERT INTO `sys_logininfor` VALUES (761, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-31 11:16:10');
INSERT INTO `sys_logininfor` VALUES (762, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 11:16:15');
INSERT INTO `sys_logininfor` VALUES (763, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 11:21:44');
INSERT INTO `sys_logininfor` VALUES (764, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 11:35:31');
INSERT INTO `sys_logininfor` VALUES (765, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-31 11:37:50');
INSERT INTO `sys_logininfor` VALUES (766, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 11:37:52');
INSERT INTO `sys_logininfor` VALUES (767, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 11:45:30');
INSERT INTO `sys_logininfor` VALUES (768, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 11:54:05');
INSERT INTO `sys_logininfor` VALUES (769, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 14:07:21');
INSERT INTO `sys_logininfor` VALUES (770, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 14:12:10');
INSERT INTO `sys_logininfor` VALUES (771, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-31 14:15:49');
INSERT INTO `sys_logininfor` VALUES (772, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 14:15:50');
INSERT INTO `sys_logininfor` VALUES (773, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 14:28:59');
INSERT INTO `sys_logininfor` VALUES (774, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 14:32:17');
INSERT INTO `sys_logininfor` VALUES (775, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 14:34:02');
INSERT INTO `sys_logininfor` VALUES (776, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 15:18:09');
INSERT INTO `sys_logininfor` VALUES (777, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 08:36:48');
INSERT INTO `sys_logininfor` VALUES (778, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 08:51:16');
INSERT INTO `sys_logininfor` VALUES (779, '1018', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 08:51:19');
INSERT INTO `sys_logininfor` VALUES (780, '1018', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 08:52:41');
INSERT INTO `sys_logininfor` VALUES (781, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 08:52:43');
INSERT INTO `sys_logininfor` VALUES (782, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 08:59:40');
INSERT INTO `sys_logininfor` VALUES (783, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 09:04:42');
INSERT INTO `sys_logininfor` VALUES (784, '1018', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 09:04:45');
INSERT INTO `sys_logininfor` VALUES (785, '1018', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 09:07:19');
INSERT INTO `sys_logininfor` VALUES (786, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 09:39:54');
INSERT INTO `sys_logininfor` VALUES (787, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 09:51:09');
INSERT INTO `sys_logininfor` VALUES (788, '1018', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 09:51:12');
INSERT INTO `sys_logininfor` VALUES (789, '1018', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 10:35:56');
INSERT INTO `sys_logininfor` VALUES (790, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 10:35:57');
INSERT INTO `sys_logininfor` VALUES (791, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 11:53:58');
INSERT INTO `sys_logininfor` VALUES (792, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 15:11:44');
INSERT INTO `sys_logininfor` VALUES (793, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 15:11:56');
INSERT INTO `sys_logininfor` VALUES (794, '1018', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 15:11:58');
INSERT INTO `sys_logininfor` VALUES (795, 'admin', '192.168.1.68', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 16:47:06');
INSERT INTO `sys_logininfor` VALUES (796, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 16:49:21');
INSERT INTO `sys_logininfor` VALUES (797, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 17:17:20');
INSERT INTO `sys_logininfor` VALUES (798, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 17:18:38');
INSERT INTO `sys_logininfor` VALUES (799, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 17:18:44');
INSERT INTO `sys_logininfor` VALUES (800, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 17:36:52');
INSERT INTO `sys_logininfor` VALUES (801, 'admin', '117.132.191.60, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-02 18:05:15');
INSERT INTO `sys_logininfor` VALUES (802, '1018', '117.132.195.33, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-02 18:05:22');
INSERT INTO `sys_logininfor` VALUES (803, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 08:50:13');
INSERT INTO `sys_logininfor` VALUES (804, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 08:54:00');
INSERT INTO `sys_logininfor` VALUES (805, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 08:57:21');
INSERT INTO `sys_logininfor` VALUES (806, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 09:53:11');
INSERT INTO `sys_logininfor` VALUES (807, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 09:55:26');
INSERT INTO `sys_logininfor` VALUES (808, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 10:02:23');
INSERT INTO `sys_logininfor` VALUES (809, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 10:06:14');
INSERT INTO `sys_logininfor` VALUES (810, '1018', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-01-03 10:11:01');
INSERT INTO `sys_logininfor` VALUES (811, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 10:49:00');
INSERT INTO `sys_logininfor` VALUES (812, '1018', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-01-03 11:01:15');
INSERT INTO `sys_logininfor` VALUES (813, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 11:20:05');
INSERT INTO `sys_logininfor` VALUES (814, '1018', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-01-03 11:21:51');
INSERT INTO `sys_logininfor` VALUES (815, '1018', '117.132.195.33, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-03 11:42:55');
INSERT INTO `sys_logininfor` VALUES (816, 'admin', '117.132.195.33, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-03 11:42:59');
INSERT INTO `sys_logininfor` VALUES (817, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 11:43:49');
INSERT INTO `sys_logininfor` VALUES (818, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 15:15:52');
INSERT INTO `sys_logininfor` VALUES (819, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 16:55:17');
INSERT INTO `sys_logininfor` VALUES (820, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-03 16:55:41');
INSERT INTO `sys_logininfor` VALUES (821, '1008', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-03 16:55:53');
INSERT INTO `sys_logininfor` VALUES (822, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 15:57:32');
INSERT INTO `sys_logininfor` VALUES (823, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-06 15:57:37');
INSERT INTO `sys_logininfor` VALUES (824, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 15:58:32');
INSERT INTO `sys_logininfor` VALUES (825, '1008', '112.26.168.227, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-06 16:25:04');
INSERT INTO `sys_logininfor` VALUES (826, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-06 16:25:49');
INSERT INTO `sys_logininfor` VALUES (827, 'admi', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-01-06 16:52:34');
INSERT INTO `sys_logininfor` VALUES (828, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 16:52:47');
INSERT INTO `sys_logininfor` VALUES (829, 'admin', '112.26.168.227, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-06 16:54:21');
INSERT INTO `sys_logininfor` VALUES (830, 'admin', '112.26.168.227, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-06 16:54:42');
INSERT INTO `sys_logininfor` VALUES (831, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-06 17:02:48');
INSERT INTO `sys_logininfor` VALUES (832, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-06 17:02:53');
INSERT INTO `sys_logininfor` VALUES (833, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-06 17:02:58');
INSERT INTO `sys_logininfor` VALUES (834, 'admin', '223.104.34.117', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-06 17:06:56');
INSERT INTO `sys_logininfor` VALUES (835, 'admin', '223.104.34.117', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-06 17:06:59');
INSERT INTO `sys_logininfor` VALUES (836, 'admin', '39.144.35.195, 123.151.77.132', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-01-06 17:10:26');
INSERT INTO `sys_logininfor` VALUES (837, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-06 17:19:09');
INSERT INTO `sys_logininfor` VALUES (838, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 17:29:47');
INSERT INTO `sys_logininfor` VALUES (839, 'admin', '112.26.168.227, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-06 17:45:36');
INSERT INTO `sys_logininfor` VALUES (840, 'admin', '117.136.103.232', '安徽 合肥', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-06 17:46:30');
INSERT INTO `sys_logininfor` VALUES (841, 'admin', '117.136.103.232, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-06 17:46:41');
INSERT INTO `sys_logininfor` VALUES (842, 'admin', '223.246.34.53, 120.204.17.46', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-01-06 17:56:42');
INSERT INTO `sys_logininfor` VALUES (843, 'admin', '112.32.89.102', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 19:25:47');
INSERT INTO `sys_logininfor` VALUES (844, 'admin', '117.136.103.232, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-06 20:48:55');
INSERT INTO `sys_logininfor` VALUES (845, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-07 08:50:57');
INSERT INTO `sys_logininfor` VALUES (846, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-01-07 10:35:35');
INSERT INTO `sys_logininfor` VALUES (847, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-07 10:35:42');
INSERT INTO `sys_logininfor` VALUES (848, 'admin', '117.136.103.232, 111.30.142.227', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-07 15:31:18');
INSERT INTO `sys_logininfor` VALUES (849, '1018', '112.26.168.227, 223.166.151.238', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-07 15:31:24');
INSERT INTO `sys_logininfor` VALUES (850, '1018', '112.26.168.227, 223.166.151.238', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-07 15:31:45');
INSERT INTO `sys_logininfor` VALUES (851, '1019', '112.26.168.227, 223.166.151.238', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-07 15:32:00');
INSERT INTO `sys_logininfor` VALUES (852, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-01-07 16:33:56');
INSERT INTO `sys_logininfor` VALUES (853, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-07 16:34:01');
INSERT INTO `sys_logininfor` VALUES (854, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-07 16:34:36');
INSERT INTO `sys_logininfor` VALUES (855, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-08 09:44:09');
INSERT INTO `sys_logininfor` VALUES (856, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-08 11:56:14');
INSERT INTO `sys_logininfor` VALUES (857, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-08 12:01:19');
INSERT INTO `sys_logininfor` VALUES (858, 'admin', '117.132.193.40', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-08 12:02:50');
INSERT INTO `sys_logininfor` VALUES (859, '1020', '117.132.193.40', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-08 12:02:59');
INSERT INTO `sys_logininfor` VALUES (860, '1020', '117.132.193.40', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-08 12:04:57');
INSERT INTO `sys_logininfor` VALUES (861, 'admin', '117.132.193.40', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-08 12:04:59');
INSERT INTO `sys_logininfor` VALUES (862, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-08 14:11:52');
INSERT INTO `sys_logininfor` VALUES (863, 'admin', '117.132.193.40', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-08 15:06:07');
INSERT INTO `sys_logininfor` VALUES (864, '1001', '117.132.193.40', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-08 15:06:29');
INSERT INTO `sys_logininfor` VALUES (865, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-08 17:07:45');
INSERT INTO `sys_logininfor` VALUES (866, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-09 09:59:19');
INSERT INTO `sys_logininfor` VALUES (867, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-09 15:41:33');
INSERT INTO `sys_logininfor` VALUES (868, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-10 10:25:02');
INSERT INTO `sys_logininfor` VALUES (869, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-10 10:52:39');
INSERT INTO `sys_logininfor` VALUES (870, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-11 10:17:13');
INSERT INTO `sys_logininfor` VALUES (871, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-11 10:28:11');
INSERT INTO `sys_logininfor` VALUES (872, 'admin', '223.104.34.123', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-11 10:31:23');
INSERT INTO `sys_logininfor` VALUES (873, 'admin', '223.246.231.194', '安徽 宣城', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-01-11 10:35:11');
INSERT INTO `sys_logininfor` VALUES (874, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-11 10:44:53');
INSERT INTO `sys_logininfor` VALUES (875, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-11 10:52:20');
INSERT INTO `sys_logininfor` VALUES (876, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-11 10:52:44');
INSERT INTO `sys_logininfor` VALUES (877, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-11 10:52:50');
INSERT INTO `sys_logininfor` VALUES (878, 'admin', '117.136.101.133', '安徽 合肥', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-11 10:54:01');
INSERT INTO `sys_logininfor` VALUES (879, 'admin', '117.136.101.133', '安徽 合肥', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-11 10:54:34');
INSERT INTO `sys_logininfor` VALUES (880, '1001', '117.132.197.12', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-11 11:17:19');
INSERT INTO `sys_logininfor` VALUES (881, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-11 11:38:16');
INSERT INTO `sys_logininfor` VALUES (882, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-11 14:04:41');
INSERT INTO `sys_logininfor` VALUES (883, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-11 14:31:38');
INSERT INTO `sys_logininfor` VALUES (884, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-11 14:32:54');
INSERT INTO `sys_logininfor` VALUES (885, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-13 09:35:06');
INSERT INTO `sys_logininfor` VALUES (886, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-13 10:47:22');
INSERT INTO `sys_logininfor` VALUES (887, 'admin', '112.26.168.227', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-13 14:46:04');
INSERT INTO `sys_logininfor` VALUES (888, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-13 14:47:21');
INSERT INTO `sys_logininfor` VALUES (889, '1020', '112.26.168.227', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-13 14:47:27');
INSERT INTO `sys_logininfor` VALUES (890, '1020', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-13 14:50:29');
INSERT INTO `sys_logininfor` VALUES (891, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-13 14:50:30');
INSERT INTO `sys_logininfor` VALUES (892, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-13 14:53:07');
INSERT INTO `sys_logininfor` VALUES (893, '1022', '112.26.168.227', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-13 14:53:14');
INSERT INTO `sys_logininfor` VALUES (894, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-13 14:55:40');
INSERT INTO `sys_logininfor` VALUES (895, '1022', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-13 14:58:25');
INSERT INTO `sys_logininfor` VALUES (896, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-13 14:58:26');
INSERT INTO `sys_logininfor` VALUES (897, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-13 15:41:23');
INSERT INTO `sys_logininfor` VALUES (898, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-13 15:41:25');
INSERT INTO `sys_logininfor` VALUES (899, 'admin', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-13 15:41:27');
INSERT INTO `sys_logininfor` VALUES (900, '1022', '112.26.168.227', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-13 15:41:33');
INSERT INTO `sys_logininfor` VALUES (901, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-13 16:48:35');
INSERT INTO `sys_logininfor` VALUES (902, '1019', '112.26.168.227, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-13 17:09:10');
INSERT INTO `sys_logininfor` VALUES (903, 'admin', '218.204.252.51, 14.116.137.170', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-13 17:09:13');
INSERT INTO `sys_logininfor` VALUES (904, 'admin', '218.204.252.51, 14.116.137.170', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-13 17:09:30');
INSERT INTO `sys_logininfor` VALUES (905, '1012', '218.204.252.51, 112.60.1.73', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-13 17:09:38');
INSERT INTO `sys_logininfor` VALUES (906, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-14 09:20:52');
INSERT INTO `sys_logininfor` VALUES (907, 'admin', '223.104.35.88', '安徽 合肥', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-01-14 09:21:15');
INSERT INTO `sys_logininfor` VALUES (908, 'admin', '117.136.101.157', '安徽 合肥', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-01-14 09:21:27');
INSERT INTO `sys_logininfor` VALUES (909, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 7', '0', '登录成功', '2020-01-14 09:21:39');
INSERT INTO `sys_logininfor` VALUES (910, 'admin', '112.32.65.216', '安徽 合肥', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-14 09:21:49');
INSERT INTO `sys_logininfor` VALUES (911, 'admin', '36.61.140.198', '安徽 合肥', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-01-14 09:21:53');
INSERT INTO `sys_logininfor` VALUES (912, 'admin', '183.162.19.95', '安徽 安庆', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-01-14 09:21:59');
INSERT INTO `sys_logininfor` VALUES (913, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-14 09:48:59');
INSERT INTO `sys_logininfor` VALUES (914, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-14 14:56:32');
INSERT INTO `sys_logininfor` VALUES (915, 'admin', '112.26.168.227', '安徽 合肥', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-14 16:59:13');
INSERT INTO `sys_logininfor` VALUES (916, 'admin', '218.204.252.51', '广东 汕头', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-14 17:41:37');
INSERT INTO `sys_logininfor` VALUES (917, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-15 08:51:28');
INSERT INTO `sys_logininfor` VALUES (918, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-15 09:55:19');
INSERT INTO `sys_logininfor` VALUES (919, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-15 09:55:56');
INSERT INTO `sys_logininfor` VALUES (920, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-15 10:50:39');
INSERT INTO `sys_logininfor` VALUES (921, 'admin', '117.132.194.233', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-15 14:52:02');
INSERT INTO `sys_logininfor` VALUES (922, '1022', '117.132.194.233', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-01-15 14:53:02');
INSERT INTO `sys_logininfor` VALUES (923, 'admin', '117.132.194.233', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-01-15 14:53:04');
INSERT INTO `sys_logininfor` VALUES (924, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-15 15:30:17');
INSERT INTO `sys_logininfor` VALUES (925, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-15 16:34:42');
INSERT INTO `sys_logininfor` VALUES (926, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-15 17:29:03');
INSERT INTO `sys_logininfor` VALUES (927, '1012', '218.204.252.51, 14.116.137.170', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-16 08:39:58');
INSERT INTO `sys_logininfor` VALUES (928, 'admin', '218.204.252.51, 14.116.137.170', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-16 08:40:00');
INSERT INTO `sys_logininfor` VALUES (929, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-16 08:41:28');
INSERT INTO `sys_logininfor` VALUES (930, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-01-17 16:12:05');
INSERT INTO `sys_logininfor` VALUES (931, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-17 16:12:09');
INSERT INTO `sys_logininfor` VALUES (932, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-19 09:17:47');
INSERT INTO `sys_logininfor` VALUES (933, 'admin', '218.204.252.51, 14.116.137.170', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-01-19 10:15:40');
INSERT INTO `sys_logininfor` VALUES (934, 'admin', '39.144.17.82, 123.151.77.91', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-01-19 10:17:47');
INSERT INTO `sys_logininfor` VALUES (935, 'admin', '112.32.93.46', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 15:03:32');
INSERT INTO `sys_logininfor` VALUES (936, 'admin', '112.28.150.122', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 15:03:59');
INSERT INTO `sys_logininfor` VALUES (937, 'admin', '218.204.253.67', '广东 汕头', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-02-11 13:44:47');
INSERT INTO `sys_logininfor` VALUES (938, 'admin', '112.32.93.46', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 14:03:49');
INSERT INTO `sys_logininfor` VALUES (939, 'admin', '218.204.253.67, 113.96.218.50', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-02-12 21:28:56');
INSERT INTO `sys_logininfor` VALUES (940, 'admin', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-13 20:33:47');
INSERT INTO `sys_logininfor` VALUES (941, 'admin', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-13 21:19:29');
INSERT INTO `sys_logininfor` VALUES (942, 'admin', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-13 21:19:34');
INSERT INTO `sys_logininfor` VALUES (943, 'admin', '112.32.89.226', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-13 21:19:44');
INSERT INTO `sys_logininfor` VALUES (944, '0018', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-02-13 21:19:47');
INSERT INTO `sys_logininfor` VALUES (945, '1018', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-13 21:19:53');
INSERT INTO `sys_logininfor` VALUES (946, '1018', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-13 21:20:56');
INSERT INTO `sys_logininfor` VALUES (947, '341225200412072742', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-13 21:20:59');
INSERT INTO `sys_logininfor` VALUES (948, '341225200412072742', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-13 21:21:55');
INSERT INTO `sys_logininfor` VALUES (949, 'admin', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-13 21:22:07');
INSERT INTO `sys_logininfor` VALUES (950, 'admin', '112.32.89.226', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-13 21:26:11');
INSERT INTO `sys_logininfor` VALUES (951, 'admin', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-13 21:31:20');
INSERT INTO `sys_logininfor` VALUES (952, '1018', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-13 21:31:24');
INSERT INTO `sys_logininfor` VALUES (953, 'admin', '114.99.113.253', '安徽 安庆', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-14 09:10:45');
INSERT INTO `sys_logininfor` VALUES (954, 'admin', '114.99.113.253', '安徽 安庆', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-14 09:13:56');
INSERT INTO `sys_logininfor` VALUES (955, '1018', '114.99.113.253', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-14 09:14:20');
INSERT INTO `sys_logininfor` VALUES (956, 'admin', '114.99.113.253', '安徽 安庆', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-14 12:26:21');
INSERT INTO `sys_logininfor` VALUES (957, 'admin', '114.99.113.253', '安徽 安庆', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-14 15:30:57');
INSERT INTO `sys_logininfor` VALUES (958, 'admin', '114.99.113.253', '安徽 安庆', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-14 15:31:20');
INSERT INTO `sys_logininfor` VALUES (959, '1018', '114.99.113.253', '安徽 安庆', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-14 15:31:44');
INSERT INTO `sys_logininfor` VALUES (960, 'admin', '112.32.89.226', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-14 15:33:31');
INSERT INTO `sys_logininfor` VALUES (961, 'admin', '36.60.204.47', '安徽 宿州', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-02-14 15:34:11');
INSERT INTO `sys_logininfor` VALUES (962, 'admin', '36.60.204.47', '安徽 宿州', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-02-14 15:34:42');
INSERT INTO `sys_logininfor` VALUES (963, 'admin', '36.60.204.47', '安徽 宿州', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-02-14 15:36:44');
INSERT INTO `sys_logininfor` VALUES (964, '1018', '114.99.113.253', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-14 15:37:09');
INSERT INTO `sys_logininfor` VALUES (965, 'admin', '114.99.113.253', '安徽 安庆', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-14 15:37:12');
INSERT INTO `sys_logininfor` VALUES (966, 'admin', '112.32.95.168', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-18 14:03:42');
INSERT INTO `sys_logininfor` VALUES (967, 'admin', '36.5.158.98', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-19 21:12:41');
INSERT INTO `sys_logininfor` VALUES (968, 'admin', '112.32.93.168', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-19 21:13:45');
INSERT INTO `sys_logininfor` VALUES (969, '1018', '112.32.93.168', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-20 14:07:25');
INSERT INTO `sys_logininfor` VALUES (970, 'admin', '36.5.153.240', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-20 21:15:22');
INSERT INTO `sys_logininfor` VALUES (971, 'admin', '112.32.93.168', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-20 21:16:47');
INSERT INTO `sys_logininfor` VALUES (972, 'admin', '112.32.93.71', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 15:41:59');
INSERT INTO `sys_logininfor` VALUES (973, 'admin', '112.32.93.71', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-04 10:02:34');
INSERT INTO `sys_logininfor` VALUES (974, 'admin', '112.32.93.71', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-03-04 10:05:32');
INSERT INTO `sys_logininfor` VALUES (975, '1018', '112.32.93.71', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-04 11:18:49');
INSERT INTO `sys_logininfor` VALUES (976, 'admin', '112.32.93.71', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-04 14:22:46');
INSERT INTO `sys_logininfor` VALUES (977, 'admin', '112.32.93.71', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-04 15:26:19');
INSERT INTO `sys_logininfor` VALUES (978, '1018', '112.32.93.71', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-04 16:26:13');
INSERT INTO `sys_logininfor` VALUES (979, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-05 09:27:28');
INSERT INTO `sys_logininfor` VALUES (980, 'demo', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-05 10:20:32');
INSERT INTO `sys_logininfor` VALUES (981, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-05 10:43:29');
INSERT INTO `sys_logininfor` VALUES (982, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-05 10:49:33');
INSERT INTO `sys_logininfor` VALUES (983, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-05 15:36:08');
INSERT INTO `sys_logininfor` VALUES (984, 'admin', '112.32.91.79', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-06 10:28:06');
INSERT INTO `sys_logininfor` VALUES (985, 'admin', '112.32.91.79', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-06 10:33:15');
INSERT INTO `sys_logininfor` VALUES (986, 'admin', '112.32.91.79', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-06 14:28:16');
INSERT INTO `sys_logininfor` VALUES (987, '1018', '112.32.91.222', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 09:39:12');
INSERT INTO `sys_logininfor` VALUES (988, '1018', '112.32.91.222', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-09 10:23:33');
INSERT INTO `sys_logininfor` VALUES (989, 'admin', '112.32.91.222', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 10:23:37');
INSERT INTO `sys_logininfor` VALUES (990, '1018', '112.32.91.222', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 11:39:52');
INSERT INTO `sys_logininfor` VALUES (991, 'admin', '112.32.91.222', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 11:54:03');
INSERT INTO `sys_logininfor` VALUES (992, 'admin', '112.32.91.222', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 16:54:09');
INSERT INTO `sys_logininfor` VALUES (993, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-03-10 14:02:02');
INSERT INTO `sys_logininfor` VALUES (994, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-10 14:02:08');
INSERT INTO `sys_logininfor` VALUES (995, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-10 16:53:40');
INSERT INTO `sys_logininfor` VALUES (996, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-11 08:47:44');
INSERT INTO `sys_logininfor` VALUES (997, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-11 09:35:10');
INSERT INTO `sys_logininfor` VALUES (998, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-11 09:35:12');
INSERT INTO `sys_logininfor` VALUES (999, 'admin', '36.61.104.168', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-11 09:58:32');
INSERT INTO `sys_logininfor` VALUES (1000, 'admin', '36.33.36.79', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-11 10:26:55');
INSERT INTO `sys_logininfor` VALUES (1001, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-11 15:18:35');
INSERT INTO `sys_logininfor` VALUES (1002, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-11 15:49:11');
INSERT INTO `sys_logininfor` VALUES (1003, 'admin', '36.33.4.144', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-12 09:47:04');
INSERT INTO `sys_logininfor` VALUES (1004, 'admin', '112.32.95.206', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 09:52:21');
INSERT INTO `sys_logininfor` VALUES (1005, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 14:13:12');
INSERT INTO `sys_logininfor` VALUES (1006, 'admin', '36.33.4.144', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-14 10:03:01');
INSERT INTO `sys_logininfor` VALUES (1007, 'admin', '183.161.197.175', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-03-14 11:26:41');
INSERT INTO `sys_logininfor` VALUES (1008, 'admin', '112.32.95.78', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-15 18:24:13');
INSERT INTO `sys_logininfor` VALUES (1009, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-16 10:30:35');
INSERT INTO `sys_logininfor` VALUES (1010, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-16 10:30:44');
INSERT INTO `sys_logininfor` VALUES (1011, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-16 10:31:11');
INSERT INTO `sys_logininfor` VALUES (1012, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-16 10:31:31');
INSERT INTO `sys_logininfor` VALUES (1013, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-16 10:31:36');
INSERT INTO `sys_logininfor` VALUES (1014, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-17 14:33:15');
INSERT INTO `sys_logininfor` VALUES (1015, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-18 15:26:19');
INSERT INTO `sys_logininfor` VALUES (1016, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-18 15:59:28');
INSERT INTO `sys_logininfor` VALUES (1017, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-19 17:34:46');
INSERT INTO `sys_logininfor` VALUES (1018, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-19 17:34:51');
INSERT INTO `sys_logininfor` VALUES (1019, 'demo', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-19 17:34:55');
INSERT INTO `sys_logininfor` VALUES (1020, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 08:56:48');
INSERT INTO `sys_logininfor` VALUES (1021, '340104200305126516', '183.162.22.240', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-03-20 09:56:14');
INSERT INTO `sys_logininfor` VALUES (1022, '1101', '112.26.168.227', '未知', 'Internet Explorer 11', 'Windows 10', '1', '用户不存在/密码错误', '2020-03-20 10:08:12');
INSERT INTO `sys_logininfor` VALUES (1023, '1001', '112.26.168.227', '安徽 合肥', 'Internet Explorer 11', 'Windows 10', '0', '登录成功', '2020-03-20 10:08:32');
INSERT INTO `sys_logininfor` VALUES (1024, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 11:35:48');
INSERT INTO `sys_logininfor` VALUES (1025, 'admin', '36.5.153.101', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 15:02:10');
INSERT INTO `sys_logininfor` VALUES (1026, 'admin', '36.5.153.101', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 16:24:52');
INSERT INTO `sys_logininfor` VALUES (1027, '1001', '36.5.153.101', '安徽 合肥', 'Internet Explorer 11', 'Windows 10', '0', '登录成功', '2020-03-20 16:32:22');
INSERT INTO `sys_logininfor` VALUES (1028, 'admin', '36.5.153.101', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 18:43:10');
INSERT INTO `sys_logininfor` VALUES (1029, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-21 15:40:11');
INSERT INTO `sys_logininfor` VALUES (1030, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-21 15:40:17');
INSERT INTO `sys_logininfor` VALUES (1031, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-23 09:20:36');
INSERT INTO `sys_logininfor` VALUES (1032, 'admin', '112.26.168.227', '未知', 'Mobile Safari', 'Mac OS X (iPad)', '0', '登录成功', '2020-03-23 09:31:30');
INSERT INTO `sys_logininfor` VALUES (1033, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-23 13:51:13');
INSERT INTO `sys_logininfor` VALUES (1034, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-23 17:37:45');
INSERT INTO `sys_logininfor` VALUES (1035, 'admin', '112.32.95.119', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-23 23:55:53');
INSERT INTO `sys_logininfor` VALUES (1036, 'admin', '117.136.100.56, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-03-24 17:12:45');
INSERT INTO `sys_logininfor` VALUES (1037, 'admin', '112.32.91.119', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-24 21:55:25');
INSERT INTO `sys_logininfor` VALUES (1038, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-03-26 10:34:34');
INSERT INTO `sys_logininfor` VALUES (1039, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 10:34:38');
INSERT INTO `sys_logininfor` VALUES (1040, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 16:29:20');
INSERT INTO `sys_logininfor` VALUES (1041, '34120420030826083X', '112.26.168.227, 223.166.151.233', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-26 17:03:40');
INSERT INTO `sys_logininfor` VALUES (1042, 'admin', '117.136.100.56, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '退出成功', '2020-03-26 17:13:22');
INSERT INTO `sys_logininfor` VALUES (1043, '34120420030826083X', '112.26.168.227, 223.166.151.233', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-03-26 17:14:41');
INSERT INTO `sys_logininfor` VALUES (1044, '1055', '112.26.168.227, 223.166.151.233', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-26 17:14:47');
INSERT INTO `sys_logininfor` VALUES (1045, '1055', '112.26.168.227, 223.166.151.233', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-03-26 17:15:04');
INSERT INTO `sys_logininfor` VALUES (1046, '34120420030826083X', '112.26.168.227, 223.166.151.233', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-26 17:15:26');
INSERT INTO `sys_logininfor` VALUES (1047, '34120420030826083X', '112.26.168.227, 223.166.151.233', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-03-26 17:16:23');
INSERT INTO `sys_logininfor` VALUES (1048, '1055', '112.26.168.227, 223.166.151.233', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-26 17:16:29');
INSERT INTO `sys_logininfor` VALUES (1049, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-03-27 11:29:47');
INSERT INTO `sys_logininfor` VALUES (1050, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 11:29:57');
INSERT INTO `sys_logininfor` VALUES (1051, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 14:19:30');
INSERT INTO `sys_logininfor` VALUES (1052, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 14:20:16');
INSERT INTO `sys_logininfor` VALUES (1053, '34120420030826083X', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 14:20:26');
INSERT INTO `sys_logininfor` VALUES (1054, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-03-27 14:21:19');
INSERT INTO `sys_logininfor` VALUES (1055, '1001', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 14:23:15');
INSERT INTO `sys_logininfor` VALUES (1056, '34120420030826083X', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 14:23:32');
INSERT INTO `sys_logininfor` VALUES (1057, 'admin', '117.136.100.53, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误1次', '2020-03-27 14:25:38');
INSERT INTO `sys_logininfor` VALUES (1058, 'admin', '117.136.100.53, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误2次', '2020-03-27 14:25:42');
INSERT INTO `sys_logininfor` VALUES (1059, 'admin', '117.136.100.53, 61.151.180.39', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-03-27 14:26:07');
INSERT INTO `sys_logininfor` VALUES (1060, '1001', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 14:44:29');
INSERT INTO `sys_logininfor` VALUES (1061, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 14:44:55');
INSERT INTO `sys_logininfor` VALUES (1062, '1055', '112.26.168.227, 223.166.151.233', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-03-27 15:44:42');
INSERT INTO `sys_logininfor` VALUES (1063, '1001', '117.132.194.198, 113.96.218.51', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-27 15:44:48');
INSERT INTO `sys_logininfor` VALUES (1064, '1001', '117.132.194.198, 113.96.218.51', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-03-27 15:45:59');
INSERT INTO `sys_logininfor` VALUES (1065, '1002', '117.132.194.198, 113.96.218.51', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-27 15:46:10');
INSERT INTO `sys_logininfor` VALUES (1066, '1002', '117.132.194.198, 113.96.218.51', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-03-27 15:46:15');
INSERT INTO `sys_logininfor` VALUES (1067, '1003', '117.132.194.198, 113.96.218.51', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-27 15:46:42');
INSERT INTO `sys_logininfor` VALUES (1068, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-03-28 08:41:09');
INSERT INTO `sys_logininfor` VALUES (1069, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-03-28 08:41:13');
INSERT INTO `sys_logininfor` VALUES (1070, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2020-03-28 08:41:33');
INSERT INTO `sys_logininfor` VALUES (1071, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-28 08:42:48');
INSERT INTO `sys_logininfor` VALUES (1072, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-28 10:32:31');
INSERT INTO `sys_logininfor` VALUES (1073, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-30 10:58:33');
INSERT INTO `sys_logininfor` VALUES (1074, '1005', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-30 10:58:44');
INSERT INTO `sys_logininfor` VALUES (1075, 'admin', '112.26.168.227', '未知', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-03-30 11:12:55');
INSERT INTO `sys_logininfor` VALUES (1076, '1005', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-30 14:01:49');
INSERT INTO `sys_logininfor` VALUES (1077, 'admin', '112.26.168.227', '未知', 'Firefox 7', 'Windows 10', '1', '密码输入错误1次', '2020-03-30 14:44:39');
INSERT INTO `sys_logininfor` VALUES (1078, 'admin', '112.26.168.227', '未知', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-03-30 14:45:16');
INSERT INTO `sys_logininfor` VALUES (1079, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-03-30 15:27:35');
INSERT INTO `sys_logininfor` VALUES (1080, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误4次', '2020-03-30 15:27:35');
INSERT INTO `sys_logininfor` VALUES (1081, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-03-30 15:27:44');
INSERT INTO `sys_logininfor` VALUES (1082, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2020-03-30 15:27:48');
INSERT INTO `sys_logininfor` VALUES (1083, '1005', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-30 15:27:52');
INSERT INTO `sys_logininfor` VALUES (1084, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-03-30 16:10:12');
INSERT INTO `sys_logininfor` VALUES (1085, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-30 16:10:20');
INSERT INTO `sys_logininfor` VALUES (1086, '1005', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-30 16:10:24');
INSERT INTO `sys_logininfor` VALUES (1087, 'admin', '112.26.168.227', '未知', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-03-30 17:29:54');
INSERT INTO `sys_logininfor` VALUES (1088, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-30 19:16:12');
INSERT INTO `sys_logininfor` VALUES (1089, 'admin', '112.26.168.227', '未知', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-03-30 19:51:21');
INSERT INTO `sys_logininfor` VALUES (1090, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-30 20:57:00');
INSERT INTO `sys_logininfor` VALUES (1091, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-31 08:43:20');
INSERT INTO `sys_logininfor` VALUES (1092, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-31 10:12:48');
INSERT INTO `sys_logininfor` VALUES (1093, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-31 12:35:08');
INSERT INTO `sys_logininfor` VALUES (1094, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-03-31 14:09:16');
INSERT INTO `sys_logininfor` VALUES (1095, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-31 14:09:19');
INSERT INTO `sys_logininfor` VALUES (1096, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-01 08:43:25');
INSERT INTO `sys_logininfor` VALUES (1097, 'admin', '112.26.168.227, 61.129.7.217', '内网IP', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2020-04-02 12:40:49');
INSERT INTO `sys_logininfor` VALUES (1098, '1003', '117.136.116.125, 119.84.153.195', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-04-04 17:25:07');
INSERT INTO `sys_logininfor` VALUES (1099, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-07 08:45:34');
INSERT INTO `sys_logininfor` VALUES (1100, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 7', '0', '登录成功', '2020-04-07 08:46:49');
INSERT INTO `sys_logininfor` VALUES (1101, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-07 17:29:52');
INSERT INTO `sys_logininfor` VALUES (1102, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 11:19:25');
INSERT INTO `sys_logininfor` VALUES (1103, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-09 11:22:35');
INSERT INTO `sys_logininfor` VALUES (1104, '34120420030826083X', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 11:22:41');
INSERT INTO `sys_logininfor` VALUES (1105, '34120420030826083X', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-09 11:27:22');
INSERT INTO `sys_logininfor` VALUES (1106, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 11:27:28');
INSERT INTO `sys_logininfor` VALUES (1107, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-09 11:27:36');
INSERT INTO `sys_logininfor` VALUES (1108, '1001', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 11:27:40');
INSERT INTO `sys_logininfor` VALUES (1109, '1001', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-09 11:28:33');
INSERT INTO `sys_logininfor` VALUES (1110, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-04-09 11:28:42');
INSERT INTO `sys_logininfor` VALUES (1111, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-04-09 11:28:47');
INSERT INTO `sys_logininfor` VALUES (1112, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 11:28:51');
INSERT INTO `sys_logininfor` VALUES (1113, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 13:59:47');
INSERT INTO `sys_logininfor` VALUES (1114, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-09 16:33:19');
INSERT INTO `sys_logininfor` VALUES (1115, '34120420030826083X', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 16:33:23');
INSERT INTO `sys_logininfor` VALUES (1116, '34120420030826083X', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-09 16:47:15');
INSERT INTO `sys_logininfor` VALUES (1117, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 16:47:21');
INSERT INTO `sys_logininfor` VALUES (1118, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 19:55:13');
INSERT INTO `sys_logininfor` VALUES (1119, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-09 19:55:20');
INSERT INTO `sys_logininfor` VALUES (1120, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-09 19:55:26');
INSERT INTO `sys_logininfor` VALUES (1121, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-04-10 08:25:26');
INSERT INTO `sys_logininfor` VALUES (1122, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 08:25:31');
INSERT INTO `sys_logininfor` VALUES (1123, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 08:25:37');
INSERT INTO `sys_logininfor` VALUES (1124, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-04-10 08:25:40');
INSERT INTO `sys_logininfor` VALUES (1125, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-04-10 08:25:42');
INSERT INTO `sys_logininfor` VALUES (1126, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 08:25:46');
INSERT INTO `sys_logininfor` VALUES (1127, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 09:47:25');
INSERT INTO `sys_logininfor` VALUES (1128, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 09:52:52');
INSERT INTO `sys_logininfor` VALUES (1129, '34120420030826083X', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 09:52:55');
INSERT INTO `sys_logininfor` VALUES (1130, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 09:55:54');
INSERT INTO `sys_logininfor` VALUES (1131, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-04-10 09:56:33');
INSERT INTO `sys_logininfor` VALUES (1132, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 09:56:36');
INSERT INTO `sys_logininfor` VALUES (1133, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 10:14:01');
INSERT INTO `sys_logininfor` VALUES (1134, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 10:14:04');
INSERT INTO `sys_logininfor` VALUES (1135, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 10:48:59');
INSERT INTO `sys_logininfor` VALUES (1136, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 10:49:04');
INSERT INTO `sys_logininfor` VALUES (1137, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 10:49:14');
INSERT INTO `sys_logininfor` VALUES (1138, '1002', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 10:49:17');
INSERT INTO `sys_logininfor` VALUES (1139, '1002', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 10:49:29');
INSERT INTO `sys_logininfor` VALUES (1140, '1001', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 10:49:34');
INSERT INTO `sys_logininfor` VALUES (1141, '1001', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 11:34:13');
INSERT INTO `sys_logininfor` VALUES (1142, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 11:34:20');
INSERT INTO `sys_logininfor` VALUES (1143, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 11:34:36');
INSERT INTO `sys_logininfor` VALUES (1144, 'demo', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 11:34:40');
INSERT INTO `sys_logininfor` VALUES (1145, '1001', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 14:40:26');
INSERT INTO `sys_logininfor` VALUES (1146, '1001', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 14:40:32');
INSERT INTO `sys_logininfor` VALUES (1147, '1002', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 14:40:37');
INSERT INTO `sys_logininfor` VALUES (1148, '1002', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 14:40:44');
INSERT INTO `sys_logininfor` VALUES (1149, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 14:40:49');
INSERT INTO `sys_logininfor` VALUES (1150, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 14:40:59');
INSERT INTO `sys_logininfor` VALUES (1151, 'demo', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 14:41:04');
INSERT INTO `sys_logininfor` VALUES (1152, 'demo', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 15:02:10');
INSERT INTO `sys_logininfor` VALUES (1153, '1003', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 15:02:16');
INSERT INTO `sys_logininfor` VALUES (1154, '1003', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 15:52:32');
INSERT INTO `sys_logininfor` VALUES (1155, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 15:52:37');
INSERT INTO `sys_logininfor` VALUES (1156, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 15:52:46');
INSERT INTO `sys_logininfor` VALUES (1157, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 15:52:49');
INSERT INTO `sys_logininfor` VALUES (1158, '34120420030826083X', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 15:53:21');
INSERT INTO `sys_logininfor` VALUES (1159, 'demo', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 15:53:27');
INSERT INTO `sys_logininfor` VALUES (1160, 'demo', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-04-10 16:55:26');
INSERT INTO `sys_logininfor` VALUES (1161, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-10 16:55:32');
INSERT INTO `sys_logininfor` VALUES (1162, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-13 16:06:49');
INSERT INTO `sys_logininfor` VALUES (1163, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 08:51:23');
INSERT INTO `sys_logininfor` VALUES (1164, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-14 09:55:26');
INSERT INTO `sys_logininfor` VALUES (1165, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-15 19:50:27');
INSERT INTO `sys_logininfor` VALUES (1166, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-16 11:20:19');
INSERT INTO `sys_logininfor` VALUES (1167, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-16 11:20:34');
INSERT INTO `sys_logininfor` VALUES (1168, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-16 11:21:12');
INSERT INTO `sys_logininfor` VALUES (1169, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-16 11:59:31');
INSERT INTO `sys_logininfor` VALUES (1170, 'admin', '112.26.168.227', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2020-04-16 18:12:42');
INSERT INTO `sys_logininfor` VALUES (1171, 'admin', '112.26.168.227', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-04-16 18:12:50');
INSERT INTO `sys_logininfor` VALUES (1172, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-21 16:37:09');
INSERT INTO `sys_logininfor` VALUES (1173, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-21 17:38:44');
INSERT INTO `sys_logininfor` VALUES (1174, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-22 08:38:19');
INSERT INTO `sys_logininfor` VALUES (1175, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-22 09:55:50');
INSERT INTO `sys_logininfor` VALUES (1176, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-22 11:28:06');
INSERT INTO `sys_logininfor` VALUES (1177, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2020-04-22 14:31:28');
INSERT INTO `sys_logininfor` VALUES (1178, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-22 14:31:30');
INSERT INTO `sys_logininfor` VALUES (1179, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-23 09:00:30');
INSERT INTO `sys_logininfor` VALUES (1180, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-23 11:51:51');
INSERT INTO `sys_logininfor` VALUES (1181, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-26 15:07:57');
INSERT INTO `sys_logininfor` VALUES (1182, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-26 15:35:11');
INSERT INTO `sys_logininfor` VALUES (1183, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-27 11:44:11');
INSERT INTO `sys_logininfor` VALUES (1184, '崔静', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-04-27 11:44:17');
INSERT INTO `sys_logininfor` VALUES (1185, '10001', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-04-27 11:44:21');
INSERT INTO `sys_logininfor` VALUES (1186, '100001', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-04-27 11:44:24');
INSERT INTO `sys_logininfor` VALUES (1187, '1001', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-27 11:44:28');
INSERT INTO `sys_logininfor` VALUES (1188, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-27 17:08:33');
INSERT INTO `sys_logininfor` VALUES (1189, '1003', '112.26.168.227', '安徽 合肥', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-04-27 17:29:17');
INSERT INTO `sys_logininfor` VALUES (1190, '1003', '112.26.168.227', '安徽 合肥', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-04-27 17:29:57');
INSERT INTO `sys_logininfor` VALUES (1191, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2020-04-27 17:29:59');
INSERT INTO `sys_logininfor` VALUES (1192, 'admin', '112.26.168.227', '未知', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误2次', '2020-04-27 17:30:08');
INSERT INTO `sys_logininfor` VALUES (1193, 'admin', '112.26.168.227', '安徽 合肥', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-04-27 17:30:11');
INSERT INTO `sys_logininfor` VALUES (1194, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-04-28 16:19:10');
INSERT INTO `sys_logininfor` VALUES (1195, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-30 16:59:38');
INSERT INTO `sys_logininfor` VALUES (1196, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-06 14:00:07');
INSERT INTO `sys_logininfor` VALUES (1197, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-08 11:52:50');
INSERT INTO `sys_logininfor` VALUES (1198, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-05-08 15:21:44');
INSERT INTO `sys_logininfor` VALUES (1199, '1001', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-08 15:21:49');
INSERT INTO `sys_logininfor` VALUES (1200, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-09 14:55:59');
INSERT INTO `sys_logininfor` VALUES (1201, 'admin', '223.246.132.37', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-13 14:52:37');
INSERT INTO `sys_logininfor` VALUES (1202, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-13 15:26:25');
INSERT INTO `sys_logininfor` VALUES (1203, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-05-13 16:55:04');
INSERT INTO `sys_logininfor` VALUES (1204, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-05-13 16:55:46');
INSERT INTO `sys_logininfor` VALUES (1205, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2020-05-13 16:55:48');
INSERT INTO `sys_logininfor` VALUES (1206, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-13 16:55:58');
INSERT INTO `sys_logininfor` VALUES (1207, '341225200412072742', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-14 11:06:56');
INSERT INTO `sys_logininfor` VALUES (1208, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-05-14 11:08:58');
INSERT INTO `sys_logininfor` VALUES (1209, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-05-14 11:09:25');
INSERT INTO `sys_logininfor` VALUES (1210, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2020-05-14 11:09:38');
INSERT INTO `sys_logininfor` VALUES (1211, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-14 11:09:54');
INSERT INTO `sys_logininfor` VALUES (1212, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-05-14 11:18:38');
INSERT INTO `sys_logininfor` VALUES (1213, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-14 11:18:43');
INSERT INTO `sys_logininfor` VALUES (1214, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-15 14:26:19');
INSERT INTO `sys_logininfor` VALUES (1215, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-05-15 14:26:59');
INSERT INTO `sys_logininfor` VALUES (1216, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-15 14:27:32');
INSERT INTO `sys_logininfor` VALUES (1217, 'admin', '112.32.25.170', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-05-18 22:37:50');
INSERT INTO `sys_logininfor` VALUES (1218, 'admin', '112.32.25.170', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-18 22:37:53');
INSERT INTO `sys_logininfor` VALUES (1219, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-19 10:59:48');
INSERT INTO `sys_logininfor` VALUES (1220, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-19 11:01:02');
INSERT INTO `sys_logininfor` VALUES (1221, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-19 11:05:58');
INSERT INTO `sys_logininfor` VALUES (1222, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-21 09:17:06');
INSERT INTO `sys_logininfor` VALUES (1223, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-05-23 14:11:43');
INSERT INTO `sys_logininfor` VALUES (1224, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-25 16:41:25');
INSERT INTO `sys_logininfor` VALUES (1225, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-05-25 16:45:30');
INSERT INTO `sys_logininfor` VALUES (1226, '1018', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-25 16:45:43');
INSERT INTO `sys_logininfor` VALUES (1227, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-26 16:01:06');
INSERT INTO `sys_logininfor` VALUES (1228, 'admin', '36.5.152.147', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-28 01:21:25');
INSERT INTO `sys_logininfor` VALUES (1229, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-05-28 16:37:56');
INSERT INTO `sys_logininfor` VALUES (1230, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-01 08:47:06');
INSERT INTO `sys_logininfor` VALUES (1231, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-01 16:31:46');
INSERT INTO `sys_logininfor` VALUES (1232, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 11:54:33');
INSERT INTO `sys_logininfor` VALUES (1233, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 11:55:02');
INSERT INTO `sys_logininfor` VALUES (1234, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-02 14:01:32');
INSERT INTO `sys_logininfor` VALUES (1235, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 08:49:56');
INSERT INTO `sys_logininfor` VALUES (1236, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-03 15:34:48');
INSERT INTO `sys_logininfor` VALUES (1237, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-06 08:39:23');
INSERT INTO `sys_logininfor` VALUES (1238, '17718138206', '112.26.168.227', '未知', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-06-06 11:02:39');
INSERT INTO `sys_logininfor` VALUES (1239, 'admin', '112.26.168.227', '未知', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-06-06 11:02:40');
INSERT INTO `sys_logininfor` VALUES (1240, 'admin', '112.26.168.227', '未知', 'Chrome Mobile', 'Android 1.x', '0', '退出成功', '2020-06-06 11:02:48');
INSERT INTO `sys_logininfor` VALUES (1241, 'admin', '112.26.168.227', '未知', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-06-06 11:02:58');
INSERT INTO `sys_logininfor` VALUES (1242, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-06 11:03:17');
INSERT INTO `sys_logininfor` VALUES (1243, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-06 11:05:23');
INSERT INTO `sys_logininfor` VALUES (1244, 'admin', '112.26.168.227', '未知', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-06-06 11:13:16');
INSERT INTO `sys_logininfor` VALUES (1245, '18956678299', '36.61.98.214', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-06-06 16:56:07');
INSERT INTO `sys_logininfor` VALUES (1246, 'admin', '36.61.98.214', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2020-06-06 16:56:09');
INSERT INTO `sys_logininfor` VALUES (1247, 'admin', '36.61.98.214', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误2次', '2020-06-06 16:56:12');
INSERT INTO `sys_logininfor` VALUES (1248, 'admin', '36.61.98.214', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误3次', '2020-06-06 16:56:30');
INSERT INTO `sys_logininfor` VALUES (1249, 'admin', '36.61.98.214', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-06-06 16:56:33');
INSERT INTO `sys_logininfor` VALUES (1250, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-06-06 18:44:15');
INSERT INTO `sys_logininfor` VALUES (1251, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-06-06 18:44:20');
INSERT INTO `sys_logininfor` VALUES (1252, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-06 18:44:23');
INSERT INTO `sys_logininfor` VALUES (1253, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-06 18:45:34');
INSERT INTO `sys_logininfor` VALUES (1254, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-09 16:46:53');
INSERT INTO `sys_logininfor` VALUES (1255, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-06-09 16:46:54');
INSERT INTO `sys_logininfor` VALUES (1256, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-09 16:47:19');
INSERT INTO `sys_logininfor` VALUES (1257, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-10 11:27:02');
INSERT INTO `sys_logininfor` VALUES (1258, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-06-15 14:33:39');
INSERT INTO `sys_logininfor` VALUES (1259, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-15 14:33:43');
INSERT INTO `sys_logininfor` VALUES (1260, 'admin', '36.5.76.143', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-16 09:10:40');
INSERT INTO `sys_logininfor` VALUES (1261, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-16 10:05:30');
INSERT INTO `sys_logininfor` VALUES (1262, 'admin', '36.5.76.143', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-16 10:32:59');
INSERT INTO `sys_logininfor` VALUES (1263, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-16 10:53:41');
INSERT INTO `sys_logininfor` VALUES (1264, 'admin', '36.5.76.143', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-16 13:38:09');
INSERT INTO `sys_logininfor` VALUES (1265, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-17 16:55:46');
INSERT INTO `sys_logininfor` VALUES (1266, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-17 16:57:48');
INSERT INTO `sys_logininfor` VALUES (1267, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2020-06-17 17:04:51');
INSERT INTO `sys_logininfor` VALUES (1268, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2020-06-17 17:05:03');
INSERT INTO `sys_logininfor` VALUES (1269, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2020-06-17 17:05:04');
INSERT INTO `sys_logininfor` VALUES (1270, 'dzkj123', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2020-06-17 17:05:32');
INSERT INTO `sys_logininfor` VALUES (1271, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '1', '用户不存在/密码错误', '2020-06-17 17:05:49');
INSERT INTO `sys_logininfor` VALUES (1272, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-06-17 17:05:56');
INSERT INTO `sys_logininfor` VALUES (1273, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-17 17:06:08');
INSERT INTO `sys_logininfor` VALUES (1274, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-18 15:49:55');
INSERT INTO `sys_logininfor` VALUES (1275, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-06-18 17:37:39');
INSERT INTO `sys_logininfor` VALUES (1276, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-20 09:59:16');
INSERT INTO `sys_logininfor` VALUES (1277, 'admin', '36.5.155.225', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-22 16:46:06');
INSERT INTO `sys_logininfor` VALUES (1278, 'admin', '36.5.155.225', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-22 18:36:55');
INSERT INTO `sys_logininfor` VALUES (1279, 'admin', '36.5.155.47', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-06-23 10:20:02');
INSERT INTO `sys_logininfor` VALUES (1280, 'admin', '36.5.155.47', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2020-06-23 10:20:04');
INSERT INTO `sys_logininfor` VALUES (1281, 'admin', '36.5.155.47', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误2次', '2020-06-23 10:20:13');
INSERT INTO `sys_logininfor` VALUES (1282, 'admin', '36.5.155.47', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误3次', '2020-06-23 10:20:19');
INSERT INTO `sys_logininfor` VALUES (1283, 'admin', '36.5.155.47', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误4次', '2020-06-23 10:20:39');
INSERT INTO `sys_logininfor` VALUES (1284, 'admin', '36.5.155.47', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-06-23 10:20:42');
INSERT INTO `sys_logininfor` VALUES (1285, 'admin', '36.5.155.47', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-23 13:59:51');
INSERT INTO `sys_logininfor` VALUES (1286, 'admin', '36.5.155.47', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-06-23 16:55:54');
INSERT INTO `sys_logininfor` VALUES (1287, 'admin', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-06-28 15:42:28');
INSERT INTO `sys_logininfor` VALUES (1288, 'admin', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-06-28 15:47:53');
INSERT INTO `sys_logininfor` VALUES (1289, 'admin', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2020-06-28 15:49:31');
INSERT INTO `sys_logininfor` VALUES (1290, 'admin', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-06-28 15:49:40');
INSERT INTO `sys_logininfor` VALUES (1291, 'admin', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-06-28 16:07:27');
INSERT INTO `sys_logininfor` VALUES (1292, 'admin', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2020-06-28 17:27:51');
INSERT INTO `sys_logininfor` VALUES (1293, 'admin', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-06-28 17:27:55');
INSERT INTO `sys_logininfor` VALUES (1294, 'admin', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-06-28 17:29:52');
INSERT INTO `sys_logininfor` VALUES (1295, '34082620010914262x', '36.5.155.75', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-06-28 17:30:42');
INSERT INTO `sys_logininfor` VALUES (1296, '34082620010914262X', '36.5.79.219', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-06-30 10:18:56');
INSERT INTO `sys_logininfor` VALUES (1297, 'admin', '112.26.168.227', '未知', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-07-01 10:24:58');
INSERT INTO `sys_logininfor` VALUES (1298, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-02 09:30:58');
INSERT INTO `sys_logininfor` VALUES (1299, '34082620010914262X', '223.246.193.106', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-07-06 16:07:50');
INSERT INTO `sys_logininfor` VALUES (1300, 'admin', '223.246.193.106', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2020-07-06 16:07:51');
INSERT INTO `sys_logininfor` VALUES (1301, 'admin', '223.246.193.106', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-07-06 16:07:58');
INSERT INTO `sys_logininfor` VALUES (1302, 'admin', '36.5.152.224', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-07-07 08:38:52');
INSERT INTO `sys_logininfor` VALUES (1303, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-07-07 15:16:08');
INSERT INTO `sys_logininfor` VALUES (1304, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-07 15:16:13');
INSERT INTO `sys_logininfor` VALUES (1305, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-09 15:33:09');
INSERT INTO `sys_logininfor` VALUES (1306, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-09 15:34:00');
INSERT INTO `sys_logininfor` VALUES (1307, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-10 08:43:00');
INSERT INTO `sys_logininfor` VALUES (1308, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-10 10:03:20');
INSERT INTO `sys_logininfor` VALUES (1309, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-10 11:54:15');
INSERT INTO `sys_logininfor` VALUES (1310, 'admin', '36.5.155.225', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-07-10 12:55:26');
INSERT INTO `sys_logininfor` VALUES (1311, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-13 11:45:15');
INSERT INTO `sys_logininfor` VALUES (1312, 'admin', '221.178.124.226', '未知', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-07-13 12:44:22');
INSERT INTO `sys_logininfor` VALUES (1313, 'admin', '117.136.103.232', '未知', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误1次', '2020-07-13 12:44:34');
INSERT INTO `sys_logininfor` VALUES (1314, 'admin', '117.136.103.232', '未知', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-07-13 12:45:08');
INSERT INTO `sys_logininfor` VALUES (1315, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-07-16 09:28:00');
INSERT INTO `sys_logininfor` VALUES (1316, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-16 09:28:03');
INSERT INTO `sys_logininfor` VALUES (1317, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-07-17 17:44:10');
INSERT INTO `sys_logininfor` VALUES (1318, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-17 17:44:13');
INSERT INTO `sys_logininfor` VALUES (1319, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-20 09:07:24');
INSERT INTO `sys_logininfor` VALUES (1320, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-20 11:24:45');
INSERT INTO `sys_logininfor` VALUES (1321, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-21 17:34:31');
INSERT INTO `sys_logininfor` VALUES (1322, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-22 14:40:56');
INSERT INTO `sys_logininfor` VALUES (1323, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-22 16:39:15');
INSERT INTO `sys_logininfor` VALUES (1324, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-07-27 15:20:43');
INSERT INTO `sys_logininfor` VALUES (1325, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-08-01 09:07:24');
INSERT INTO `sys_logininfor` VALUES (1326, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-08-03 15:48:48');
INSERT INTO `sys_logininfor` VALUES (1327, 'admin', '36.5.79.84', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-08-25 11:50:48');
INSERT INTO `sys_logininfor` VALUES (1328, 'admin', '36.5.79.84', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2020-08-26 09:27:04');
INSERT INTO `sys_logininfor` VALUES (1329, 'admin', '36.5.79.84', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2020-08-26 09:29:10');
INSERT INTO `sys_logininfor` VALUES (1330, 'admin', '36.5.79.84', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误2次', '2020-08-26 09:29:21');
INSERT INTO `sys_logininfor` VALUES (1331, 'admin', '36.5.79.84', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误3次', '2020-08-26 09:29:26');
INSERT INTO `sys_logininfor` VALUES (1332, 'admin', '36.5.79.84', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-08-26 09:29:31');
INSERT INTO `sys_logininfor` VALUES (1333, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-09-01 14:20:46');
INSERT INTO `sys_logininfor` VALUES (1334, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-09-01 14:20:50');
INSERT INTO `sys_logininfor` VALUES (1335, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-01 14:21:13');
INSERT INTO `sys_logininfor` VALUES (1336, 'admin', '112.26.168.227, 61.129.10.43', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-09-01 14:21:56');
INSERT INTO `sys_logininfor` VALUES (1337, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-10 14:30:48');
INSERT INTO `sys_logininfor` VALUES (1338, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-09-10 14:37:55');
INSERT INTO `sys_logininfor` VALUES (1339, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-10 14:38:01');
INSERT INTO `sys_logininfor` VALUES (1340, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-11 09:04:47');
INSERT INTO `sys_logininfor` VALUES (1341, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-11 10:38:19');
INSERT INTO `sys_logininfor` VALUES (1342, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-11 11:18:06');
INSERT INTO `sys_logininfor` VALUES (1343, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-11 12:26:49');
INSERT INTO `sys_logininfor` VALUES (1344, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-11 13:58:43');
INSERT INTO `sys_logininfor` VALUES (1345, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-11 17:34:45');
INSERT INTO `sys_logininfor` VALUES (1346, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-09-23 17:07:38');
INSERT INTO `sys_logininfor` VALUES (1347, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-09-25 10:59:29');
INSERT INTO `sys_logininfor` VALUES (1348, 'admin', '112.26.168.227', '未知', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-09-28 15:38:12');
INSERT INTO `sys_logininfor` VALUES (1349, 'admin', '112.26.168.227', '未知', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-09-28 16:26:53');
INSERT INTO `sys_logininfor` VALUES (1350, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-09-28 16:31:58');
INSERT INTO `sys_logininfor` VALUES (1351, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-09-28 16:32:09');
INSERT INTO `sys_logininfor` VALUES (1352, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2020-09-28 17:13:42');
INSERT INTO `sys_logininfor` VALUES (1353, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-09-28 17:14:03');
INSERT INTO `sys_logininfor` VALUES (1354, 'admin', '112.26.168.227', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2020-09-28 17:16:51');
INSERT INTO `sys_logininfor` VALUES (1355, 'admin', '112.26.168.227', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误2次', '2020-09-28 17:16:52');
INSERT INTO `sys_logininfor` VALUES (1356, 'admin', '112.26.168.227', '未知', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2020-09-28 17:16:58');
INSERT INTO `sys_logininfor` VALUES (1357, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-09-28 17:58:01');
INSERT INTO `sys_logininfor` VALUES (1358, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-09-30 15:01:47');
INSERT INTO `sys_logininfor` VALUES (1359, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-10-09 09:14:34');
INSERT INTO `sys_logininfor` VALUES (1360, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-10-12 14:14:20');
INSERT INTO `sys_logininfor` VALUES (1361, 'admin', '39.144.35.104', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-10-13 14:29:56');
INSERT INTO `sys_logininfor` VALUES (1362, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-13 16:59:59');
INSERT INTO `sys_logininfor` VALUES (1363, 'admin', '39.144.12.86', '未知', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2020-10-13 17:03:14');
INSERT INTO `sys_logininfor` VALUES (1364, 'admin', '39.144.12.86', '未知', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-10-13 17:03:21');
INSERT INTO `sys_logininfor` VALUES (1365, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-10-13 17:07:53');
INSERT INTO `sys_logininfor` VALUES (1366, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-10-13 17:12:55');
INSERT INTO `sys_logininfor` VALUES (1367, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-13 17:45:18');
INSERT INTO `sys_logininfor` VALUES (1368, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-14 08:24:45');
INSERT INTO `sys_logininfor` VALUES (1369, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-10-14 08:48:24');
INSERT INTO `sys_logininfor` VALUES (1370, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-14 09:17:44');
INSERT INTO `sys_logininfor` VALUES (1371, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-14 09:23:05');
INSERT INTO `sys_logininfor` VALUES (1372, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-14 09:24:59');
INSERT INTO `sys_logininfor` VALUES (1373, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-14 09:28:34');
INSERT INTO `sys_logininfor` VALUES (1374, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-14 10:45:05');
INSERT INTO `sys_logininfor` VALUES (1375, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-14 10:52:17');
INSERT INTO `sys_logininfor` VALUES (1376, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-14 10:58:55');
INSERT INTO `sys_logininfor` VALUES (1377, 'admin', '112.26.168.227', '未知', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-10-14 11:01:58');
INSERT INTO `sys_logininfor` VALUES (1378, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-14 15:06:36');
INSERT INTO `sys_logininfor` VALUES (1379, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-14 15:07:04');
INSERT INTO `sys_logininfor` VALUES (1380, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-14 17:02:05');
INSERT INTO `sys_logininfor` VALUES (1381, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-15 08:37:33');
INSERT INTO `sys_logininfor` VALUES (1382, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-15 16:16:21');
INSERT INTO `sys_logininfor` VALUES (1383, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-15 16:19:57');
INSERT INTO `sys_logininfor` VALUES (1384, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-15 17:32:31');
INSERT INTO `sys_logininfor` VALUES (1385, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-15 17:41:23');
INSERT INTO `sys_logininfor` VALUES (1386, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-10-15 17:42:29');
INSERT INTO `sys_logininfor` VALUES (1387, '1001', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-15 17:42:32');
INSERT INTO `sys_logininfor` VALUES (1388, '1001', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '退出成功', '2020-10-15 17:42:45');
INSERT INTO `sys_logininfor` VALUES (1389, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-15 17:51:21');
INSERT INTO `sys_logininfor` VALUES (1390, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-15 18:01:26');
INSERT INTO `sys_logininfor` VALUES (1391, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-10-16 08:35:27');
INSERT INTO `sys_logininfor` VALUES (1392, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-16 17:38:52');
INSERT INTO `sys_logininfor` VALUES (1393, 'admin', '112.32.89.135', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 10:39:43');
INSERT INTO `sys_logininfor` VALUES (1394, 'admin', '112.32.89.135', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 11:30:37');
INSERT INTO `sys_logininfor` VALUES (1395, 'admin', '112.32.89.135', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 11:55:09');
INSERT INTO `sys_logininfor` VALUES (1396, 'admin', '112.32.89.135', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 12:00:21');
INSERT INTO `sys_logininfor` VALUES (1397, 'admin', '112.32.89.135', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-17 12:12:49');
INSERT INTO `sys_logininfor` VALUES (1398, 'admin', '112.32.89.135', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-18 01:04:23');
INSERT INTO `sys_logininfor` VALUES (1399, 'admin', '112.32.93.110', '未知', 'Chrome', 'Windows 10', '0', '登录成功', '2020-10-19 07:31:32');
INSERT INTO `sys_logininfor` VALUES (1400, 'admin', '39.144.1.18', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-10-19 19:14:32');
INSERT INTO `sys_logininfor` VALUES (1401, 'admin', '117.136.102.106', '未知', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-10-29 15:09:47');
INSERT INTO `sys_logininfor` VALUES (1402, 'admin', '112.26.168.227', '未知', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-10-30 14:35:53');
INSERT INTO `sys_logininfor` VALUES (1403, 'admin', '112.26.168.227', '未知', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-10-30 14:45:29');
INSERT INTO `sys_logininfor` VALUES (1404, 'admin', '112.26.168.227, 61.151.178.171', '内网IP', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2020-10-30 16:13:39');
INSERT INTO `sys_logininfor` VALUES (1405, 'admin', '112.26.168.227, 61.151.178.171', '内网IP', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误2次', '2020-10-30 16:13:41');
INSERT INTO `sys_logininfor` VALUES (1406, 'admin', '112.26.168.227, 61.151.178.171', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-10-30 16:14:10');
INSERT INTO `sys_logininfor` VALUES (1407, 'admin', '112.26.168.227', '未知', 'Chrome', 'Windows 7', '0', '登录成功', '2020-11-02 17:08:08');
INSERT INTO `sys_logininfor` VALUES (1408, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-03 16:04:53');
INSERT INTO `sys_logininfor` VALUES (1409, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-03 16:20:07');
INSERT INTO `sys_logininfor` VALUES (1410, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-03 16:20:13');
INSERT INTO `sys_logininfor` VALUES (1411, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-03 16:37:01');
INSERT INTO `sys_logininfor` VALUES (1412, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-03 16:37:07');
INSERT INTO `sys_logininfor` VALUES (1413, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-03 17:53:20');
INSERT INTO `sys_logininfor` VALUES (1414, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-04 08:33:14');
INSERT INTO `sys_logininfor` VALUES (1415, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-05 08:36:22');
INSERT INTO `sys_logininfor` VALUES (1416, 'admin', '192.168.1.122', '内网IP', 'Internet Explorer 11', 'Windows 10', '1', '密码输入错误1次', '2020-11-05 17:22:31');
INSERT INTO `sys_logininfor` VALUES (1417, 'admin', '192.168.1.122', '内网IP', 'Internet Explorer 11', 'Windows 10', '0', '登录成功', '2020-11-05 17:22:43');
INSERT INTO `sys_logininfor` VALUES (1418, 'admin', '192.168.1.103', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-05 17:49:56');
INSERT INTO `sys_logininfor` VALUES (1419, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:08:20');
INSERT INTO `sys_logininfor` VALUES (1420, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:09:08');
INSERT INTO `sys_logininfor` VALUES (1421, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:09:55');
INSERT INTO `sys_logininfor` VALUES (1422, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:09:57');
INSERT INTO `sys_logininfor` VALUES (1423, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:11:11');
INSERT INTO `sys_logininfor` VALUES (1424, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:11:16');
INSERT INTO `sys_logininfor` VALUES (1425, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:12:19');
INSERT INTO `sys_logininfor` VALUES (1426, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:12:20');
INSERT INTO `sys_logininfor` VALUES (1427, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:16:15');
INSERT INTO `sys_logininfor` VALUES (1428, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:16:20');
INSERT INTO `sys_logininfor` VALUES (1429, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:16:52');
INSERT INTO `sys_logininfor` VALUES (1430, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:16:54');
INSERT INTO `sys_logininfor` VALUES (1431, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:22:38');
INSERT INTO `sys_logininfor` VALUES (1432, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:26:38');
INSERT INTO `sys_logininfor` VALUES (1433, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:28:38');
INSERT INTO `sys_logininfor` VALUES (1434, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:28:43');
INSERT INTO `sys_logininfor` VALUES (1435, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:29:02');
INSERT INTO `sys_logininfor` VALUES (1436, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:29:04');
INSERT INTO `sys_logininfor` VALUES (1437, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:31:40');
INSERT INTO `sys_logininfor` VALUES (1438, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:31:45');
INSERT INTO `sys_logininfor` VALUES (1439, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:32:04');
INSERT INTO `sys_logininfor` VALUES (1440, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:32:05');
INSERT INTO `sys_logininfor` VALUES (1441, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:32:45');
INSERT INTO `sys_logininfor` VALUES (1442, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:32:52');
INSERT INTO `sys_logininfor` VALUES (1443, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:33:47');
INSERT INTO `sys_logininfor` VALUES (1444, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:33:48');
INSERT INTO `sys_logininfor` VALUES (1445, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:38:23');
INSERT INTO `sys_logininfor` VALUES (1446, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:38:29');
INSERT INTO `sys_logininfor` VALUES (1447, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 14:41:01');
INSERT INTO `sys_logininfor` VALUES (1448, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:41:02');
INSERT INTO `sys_logininfor` VALUES (1449, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 14:52:12');
INSERT INTO `sys_logininfor` VALUES (1450, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 15:29:04');
INSERT INTO `sys_logininfor` VALUES (1451, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-07 17:34:55');
INSERT INTO `sys_logininfor` VALUES (1452, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-07 17:35:00');
INSERT INTO `sys_logininfor` VALUES (1453, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 08:38:35');
INSERT INTO `sys_logininfor` VALUES (1454, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 09:04:24');
INSERT INTO `sys_logininfor` VALUES (1455, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-09 09:16:24');
INSERT INTO `sys_logininfor` VALUES (1456, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-09 09:16:26');
INSERT INTO `sys_logininfor` VALUES (1457, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 09:16:30');
INSERT INTO `sys_logininfor` VALUES (1458, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 09:27:43');
INSERT INTO `sys_logininfor` VALUES (1459, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-09 09:27:56');
INSERT INTO `sys_logininfor` VALUES (1460, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-09 09:27:58');
INSERT INTO `sys_logininfor` VALUES (1461, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 09:28:04');
INSERT INTO `sys_logininfor` VALUES (1462, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-09 09:30:35');
INSERT INTO `sys_logininfor` VALUES (1463, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 09:30:36');
INSERT INTO `sys_logininfor` VALUES (1464, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 09:40:07');
INSERT INTO `sys_logininfor` VALUES (1465, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 09:52:06');
INSERT INTO `sys_logininfor` VALUES (1466, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-09 10:09:46');
INSERT INTO `sys_logininfor` VALUES (1467, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-10 08:53:05');
INSERT INTO `sys_logininfor` VALUES (1468, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-10 08:56:31');
INSERT INTO `sys_logininfor` VALUES (1469, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-10 09:12:50');
INSERT INTO `sys_logininfor` VALUES (1470, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-10 09:15:38');
INSERT INTO `sys_logininfor` VALUES (1471, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-10 10:27:31');
INSERT INTO `sys_logininfor` VALUES (1472, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-11-10 10:27:57');
INSERT INTO `sys_logininfor` VALUES (1473, '340403200405113018', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-10 10:28:02');
INSERT INTO `sys_logininfor` VALUES (1474, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 08:50:35');
INSERT INTO `sys_logininfor` VALUES (1475, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 09:10:59');
INSERT INTO `sys_logininfor` VALUES (1476, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 09:11:15');
INSERT INTO `sys_logininfor` VALUES (1477, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 09:29:01');
INSERT INTO `sys_logininfor` VALUES (1478, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 09:49:40');
INSERT INTO `sys_logininfor` VALUES (1479, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:07:59');
INSERT INTO `sys_logininfor` VALUES (1480, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-11 10:09:51');
INSERT INTO `sys_logininfor` VALUES (1481, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-11-11 10:09:57');
INSERT INTO `sys_logininfor` VALUES (1482, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:09:59');
INSERT INTO `sys_logininfor` VALUES (1483, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:15:46');
INSERT INTO `sys_logininfor` VALUES (1484, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:17:29');
INSERT INTO `sys_logininfor` VALUES (1485, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-11 10:18:02');
INSERT INTO `sys_logininfor` VALUES (1486, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:18:04');
INSERT INTO `sys_logininfor` VALUES (1487, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:26:33');
INSERT INTO `sys_logininfor` VALUES (1488, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:28:15');
INSERT INTO `sys_logininfor` VALUES (1489, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:44:22');
INSERT INTO `sys_logininfor` VALUES (1490, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:44:25');
INSERT INTO `sys_logininfor` VALUES (1491, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 10:46:43');
INSERT INTO `sys_logininfor` VALUES (1492, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:19:14');
INSERT INTO `sys_logininfor` VALUES (1493, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:22:45');
INSERT INTO `sys_logininfor` VALUES (1494, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:28:56');
INSERT INTO `sys_logininfor` VALUES (1495, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:30:41');
INSERT INTO `sys_logininfor` VALUES (1496, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:34:22');
INSERT INTO `sys_logininfor` VALUES (1497, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:49:33');
INSERT INTO `sys_logininfor` VALUES (1498, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:52:41');
INSERT INTO `sys_logininfor` VALUES (1499, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:56:06');
INSERT INTO `sys_logininfor` VALUES (1500, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 11:59:29');
INSERT INTO `sys_logininfor` VALUES (1501, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:10:27');
INSERT INTO `sys_logininfor` VALUES (1502, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:23:30');
INSERT INTO `sys_logininfor` VALUES (1503, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:30:33');
INSERT INTO `sys_logininfor` VALUES (1504, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:39:21');
INSERT INTO `sys_logininfor` VALUES (1505, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:42:46');
INSERT INTO `sys_logininfor` VALUES (1506, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:46:28');
INSERT INTO `sys_logininfor` VALUES (1507, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:51:11');
INSERT INTO `sys_logininfor` VALUES (1508, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:52:53');
INSERT INTO `sys_logininfor` VALUES (1509, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 14:59:11');
INSERT INTO `sys_logininfor` VALUES (1510, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 15:02:27');
INSERT INTO `sys_logininfor` VALUES (1511, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 15:08:39');
INSERT INTO `sys_logininfor` VALUES (1512, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 15:26:33');
INSERT INTO `sys_logininfor` VALUES (1513, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 15:54:48');
INSERT INTO `sys_logininfor` VALUES (1514, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 15:57:18');
INSERT INTO `sys_logininfor` VALUES (1515, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 16:12:02');
INSERT INTO `sys_logininfor` VALUES (1516, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 16:22:42');
INSERT INTO `sys_logininfor` VALUES (1517, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 16:33:20');
INSERT INTO `sys_logininfor` VALUES (1518, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-11 16:38:11');
INSERT INTO `sys_logininfor` VALUES (1519, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 11:16:33');
INSERT INTO `sys_logininfor` VALUES (1520, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 11:22:07');
INSERT INTO `sys_logininfor` VALUES (1521, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 11:43:35');
INSERT INTO `sys_logininfor` VALUES (1522, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 11:47:14');
INSERT INTO `sys_logininfor` VALUES (1523, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 14:15:27');
INSERT INTO `sys_logininfor` VALUES (1524, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 14:26:48');
INSERT INTO `sys_logininfor` VALUES (1525, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 16:19:46');
INSERT INTO `sys_logininfor` VALUES (1526, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 16:21:09');
INSERT INTO `sys_logininfor` VALUES (1527, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-19 17:15:53');
INSERT INTO `sys_logininfor` VALUES (1528, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-26 14:01:54');
INSERT INTO `sys_logininfor` VALUES (1529, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-11-26 14:02:52');
INSERT INTO `sys_logininfor` VALUES (1530, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-11-26 14:14:41');
INSERT INTO `sys_logininfor` VALUES (1531, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-26 14:14:51');
INSERT INTO `sys_logininfor` VALUES (1532, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-26 14:46:09');
INSERT INTO `sys_logininfor` VALUES (1533, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-11-27 10:31:26');
INSERT INTO `sys_logininfor` VALUES (1534, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-11-27 10:31:31');
INSERT INTO `sys_logininfor` VALUES (1535, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2020-11-27 10:31:36');
INSERT INTO `sys_logininfor` VALUES (1536, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-11-27 10:46:40');
INSERT INTO `sys_logininfor` VALUES (1537, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-11-27 10:46:43');
INSERT INTO `sys_logininfor` VALUES (1538, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-27 10:46:48');
INSERT INTO `sys_logininfor` VALUES (1539, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-27 16:53:15');
INSERT INTO `sys_logininfor` VALUES (1540, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-30 08:53:55');
INSERT INTO `sys_logininfor` VALUES (1541, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2020-11-30 08:54:08');
INSERT INTO `sys_logininfor` VALUES (1542, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-30 08:54:17');
INSERT INTO `sys_logininfor` VALUES (1543, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-30 08:59:51');
INSERT INTO `sys_logininfor` VALUES (1544, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-11-30 10:31:46');
INSERT INTO `sys_logininfor` VALUES (1545, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-11-30 10:31:49');
INSERT INTO `sys_logininfor` VALUES (1546, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-30 10:31:52');
INSERT INTO `sys_logininfor` VALUES (1547, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-11-30 10:49:34');
INSERT INTO `sys_logininfor` VALUES (1548, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-11-30 10:49:39');
INSERT INTO `sys_logininfor` VALUES (1549, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2020-11-30 10:51:12');
INSERT INTO `sys_logininfor` VALUES (1550, '360122200212256926', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2020-11-30 10:51:35');
INSERT INTO `sys_logininfor` VALUES (1551, '360122200212256926', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2020-11-30 10:51:41');
INSERT INTO `sys_logininfor` VALUES (1552, '360122200212256926jz', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2020-11-30 10:51:49');
INSERT INTO `sys_logininfor` VALUES (1553, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-30 15:16:42');
INSERT INTO `sys_logininfor` VALUES (1554, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-30 15:17:43');
INSERT INTO `sys_logininfor` VALUES (1555, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-30 15:17:49');
INSERT INTO `sys_logininfor` VALUES (1556, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-30 15:20:48');
INSERT INTO `sys_logininfor` VALUES (1557, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-30 15:20:56');
INSERT INTO `sys_logininfor` VALUES (1558, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-11-30 16:16:45');
INSERT INTO `sys_logininfor` VALUES (1559, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-11-30 16:16:53');
INSERT INTO `sys_logininfor` VALUES (1560, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-30 16:27:21');
INSERT INTO `sys_logininfor` VALUES (1561, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-30 16:27:30');
INSERT INTO `sys_logininfor` VALUES (1562, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '退出成功', '2020-11-30 16:28:39');
INSERT INTO `sys_logininfor` VALUES (1563, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-30 16:28:43');
INSERT INTO `sys_logininfor` VALUES (1564, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-30 16:39:51');
INSERT INTO `sys_logininfor` VALUES (1565, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-30 16:56:15');
INSERT INTO `sys_logininfor` VALUES (1566, '1139', '127.0.0.1', '内网IP', 'Firefox 8', 'Windows 10', '0', '登录成功', '2020-11-30 17:03:43');
INSERT INTO `sys_logininfor` VALUES (1567, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-03 15:05:45');
INSERT INTO `sys_logininfor` VALUES (1568, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 09:08:35');
INSERT INTO `sys_logininfor` VALUES (1569, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:32:01');
INSERT INTO `sys_logininfor` VALUES (1570, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:33:47');
INSERT INTO `sys_logininfor` VALUES (1571, 'admin', '192.168.1.117', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-28 14:48:23');
INSERT INTO `sys_logininfor` VALUES (1572, 'admin', '192.168.1.117', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:48:31');
INSERT INTO `sys_logininfor` VALUES (1573, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:49:22');
INSERT INTO `sys_logininfor` VALUES (1574, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 16:31:05');
INSERT INTO `sys_logininfor` VALUES (1575, 'admin', '192.168.1.117', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-28 17:00:56');
INSERT INTO `sys_logininfor` VALUES (1576, 'admin', '192.168.1.117', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 17:01:11');
INSERT INTO `sys_logininfor` VALUES (1577, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-12-29 09:54:07');
INSERT INTO `sys_logininfor` VALUES (1578, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 09:54:10');
INSERT INTO `sys_logininfor` VALUES (1579, 'admin', '192.168.1.150', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-30 09:30:22');
INSERT INTO `sys_logininfor` VALUES (1580, 'admin', '192.168.1.131', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-31 14:45:24');
INSERT INTO `sys_logininfor` VALUES (1581, 'admin', '192.168.1.131', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-31 14:46:32');
INSERT INTO `sys_logininfor` VALUES (1582, 'admin', '192.168.1.122', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-12-31 14:56:57');
INSERT INTO `sys_logininfor` VALUES (1583, 'admin', '192.168.1.122', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-12-31 14:57:00');
INSERT INTO `sys_logininfor` VALUES (1584, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 14:39:46');
INSERT INTO `sys_logininfor` VALUES (1585, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 14:48:56');
INSERT INTO `sys_logininfor` VALUES (1586, 'admin', '223.104.37.171', '未知', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2021-01-12 14:49:33');
INSERT INTO `sys_logininfor` VALUES (1587, 'admin', '112.26.168.227', '未知', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-12 14:52:54');
INSERT INTO `sys_logininfor` VALUES (1588, 'admin', '223.104.37.171', '未知', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2021-01-12 14:55:05');
INSERT INTO `sys_logininfor` VALUES (1589, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-04 09:53:09');
INSERT INTO `sys_logininfor` VALUES (1590, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2021-04-12 16:44:40');
INSERT INTO `sys_logininfor` VALUES (1591, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-04-12 16:44:45');
INSERT INTO `sys_logininfor` VALUES (1592, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-12 21:34:17');
INSERT INTO `sys_logininfor` VALUES (1593, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-12 22:14:54');
INSERT INTO `sys_logininfor` VALUES (1594, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-13 20:40:06');
INSERT INTO `sys_logininfor` VALUES (1595, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-04-13 20:40:10');
INSERT INTO `sys_logininfor` VALUES (1596, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 20:40:15');
INSERT INTO `sys_logininfor` VALUES (1597, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:03:56');
INSERT INTO `sys_logininfor` VALUES (1598, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:12:52');
INSERT INTO `sys_logininfor` VALUES (1599, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-13 21:13:35');
INSERT INTO `sys_logininfor` VALUES (1600, 'js1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-13 21:13:40');
INSERT INTO `sys_logininfor` VALUES (1601, 'js1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:13:44');
INSERT INTO `sys_logininfor` VALUES (1602, 'js1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:24:50');
INSERT INTO `sys_logininfor` VALUES (1603, 'js1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:28:56');
INSERT INTO `sys_logininfor` VALUES (1604, 'js1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:34:17');
INSERT INTO `sys_logininfor` VALUES (1605, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-13 21:36:37');
INSERT INTO `sys_logininfor` VALUES (1606, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:36:41');
INSERT INTO `sys_logininfor` VALUES (1607, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-13 21:43:28');
INSERT INTO `sys_logininfor` VALUES (1608, 'js12', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:43:34');
INSERT INTO `sys_logininfor` VALUES (1609, 'js12', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-13 21:43:54');
INSERT INTO `sys_logininfor` VALUES (1610, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-13 21:43:59');
INSERT INTO `sys_logininfor` VALUES (1611, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-04-13 21:44:02');
INSERT INTO `sys_logininfor` VALUES (1612, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误3次', '2021-04-13 21:44:07');
INSERT INTO `sys_logininfor` VALUES (1613, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误4次', '2021-04-13 21:44:11');
INSERT INTO `sys_logininfor` VALUES (1614, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误5次', '2021-04-13 21:45:06');
INSERT INTO `sys_logininfor` VALUES (1615, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-13 21:45:31');
INSERT INTO `sys_logininfor` VALUES (1616, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:45:37');
INSERT INTO `sys_logininfor` VALUES (1617, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-13 21:45:54');
INSERT INTO `sys_logininfor` VALUES (1618, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2021-04-13 21:46:00');
INSERT INTO `sys_logininfor` VALUES (1619, 'js12', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:51:37');
INSERT INTO `sys_logininfor` VALUES (1620, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:53:02');
INSERT INTO `sys_logininfor` VALUES (1621, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 21:54:52');
INSERT INTO `sys_logininfor` VALUES (1622, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-13 21:59:57');
INSERT INTO `sys_logininfor` VALUES (1623, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-13 22:00:02');
INSERT INTO `sys_logininfor` VALUES (1624, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-04-13 22:00:10');
INSERT INTO `sys_logininfor` VALUES (1625, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 22:00:13');
INSERT INTO `sys_logininfor` VALUES (1626, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-13 22:00:34');
INSERT INTO `sys_logininfor` VALUES (1627, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 22:02:17');
INSERT INTO `sys_logininfor` VALUES (1628, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 22:07:15');
INSERT INTO `sys_logininfor` VALUES (1629, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 22:09:32');
INSERT INTO `sys_logininfor` VALUES (1630, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-13 22:10:15');
INSERT INTO `sys_logininfor` VALUES (1631, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-13 22:19:49');
INSERT INTO `sys_logininfor` VALUES (1632, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-13 22:19:52');
INSERT INTO `sys_logininfor` VALUES (1633, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 09:39:46');
INSERT INTO `sys_logininfor` VALUES (1634, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 14:11:11');
INSERT INTO `sys_logininfor` VALUES (1635, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-14 14:13:44');
INSERT INTO `sys_logininfor` VALUES (1636, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-14 14:15:13');
INSERT INTO `sys_logininfor` VALUES (1637, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-04-14 14:15:18');
INSERT INTO `sys_logininfor` VALUES (1638, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误3次', '2021-04-14 14:16:05');
INSERT INTO `sys_logininfor` VALUES (1639, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误4次', '2021-04-14 14:16:11');
INSERT INTO `sys_logininfor` VALUES (1640, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 14:16:19');
INSERT INTO `sys_logininfor` VALUES (1641, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-14 14:16:40');
INSERT INTO `sys_logininfor` VALUES (1642, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 14:16:47');
INSERT INTO `sys_logininfor` VALUES (1643, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 14:20:45');
INSERT INTO `sys_logininfor` VALUES (1644, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-14 14:24:27');
INSERT INTO `sys_logininfor` VALUES (1645, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 14:24:31');
INSERT INTO `sys_logininfor` VALUES (1646, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-14 14:29:19');
INSERT INTO `sys_logininfor` VALUES (1647, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 14:29:24');
INSERT INTO `sys_logininfor` VALUES (1648, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 14:32:33');
INSERT INTO `sys_logininfor` VALUES (1649, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-14 14:35:50');
INSERT INTO `sys_logininfor` VALUES (1650, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 14:35:54');
INSERT INTO `sys_logininfor` VALUES (1651, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-14 15:15:14');
INSERT INTO `sys_logininfor` VALUES (1652, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-04-14 15:15:18');
INSERT INTO `sys_logininfor` VALUES (1653, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 15:15:21');
INSERT INTO `sys_logininfor` VALUES (1654, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 15:22:23');
INSERT INTO `sys_logininfor` VALUES (1655, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 15:32:17');
INSERT INTO `sys_logininfor` VALUES (1656, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-14 15:58:49');
INSERT INTO `sys_logininfor` VALUES (1657, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 15:58:55');
INSERT INTO `sys_logininfor` VALUES (1658, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-14 16:15:22');
INSERT INTO `sys_logininfor` VALUES (1659, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 16:15:28');
INSERT INTO `sys_logininfor` VALUES (1660, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 16:35:06');
INSERT INTO `sys_logininfor` VALUES (1661, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-14 16:38:53');
INSERT INTO `sys_logininfor` VALUES (1662, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-14 16:38:56');
INSERT INTO `sys_logininfor` VALUES (1663, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 16:39:27');
INSERT INTO `sys_logininfor` VALUES (1664, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-14 16:40:51');
INSERT INTO `sys_logininfor` VALUES (1665, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-14 16:41:19');
INSERT INTO `sys_logininfor` VALUES (1666, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 21:11:45');
INSERT INTO `sys_logininfor` VALUES (1667, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 22:41:19');
INSERT INTO `sys_logininfor` VALUES (1668, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-14 22:46:36');
INSERT INTO `sys_logininfor` VALUES (1669, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 22:46:42');
INSERT INTO `sys_logininfor` VALUES (1670, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-14 22:46:49');
INSERT INTO `sys_logininfor` VALUES (1671, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 22:46:55');
INSERT INTO `sys_logininfor` VALUES (1672, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-14 22:47:15');
INSERT INTO `sys_logininfor` VALUES (1673, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 22:47:22');
INSERT INTO `sys_logininfor` VALUES (1674, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 22:51:19');
INSERT INTO `sys_logininfor` VALUES (1675, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:05:07');
INSERT INTO `sys_logininfor` VALUES (1676, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:12:46');
INSERT INTO `sys_logininfor` VALUES (1677, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:17:29');
INSERT INTO `sys_logininfor` VALUES (1678, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-14 23:21:59');
INSERT INTO `sys_logininfor` VALUES (1679, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:22:05');
INSERT INTO `sys_logininfor` VALUES (1680, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:27:38');
INSERT INTO `sys_logininfor` VALUES (1681, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:34:57');
INSERT INTO `sys_logininfor` VALUES (1682, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:35:30');
INSERT INTO `sys_logininfor` VALUES (1683, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:44:58');
INSERT INTO `sys_logininfor` VALUES (1684, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-14 23:48:54');
INSERT INTO `sys_logininfor` VALUES (1685, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-15 21:50:04');
INSERT INTO `sys_logininfor` VALUES (1686, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-15 22:02:46');
INSERT INTO `sys_logininfor` VALUES (1687, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-15 22:03:00');
INSERT INTO `sys_logininfor` VALUES (1688, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-15 22:03:07');
INSERT INTO `sys_logininfor` VALUES (1689, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-15 22:09:09');
INSERT INTO `sys_logininfor` VALUES (1690, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-15 22:12:43');
INSERT INTO `sys_logininfor` VALUES (1691, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-15 22:16:39');
INSERT INTO `sys_logininfor` VALUES (1692, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-15 22:16:49');
INSERT INTO `sys_logininfor` VALUES (1693, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-15 22:17:36');
INSERT INTO `sys_logininfor` VALUES (1694, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-15 22:17:41');
INSERT INTO `sys_logininfor` VALUES (1695, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-15 22:19:56');
INSERT INTO `sys_logininfor` VALUES (1696, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 14:47:43');
INSERT INTO `sys_logininfor` VALUES (1697, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 14:50:13');
INSERT INTO `sys_logininfor` VALUES (1698, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-16 14:50:19');
INSERT INTO `sys_logininfor` VALUES (1699, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-04-16 14:50:23');
INSERT INTO `sys_logininfor` VALUES (1700, 'cj1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-04-16 14:50:27');
INSERT INTO `sys_logininfor` VALUES (1701, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 14:50:33');
INSERT INTO `sys_logininfor` VALUES (1702, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 14:50:54');
INSERT INTO `sys_logininfor` VALUES (1703, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 14:51:01');
INSERT INTO `sys_logininfor` VALUES (1704, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 15:00:35');
INSERT INTO `sys_logininfor` VALUES (1705, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 15:00:40');
INSERT INTO `sys_logininfor` VALUES (1706, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 15:01:37');
INSERT INTO `sys_logininfor` VALUES (1707, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-16 15:01:42');
INSERT INTO `sys_logininfor` VALUES (1708, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 15:01:46');
INSERT INTO `sys_logininfor` VALUES (1709, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 15:06:54');
INSERT INTO `sys_logininfor` VALUES (1710, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 15:09:28');
INSERT INTO `sys_logininfor` VALUES (1711, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 15:09:38');
INSERT INTO `sys_logininfor` VALUES (1712, 'cj12', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-16 15:09:43');
INSERT INTO `sys_logininfor` VALUES (1713, 'cj12', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-04-16 15:09:48');
INSERT INTO `sys_logininfor` VALUES (1714, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 15:09:56');
INSERT INTO `sys_logininfor` VALUES (1715, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 15:10:12');
INSERT INTO `sys_logininfor` VALUES (1716, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 16:29:45');
INSERT INTO `sys_logininfor` VALUES (1717, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 16:31:41');
INSERT INTO `sys_logininfor` VALUES (1718, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-16 16:37:20');
INSERT INTO `sys_logininfor` VALUES (1719, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 16:37:27');
INSERT INTO `sys_logininfor` VALUES (1720, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 16:41:01');
INSERT INTO `sys_logininfor` VALUES (1721, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-16 16:41:07');
INSERT INTO `sys_logininfor` VALUES (1722, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-16 16:41:09');
INSERT INTO `sys_logininfor` VALUES (1723, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-16 16:42:01');
INSERT INTO `sys_logininfor` VALUES (1724, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-16 23:38:32');
INSERT INTO `sys_logininfor` VALUES (1725, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-16 23:41:38');
INSERT INTO `sys_logininfor` VALUES (1726, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-16 23:41:43');
INSERT INTO `sys_logininfor` VALUES (1727, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-16 23:45:50');
INSERT INTO `sys_logininfor` VALUES (1728, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-16 23:48:43');
INSERT INTO `sys_logininfor` VALUES (1729, 'jl12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-16 23:48:50');
INSERT INTO `sys_logininfor` VALUES (1730, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 09:36:26');
INSERT INTO `sys_logininfor` VALUES (1731, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 09:44:21');
INSERT INTO `sys_logininfor` VALUES (1732, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 09:44:28');
INSERT INTO `sys_logininfor` VALUES (1733, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 09:47:26');
INSERT INTO `sys_logininfor` VALUES (1734, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 09:48:30');
INSERT INTO `sys_logininfor` VALUES (1735, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 09:51:23');
INSERT INTO `sys_logininfor` VALUES (1736, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 10:15:53');
INSERT INTO `sys_logininfor` VALUES (1737, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 11:26:29');
INSERT INTO `sys_logininfor` VALUES (1738, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 11:28:09');
INSERT INTO `sys_logininfor` VALUES (1739, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 11:28:27');
INSERT INTO `sys_logininfor` VALUES (1740, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 11:29:54');
INSERT INTO `sys_logininfor` VALUES (1741, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 11:30:00');
INSERT INTO `sys_logininfor` VALUES (1742, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 11:30:22');
INSERT INTO `sys_logininfor` VALUES (1743, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 11:30:27');
INSERT INTO `sys_logininfor` VALUES (1744, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 11:31:04');
INSERT INTO `sys_logininfor` VALUES (1745, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 11:36:40');
INSERT INTO `sys_logininfor` VALUES (1746, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 11:40:06');
INSERT INTO `sys_logininfor` VALUES (1747, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 11:40:16');
INSERT INTO `sys_logininfor` VALUES (1748, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 11:47:58');
INSERT INTO `sys_logininfor` VALUES (1749, 'cj12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '1', '密码输入错误1次', '2021-04-17 11:48:03');
INSERT INTO `sys_logininfor` VALUES (1750, 'cj12', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '1', '密码输入错误2次', '2021-04-17 11:48:08');
INSERT INTO `sys_logininfor` VALUES (1751, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 11:48:18');
INSERT INTO `sys_logininfor` VALUES (1752, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 11:49:29');
INSERT INTO `sys_logininfor` VALUES (1753, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 12:27:11');
INSERT INTO `sys_logininfor` VALUES (1754, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 12:31:52');
INSERT INTO `sys_logininfor` VALUES (1755, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 12:31:58');
INSERT INTO `sys_logininfor` VALUES (1756, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 12:32:30');
INSERT INTO `sys_logininfor` VALUES (1757, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 12:34:21');
INSERT INTO `sys_logininfor` VALUES (1758, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 12:41:44');
INSERT INTO `sys_logininfor` VALUES (1759, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 12:41:51');
INSERT INTO `sys_logininfor` VALUES (1760, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 12:42:43');
INSERT INTO `sys_logininfor` VALUES (1761, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 13:56:28');
INSERT INTO `sys_logininfor` VALUES (1762, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 14:00:59');
INSERT INTO `sys_logininfor` VALUES (1763, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 14:01:06');
INSERT INTO `sys_logininfor` VALUES (1764, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '退出成功', '2021-04-17 14:03:48');
INSERT INTO `sys_logininfor` VALUES (1765, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2021-04-17 14:03:54');
INSERT INTO `sys_logininfor` VALUES (1766, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 17:18:43');
INSERT INTO `sys_logininfor` VALUES (1767, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 17:23:28');
INSERT INTO `sys_logininfor` VALUES (1768, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 17:23:32');
INSERT INTO `sys_logininfor` VALUES (1769, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 17:25:11');
INSERT INTO `sys_logininfor` VALUES (1770, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 17:25:47');
INSERT INTO `sys_logininfor` VALUES (1771, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 17:25:55');
INSERT INTO `sys_logininfor` VALUES (1772, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 17:26:52');
INSERT INTO `sys_logininfor` VALUES (1773, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 17:26:56');
INSERT INTO `sys_logininfor` VALUES (1774, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 17:28:16');
INSERT INTO `sys_logininfor` VALUES (1775, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 17:28:21');
INSERT INTO `sys_logininfor` VALUES (1776, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 18:29:57');
INSERT INTO `sys_logininfor` VALUES (1777, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 18:33:12');
INSERT INTO `sys_logininfor` VALUES (1778, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 18:33:18');
INSERT INTO `sys_logininfor` VALUES (1779, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 18:36:27');
INSERT INTO `sys_logininfor` VALUES (1780, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 18:37:55');
INSERT INTO `sys_logininfor` VALUES (1781, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 18:38:10');
INSERT INTO `sys_logininfor` VALUES (1782, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 18:41:41');
INSERT INTO `sys_logininfor` VALUES (1783, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 18:41:48');
INSERT INTO `sys_logininfor` VALUES (1784, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 18:43:59');
INSERT INTO `sys_logininfor` VALUES (1785, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-17 18:44:06');
INSERT INTO `sys_logininfor` VALUES (1786, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-17 18:44:35');
INSERT INTO `sys_logininfor` VALUES (1787, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 01:43:36');
INSERT INTO `sys_logininfor` VALUES (1788, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 01:48:32');
INSERT INTO `sys_logininfor` VALUES (1789, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 01:48:53');
INSERT INTO `sys_logininfor` VALUES (1790, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 01:49:26');
INSERT INTO `sys_logininfor` VALUES (1791, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 01:49:32');
INSERT INTO `sys_logininfor` VALUES (1792, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 01:49:56');
INSERT INTO `sys_logininfor` VALUES (1793, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 01:50:01');
INSERT INTO `sys_logininfor` VALUES (1794, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 01:53:34');
INSERT INTO `sys_logininfor` VALUES (1795, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 14:30:54');
INSERT INTO `sys_logininfor` VALUES (1796, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 14:32:59');
INSERT INTO `sys_logininfor` VALUES (1797, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 14:33:07');
INSERT INTO `sys_logininfor` VALUES (1798, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 14:34:14');
INSERT INTO `sys_logininfor` VALUES (1799, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 14:35:50');
INSERT INTO `sys_logininfor` VALUES (1800, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 14:38:42');
INSERT INTO `sys_logininfor` VALUES (1801, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 14:39:04');
INSERT INTO `sys_logininfor` VALUES (1802, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 14:39:10');
INSERT INTO `sys_logininfor` VALUES (1803, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-18 15:05:18');
INSERT INTO `sys_logininfor` VALUES (1804, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:05:22');
INSERT INTO `sys_logininfor` VALUES (1805, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 15:07:29');
INSERT INTO `sys_logininfor` VALUES (1806, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:07:34');
INSERT INTO `sys_logininfor` VALUES (1807, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 15:08:09');
INSERT INTO `sys_logininfor` VALUES (1808, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:08:15');
INSERT INTO `sys_logininfor` VALUES (1809, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:21:24');
INSERT INTO `sys_logininfor` VALUES (1810, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 15:24:36');
INSERT INTO `sys_logininfor` VALUES (1811, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:24:41');
INSERT INTO `sys_logininfor` VALUES (1812, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 15:25:13');
INSERT INTO `sys_logininfor` VALUES (1813, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-04-18 15:25:19');
INSERT INTO `sys_logininfor` VALUES (1814, 'js11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:25:22');
INSERT INTO `sys_logininfor` VALUES (1815, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:52:13');
INSERT INTO `sys_logininfor` VALUES (1816, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 15:58:12');
INSERT INTO `sys_logininfor` VALUES (1817, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:58:17');
INSERT INTO `sys_logininfor` VALUES (1818, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 15:59:36');
INSERT INTO `sys_logininfor` VALUES (1819, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 16:03:01');
INSERT INTO `sys_logininfor` VALUES (1820, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 16:04:26');
INSERT INTO `sys_logininfor` VALUES (1821, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 16:04:56');
INSERT INTO `sys_logininfor` VALUES (1822, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 16:05:01');
INSERT INTO `sys_logininfor` VALUES (1823, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 16:17:44');
INSERT INTO `sys_logininfor` VALUES (1824, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 16:20:53');
INSERT INTO `sys_logininfor` VALUES (1825, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 16:20:58');
INSERT INTO `sys_logininfor` VALUES (1826, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 16:21:30');
INSERT INTO `sys_logininfor` VALUES (1827, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 16:21:34');
INSERT INTO `sys_logininfor` VALUES (1828, 'cj11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-18 16:21:47');
INSERT INTO `sys_logininfor` VALUES (1829, 'jl11', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-18 16:21:51');
INSERT INTO `sys_logininfor` VALUES (1830, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-26 20:23:21');
INSERT INTO `sys_logininfor` VALUES (1831, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-01 03:59:22');
INSERT INTO `sys_logininfor` VALUES (1832, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-01 23:08:12');
INSERT INTO `sys_logininfor` VALUES (1833, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-01 23:36:53');
INSERT INTO `sys_logininfor` VALUES (1834, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-02 00:24:42');
INSERT INTO `sys_logininfor` VALUES (1835, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '退出成功', '2021-05-02 00:30:29');
INSERT INTO `sys_logininfor` VALUES (1836, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-02 00:30:35');
INSERT INTO `sys_logininfor` VALUES (1837, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-02 00:36:59');
INSERT INTO `sys_logininfor` VALUES (1838, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-02 00:37:59');
INSERT INTO `sys_logininfor` VALUES (1839, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-02 17:46:16');
INSERT INTO `sys_logininfor` VALUES (1840, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '退出成功', '2021-05-02 17:47:58');
INSERT INTO `sys_logininfor` VALUES (1841, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-02 17:48:05');
INSERT INTO `sys_logininfor` VALUES (1842, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '退出成功', '2021-05-02 17:49:53');
INSERT INTO `sys_logininfor` VALUES (1843, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Mac OS X', '0', '登录成功', '2021-05-02 17:49:58');
INSERT INTO `sys_logininfor` VALUES (1844, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-07 15:15:46');
INSERT INTO `sys_logininfor` VALUES (1845, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-07 15:31:56');
INSERT INTO `sys_logininfor` VALUES (1846, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 14:09:33');
INSERT INTO `sys_logininfor` VALUES (1847, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-18 14:13:14');
INSERT INTO `sys_logininfor` VALUES (1848, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 14:13:19');
INSERT INTO `sys_logininfor` VALUES (1849, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-18 14:13:23');
INSERT INTO `sys_logininfor` VALUES (1850, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 14:13:27');
INSERT INTO `sys_logininfor` VALUES (1851, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 15:14:31');
INSERT INTO `sys_logininfor` VALUES (1852, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 16:25:03');
INSERT INTO `sys_logininfor` VALUES (1853, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-18 16:31:33');
INSERT INTO `sys_logininfor` VALUES (1854, 'ys2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 16:31:45');
INSERT INTO `sys_logininfor` VALUES (1855, 'ys2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-18 16:32:34');
INSERT INTO `sys_logininfor` VALUES (1856, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 16:32:38');
INSERT INTO `sys_logininfor` VALUES (1857, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-18 16:32:53');
INSERT INTO `sys_logininfor` VALUES (1858, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 16:32:57');
INSERT INTO `sys_logininfor` VALUES (1859, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 17:34:05');
INSERT INTO `sys_logininfor` VALUES (1860, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 17:38:50');
INSERT INTO `sys_logininfor` VALUES (1861, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 17:43:24');
INSERT INTO `sys_logininfor` VALUES (1862, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-18 17:44:41');
INSERT INTO `sys_logininfor` VALUES (1863, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-18 20:45:03');
INSERT INTO `sys_logininfor` VALUES (1864, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-18 21:04:52');
INSERT INTO `sys_logininfor` VALUES (1865, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-18 21:48:36');
INSERT INTO `sys_logininfor` VALUES (1866, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 14:34:44');
INSERT INTO `sys_logininfor` VALUES (1867, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-19 14:37:05');
INSERT INTO `sys_logininfor` VALUES (1868, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 14:37:11');
INSERT INTO `sys_logininfor` VALUES (1869, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 14:40:21');
INSERT INTO `sys_logininfor` VALUES (1870, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 14:44:24');
INSERT INTO `sys_logininfor` VALUES (1871, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 14:56:37');
INSERT INTO `sys_logininfor` VALUES (1872, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-19 15:00:32');
INSERT INTO `sys_logininfor` VALUES (1873, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:00:36');
INSERT INTO `sys_logininfor` VALUES (1874, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-19 15:01:15');
INSERT INTO `sys_logininfor` VALUES (1875, 'ys2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:01:19');
INSERT INTO `sys_logininfor` VALUES (1876, 'ys2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:04:52');
INSERT INTO `sys_logininfor` VALUES (1877, 'ys2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-19 15:05:10');
INSERT INTO `sys_logininfor` VALUES (1878, 'ys2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:30:03');
INSERT INTO `sys_logininfor` VALUES (1879, 'ys2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-19 15:30:12');
INSERT INTO `sys_logininfor` VALUES (1880, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:30:20');
INSERT INTO `sys_logininfor` VALUES (1881, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:31:43');
INSERT INTO `sys_logininfor` VALUES (1882, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:36:58');
INSERT INTO `sys_logininfor` VALUES (1883, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:40:01');
INSERT INTO `sys_logininfor` VALUES (1884, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:54:28');
INSERT INTO `sys_logininfor` VALUES (1885, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 15:56:15');
INSERT INTO `sys_logininfor` VALUES (1886, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 16:03:14');
INSERT INTO `sys_logininfor` VALUES (1887, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 16:07:48');
INSERT INTO `sys_logininfor` VALUES (1888, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 16:10:06');
INSERT INTO `sys_logininfor` VALUES (1889, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 16:15:18');
INSERT INTO `sys_logininfor` VALUES (1890, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 16:17:20');
INSERT INTO `sys_logininfor` VALUES (1891, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 16:31:27');
INSERT INTO `sys_logininfor` VALUES (1892, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 16:48:42');
INSERT INTO `sys_logininfor` VALUES (1893, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 17:04:54');
INSERT INTO `sys_logininfor` VALUES (1894, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-19 17:42:34');
INSERT INTO `sys_logininfor` VALUES (1895, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-19 21:25:31');
INSERT INTO `sys_logininfor` VALUES (1896, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-19 21:25:36');
INSERT INTO `sys_logininfor` VALUES (1897, 'ys3', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-19 21:46:45');
INSERT INTO `sys_logininfor` VALUES (1898, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-19 22:12:57');
INSERT INTO `sys_logininfor` VALUES (1899, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 11:45:28');
INSERT INTO `sys_logininfor` VALUES (1900, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 11:46:31');
INSERT INTO `sys_logininfor` VALUES (1901, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 11:58:20');
INSERT INTO `sys_logininfor` VALUES (1902, 'ys2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-05-20 14:34:05');
INSERT INTO `sys_logininfor` VALUES (1903, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-20 15:13:08');
INSERT INTO `sys_logininfor` VALUES (1904, 'ys1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-05-20 15:43:21');
INSERT INTO `sys_logininfor` VALUES (1905, 'ys1', '192.168.1.122', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 14:53:48');
INSERT INTO `sys_logininfor` VALUES (1906, 'ys1', '192.168.1.122', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-21 14:54:48');
INSERT INTO `sys_logininfor` VALUES (1907, 'ys1', '192.168.1.122', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 14:56:05');
INSERT INTO `sys_logininfor` VALUES (1908, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 15:32:34');
INSERT INTO `sys_logininfor` VALUES (1909, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 17:21:57');
INSERT INTO `sys_logininfor` VALUES (1910, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-21 17:23:08');
INSERT INTO `sys_logininfor` VALUES (1911, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 17:23:12');
INSERT INTO `sys_logininfor` VALUES (1912, 'ys1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-21 17:25:25');
INSERT INTO `sys_logininfor` VALUES (1913, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 21:16:50');
INSERT INTO `sys_logininfor` VALUES (1914, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-21 21:40:20');
INSERT INTO `sys_logininfor` VALUES (1915, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 21:40:25');
INSERT INTO `sys_logininfor` VALUES (1916, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 21:54:07');
INSERT INTO `sys_logininfor` VALUES (1917, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 21:58:16');
INSERT INTO `sys_logininfor` VALUES (1918, 'admin', '10.1.1.38', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 22:13:30');
INSERT INTO `sys_logininfor` VALUES (1919, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 22:28:43');
INSERT INTO `sys_logininfor` VALUES (1920, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 22:36:38');
INSERT INTO `sys_logininfor` VALUES (1921, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-21 22:39:42');
INSERT INTO `sys_logininfor` VALUES (1922, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 22:39:46');
INSERT INTO `sys_logininfor` VALUES (1923, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-21 22:42:06');
INSERT INTO `sys_logininfor` VALUES (1924, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 22:42:11');
INSERT INTO `sys_logininfor` VALUES (1925, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-21 22:51:53');
INSERT INTO `sys_logininfor` VALUES (1926, 'ys2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 22:51:57');
INSERT INTO `sys_logininfor` VALUES (1927, 'ys2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-21 22:52:36');
INSERT INTO `sys_logininfor` VALUES (1928, 'ys2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 22:52:41');
INSERT INTO `sys_logininfor` VALUES (1929, 'ys2', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-21 22:52:52');
INSERT INTO `sys_logininfor` VALUES (1930, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 22:52:56');
INSERT INTO `sys_logininfor` VALUES (1931, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-21 22:53:21');
INSERT INTO `sys_logininfor` VALUES (1932, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-21 23:08:34');
INSERT INTO `sys_logininfor` VALUES (1933, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2021-05-22 14:31:45');
INSERT INTO `sys_logininfor` VALUES (1934, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-22 14:31:49');
INSERT INTO `sys_logininfor` VALUES (1935, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-23 23:00:54');
INSERT INTO `sys_logininfor` VALUES (1936, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-23 23:07:24');
INSERT INTO `sys_logininfor` VALUES (1937, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-23 23:46:48');
INSERT INTO `sys_logininfor` VALUES (1938, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-23 23:49:06');
INSERT INTO `sys_logininfor` VALUES (1939, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-23 23:51:41');
INSERT INTO `sys_logininfor` VALUES (1940, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-05-24 21:28:48');
INSERT INTO `sys_logininfor` VALUES (1941, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-24 21:28:52');
INSERT INTO `sys_logininfor` VALUES (1942, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-24 22:19:20');
INSERT INTO `sys_logininfor` VALUES (1943, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-05-24 22:38:38');
INSERT INTO `sys_logininfor` VALUES (1944, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-24 22:38:41');
INSERT INTO `sys_logininfor` VALUES (1945, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-26 19:37:06');
INSERT INTO `sys_logininfor` VALUES (1946, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-26 21:15:54');
INSERT INTO `sys_logininfor` VALUES (1947, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-26 22:56:08');
INSERT INTO `sys_logininfor` VALUES (1948, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-27 22:11:05');
INSERT INTO `sys_logininfor` VALUES (1949, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-27 22:12:08');
INSERT INTO `sys_logininfor` VALUES (1950, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-27 22:12:14');
INSERT INTO `sys_logininfor` VALUES (1951, 'ys1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-05-27 22:15:27');
INSERT INTO `sys_logininfor` VALUES (1952, 'pt1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-27 22:15:33');
INSERT INTO `sys_logininfor` VALUES (1953, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-27 23:28:55');
INSERT INTO `sys_logininfor` VALUES (1954, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-27 23:30:22');
INSERT INTO `sys_logininfor` VALUES (1955, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2021-05-28 23:08:07');
INSERT INTO `sys_logininfor` VALUES (1956, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-29 01:36:41');
INSERT INTO `sys_logininfor` VALUES (1957, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-29 01:48:05');
INSERT INTO `sys_logininfor` VALUES (1958, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-29 01:49:30');
INSERT INTO `sys_logininfor` VALUES (1959, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-29 11:49:57');
INSERT INTO `sys_logininfor` VALUES (1960, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-05-29 12:33:34');
INSERT INTO `sys_logininfor` VALUES (1961, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-09-11 19:49:30');
INSERT INTO `sys_logininfor` VALUES (1962, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-11 19:49:50');
INSERT INTO `sys_logininfor` VALUES (1963, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-09-11 19:50:01');
INSERT INTO `sys_logininfor` VALUES (1964, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-09-11 19:50:34');
INSERT INTO `sys_logininfor` VALUES (1965, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-11 21:22:04');
INSERT INTO `sys_logininfor` VALUES (1966, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-09-11 21:26:08');
INSERT INTO `sys_logininfor` VALUES (1967, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-09-11 22:19:48');
INSERT INTO `sys_logininfor` VALUES (1968, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-09-11 22:28:23');
INSERT INTO `sys_logininfor` VALUES (1969, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-09-11 22:28:28');
INSERT INTO `sys_logininfor` VALUES (1970, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-11 22:49:38');
INSERT INTO `sys_logininfor` VALUES (1971, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-12 12:25:10');
INSERT INTO `sys_logininfor` VALUES (1972, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-12 14:48:24');
INSERT INTO `sys_logininfor` VALUES (1973, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-12 15:45:24');
INSERT INTO `sys_logininfor` VALUES (1974, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-12 17:42:01');
INSERT INTO `sys_logininfor` VALUES (1975, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-09-12 18:28:29');
INSERT INTO `sys_logininfor` VALUES (1976, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-12 18:29:21');
INSERT INTO `sys_logininfor` VALUES (1977, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-09-12 18:29:41');
INSERT INTO `sys_logininfor` VALUES (1978, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-09-12 18:29:52');
INSERT INTO `sys_logininfor` VALUES (1979, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-09-12 18:29:59');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `menu_top_id` bigint(20) NULL DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2446 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 40, '#', 1, 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'demo', '2019-12-31 14:13:09', '系统管理目录', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 30, '#', 1, 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:21:09', '系统监控目录', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 120, '/system/user', 3, 'menuItem', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2021-04-12 16:54:35', '用户管理菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 110, '/system/role', NULL, 'menuItem', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:21:49', '角色管理菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 100, '/system/menu', NULL, 'menuItem', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:22:41', '菜单管理菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 90, '/system/dept', NULL, 'menuItem', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:22:50', '部门管理菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 80, '/system/post', NULL, 'menuItem', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:23:00', '岗位管理菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 70, '/system/dict', NULL, 'menuItem', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:23:07', '字典管理菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 60, '/system/config', NULL, 'menuItem', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:23:14', '参数设置菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (108, '日志管理', 2, 50, '#', 1, 'menuItem', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'demo', '2019-11-13 16:15:57', '日志管理菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 30, '/monitor/online', NULL, 'menuItem', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:24:31', '在线用户菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 10, '/monitor/data', NULL, 'menuItem', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-11 16:24:04', '数据监控菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', NULL, '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '操作日志菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', NULL, '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '登录日志菜单', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', NULL, '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', NULL, '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', NULL, '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', NULL, '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', NULL, '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', NULL, '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', NULL, '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', NULL, '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', NULL, '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', NULL, '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', NULL, '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', NULL, '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', NULL, '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', NULL, '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', NULL, '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', NULL, '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', NULL, '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', NULL, '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', NULL, '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', NULL, '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', NULL, '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', NULL, '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', NULL, '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', NULL, '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', NULL, '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', NULL, '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', NULL, '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', NULL, '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', NULL, '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', NULL, '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', NULL, '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', NULL, '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', NULL, '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', NULL, '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', NULL, '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', NULL, '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', NULL, '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', NULL, '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', NULL, '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', NULL, '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', NULL, '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', NULL, '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', NULL, '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', NULL, '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', NULL, '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2005, '项目配置', 1, 30, '/system/config/projectConfig', NULL, 'menuItem', 'C', '0', '', '#', 'admin', '2019-08-07 23:29:26', 'admin', '2019-08-11 16:23:48', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2287, '顶部菜单', 1, 105, '/system/menutop', NULL, 'menuItem', 'C', '0', 'system:menutop:view', '#', 'admin', '2019-12-31 10:39:33', 'admin', '2019-12-31 11:13:39', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2288, '查看', 2287, 10, '#', NULL, 'menuItem', 'F', '0', 'system:menutop:list', '#', 'admin', '2019-12-31 11:13:58', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2289, '新增', 2287, 9, '#', NULL, 'menuItem', 'F', '0', 'system:menutop:add', '#', 'admin', '2019-12-31 11:14:27', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2290, '修改', 2287, 8, '#', NULL, 'menuItem', 'F', '0', 'system:menutop:edit', '#', 'admin', '2019-12-31 11:14:49', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2291, '删除', 2287, 7, '#', NULL, 'menuItem', 'F', '0', 'system:menutop:remove', '#', 'admin', '2019-12-31 11:15:14', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2423, '任务管理', 0, 50, '#', 2, 'menuItem', 'M', '0', NULL, 'fa fa-calendar', 'admin', '2021-05-18 14:10:10', '', NULL, '', 'admin', '2021-05-26 19:38:53', 1);
INSERT INTO `sys_menu` VALUES (2424, '模版管理', 2423, 100, '/task/projecttemp', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-18 14:10:39', '', NULL, '', 'admin', '2021-05-26 19:38:44', 1);
INSERT INTO `sys_menu` VALUES (2425, '项目管理', 2423, 120, '/task/project', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-18 16:27:58', '', NULL, '', 'admin', '2021-05-26 19:38:32', 1);
INSERT INTO `sys_menu` VALUES (2426, '项目回收站', 2423, 110, '/task/project/huishouIndex', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-18 16:28:38', '', NULL, '', 'admin', '2021-05-26 19:38:41', 1);
INSERT INTO `sys_menu` VALUES (2427, '邀请列表', 2423, 115, '/task/projectuser/todoIndex', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-18 21:06:48', '', NULL, '', 'admin', '2021-05-26 19:38:38', 1);
INSERT INTO `sys_menu` VALUES (2428, '标签管理', 2423, 90, '/task/label', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-18 21:49:03', '', NULL, '', 'admin', '2021-05-26 19:38:47', 1);
INSERT INTO `sys_menu` VALUES (2429, '我的任务', 2423, 130, '/task/task/taskUser', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-19 14:35:50', '', NULL, '', 'admin', '2021-05-26 19:38:18', 1);
INSERT INTO `sys_menu` VALUES (2430, '任务列表', 2423, 128, '/task/task/taskDuty', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-19 14:36:27', '', NULL, '', 'admin', '2021-05-26 19:38:22', 1);
INSERT INTO `sys_menu` VALUES (2431, '全部任务', 2423, 126, '/task/task/taskAdmin', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-19 14:36:48', '', NULL, '', 'admin', '2021-05-26 19:38:27', 1);
INSERT INTO `sys_menu` VALUES (2432, '数据分析', 2423, 80, '/task/chart/index', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-21 17:22:46', '', NULL, '', 'admin', '2021-05-26 19:38:50', 1);
INSERT INTO `sys_menu` VALUES (2433, '文章管理', 0, 60, '#', 2, 'menuItem', 'M', '0', NULL, 'fa fa-file-pdf-o', 'admin', '2021-05-23 23:01:26', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2434, '文章分类', 2433, 10, '/article/item', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-23 23:01:49', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2435, '文章管理', 2433, 9, '/article/main', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-23 23:02:12', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2436, '数据管理', 0, 70, '#', 2, 'menuItem', 'M', '0', '', 'fa fa-cube', 'admin', '2021-05-23 23:47:08', 'admin', '2021-05-23 23:47:44', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2437, '外卖饭菜管理', 2436, 100, '/task/food', 2, 'menuItem', 'C', '0', '', '#', 'admin', '2021-05-23 23:47:25', 'admin', '2021-05-27 23:37:54', '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2438, '商店货物管理', 2436, 90, '/task/goods', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-24 22:34:09', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2439, '骑手认证', 1, 130, '/system/user/rzIndex', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-29 01:48:37', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2440, '交易订单', 0, 80, '#', 2, 'menuItem', 'M', '0', NULL, 'fa fa-map-signs', 'admin', '2021-05-29 11:50:48', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2441, '外卖订单', 2440, 100, '/task/order/food', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-29 11:51:24', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2442, '购物订单', 2440, 90, '/task/order/goods', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-29 12:25:06', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2443, '快递订单', 2440, 80, '/task/order/parcel', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-29 12:25:23', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2444, '打印订单', 2440, 70, '/task/order/print', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-29 12:25:42', '', NULL, '', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2445, '其他订单', 2440, 60, '/task/order/other', 2, 'menuItem', 'C', '0', NULL, '#', 'admin', '2021-05-29 12:25:58', '', NULL, '', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_menu_top
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_top`;
CREATE TABLE `sys_menu_top`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '顶部菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu_top
-- ----------------------------
INSERT INTO `sys_menu_top` VALUES (1, '系统管理', 10, '', 'fa fa-bars', '', NULL, 'demo', '2019-12-31 14:13:22', '', NULL, NULL, 0);
INSERT INTO `sys_menu_top` VALUES (2, '跑腿管理', 100, '', 'fa fa-bar-chart', 'admin', '2021-04-13 21:05:38', 'admin', '2021-05-29 12:34:27', '', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `operator_type` int(11) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `oper_user_id` bigint(20) NULL DEFAULT NULL COMMENT '操作人ID',
  `oper_user_type` int(11) NULL DEFAULT NULL COMMENT '用户类型',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `status` int(11) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `oper_date` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 341 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '部门管理', 3, 'com.study.web.controller.system.SysDeptController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/remove/103', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 21:34:41', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (2, '用户管理', 2, 'com.study.web.controller.system.SysUserController.editSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/user/edit', '127.0.0.1', NULL, '{\n  \"userId\" : [ \"1\" ],\n  \"deptId\" : [ \"202\" ],\n  \"loginName\" : [ \"admin\" ],\n  \"userName\" : [ \"超级管理员\" ],\n  \"dept.deptName\" : [ \"学生\" ],\n  \"phonenumber\" : [ \"13866725169\" ],\n  \"email\" : [ \"ahuwangqun@163.com\" ],\n  \"idcardno\" : [ \"0001\" ],\n  \"userCode\" : [ \"0001\" ],\n  \"sex\" : [ \"1\" ],\n  \"role\" : [ \"1\" ],\n  \"remark\" : [ \"管理员\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"1\" ],\n  \"postIds\" : [ \"1\" ]\n}', 0, NULL, '2021-04-12 21:35:02', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (3, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"101\" ],\n  \"deptName\" : [ \"承建单位1\" ],\n  \"orderNum\" : [ \"100\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:38:22', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (4, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"101\" ],\n  \"deptName\" : [ \"承建单位2\" ],\n  \"orderNum\" : [ \"90\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:38:33', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (5, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"101\" ],\n  \"deptName\" : [ \"承建单位3\" ],\n  \"orderNum\" : [ \"70\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:38:45', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (6, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"202\" ],\n  \"deptName\" : [ \"监理单位1\" ],\n  \"orderNum\" : [ \"100\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:38:56', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (7, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"202\" ],\n  \"deptName\" : [ \"监理单位2\" ],\n  \"orderNum\" : [ \"90\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:39:05', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (8, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"202\" ],\n  \"deptName\" : [ \"监理单位3\" ],\n  \"orderNum\" : [ \"70\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:39:14', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (9, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"102\" ],\n  \"deptName\" : [ \"建设单位1\" ],\n  \"orderNum\" : [ \"100\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:39:26', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (10, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"102\" ],\n  \"deptName\" : [ \"建设单位2\" ],\n  \"orderNum\" : [ \"90\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:39:34', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (11, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"102\" ],\n  \"deptName\" : [ \"建设单位3\" ],\n  \"orderNum\" : [ \"70\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-04-12 21:39:43', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (12, '岗位管理', 2, 'com.study.web.controller.system.SysPostController.editSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/post/edit', '127.0.0.1', NULL, '{\n  \"postId\" : [ \"4\" ],\n  \"postName\" : [ \"项目经理\" ],\n  \"postCode\" : [ \"pl\" ],\n  \"postSort\" : [ \"4\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 21:40:25', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (13, '岗位管理', 2, 'com.study.web.controller.system.SysPostController.editSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/post/edit', '127.0.0.1', NULL, '{\n  \"postId\" : [ \"3\" ],\n  \"postName\" : [ \"监理人员\" ],\n  \"postCode\" : [ \"jl\" ],\n  \"postSort\" : [ \"3\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 21:40:42', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (14, '岗位管理', 2, 'com.study.web.controller.system.SysPostController.editSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/post/edit', '127.0.0.1', NULL, '{\n  \"postId\" : [ \"2\" ],\n  \"postName\" : [ \"业主\" ],\n  \"postCode\" : [ \"yz\" ],\n  \"postSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 21:40:55', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (15, '岗位管理', 3, 'com.study.web.controller.system.SysPostController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/post/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"1\" ]\n}', 0, NULL, '2021-04-12 21:40:59', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (16, '用户管理', 2, 'com.study.web.controller.system.SysUserController.editSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/user/edit', '127.0.0.1', NULL, '{\n  \"userId\" : [ \"1\" ],\n  \"deptId\" : [ \"100\" ],\n  \"loginName\" : [ \"admin\" ],\n  \"userName\" : [ \"超级管理员\" ],\n  \"dept.deptName\" : [ \"根\" ],\n  \"phonenumber\" : [ \"13866725169\" ],\n  \"email\" : [ \"ahuwangqun@163.com\" ],\n  \"idcardno\" : [ \"0001\" ],\n  \"userCode\" : [ \"0001\" ],\n  \"sex\" : [ \"1\" ],\n  \"role\" : [ \"1\" ],\n  \"remark\" : [ \"管理员\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"1\" ],\n  \"postIds\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 21:41:08', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (17, '岗位管理', 2, 'com.study.web.controller.system.SysPostController.editSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/post/edit', '127.0.0.1', NULL, '{\n  \"postId\" : [ \"1\" ],\n  \"postName\" : [ \"管理员\" ],\n  \"postCode\" : [ \"gly\" ],\n  \"postSort\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 21:41:27', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (18, '参数管理', 3, 'com.study.web.controller.system.SysConfigController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/config/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"111,117\" ]\n}', 0, NULL, '2021-04-12 21:41:43', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (19, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/config/add', '127.0.0.1', NULL, '{\n  \"configName\" : [ \"建设单位根目录ID\" ],\n  \"configKey\" : [ \"js_root_dept_id\" ],\n  \"configValue\" : [ \"102\" ],\n  \"configType\" : [ \"Y\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 21:42:43', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (20, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/config/add', '127.0.0.1', NULL, '{\n  \"configName\" : [ \"承建单位根目录ID\" ],\n  \"configKey\" : [ \"cj_root_dept_id\" ],\n  \"configValue\" : [ \"102\" ],\n  \"configType\" : [ \"Y\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 21:43:14', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (21, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/config/add', '127.0.0.1', NULL, '{\n  \"configName\" : [ \"监理单位根目录ID\" ],\n  \"configKey\" : [ \"jl_root_dept_id\" ],\n  \"configValue\" : [ \"202\" ],\n  \"configType\" : [ \"Y\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 21:43:45', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (22, '字典类型', 3, 'com.study.web.controller.system.SysDictTypeController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"101,100,105,4,5\" ]\n}', 1, '文章置顶已分配,不能删除', '2021-04-12 21:44:42', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (23, '字典数据', 3, 'com.study.web.controller.system.SysDictDataController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/data/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"105,106\" ]\n}', 0, NULL, '2021-04-12 21:44:54', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (24, '字典类型', 3, 'com.study.web.controller.system.SysDictTypeController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"101\" ]\n}', 0, NULL, '2021-04-12 21:45:07', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (25, '字典数据', 3, 'com.study.web.controller.system.SysDictDataController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/data/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"104,103\" ]\n}', 0, NULL, '2021-04-12 21:45:12', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (26, '字典数据', 3, 'com.study.web.controller.system.SysDictDataController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/data/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"117,118\" ]\n}', 0, NULL, '2021-04-12 21:45:20', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (27, '字典类型', 3, 'com.study.web.controller.system.SysDictTypeController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"100,105\" ]\n}', 0, NULL, '2021-04-12 21:45:25', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (28, '字典数据', 3, 'com.study.web.controller.system.SysDictDataController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/data/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"15,14\" ]\n}', 0, NULL, '2021-04-12 21:45:32', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (29, '字典数据', 3, 'com.study.web.controller.system.SysDictDataController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/data/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"17,16\" ]\n}', 0, NULL, '2021-04-12 21:45:39', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (30, '字典类型', 3, 'com.study.web.controller.system.SysDictTypeController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/dict/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"7,8\" ]\n}', 0, NULL, '2021-04-12 21:45:56', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (31, '角色管理', 1, 'com.study.web.controller.system.SysRoleController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/add', '127.0.0.1', NULL, '{\n  \"roleName\" : [ \"业主\" ],\n  \"roleKey\" : [ \"yz\" ],\n  \"roleSort\" : [ \"100\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 22:16:03', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (32, '角色管理', 1, 'com.study.web.controller.system.SysRoleController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/add', '127.0.0.1', NULL, '{\n  \"roleName\" : [ \"监理\" ],\n  \"roleKey\" : [ \"jl\" ],\n  \"roleSort\" : [ \"90\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 22:23:51', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (33, '角色管理', 1, 'com.study.web.controller.system.SysRoleController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/add', '127.0.0.1', NULL, '{\n  \"roleName\" : [ \"项目经理\" ],\n  \"roleKey\" : [ \"xmjl\" ],\n  \"roleSort\" : [ \"80\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"\" ]\n}', 0, NULL, '2021-04-12 22:24:05', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (34, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\n  \"deptId\" : [ \"204\" ],\n  \"loginName\" : [ \"cj1\" ],\n  \"password\" : [ \"123456\" ],\n  \"userName\" : [ \"承建1\" ],\n  \"deptName\" : [ \"承建单位1\" ],\n  \"phonenumber\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"idcardno\" : [ \"\" ],\n  \"userCode\" : [ \"\" ],\n  \"sex\" : [ \"2\" ],\n  \"role\" : [ \"114\" ],\n  \"remark\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"114\" ],\n  \"postIds\" : [ \"4\" ]\n}', 0, NULL, '2021-04-12 22:27:40', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (35, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\n  \"deptId\" : [ \"207\" ],\n  \"loginName\" : [ \"jl1\" ],\n  \"password\" : [ \"123456\" ],\n  \"userName\" : [ \"监理1\" ],\n  \"deptName\" : [ \"监理单位1\" ],\n  \"phonenumber\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"idcardno\" : [ \"\" ],\n  \"userCode\" : [ \"\" ],\n  \"sex\" : [ \"2\" ],\n  \"role\" : [ \"113\" ],\n  \"remark\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"113\" ],\n  \"postIds\" : [ \"3\" ]\n}', 0, NULL, '2021-04-12 22:28:41', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (36, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\n  \"deptId\" : [ \"210\" ],\n  \"loginName\" : [ \"js1\" ],\n  \"password\" : [ \"123456\" ],\n  \"userName\" : [ \"建设1\" ],\n  \"deptName\" : [ \"建设单位1\" ],\n  \"phonenumber\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"idcardno\" : [ \"\" ],\n  \"userCode\" : [ \"\" ],\n  \"sex\" : [ \"2\" ],\n  \"role\" : [ \"112\" ],\n  \"remark\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"112\" ],\n  \"postIds\" : [ \"2\" ]\n}', 0, NULL, '2021-04-12 22:30:02', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (37, '角色管理', 1, 'com.study.web.controller.system.SysRoleController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/add', '127.0.0.1', NULL, '{\r\n  \"roleName\" : [ \"建设单位-负责人\" ],\r\n  \"roleKey\" : [ \"jsfzr\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 20:40:58', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (38, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"112\" ],\r\n  \"roleName\" : [ \"建设单位-业主\" ],\r\n  \"roleKey\" : [ \"yz\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 20:41:07', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (39, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"113\" ],\r\n  \"roleName\" : [ \"监理单位-监理\" ],\r\n  \"roleKey\" : [ \"jl\" ],\r\n  \"roleSort\" : [ \"90\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 20:41:14', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (40, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"114\" ],\r\n  \"roleName\" : [ \"承建单位-项目经理\" ],\r\n  \"roleKey\" : [ \"xmjl\" ],\r\n  \"roleSort\" : [ \"80\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 20:41:23', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (41, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2292\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"监理授权\" ],\r\n  \"url\" : [ \"/earlier/supervisorgrant\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:sg:view\" ],\r\n  \"orderNum\" : [ \"90\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-14 14:11:59', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (42, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2298\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"列表\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:sg:list\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-14 14:12:20', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (43, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2298\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:sg:add\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-14 14:12:34', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (44, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2298\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:sg:edit\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-14 14:12:51', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (45, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2298\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:sg:remove\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-14 14:13:09', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (46, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"113\" ],\r\n  \"roleName\" : [ \"监理单位-监理\" ],\r\n  \"roleKey\" : [ \"jl\" ],\r\n  \"roleSort\" : [ \"90\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302\" ]\r\n}', 0, NULL, '2021-04-14 14:13:43', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (47, '重置密码', 2, 'com.study.web.controller.system.SysUserController.resetPwd()', 1, 'admin', 1, 0, '根', '/gp/system/user/resetPwd/12699', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-14 14:16:34', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (48, '重置密码', 2, 'com.study.web.controller.system.SysUserController.resetPwdSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/resetPwd', '127.0.0.1', NULL, '{\r\n  \"userId\" : [ \"12699\" ],\r\n  \"loginName\" : [ \"jl11\" ],\r\n  \"password\" : [ \"123456\" ]\r\n}', 0, NULL, '2021-04-14 14:16:39', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (49, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"授权1\" ],\r\n  \"projectCode\" : [ \"123333\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"333\" ]\r\n}', 0, NULL, '2021-04-14 14:21:30', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (50, '监理授权', 2, 'com.study.earlier.controller.SupervisorGrantController.editSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"1\" ],\r\n  \"updateBy\" : [ \"jl11\" ],\r\n  \"docName\" : [ \"授权12\" ],\r\n  \"securityClassification\" : [ \"加密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"333\" ]\r\n}', 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'projectId\' in \'class com.study.earlier.entity.SupervisorGrant\'', '2021-04-14 14:23:27', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (51, '监理授权', 2, 'com.study.earlier.controller.SupervisorGrantController.editSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"1\" ],\r\n  \"updateBy\" : [ \"jl11\" ],\r\n  \"docName\" : [ \"授权12\" ],\r\n  \"securityClassification\" : [ \"加密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"33322\" ]\r\n}', 0, NULL, '2021-04-14 14:24:42', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (52, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"2\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"2\" ]\r\n}', 0, NULL, '2021-04-14 14:24:56', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (53, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"3\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"2\" ]\r\n}', 0, NULL, '2021-04-14 14:25:35', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (54, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"3123\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"123\" ]\r\n}', 0, NULL, '2021-04-14 14:29:51', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (55, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"d\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-14 14:32:43', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (56, '监理授权', 3, 'com.study.earlier.controller.SupervisorGrantController.remove()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"1,2,3,4\" ]\r\n}', 0, NULL, '2021-04-14 14:32:50', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (57, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"2\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-14 14:32:53', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (58, '监理授权', 3, 'com.study.earlier.controller.SupervisorGrantController.remove()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"5\" ]\r\n}', 0, NULL, '2021-04-14 14:32:57', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (59, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"3\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-14 14:33:25', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (60, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"23\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-14 14:36:00', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (61, '监理授权', 3, 'com.study.earlier.controller.SupervisorGrantController.remove()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"7\" ]\r\n}', 0, NULL, '2021-04-14 14:36:13', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (62, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"2\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\r\n  \"remark\" : [ \"123\" ]\r\n}', 0, NULL, '2021-04-14 15:22:37', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (63, '监理授权', 3, 'com.study.earlier.controller.SupervisorGrantController.remove()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"8\" ]\r\n}', 0, NULL, '2021-04-14 15:32:29', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (64, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"213\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\r\n  \"remark\" : [ \"23\" ]\r\n}', 0, NULL, '2021-04-14 15:32:41', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (65, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"水电费水电费\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\r\n  \"remark\" : [ \"爱迪生\" ]\r\n}', 0, NULL, '2021-04-14 16:00:12', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (66, '监理授权', 2, 'com.study.earlier.controller.SupervisorGrantController.editSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"10\" ],\r\n  \"updateBy\" : [ \"jl11\" ],\r\n  \"docName\" : [ \"水电费水电费\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\r\n  \"remark\" : [ \"爱迪生\" ]\r\n}', 0, NULL, '2021-04-14 16:05:29', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (67, '监理授权', 2, 'com.study.earlier.controller.SupervisorGrantController.editSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"10\" ],\r\n  \"updateBy\" : [ \"jl11\" ],\r\n  \"docName\" : [ \"水电费水电费\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12704\" ],\r\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\r\n  \"remark\" : [ \"爱迪生\" ]\r\n}', 0, NULL, '2021-04-14 16:10:14', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (68, '监理授权', 2, 'com.study.earlier.controller.SupervisorGrantController.editSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"10\" ],\r\n  \"updateBy\" : [ \"jl11\" ],\r\n  \"docName\" : [ \"水电费水电费\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12704\" ],\r\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12710\", \"12698\" ],\r\n  \"remark\" : [ \"爱迪生\" ]\r\n}', 0, NULL, '2021-04-14 16:14:12', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (69, '监理授权', 3, 'com.study.earlier.controller.SupervisorGrantController.remove()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"10\" ]\r\n}', 0, NULL, '2021-04-14 16:14:15', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (70, '监理授权', 1, 'com.study.earlier.controller.SupervisorGrantController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorgrant/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"jl11\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"2\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12699\" ],\r\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\r\n  \"remark\" : [ \"33\" ]\r\n}', 0, NULL, '2021-04-14 16:35:29', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (71, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2292\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"抄送查阅\" ],\r\n  \"url\" : [ \"/doc/read/earlier\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"20\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-14 16:40:21', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (72, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"112\" ],\r\n  \"roleName\" : [ \"建设单位-业主\" ],\r\n  \"roleKey\" : [ \"yz\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2293,2294,2295,2296,2297,2303\" ]\r\n}', 0, NULL, '2021-04-14 16:40:32', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (73, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"115\" ],\r\n  \"roleName\" : [ \"建设单位-负责人\" ],\r\n  \"roleKey\" : [ \"jsfzr\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2303\" ]\r\n}', 0, NULL, '2021-04-14 16:40:37', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (74, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"113\" ],\r\n  \"roleName\" : [ \"监理单位-监理\" ],\r\n  \"roleKey\" : [ \"jl\" ],\r\n  \"roleSort\" : [ \"90\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2303\" ]\r\n}', 0, NULL, '2021-04-14 16:40:42', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (75, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"114\" ],\r\n  \"roleName\" : [ \"承建单位-项目经理\" ],\r\n  \"roleKey\" : [ \"xmjl\" ],\r\n  \"roleSort\" : [ \"80\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2303\" ]\r\n}', 0, NULL, '2021-04-14 16:40:47', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (76, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2292\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"项目交底会议\" ],\r\n  \"url\" : [ \"/earlier/managermeeting\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:mm:view\" ],\r\n  \"orderNum\" : [ \"60\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-16 14:48:44', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (77, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2314\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"列表\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:mm:list\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-16 14:48:58', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (78, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2314\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:mm:add\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-16 14:49:14', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (79, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2314\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:mm:edit\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-16 14:49:34', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (80, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2314\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:mm:remove\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-16 14:49:53', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (81, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"114\" ],\r\n  \"roleName\" : [ \"承建单位-项目经理\" ],\r\n  \"roleKey\" : [ \"xmjl\" ],\r\n  \"roleSort\" : [ \"80\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2314,2315,2316,2317,2318,2303\" ]\r\n}', 0, NULL, '2021-04-16 14:50:06', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (82, '重置密码', 2, 'com.study.web.controller.system.SysUserController.resetPwd()', 1, 'admin', 1, 0, '根', '/gp/system/user/resetPwd/12698', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-16 14:50:42', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (83, '重置密码', 2, 'com.study.web.controller.system.SysUserController.resetPwdSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/resetPwd', '127.0.0.1', NULL, '{\r\n  \"userId\" : [ \"12698\" ],\r\n  \"loginName\" : [ \"cj11\" ],\r\n  \"password\" : [ \"123456\" ]\r\n}', 0, NULL, '2021-04-16 14:50:50', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (84, '项目会议', 1, 'com.study.earlier.controller.ManagerMeetingController.addSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/earlier/managermeeting/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"cj11\" ],\r\n  \"path\" : [ \"\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"docName\" : [ \"324234\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12698\" ],\r\n  \"room\" : [ \"123\" ],\r\n  \"time\" : [ \"123\" ],\r\n  \"jsqk\" : [ \"231\" ],\r\n  \"sjqk\" : [ \"123\" ],\r\n  \"cjqk\" : [ \"123\" ],\r\n  \"jlqk\" : [ \"123\" ],\r\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12699\" ],\r\n  \"remark\" : [ \"123321\" ]\r\n}', 0, NULL, '2021-04-16 14:53:33', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (85, '个人信息', 2, 'com.study.web.controller.system.SysProfileController.updateAvatar()', 1, 'admin', 1, 0, '根', '/gp/system/user/profile/updateAvatar', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-13 21:05:01', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (86, '顶部菜单管理', 1, 'com.study.web.controller.system.SysMenuTopController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menutop/add', '127.0.0.1', NULL, '{\r\n  \"menuName\" : [ \"项目前期\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"fa fa-bar-chart\" ]\r\n}', 0, NULL, '2021-04-13 21:05:39', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (87, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"项目前期\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"fa fa-address-card\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-13 21:06:26', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (88, '顶部菜单管理', 2, 'com.study.web.controller.system.SysMenuTopController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/menutop/edit', '127.0.0.1', NULL, '{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"menuName\" : [ \"项目管理\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"fa fa-bar-chart\" ]\r\n}', 0, NULL, '2021-04-13 21:06:36', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (89, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"项目管理\" ],\r\n  \"url\" : [ \"/earlier/project\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:project:view\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-13 21:07:54', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (90, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2293\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"项目查询\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:project:list\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-13 21:09:50', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (91, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2293\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"项目新增\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:project:add\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-13 21:10:08', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (92, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2293\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"项目修改\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:project:edit\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-13 21:10:25', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (93, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2293\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"项目删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"earlier:project:remove\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-13 21:10:42', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (94, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"112\" ],\r\n  \"roleName\" : [ \"建设单位-业主\" ],\r\n  \"roleKey\" : [ \"yz\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2293,2294,2295,2296,2297\" ]\r\n}', 0, NULL, '2021-04-13 21:13:23', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (95, '项目管理', 1, 'com.study.earlier.controller.ProjectController.addSave()', 1, 'js1', 12700, 0, '建设单位1', '/gp/earlier/project/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"js1\" ],\r\n  \"projectName\" : [ \"项目1-给城墙贴瓷砖\" ],\r\n  \"projectCode\" : [ \"xmcz1\" ],\r\n  \"jsdw.deptId\" : [ \"204\" ],\r\n  \"xmjl.userId\" : [ \"12698\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 21:23:11', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (96, '项目管理', 1, 'com.study.earlier.controller.ProjectController.addSave()', 1, 'js1', 12700, 0, '建设单位1', '/gp/earlier/project/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"js1\" ],\r\n  \"projectName\" : [ \"项目1-长城贴瓷砖\" ],\r\n  \"projectCode\" : [ \"cctcz\" ],\r\n  \"jsdw.deptId\" : [ \"204\" ],\r\n  \"xmjl.userId\" : [ \"12698\" ],\r\n  \"remark\" : [ \"shuom \" ]\r\n}', 0, NULL, '2021-04-13 21:29:34', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (97, '项目管理', 1, 'com.study.earlier.controller.ProjectController.addSave()', 1, 'js1', 12700, 0, '建设单位1', '/gp/earlier/project/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"js1\" ],\r\n  \"projectName\" : [ \"1\" ],\r\n  \"projectCode\" : [ \"1\" ],\r\n  \"jsdw.deptId\" : [ \"204\" ],\r\n  \"xmjl.userId\" : [ \"12698\" ],\r\n  \"remark\" : [ \"1\" ]\r\n}', 0, NULL, '2021-04-13 21:34:26', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (98, '项目管理', 3, 'com.study.earlier.controller.ProjectController.remove()', 1, 'js1', 12700, 0, '建设单位1', '/gp/earlier/project/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"2,3\" ]\r\n}', 0, NULL, '2021-04-13 21:35:19', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (99, '项目管理', 1, 'com.study.earlier.controller.ProjectController.addSave()', 1, 'js1', 12700, 0, '建设单位1', '/gp/earlier/project/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"js1\" ],\r\n  \"projectName\" : [ \"1\" ],\r\n  \"projectCode\" : [ \"1\" ],\r\n  \"cjdw.deptId\" : [ \"204\" ],\r\n  \"xmjl.userId\" : [ \"12698\" ],\r\n  \"remark\" : [ \"2\" ]\r\n}', 0, NULL, '2021-04-13 21:35:27', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (100, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"204\" ],\r\n  \"loginName\" : [ \"cj2\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"承建1-2\" ],\r\n  \"deptName\" : [ \"承建单位1\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"114\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"114\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}', 0, NULL, '2021-04-13 21:37:23', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (101, '用户管理', 2, 'com.study.web.controller.system.SysUserController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/edit', '127.0.0.1', NULL, '{\r\n  \"userId\" : [ \"12698\" ],\r\n  \"deptId\" : [ \"204\" ],\r\n  \"loginName\" : [ \"cj1\" ],\r\n  \"userName\" : [ \"承建1-1\" ],\r\n  \"dept.deptName\" : [ \"承建单位1\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"114\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"114\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}', 0, NULL, '2021-04-13 21:37:32', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (102, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"205\" ],\r\n  \"loginName\" : [ \"cj21\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"承建2-1\" ],\r\n  \"deptName\" : [ \"承建单位2\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"114\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"114\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}', 0, NULL, '2021-04-13 21:37:58', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (103, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"205\" ],\r\n  \"loginName\" : [ \"cj22\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"承建2-2\" ],\r\n  \"deptName\" : [ \"承建单位2\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"114\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"114\" ],\r\n  \"postIds\" : [ \"4\" ]\r\n}', 0, NULL, '2021-04-13 21:38:21', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (104, '用户管理', 2, 'com.study.web.controller.system.SysUserController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/edit', '127.0.0.1', NULL, '{\r\n  \"userId\" : [ \"12699\" ],\r\n  \"deptId\" : [ \"207\" ],\r\n  \"loginName\" : [ \"jl11\" ],\r\n  \"userName\" : [ \"监理1-1\" ],\r\n  \"dept.deptName\" : [ \"监理单位1\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"113\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"113\" ],\r\n  \"postIds\" : [ \"3\" ]\r\n}', 0, NULL, '2021-04-13 21:39:09', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (105, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"207\" ],\r\n  \"loginName\" : [ \"jl12\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"监理1-2\" ],\r\n  \"deptName\" : [ \"监理单位1\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"113\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"113\" ],\r\n  \"postIds\" : [ \"3\" ]\r\n}', 0, NULL, '2021-04-13 21:39:25', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (106, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"208\" ],\r\n  \"loginName\" : [ \"jl21\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"监理2-1\" ],\r\n  \"deptName\" : [ \"监理单位2\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"113\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"113\" ],\r\n  \"postIds\" : [ \"3\" ]\r\n}', 0, NULL, '2021-04-13 21:39:51', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (107, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"208\" ],\r\n  \"loginName\" : [ \"jl22\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"监理2-2\" ],\r\n  \"deptName\" : [ \"监理单位2\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"113\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"113\" ],\r\n  \"postIds\" : [ \"3\" ]\r\n}', 0, NULL, '2021-04-13 21:40:15', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (108, '岗位管理', 1, 'com.study.web.controller.system.SysPostController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/post/add', '127.0.0.1', NULL, '{\r\n  \"postName\" : [ \"建设负责人\" ],\r\n  \"postCode\" : [ \"fzr\" ],\r\n  \"postSort\" : [ \"111\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 21:40:49', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (109, '岗位管理', 2, 'com.study.web.controller.system.SysPostController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/post/edit', '127.0.0.1', NULL, '{\r\n  \"postId\" : [ \"5\" ],\r\n  \"postName\" : [ \"建设负责人\" ],\r\n  \"postCode\" : [ \"fzr\" ],\r\n  \"postSort\" : [ \"5\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 21:40:55', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (110, '用户管理', 2, 'com.study.web.controller.system.SysUserController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/edit', '127.0.0.1', NULL, '{\r\n  \"userId\" : [ \"12700\" ],\r\n  \"deptId\" : [ \"210\" ],\r\n  \"loginName\" : [ \"js11\" ],\r\n  \"userName\" : [ \"建设1-1\" ],\r\n  \"dept.deptName\" : [ \"建设单位1\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"112\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"112\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 0, NULL, '2021-04-13 21:41:27', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (111, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"210\" ],\r\n  \"loginName\" : [ \"js12\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"建设1-2\" ],\r\n  \"deptName\" : [ \"建设单位1\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"112\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"112\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 0, NULL, '2021-04-13 21:41:50', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (112, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"211\" ],\r\n  \"loginName\" : [ \"js21\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"建设2-1\" ],\r\n  \"deptName\" : [ \"建设单位2\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"112\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"112\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', 0, NULL, '2021-04-13 21:42:10', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (113, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"211\" ],\r\n  \"loginName\" : [ \"js22\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"建设2-2\" ],\r\n  \"deptName\" : [ \"建设单位2\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"112\", \"115\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"112,115\" ],\r\n  \"postIds\" : [ \"5,2\" ]\r\n}', 0, NULL, '2021-04-13 21:42:38', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (114, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"210\" ],\r\n  \"loginName\" : [ \"fzr11\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"负责人1-1\" ],\r\n  \"deptName\" : [ \"建设单位1\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"115\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"115\" ],\r\n  \"postIds\" : [ \"5\" ]\r\n}', 0, NULL, '2021-04-13 21:43:05', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (115, '项目管理', 1, 'com.study.earlier.controller.ProjectController.addSave()', 1, 'js12', 12707, 0, '建设单位1', '/gp/earlier/project/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"js12\" ],\r\n  \"projectName\" : [ \"项目2\" ],\r\n  \"projectCode\" : [ \"324242sdfsdf\" ],\r\n  \"cjdw.deptId\" : [ \"204\" ],\r\n  \"xmjl.userId\" : [ \"12701\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 21:43:49', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (116, '重置密码', 2, 'com.study.web.controller.system.SysUserController.resetPwd()', 1, 'admin', 1, 0, '根', '/gp/system/user/resetPwd/12700', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-13 21:45:49', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (117, '重置密码', 2, 'com.study.web.controller.system.SysUserController.resetPwdSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/resetPwd', '127.0.0.1', NULL, '{\r\n  \"userId\" : [ \"12700\" ],\r\n  \"loginName\" : [ \"js11\" ],\r\n  \"password\" : [ \"123456\" ]\r\n}', 0, NULL, '2021-04-13 21:45:53', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (118, '项目管理', 2, 'com.study.earlier.controller.ProjectController.editSave()', 1, 'js11', 12700, 0, '建设单位1', '/gp/earlier/project/edit', '127.0.0.1', NULL, '{\r\n  \"projectId\" : [ \"4\" ],\r\n  \"updateBy\" : [ \"js11\" ],\r\n  \"projectName\" : [ \"1\" ],\r\n  \"projectCode\" : [ \"1\" ],\r\n  \"cjdw.deptId\" : [ \"204\" ],\r\n  \"xmjl.userId\" : [ \"12701\" ],\r\n  \"remark\" : [ \"2\" ]\r\n}', 0, NULL, '2021-04-13 22:09:39', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (119, '字典类型', 1, 'com.study.web.controller.system.SysDictTypeController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/dict/add', '127.0.0.1', NULL, '{\r\n  \"dictName\" : [ \"文档密级\" ],\r\n  \"dictType\" : [ \"security_classification\" ],\r\n  \"dictSort\" : [ \"140\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 22:21:43', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (120, '字典数据', 1, 'com.study.web.controller.system.SysDictDataController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/dict/data/add', '127.0.0.1', NULL, '{\r\n  \"dictLabel\" : [ \"非密\" ],\r\n  \"dictValue\" : [ \"非密\" ],\r\n  \"dictType\" : [ \"security_classification\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"100\" ],\r\n  \"listClass\" : [ \"default\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 22:22:31', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (121, '字典数据', 1, 'com.study.web.controller.system.SysDictDataController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/dict/data/add', '127.0.0.1', NULL, '{\r\n  \"dictLabel\" : [ \"加密\" ],\r\n  \"dictValue\" : [ \"加密\" ],\r\n  \"dictType\" : [ \"security_classification\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"90\" ],\r\n  \"listClass\" : [ \"default\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 22:22:44', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (122, '字典数据', 1, 'com.study.web.controller.system.SysDictDataController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/dict/data/add', '127.0.0.1', NULL, '{\r\n  \"dictLabel\" : [ \"绝密\" ],\r\n  \"dictValue\" : [ \"绝密\" ],\r\n  \"dictType\" : [ \"security_classification\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"80\" ],\r\n  \"listClass\" : [ \"default\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 22:23:01', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2292\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"监理方案\" ],\n  \"url\" : [ \"/earlier/supervisorplan\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:sp:view\" ],\n  \"orderNum\" : [ \"80\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-14 22:43:10', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2304\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"列表\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:sp:list\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-14 22:43:32', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2304\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:sp:add\" ],\n  \"orderNum\" : [ \"9\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-14 22:43:46', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2304\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"修改\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:sp:edit\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-14 22:44:34', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2304\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"删除\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:sp:remove\" ],\n  \"orderNum\" : [ \"7\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-14 22:44:52', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (128, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"113\" ],\n  \"roleName\" : [ \"监理单位-监理\" ],\n  \"roleKey\" : [ \"jl\" ],\n  \"roleSort\" : [ \"90\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2304,2305,2306,2307,2308,2303\" ]\n}', 0, NULL, '2021-04-14 22:47:13', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (129, '监理方案', 1, 'com.study.earlier.controller.SupervisorPlanController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorplan/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"jl11\" ],\n  \"path\" : [ \"\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"5\" ],\n  \"docName\" : [ \"2342\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12699\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\n  \"remark\" : [ \"234\" ]\n}', 0, NULL, '2021-04-14 22:52:12', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (130, '监理方案', 1, 'com.study.earlier.controller.SupervisorPlanController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorplan/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"jl11\" ],\n  \"path\" : [ \"\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"4\" ],\n  \"docName\" : [ \"hjk\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12699\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\n  \"remark\" : [ \"y\" ]\n}', 0, NULL, '2021-04-14 23:01:29', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (131, '监理方案', 1, 'com.study.earlier.controller.SupervisorPlanController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorplan/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"jl11\" ],\n  \"path\" : [ \"http://127.0.0.1:8888/gp/profile/upload/2021/04/14/62f099552803eea9835f764987d2f86f.txt\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"4\" ],\n  \"docName\" : [ \"23\" ],\n  \"securityClassification\" : [ \"加密\" ],\n  \"user.userId\" : [ \"12699\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12707\" ],\n  \"remark\" : [ \"3\" ]\n}', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'path\' at row 1\n### The error may involve com.study.earlier.dao.SupervisorPlanDao.add-Inline\n### The error occurred while setting parameters\n### SQL: insert into earlier_supervisor_plan (           path,      doc_name,      doc_code,      supervisor_id,      project_id,      security_classification,      user_id,      sign_time,      jsdw_id,      create_by,      remark,      create_time         )values(           ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      sysdate()   )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'path\' at row 1\n; Data truncation: Data too long for column \'path\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'path\' at row 1', '2021-04-14 23:05:25', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (132, '监理方案', 1, 'com.study.earlier.controller.SupervisorPlanController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorplan/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"jl11\" ],\n  \"path\" : [ \"http://127.0.0.1:8888/gp/profile/upload/2021/04/14/62f099552803eea9835f764987d2f86f.txt\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"4\" ],\n  \"docName\" : [ \"23\" ],\n  \"securityClassification\" : [ \"加密\" ],\n  \"user.userId\" : [ \"12699\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12707\" ],\n  \"remark\" : [ \"3\" ]\n}', 0, NULL, '2021-04-14 23:05:53', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (133, '监理方案', 1, 'com.study.earlier.controller.SupervisorPlanController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorplan/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"jl11\" ],\n  \"path\" : [ \"/profile/upload/2021/04/14/462cfde152b4bd798ed509825135f8b8.txt\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"4\" ],\n  \"docName\" : [ \"123213\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12699\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\n  \"remark\" : [ \"213\" ]\n}', 0, NULL, '2021-04-14 23:13:16', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (134, '监理方案', 2, 'com.study.earlier.controller.SupervisorPlanController.editSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorplan/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"4\" ],\n  \"path\" : [ \"/profile/upload/2021/04/14/1719311bf48dade49b4bf42949c83ae8.pdf\" ],\n  \"updateBy\" : [ \"jl11\" ],\n  \"docName\" : [ \"123213\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12699\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\n  \"remark\" : [ \"213\" ]\n}', 0, NULL, '2021-04-14 23:21:41', '2021-04-14');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2292\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"监理支撑要素\" ],\n  \"url\" : [ \"/earlier/supervisorsupport\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:ss:view\" ],\n  \"orderNum\" : [ \"70\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-15 21:51:00', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2309\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"列表\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:ss:list\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-15 21:51:53', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2309\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:ss:add\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-15 21:52:08', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2309\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"修改\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:ss:edit\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-15 21:52:24', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2309\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"删除\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:ss:remove\" ],\n  \"orderNum\" : [ \"7\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-15 21:52:40', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (140, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"113\" ],\n  \"roleName\" : [ \"监理单位-监理\" ],\n  \"roleKey\" : [ \"jl\" ],\n  \"roleSort\" : [ \"90\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2303\" ]\n}', 0, NULL, '2021-04-15 22:02:59', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (141, '监理要素', 1, 'com.study.earlier.controller.SupervisorSupportController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorsupport/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"jl11\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"5\" ],\n  \"docName\" : [ \"123\" ],\n  \"securityClassification\" : [ \"加密\" ],\n  \"user.userId\" : [ \"12699\" ],\n  \"htmc\" : [ \"123\" ],\n  \"htzt\" : [ \"13\" ],\n  \"jsnr\" : [ \"4\" ],\n  \"qdsj\" : [ \"hk\" ],\n  \"zhtq\" : [ \"好课\" ],\n  \"jdyq\" : [ \"黑胶\" ],\n  \"jsqx\" : [ \"会尽快\" ],\n  \"zbqx\" : [ \"会尽快\" ],\n  \"htxs\" : [ \"个\" ],\n  \"htje\" : [ \"更好\" ],\n  \"fkfs\" : [ \"孤鸿寡鹄\" ],\n  \"zbj\" : [ \"22\" ],\n  \"wycf\" : [ \"与\" ],\n  \"jszl\" : [ \"任天野\" ],\n  \"xxaq\" : [ \"让他\" ],\n  \"aqbm\" : [ \"让他\" ],\n  \"zscq\" : [ \"任天野\" ],\n  \"kcdy\" : [ \"让他一人一台\" ],\n  \"sjjd\" : [ \"会尽快和控件\" ],\n  \"ssjd\" : [ \"会尽快和控件和\" ],\n  \"pxjd\" : [ \"和控件好看好看\" ],\n  \"xmys\" : [ \"好课好课会\" ],\n  \"shfw\" : [ \"滚滚滚\" ],\n  \"zqya\" : [ \"灌灌灌灌\" ],\n  \"zqyb\" : [ \"灌灌灌灌\" ],\n  \"tbyd\" : [ \"分段\" ],\n  \"readUserIds\" : [ \"12704\" ],\n  \"remark\" : [ \"方法\" ]\n}', 1, '\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Column \'jszl\' specified twice\n### The error may involve com.study.earlier.dao.SupervisorSupportDao.add-Inline\n### The error occurred while setting parameters\n### SQL: insert into earlier_supervisor_support (           htmc,            htzt,            jsnr,            qdsj,            zhtq,            jdyq,            jsqx,            zbqx,            htxs,            htje,            fkfs,            zbj,            wycf,            jszl,            jszl,            xxaq,            aqbm,            zscq,            kcdy,            sjjd,            ssjd,            pxjd,                       xmys,            shfw,            zqya,            zqyb,      tbyd,      doc_name,      doc_code,      supervisor_id,      project_id,      security_classification,      user_id,      sign_time,      jsdw_id,      create_by,      remark,      create_time         )values(           ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,            ?,                       ?,            ?,            ?,            ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      sysdate()   )\n### Cause: java.sql.SQLSyntaxErrorException: Column \'jszl\' specified twice\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Column \'jszl\' specified twice', '2021-04-15 22:04:19', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (142, '监理要素', 1, 'com.study.earlier.controller.SupervisorSupportController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorsupport/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"jl11\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"5\" ],\n  \"docName\" : [ \"fffff\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12704\" ],\n  \"htmc\" : [ \"tyu\" ],\n  \"htzt\" : [ \"通用人\" ],\n  \"jsnr\" : [ \"让他突然\" ],\n  \"qdsj\" : [ \"弱\" ],\n  \"zhtq\" : [ \"让他让他\" ],\n  \"jdyq\" : [ \"让他让他\" ],\n  \"jsqx\" : [ \"会尽快和控件\" ],\n  \"zbqx\" : [ \"回家客户\" ],\n  \"htxs\" : [ \"会尽快和控件和了\" ],\n  \"htje\" : [ \"考虑； \" ],\n  \"fkfs\" : [ \"就开了\" ],\n  \"zbj\" : [ \"就开了\" ],\n  \"wycf\" : [ \"就开了\" ],\n  \"jszl\" : [ \"规划局\" ],\n  \"xxaq\" : [ \"规划局\" ],\n  \"aqbm\" : [ \"监理\" ],\n  \"zscq\" : [ \"不能\" ],\n  \"kcdy\" : [ \"蛊惑江湖\" ],\n  \"sjjd\" : [ \"好几个环节\" ],\n  \"ssjd\" : [ \"高合金钢结核杆菌\" ],\n  \"pxjd\" : [ \"规划局国际化\" ],\n  \"xmys\" : [ \"规划将根据\" ],\n  \"shfw\" : [ \"国际化国际化\" ],\n  \"zqya\" : [ \"VC\" ],\n  \"zqyb\" : [ \"复工后\" ],\n  \"tbyd\" : [ \"复合弓\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\n  \"remark\" : [ \"父方法\" ]\n}', 0, NULL, '2021-04-15 22:10:01', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (143, '监理要素', 2, 'com.study.earlier.controller.SupervisorSupportController.editSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorsupport/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"1\" ],\n  \"updateBy\" : [ \"jl11\" ],\n  \"docName\" : [ \"fffff\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12704\" ],\n  \"htmc\" : [ \"tyu\" ],\n  \"htzt\" : [ \"通用人\" ],\n  \"jsnr\" : [ \"让他突然\" ],\n  \"qdsj\" : [ \"弱\" ],\n  \"zhtq\" : [ \"让他让他\" ],\n  \"jdyq\" : [ \"让他让他\" ],\n  \"jsqx\" : [ \"会尽快和控件\" ],\n  \"zbqx\" : [ \"回家客户\" ],\n  \"htxs\" : [ \"会尽快和控件和了\" ],\n  \"htje\" : [ \"考虑； \" ],\n  \"fkfs\" : [ \"就开了\" ],\n  \"zbj\" : [ \"就开了\" ],\n  \"wycf\" : [ \"就开了\" ],\n  \"jszl\" : [ \"规划局\" ],\n  \"xxaq\" : [ \"规划局\" ],\n  \"aqbm\" : [ \"监理\" ],\n  \"zscq\" : [ \"不能\" ],\n  \"kcdy\" : [ \"蛊惑江湖\" ],\n  \"sjjd\" : [ \"好几个环节\" ],\n  \"ssjd\" : [ \"高合金钢结核杆菌\" ],\n  \"pxjd\" : [ \"规划局国际化\" ],\n  \"xmys\" : [ \"规划将根据\" ],\n  \"shfw\" : [ \"国际化国际化\" ],\n  \"zqya\" : [ \"VC\" ],\n  \"zqyb\" : [ \"复工后\" ],\n  \"tbyd\" : [ \"复合弓\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\n  \"remark\" : [ \"父方法是\" ]\n}', 0, NULL, '2021-04-15 22:10:13', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (144, '监理要素', 2, 'com.study.earlier.controller.SupervisorSupportController.editSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/earlier/supervisorsupport/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"1\" ],\n  \"updateBy\" : [ \"jl11\" ],\n  \"docName\" : [ \"fffff\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12704\" ],\n  \"htmc\" : [ \"tyu\" ],\n  \"htzt\" : [ \"通用人\" ],\n  \"jsnr\" : [ \"让他突然\" ],\n  \"qdsj\" : [ \"弱\" ],\n  \"zhtq\" : [ \"让他让他\" ],\n  \"jdyq\" : [ \"让他让他\" ],\n  \"jsqx\" : [ \"会尽快和控件\" ],\n  \"zbqx\" : [ \"回家客户\" ],\n  \"htxs\" : [ \"会尽快和控件和了\" ],\n  \"htje\" : [ \"考虑； \" ],\n  \"fkfs\" : [ \"就开了\" ],\n  \"zbj\" : [ \"就开了\" ],\n  \"wycf\" : [ \"就开了\" ],\n  \"jszl\" : [ \"规划局\" ],\n  \"xxaq\" : [ \"规划局\" ],\n  \"aqbm\" : [ \"监理\" ],\n  \"zscq\" : [ \"不能\" ],\n  \"kcdy\" : [ \"蛊惑江湖\" ],\n  \"sjjd\" : [ \"好几个环节\" ],\n  \"ssjd\" : [ \"高合金钢结核杆菌\" ],\n  \"pxjd\" : [ \"规划局国际化\" ],\n  \"xmys\" : [ \"规划将根据\" ],\n  \"shfw\" : [ \"国际化国际化\" ],\n  \"zqya\" : [ \"VC\" ],\n  \"zqyb\" : [ \"复工后是是是\" ],\n  \"tbyd\" : [ \"复合弓\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\n  \"remark\" : [ \"父方法是\" ]\n}', 0, NULL, '2021-04-15 22:10:24', '2021-04-15');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2292\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"项目通讯录\" ],\n  \"url\" : [ \"/earlier/managercontact\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:mc:view\" ],\n  \"orderNum\" : [ \"40\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-16 23:39:22', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2324\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"列表\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:mc:list\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-16 23:39:46', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2324\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:mc:add\" ],\n  \"orderNum\" : [ \"9\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-16 23:40:01', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2324\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"修改\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:mc:edit\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-16 23:40:17', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2324\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"删除\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"earlier:mc:remove\" ],\n  \"orderNum\" : [ \"7\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-16 23:40:37', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (150, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"114\" ],\n  \"roleName\" : [ \"承建单位-项目经理\" ],\n  \"roleKey\" : [ \"xmjl\" ],\n  \"roleSort\" : [ \"80\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2303\" ]\n}', 0, NULL, '2021-04-16 23:40:55', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (151, '项目通讯录', 1, 'com.study.earlier.controller.ManagerContactController.addSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/earlier/managercontact/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"cj11\" ],\n  \"path\" : [ \"\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"5\" ],\n  \"docName\" : [ \"32423\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"jsmc\" : [ \"678\" ],\n  \"jsdz\" : [ \"678687\" ],\n  \"jsyb\" : [ \"ghgjh\" ],\n  \"jsdh\" : [ \"ghjgjh\" ],\n  \"jscz\" : [ \"ghjghj\" ],\n  \"jsbz\" : [ \"ghjgjhgjh\" ],\n  \"cjmc\" : [ \"ghjgjhghjg\" ],\n  \"cjdz\" : [ \"87\" ],\n  \"cjyb\" : [ \"v6\" ],\n  \"cjdh\" : [ \"67\" ],\n  \"cjcz\" : [ \"575\" ],\n  \"cjbz\" : [ \"67576\" ],\n  \"jlmc\" : [ \"5674\" ],\n  \"jldz\" : [ \"ftf\" ],\n  \"jlyb\" : [ \"5rtfhg\" ],\n  \"jldh\" : [ \"5ty\" ],\n  \"jlcz\" : [ \"5rtf\" ],\n  \"jlbz\" : [ \"45r\" ],\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12699\" ],\n  \"remark\" : [ \"c\" ]\n}', 0, NULL, '2021-04-16 23:42:28', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (152, '项目通讯录', 2, 'com.study.earlier.controller.ManagerContactController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/earlier/managercontact/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"1\" ],\n  \"path\" : [ \"/profile/upload/2021/04/16/cff3848f6ade045adbd5095f1b0cbced.xlsx\" ],\n  \"updateBy\" : [ \"cj11\" ],\n  \"docName\" : [ \"32423\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"jsmc\" : [ \"678\" ],\n  \"jsdz\" : [ \"678687\" ],\n  \"jsyb\" : [ \"ghgjh\" ],\n  \"jsdh\" : [ \"ghjgjh\" ],\n  \"jscz\" : [ \"ghjghj\" ],\n  \"jsbz\" : [ \"ghjgjhgjh\" ],\n  \"cjmc\" : [ \"ghjgjhghjg\" ],\n  \"cjdz\" : [ \"87\" ],\n  \"cjyb\" : [ \"v6\" ],\n  \"cjdh\" : [ \"67\" ],\n  \"cjcz\" : [ \"575\" ],\n  \"cjbz\" : [ \"67576\" ],\n  \"jlmc\" : [ \"5674d\" ],\n  \"jldz\" : [ \"ftf\" ],\n  \"jlyb\" : [ \"5rtfhg\" ],\n  \"jldh\" : [ \"5ty\" ],\n  \"jlcz\" : [ \"5rtf\" ],\n  \"jlbz\" : [ \"45r\" ],\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12707\", \"12710\", \"12699\", \"12704\" ],\n  \"remark\" : [ \"c\" ]\n}', 0, NULL, '2021-04-16 23:46:43', '2021-04-16');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"0\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"项目中期\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"80\" ],\n  \"icon\" : [ \"fa fa-address-book-o\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 09:37:11', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2329\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"勘察调研\" ],\n  \"url\" : [ \"/middle/survey\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:survey:view\" ],\n  \"orderNum\" : [ \"100\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 09:37:56', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2330\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"列表\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:survey:list\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 09:38:20', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2330\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:survey:add\" ],\n  \"orderNum\" : [ \"9\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 09:38:36', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2330\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"修改\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:survey:edit\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 09:38:52', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2330\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"删除\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:survey:remove\" ],\n  \"orderNum\" : [ \"7\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 09:39:12', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2330\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"审核\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:survey:sp\" ],\n  \"orderNum\" : [ \"6\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 09:39:32', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (160, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"114\" ],\n  \"roleName\" : [ \"承建单位-项目经理\" ],\n  \"roleKey\" : [ \"xmjl\" ],\n  \"roleSort\" : [ \"80\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2303,2329,2330,2331,2332,2333,2334,2335\" ]\n}', 0, NULL, '2021-04-17 09:44:18', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (161, '勘察调研', 1, 'com.study.middle.controller.SurveyController.addSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/survey/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"cj11\" ],\n  \"path\" : [ \"/profile/upload/2021/04/17/6cf443137f18de9ad1317da327fc947a.png\" ],\n  \"jldw.deptId\" : [ \"207\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"5\" ],\n  \"yezhu.userId\" : [ \"12700\" ],\n  \"jianli.userId\" : [ \"12699\" ],\n  \"docName\" : [ \"erwrwer\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"content\" : [ \"werer\" ],\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12699\" ],\n  \"remark\" : [ \"ew\" ]\n}', 0, NULL, '2021-04-17 09:59:14', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (162, '勘察调研', 2, 'com.study.middle.controller.SurveyController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/survey/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"2\" ],\n  \"path\" : [ \"/profile/upload/2021/04/17/6cf443137f18de9ad1317da327fc947a.png\" ],\n  \"updateBy\" : [ \"cj11\" ],\n  \"docName\" : [ \"erwrwer\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"content\" : [ \"werer\" ],\n  \"remark\" : [ \"ewss\" ]\n}', 1, '', '2021-04-17 10:13:16', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (163, '勘察调研', 2, 'com.study.middle.controller.SurveyController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/survey/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"2\" ],\n  \"path\" : [ \"/profile/upload/2021/04/17/6cf443137f18de9ad1317da327fc947a.png\" ],\n  \"updateBy\" : [ \"cj11\" ],\n  \"docName\" : [ \"erwrwer\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"content\" : [ \"werer\" ],\n  \"remark\" : [ \"ewssdddd\" ]\n}', 1, '', '2021-04-17 10:16:02', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (164, '勘察调研', 2, 'com.study.middle.controller.SurveyController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/survey/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"2\" ],\n  \"path\" : [ \"/profile/upload/2021/04/17/6cf443137f18de9ad1317da327fc947a.png\" ],\n  \"updateBy\" : [ \"cj11\" ],\n  \"docName\" : [ \"erwrwer\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"content\" : [ \"werer\" ],\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12699\" ],\n  \"remark\" : [ \"ewssddddff\" ]\n}', 0, NULL, '2021-04-17 10:17:52', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2329\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"勘察调研审核\" ],\n  \"url\" : [ \"/middle/survey/todoIndex\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:survey:sp\" ],\n  \"orderNum\" : [ \"99\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 11:27:29', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (166, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"112\" ],\n  \"roleName\" : [ \"建设单位-业主\" ],\n  \"roleKey\" : [ \"yz\" ],\n  \"roleSort\" : [ \"100\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2293,2294,2295,2296,2297,2303,2329,2336\" ]\n}', 0, NULL, '2021-04-17 11:27:55', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (167, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"113\" ],\n  \"roleName\" : [ \"监理单位-监理\" ],\n  \"roleKey\" : [ \"jl\" ],\n  \"roleSort\" : [ \"90\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2303,2329,2336\" ]\n}', 0, NULL, '2021-04-17 11:28:03', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2329\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"抄送阅读\" ],\n  \"url\" : [ \"/doc/read/middle\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 11:37:21', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (169, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"115\" ],\n  \"roleName\" : [ \"建设单位-负责人\" ],\n  \"roleKey\" : [ \"jsfzr\" ],\n  \"roleSort\" : [ \"100\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2303,2329,2337\" ]\n}', 0, NULL, '2021-04-17 11:38:04', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (170, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"112\" ],\n  \"roleName\" : [ \"建设单位-业主\" ],\n  \"roleKey\" : [ \"yz\" ],\n  \"roleSort\" : [ \"100\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2293,2294,2295,2296,2297,2303,2329,2336,2337\" ]\n}', 0, NULL, '2021-04-17 11:38:18', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (171, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"113\" ],\n  \"roleName\" : [ \"监理单位-监理\" ],\n  \"roleKey\" : [ \"jl\" ],\n  \"roleSort\" : [ \"90\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2303,2329,2336,2337\" ]\n}', 0, NULL, '2021-04-17 11:38:27', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (172, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"114\" ],\n  \"roleName\" : [ \"承建单位-项目经理\" ],\n  \"roleKey\" : [ \"xmjl\" ],\n  \"roleSort\" : [ \"80\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2303,2329,2330,2331,2332,2333,2334,2335,2337\" ]\n}', 0, NULL, '2021-04-17 11:38:33', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2329\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"工程进度\" ],\n  \"url\" : [ \"/middle/rate\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:rateview\" ],\n  \"orderNum\" : [ \"90\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 12:28:23', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2338\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"列表\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:rate:list\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 12:29:38', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2338\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:rate:add\" ],\n  \"orderNum\" : [ \"9\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 12:29:55', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2338\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"修改\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:rate:edit\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 12:30:11', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2338\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"删除\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:rate:remove\" ],\n  \"orderNum\" : [ \"7\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 12:30:27', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2329\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"工程进度审核\" ],\n  \"url\" : [ \"/middle/rate/todoIndex\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:rate:sp\" ],\n  \"orderNum\" : [ \"89\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 12:31:17', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (179, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"112\" ],\n  \"roleName\" : [ \"建设单位-业主\" ],\n  \"roleKey\" : [ \"yz\" ],\n  \"roleSort\" : [ \"100\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2293,2294,2295,2296,2297,2303,2329,2336,2343,2337\" ]\n}', 0, NULL, '2021-04-17 12:31:33', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (180, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"113\" ],\n  \"roleName\" : [ \"监理单位-监理\" ],\n  \"roleKey\" : [ \"jl\" ],\n  \"roleSort\" : [ \"90\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2303,2329,2336,2343,2337\" ]\n}', 0, NULL, '2021-04-17 12:31:40', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (181, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"114\" ],\n  \"roleName\" : [ \"承建单位-项目经理\" ],\n  \"roleKey\" : [ \"xmjl\" ],\n  \"roleSort\" : [ \"80\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2303,2329,2330,2331,2332,2333,2334,2335,2338,2339,2340,2341,2342,2337\" ]\n}', 0, NULL, '2021-04-17 12:31:49', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (182, '工程进度', 1, 'com.study.middle.controller.RateController.addSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/rate/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"cj11\" ],\n  \"path\" : [ \"/profile/upload/2021/04/17/1022459dd31206e02dbd45baa3d4a3da.png\" ],\n  \"jldw.deptId\" : [ \"207\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"5\" ],\n  \"yezhu.userId\" : [ \"12700\" ],\n  \"jianli.userId\" : [ \"12699\" ],\n  \"docName\" : [ \"234324\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"content\" : [ \"234\" ],\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12699\" ],\n  \"remark\" : [ \"234\" ]\n}', 0, NULL, '2021-04-17 12:37:15', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (183, '工程进度', 2, 'com.study.middle.controller.RateController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/rate/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"1\" ],\n  \"path\" : [ \"/profile/upload/2021/04/17/1022459dd31206e02dbd45baa3d4a3da.png\" ],\n  \"updateBy\" : [ \"cj11\" ],\n  \"docName\" : [ \"234324\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"content\" : [ \"234\" ],\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12707\", \"12699\", \"12704\" ],\n  \"remark\" : [ \"234\" ]\n}', 0, NULL, '2021-04-17 12:37:27', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2329\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"开工计划\" ],\n  \"url\" : [ \"/middle/startwork\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:startwork:sp\" ],\n  \"orderNum\" : [ \"80\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 13:57:05', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2329\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"开工计划审核\" ],\n  \"url\" : [ \"/middle/startwork/todoIndex\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:startwork:sp\" ],\n  \"orderNum\" : [ \"79\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 13:57:54', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 2, 'com.study.web.controller.system.SysMenuController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/edit', '127.0.0.1', NULL, '{\n  \"menuId\" : [ \"2344\" ],\n  \"parentId\" : [ \"2329\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"开工计划\" ],\n  \"url\" : [ \"/middle/startwork\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:startwork:view\" ],\n  \"orderNum\" : [ \"80\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 13:58:08', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2344\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"列表\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:startwork:list\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 13:58:41', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2344\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:startwork:add\" ],\n  \"orderNum\" : [ \"9\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 13:58:57', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2344\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"修改\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:startwork:edit\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 13:59:13', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2344\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"删除\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"middle:startwork:remove\" ],\n  \"orderNum\" : [ \"7\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-04-17 13:59:28', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (191, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"112\" ],\n  \"roleName\" : [ \"建设单位-业主\" ],\n  \"roleKey\" : [ \"yz\" ],\n  \"roleSort\" : [ \"100\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2293,2294,2295,2296,2297,2303,2329,2336,2343,2345,2337\" ]\n}', 0, NULL, '2021-04-17 13:59:48', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (192, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"113\" ],\n  \"roleName\" : [ \"监理单位-监理\" ],\n  \"roleKey\" : [ \"jl\" ],\n  \"roleSort\" : [ \"90\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2303,2329,2336,2343,2345,2337\" ]\n}', 0, NULL, '2021-04-17 14:00:04', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (193, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\n  \"roleId\" : [ \"114\" ],\n  \"roleName\" : [ \"承建单位-项目经理\" ],\n  \"roleKey\" : [ \"xmjl\" ],\n  \"roleSort\" : [ \"80\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2292,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2303,2329,2330,2331,2332,2333,2334,2335,2338,2339,2340,2341,2342,2344,2346,2347,2348,2349,2337\" ]\n}', 0, NULL, '2021-04-17 14:00:36', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (194, '开工计划', 1, 'com.study.middle.controller.StartworkController.addSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/startwork/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"cj11\" ],\n  \"path\" : [ \"/profile/upload/2021/04/17/6c96b24f6f9cc2eac2c8720e63947f11.png\" ],\n  \"jldw.deptId\" : [ \"207\" ],\n  \"jsdw.deptId\" : [ \"210\" ],\n  \"project.projectId\" : [ \"5\" ],\n  \"yezhu.userId\" : [ \"12700\" ],\n  \"jianli.userId\" : [ \"12699\" ],\n  \"docName\" : [ \"开工计划\" ],\n  \"starttime\" : [ \"4月20日\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"content\" : [ \"搜索\" ],\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12699\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-04-17 14:01:45', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (195, '开工计划', 2, 'com.study.middle.controller.StartworkController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/startwork/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"1\" ],\n  \"path\" : [ \"/profile/upload/2021/04/17/6c96b24f6f9cc2eac2c8720e63947f11.png\" ],\n  \"updateBy\" : [ \"cj11\" ],\n  \"docName\" : [ \"开工计划\" ],\n  \"starttime\" : [ \"4月20日\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12698\" ],\n  \"content\" : [ \"搜索\" ],\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12707\", \"12699\", \"12704\" ],\n  \"remark\" : [ \"ll\" ]\n}', 0, NULL, '2021-04-17 14:03:01', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"项目后期\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"60\" ],\r\n  \"icon\" : [ \"fa fa-american-sign-language-interpreting\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:19:19', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2350\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"设备验收\" ],\r\n  \"url\" : [ \"/later/equipcheck\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"later:equipcheck:view\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:20:07', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2351\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"列表\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"later:equipcheck:list\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:20:25', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2351\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"新增\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"later:equipcheck:add\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:20:39', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2351\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"later:equipcheck:edit\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:20:54', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2351\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"later:equipcheck:remove\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:21:05', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2350\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"设备验收审核\" ],\r\n  \"url\" : [ \"/later/equipcheck/todoIndex\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"later:equipcheck:sp\" ],\r\n  \"orderNum\" : [ \"99\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:22:42', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 2, 'com.study.web.controller.system.SysMenuController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/edit', '127.0.0.1', NULL, '{\r\n  \"menuId\" : [ \"2350\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"项目后期\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"60\" ],\r\n  \"icon\" : [ \"fa fa-adjust\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:22:51', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (204, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"115\" ],\r\n  \"roleName\" : [ \"建设单位-负责人\" ],\r\n  \"roleKey\" : [ \"jsfzr\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2303,2329,2337,2350,2356\" ]\r\n}', 0, NULL, '2021-04-17 17:23:08', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (205, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"112\" ],\r\n  \"roleName\" : [ \"建设单位-业主\" ],\r\n  \"roleKey\" : [ \"yz\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2293,2294,2295,2296,2297,2303,2329,2336,2343,2345,2337,2350,2356\" ]\r\n}', 0, NULL, '2021-04-17 17:23:16', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (206, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"113\" ],\r\n  \"roleName\" : [ \"监理单位-监理\" ],\r\n  \"roleKey\" : [ \"jl\" ],\r\n  \"roleSort\" : [ \"90\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2303,2329,2336,2343,2345,2337,2350,2356\" ]\r\n}', 0, NULL, '2021-04-17 17:23:21', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (207, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"114\" ],\r\n  \"roleName\" : [ \"承建单位-项目经理\" ],\r\n  \"roleKey\" : [ \"xmjl\" ],\r\n  \"roleSort\" : [ \"80\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2303,2329,2330,2331,2332,2333,2334,2335,2338,2339,2340,2341,2342,2344,2346,2347,2348,2349,2337,2350,2351,2352,2353,2354,2355\" ]\r\n}', 0, NULL, '2021-04-17 17:23:26', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (208, '设备验收', 1, 'com.study.later.controller.EquipcheckController.addSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/later/equipcheck/add', '127.0.0.1', NULL, '{\r\n  \"createBy\" : [ \"cj11\" ],\r\n  \"path\" : [ \"/profile/upload/2021/04/17/88161d26a27ceb473708eaef77672140.txt\" ],\r\n  \"jldw.deptId\" : [ \"207\" ],\r\n  \"jsdw.deptId\" : [ \"210\" ],\r\n  \"project.projectId\" : [ \"5\" ],\r\n  \"yezhu.userId\" : [ \"12700\" ],\r\n  \"jianli.userId\" : [ \"12699\" ],\r\n  \"docName\" : [ \"3\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12698\" ],\r\n  \"content\" : [ \"213\" ],\r\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12699\" ],\r\n  \"remark\" : [ \"123\" ]\r\n}', 0, NULL, '2021-04-17 17:25:29', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (209, '设备验收', 2, 'com.study.later.controller.EquipcheckController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/later/equipcheck/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"3\" ],\r\n  \"path\" : [ \"/profile/upload/2021/04/17/88161d26a27ceb473708eaef77672140.txt\" ],\r\n  \"updateBy\" : [ \"cj11\" ],\r\n  \"docName\" : [ \"3\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12698\" ],\r\n  \"content\" : [ \"213\" ],\r\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12710\", \"12699\", \"12704\" ],\r\n  \"remark\" : [ \"123rrr\" ]\r\n}', 0, NULL, '2021-04-17 17:25:36', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (210, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2350\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"抄送阅读\" ],\r\n  \"url\" : [ \"/doc/read/later\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-17 17:27:32', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (211, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"112\" ],\r\n  \"roleName\" : [ \"建设单位-业主\" ],\r\n  \"roleKey\" : [ \"yz\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2293,2294,2295,2296,2297,2303,2329,2336,2343,2345,2337,2350,2356,2357\" ]\r\n}', 0, NULL, '2021-04-17 17:27:40', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (212, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"115\" ],\r\n  \"roleName\" : [ \"建设单位-负责人\" ],\r\n  \"roleKey\" : [ \"jsfzr\" ],\r\n  \"roleSort\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2303,2329,2337,2350,2356,2357\" ]\r\n}', 0, NULL, '2021-04-17 17:27:45', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (213, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"113\" ],\r\n  \"roleName\" : [ \"监理单位-监理\" ],\r\n  \"roleKey\" : [ \"jl\" ],\r\n  \"roleSort\" : [ \"90\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2298,2299,2300,2301,2302,2304,2305,2306,2307,2308,2309,2310,2311,2312,2313,2303,2329,2336,2343,2345,2337,2350,2356,2357\" ]\r\n}', 0, NULL, '2021-04-17 17:27:49', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (214, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"114\" ],\r\n  \"roleName\" : [ \"承建单位-项目经理\" ],\r\n  \"roleKey\" : [ \"xmjl\" ],\r\n  \"roleSort\" : [ \"80\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2292,2314,2315,2316,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2303,2329,2330,2331,2332,2333,2334,2335,2338,2339,2340,2341,2342,2344,2346,2347,2348,2349,2337,2350,2351,2352,2353,2354,2355,2357\" ]\r\n}', 0, NULL, '2021-04-17 17:27:55', '2021-04-17');
INSERT INTO `sys_oper_log` VALUES (215, '用户管理', 3, 'com.study.web.controller.system.SysUserController.remove()', 1, 'admin', 1, 0, '根', '/gp/system/user/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"12698,12699,12700,12701,12702,12703,12704,12705,12706\" ]\n}', 0, NULL, '2021-05-01 03:59:49', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (216, '用户管理', 3, 'com.study.web.controller.system.SysUserController.remove()', 1, 'admin', 1, 0, '根', '/gp/system/user/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"12707,12708,12709,12710\" ]\n}', 0, NULL, '2021-05-01 03:59:54', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (217, '角色管理', 3, 'com.study.web.controller.system.SysRoleController.remove()', 1, 'admin', 1, 0, '根', '/gp/system/role/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"112,115,113,114\" ]\n}', 0, NULL, '2021-05-01 04:00:02', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (218, '角色管理', 3, 'com.study.web.controller.system.SysRoleController.remove()', 1, 'admin', 1, 0, '根', '/gp/system/role/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"114\" ]\n}', 0, NULL, '2021-05-01 04:00:12', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (219, '角色管理', 3, 'com.study.web.controller.system.SysRoleController.remove()', 1, 'admin', 1, 0, '根', '/gp/system/role/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"112,115,113,114\" ]\n}', 0, NULL, '2021-05-01 04:00:22', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"0\" ],\n  \"menuTopId\" : [ \"1\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"基础数据\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"100\" ],\n  \"icon\" : [ \"fa fa-address-book-o\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:09:46', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (221, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2402\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"病人信息\" ],\n  \"url\" : [ \"/base/patient\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"base:patient:view\" ],\n  \"orderNum\" : [ \"100\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:10:49', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (222, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2403\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"列表\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"base:patient:list\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:11:07', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (223, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2403\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"base:patient:add\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:11:24', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (224, '菜单管理', 2, 'com.study.web.controller.system.SysMenuController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/edit', '127.0.0.1', NULL, '{\n  \"menuId\" : [ \"2405\" ],\n  \"parentId\" : [ \"2403\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"base:patient:add\" ],\n  \"orderNum\" : [ \"9\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:11:33', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (225, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2403\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"修改\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"base:patient:edit\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:11:52', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (226, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/menu/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"2403\" ],\n  \"menuTopId\" : [ \"2\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"删除\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"base:patient:remove\" ],\n  \"orderNum\" : [ \"6\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:12:11', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (227, '角色管理', 1, 'com.study.web.controller.system.SysRoleController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/add', '127.0.0.1', NULL, '{\n  \"roleName\" : [ \"医生\" ],\n  \"roleKey\" : [ \"ys\" ],\n  \"roleSort\" : [ \"10\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2402,2403,2404,2405,2406,2407\" ]\n}', 0, NULL, '2021-05-01 23:18:26', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (228, '角色管理', 1, 'com.study.web.controller.system.SysRoleController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/add', '127.0.0.1', NULL, '{\n  \"roleName\" : [ \"护士\" ],\n  \"roleKey\" : [ \"hs\" ],\n  \"roleSort\" : [ \"9\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"2402,2403,2404\" ]\n}', 0, NULL, '2021-05-01 23:18:42', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (229, '部门管理', 2, 'com.study.web.controller.system.SysDeptController.editSave()', 1, 'admin', 1, 0, '根', '/gp/system/dept/edit', '127.0.0.1', NULL, '{\n  \"deptId\" : [ \"100\" ],\n  \"parentId\" : [ \"0\" ],\n  \"parentName\" : [ \"无\" ],\n  \"deptName\" : [ \"市第一人民医院\" ],\n  \"shortName\" : [ \"市第一人民医院\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:19:26', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (230, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"100\" ],\n  \"deptName\" : [ \"外科\" ],\n  \"shortName\" : [ \"外科\" ],\n  \"orderNum\" : [ \"100\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:19:56', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (231, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"100\" ],\n  \"deptName\" : [ \"内科\" ],\n  \"shortName\" : [ \"内科\" ],\n  \"orderNum\" : [ \"90\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:20:12', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (232, '部门管理', 1, 'com.study.web.controller.system.SysDeptController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/dept/add', '127.0.0.1', NULL, '{\n  \"parentId\" : [ \"100\" ],\n  \"deptName\" : [ \"五官\" ],\n  \"shortName\" : [ \"五官\" ],\n  \"orderNum\" : [ \"80\" ],\n  \"leader\" : [ \"\" ],\n  \"phone\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', 0, NULL, '2021-05-01 23:20:26', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (233, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/user/add', '127.0.0.1', NULL, '{\n  \"deptId\" : [ \"213\" ],\n  \"loginName\" : [ \"ys1\" ],\n  \"password\" : [ \"123456\" ],\n  \"userName\" : [ \"医生\" ],\n  \"deptName\" : [ \"外科\" ],\n  \"phonenumber\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"idcardno\" : [ \"\" ],\n  \"userCode\" : [ \"\" ],\n  \"sex\" : [ \"2\" ],\n  \"role\" : [ \"116\" ],\n  \"remark\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"116\" ],\n  \"postIds\" : [ \"\" ]\n}', 0, NULL, '2021-05-01 23:23:12', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (234, '病人信息', 1, 'com.study.base.controller.PatientController.addSave()', 1, 'ys1', 12711, 0, '外科', '/gp/base/patient/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"ys1\" ],\n  \"name\" : [ \"张三\" ],\n  \"phone\" : [ \"13866778800\" ],\n  \"idcardno\" : [ \"342223199001010001\" ],\n  \"age\" : [ \"31\" ],\n  \"sex\" : [ \"男\" ],\n  \"address\" : [ \"顶顶顶顶d\" ],\n  \"remark\" : [ \"订单\" ]\n}', 0, NULL, '2021-05-01 23:37:34', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (235, '病人信息', 1, 'com.study.base.controller.PatientController.addSave()', 1, 'ys1', 12711, 0, '外科', '/gp/base/patient/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"ys1\" ],\n  \"name\" : [ \"李四\" ],\n  \"phone\" : [ \"13347658734\" ],\n  \"idcardno\" : [ \"364785634785634785\" ],\n  \"age\" : [ \"22\" ],\n  \"sex\" : [ \"女\" ],\n  \"address\" : [ \"23874236784\" ],\n  \"remark\" : [ \"567576\" ]\n}', 0, NULL, '2021-05-01 23:39:10', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (236, '病人信息', 2, 'com.study.base.controller.PatientController.updateSave()', 1, 'ys1', 12711, 0, '外科', '/gp/base/patient/edit', '127.0.0.1', NULL, '{\n  \"id\" : [ \"2\" ],\n  \"updateBy\" : [ \"ys1\" ],\n  \"name\" : [ \"李四\" ],\n  \"phone\" : [ \"13347658734\" ],\n  \"idcardno\" : [ \"364785634785634785\" ],\n  \"age\" : [ \"22\" ],\n  \"sex\" : [ \"女\" ],\n  \"address\" : [ \"23874236784\" ],\n  \"remark\" : [ \"567576热热热\" ]\n}', 0, NULL, '2021-05-01 23:39:17', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (237, '病人信息', 3, 'com.study.base.controller.PatientController.remove()', 1, 'ys1', 12711, 0, '外科', '/gp/base/patient/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"1\" ]\n}', 0, NULL, '2021-05-01 23:40:58', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (238, '病人信息', 3, 'com.study.base.controller.PatientController.remove()', 1, 'ys1', 12711, 0, '外科', '/gp/base/patient/remove', '127.0.0.1', NULL, '{\n  \"ids\" : [ \"2\" ]\n}', 0, NULL, '2021-05-01 23:41:03', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (239, '病人信息', 1, 'com.study.base.controller.PatientController.addSave()', 1, 'ys1', 12711, 0, '外科', '/gp/base/patient/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"ys1\" ],\n  \"name\" : [ \"张三\" ],\n  \"phone\" : [ \"4234234234\" ],\n  \"idcardno\" : [ \"34758937598\" ],\n  \"age\" : [ \"43\" ],\n  \"sex\" : [ \"男\" ],\n  \"address\" : [ \"23423423\" ],\n  \"remark\" : [ \"234\" ]\n}', 0, NULL, '2021-05-01 23:43:08', '2021-05-01');
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2167', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:46:12', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2179', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:46:18', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2195', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:46:23', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (243, '角色管理', 3, 'com.study.web.controller.system.SysRoleController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/role/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"105,104,111,110,109,108,107,106,2\" ]\r\n}', 0, NULL, '2021-04-12 16:46:47', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2179', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:52:43', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2268', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:52:47', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2231', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:52:51', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2167', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:52:53', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (248, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2155', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:52:57', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (249, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2186', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:00', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (250, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2097', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:03', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (251, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2028', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:05', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (252, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2197', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:08', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (253, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2314', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:11', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (254, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2151', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:14', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (255, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2115', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:17', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (256, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2076', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:22', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (257, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2023', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:24', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (258, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2297', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:28', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (259, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2104', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:30', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (260, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2229', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:33', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/2208', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:36', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/115', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:39', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/3', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:53:41', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/remove/112', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-04-12 16:54:27', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 2, 'com.study.web.controller.system.SysMenuController.editSave()', 1, 'admin', 1, 0, '学校处室', '/gp/system/menu/edit', '127.0.0.1', NULL, '{\r\n  \"menuId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuTopId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"用户管理\" ],\r\n  \"url\" : [ \"/system/user\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:view\" ],\r\n  \"orderNum\" : [ \"120\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-04-12 16:54:38', '2021-04-12');
INSERT INTO `sys_oper_log` VALUES (266, '角色管理', 1, 'com.study.web.controller.system.SysRoleController.addSave()', 1, 'admin', 1, 0, '根', '/gp/system/role/add', '127.0.0.1', NULL, '{\r\n  \"roleName\" : [ \"建设单位负责人\" ],\r\n  \"roleKey\" : [ \"jsfzr\" ],\r\n  \"roleSort\" : [ \"110\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-04-13 17:26:53', '2021-04-13');
INSERT INTO `sys_oper_log` VALUES (267, '勘察调研', 2, 'com.study.middle.controller.SurveyController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/survey/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"2\" ],\r\n  \"path\" : [ \"/profile/upload/2021/04/17/6cf443137f18de9ad1317da327fc947a.png\" ],\r\n  \"updateBy\" : [ \"cj11\" ],\r\n  \"docName\" : [ \"erwrwer\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12698\" ],\r\n  \"content\" : [ \"werer\" ],\r\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12707\", \"12710\", \"12699\", \"12704\" ],\r\n  \"remark\" : [ \"ewssddddff\" ]\r\n}', 0, NULL, '2021-05-14 17:14:01', '2021-05-14');
INSERT INTO `sys_oper_log` VALUES (268, '工程进度', 2, 'com.study.middle.controller.RateController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/rate/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"1\" ],\r\n  \"path\" : [ \"/profile/upload/2021/04/17/1022459dd31206e02dbd45baa3d4a3da.png\" ],\r\n  \"updateBy\" : [ \"cj11\" ],\r\n  \"docName\" : [ \"234324\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12698\" ],\r\n  \"content\" : [ \"234\" ],\r\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12707\", \"12699\", \"12704\" ],\r\n  \"remark\" : [ \"234\" ]\r\n}', 0, NULL, '2021-05-14 17:15:34', '2021-05-14');
INSERT INTO `sys_oper_log` VALUES (269, '开工计划', 2, 'com.study.middle.controller.StartworkController.editSave()', 1, 'cj11', 12698, 0, '承建单位1', '/gp/middle/startwork/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"1\" ],\r\n  \"path\" : [ \"/profile/upload/2021/04/17/6c96b24f6f9cc2eac2c8720e63947f11.png\" ],\r\n  \"updateBy\" : [ \"cj11\" ],\r\n  \"docName\" : [ \"开工计划\" ],\r\n  \"starttime\" : [ \"4月20日\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12698\" ],\r\n  \"content\" : [ \"搜索\" ],\r\n  \"readUserIds\" : [ \"12701\", \"12700\", \"12707\", \"12699\", \"12704\" ],\r\n  \"remark\" : [ \"ll\" ]\r\n}', 0, NULL, '2021-05-14 17:15:43', '2021-05-14');
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"任务管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"50\" ],\r\n  \"icon\" : [ \"fa fa-calendar\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-18 14:10:11', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"模版管理\" ],\r\n  \"url\" : [ \"/task/projecttemp\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-18 14:10:40', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (272, '角色管理', 4, 'com.study.web.controller.system.SysRoleController.cancelAuthUserAll()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/role/authUser/cancelAll', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"117\" ],\r\n  \"userIds\" : [ \"12712,12713\" ]\r\n}', 0, NULL, '2021-05-18 14:10:54', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (273, '角色管理', 3, 'com.study.web.controller.system.SysRoleController.remove()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/role/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"117\" ]\r\n}', 0, NULL, '2021-05-18 14:10:59', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (274, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"116\" ],\r\n  \"roleName\" : [ \"普通用户\" ],\r\n  \"roleKey\" : [ \"ys\" ],\r\n  \"roleSort\" : [ \"10\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-18 14:11:10', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (275, '用户管理', 3, 'com.study.web.controller.system.SysUserController.remove()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/user/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"12712,12713\" ]\r\n}', 0, NULL, '2021-05-18 14:11:24', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (276, '用户管理', 2, 'com.study.web.controller.system.SysUserController.editSave()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/user/edit', '127.0.0.1', NULL, '{\r\n  \"userId\" : [ \"12711\" ],\r\n  \"deptId\" : [ \"213\" ],\r\n  \"loginName\" : [ \"ys1\" ],\r\n  \"userName\" : [ \"伊升\" ],\r\n  \"dept.deptName\" : [ \"外科\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"116\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"116\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-18 14:11:49', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (277, '部门管理', 2, 'com.study.web.controller.system.SysDeptController.editSave()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/dept/edit', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"213\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"市第一人民医院\" ],\r\n  \"deptName\" : [ \"内部\" ],\r\n  \"shortName\" : [ \"内部\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"leader\" : [ \"\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-18 14:12:17', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (278, '部门管理', 3, 'com.study.web.controller.system.SysDeptController.remove()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/dept/remove/214', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-18 14:12:21', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (279, '部门管理', 3, 'com.study.web.controller.system.SysDeptController.remove()', 1, 'admin', 1, 0, '市第一人民医院', '/gp/system/dept/remove/215', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-18 14:12:23', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (280, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"116\" ],\r\n  \"roleName\" : [ \"普通用户\" ],\r\n  \"roleKey\" : [ \"ys\" ],\r\n  \"roleSort\" : [ \"10\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2423,2424\" ]\r\n}', 0, NULL, '2021-05-18 14:13:50', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (281, '项目概况', 2, 'com.study.earlier.controller.ManagerSummaryController.editSave()', 1, 'admin', 1, 0, '根', '/gp/earlier/managersummary/edit', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"1\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"docName\" : [ \"123\" ],\r\n  \"securityClassification\" : [ \"非密\" ],\r\n  \"user.userId\" : [ \"12698\" ],\r\n  \"jszb\" : [ \"123\" ],\r\n  \"jsqd\" : [ \"123\" ],\r\n  \"jshtje\" : [ \"gjh\" ],\r\n  \"jsfk1\" : [ \"vbjh\" ],\r\n  \"jsfk2\" : [ \"gjh\" ],\r\n  \"jsfk3\" : [ \"ghjkhkj\" ],\r\n  \"jsfk4\" : [ \"hjkhkj\" ],\r\n  \"jlzb\" : [ \"hjkhkj\" ],\r\n  \"jlqd\" : [ \"hjkhjk\" ],\r\n  \"jlhtje\" : [ \"hjkhkj\" ],\r\n  \"jlfk1\" : [ \"fgh\" ],\r\n  \"jlfk2\" : [ \"fghfhgf\" ],\r\n  \"jlfk3\" : [ \"fghfhgfhg\" ],\r\n  \"jlfk4\" : [ \"fghfhgf\" ],\r\n  \"jsdwld\" : [ \"fgh\" ],\r\n  \"jsdwzg\" : [ \"dfg\" ],\r\n  \"cjdwld\" : [ \"dfg\" ],\r\n  \"cjdwzg\" : [ \"ghfh\" ],\r\n  \"sjdwld\" : [ \"fghfghf\" ],\r\n  \"sjdwzg\" : [ \"fghfhfhgjkl\" ],\r\n  \"jljc\" : [ \"jkljgh\" ],\r\n  \"qdhsj\" : [ \"gjhgjh\" ],\r\n  \"kgsj\" : [ \"ssss\" ],\r\n  \"zfzr\" : [ \"gjhgj\" ],\r\n  \"readUserIds\" : [ \"12698\", \"12699\", \"12700\", \"12701\", \"12704\", \"12706\", \"12707\", \"12700\", \"12707\", \"12699\", \"12704\" ],\r\n  \"remark\" : [ \"dff\" ]\r\n}', 0, NULL, '2021-05-16 16:45:01', '2021-05-16');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"项目管理\" ],\r\n  \"url\" : [ \"/task/project\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"120\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-18 16:27:59', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"项目回收站\" ],\r\n  \"url\" : [ \"/task/project/huishouIndex\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"110\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-18 16:28:38', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (284, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"116\" ],\r\n  \"roleName\" : [ \"普通用户\" ],\r\n  \"roleKey\" : [ \"ys\" ],\r\n  \"roleSort\" : [ \"10\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2423,2425,2426,2424\" ]\r\n}', 0, NULL, '2021-05-18 16:31:09', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (285, '用户管理', 1, 'com.study.web.controller.system.SysUserController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/user/add', '127.0.0.1', NULL, '{\r\n  \"deptId\" : [ \"213\" ],\r\n  \"loginName\" : [ \"ys2\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"userName\" : [ \"用户2\" ],\r\n  \"deptName\" : [ \"内部\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"idcardno\" : [ \"\" ],\r\n  \"userCode\" : [ \"\" ],\r\n  \"sex\" : [ \"2\" ],\r\n  \"role\" : [ \"116\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"116\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-18 16:31:31', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的任务\" ],\r\n  \"url\" : [ \"/task/task/taskUser\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"130\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-19 14:35:50', '2021-05-19');
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"任务列表\" ],\r\n  \"url\" : [ \"/task/task/taskDuty\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"128\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-19 14:36:28', '2021-05-19');
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"全部任务\" ],\r\n  \"url\" : [ \"/task/task/taskAdmin\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"126\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-19 14:36:49', '2021-05-19');
INSERT INTO `sys_oper_log` VALUES (289, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"116\" ],\r\n  \"roleName\" : [ \"普通用户\" ],\r\n  \"roleKey\" : [ \"ys\" ],\r\n  \"roleSort\" : [ \"10\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2423,2429,2430,2425,2427,2426,2424,2428\" ]\r\n}', 0, NULL, '2021-05-19 14:37:03', '2021-05-19');
INSERT INTO `sys_oper_log` VALUES (290, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"邀请列表\" ],\r\n  \"url\" : [ \"/task/projectuser/todoIndex\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"115\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-18 21:06:49', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (291, '字典类型', 3, 'com.study.web.controller.system.SysDictTypeController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/dict/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"106\" ]\r\n}', 1, '文档密级已分配,不能删除', '2021-05-18 21:19:35', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (292, '字典数据', 3, 'com.study.web.controller.system.SysDictDataController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/dict/data/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"119,120,121\" ]\r\n}', 0, NULL, '2021-05-18 21:19:39', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (293, '字典类型', 3, 'com.study.web.controller.system.SysDictTypeController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/dict/remove', '127.0.0.1', NULL, '{\r\n  \"ids\" : [ \"106\" ]\r\n}', 0, NULL, '2021-05-18 21:19:44', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (294, '字典类型', 1, 'com.study.web.controller.system.SysDictTypeController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/dict/add', '127.0.0.1', NULL, '{\r\n  \"dictName\" : [ \"任务优先级\" ],\r\n  \"dictType\" : [ \"task_yxj\" ],\r\n  \"dictSort\" : [ \"140\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-18 21:21:19', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (295, '字典数据', 1, 'com.study.web.controller.system.SysDictDataController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/dict/data/add', '127.0.0.1', NULL, '{\r\n  \"dictLabel\" : [ \"普通\" ],\r\n  \"dictValue\" : [ \"普通\" ],\r\n  \"dictType\" : [ \"task_yxj\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"100\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-18 21:21:33', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (296, '字典数据', 1, 'com.study.web.controller.system.SysDictDataController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/dict/data/add', '127.0.0.1', NULL, '{\r\n  \"dictLabel\" : [ \"紧急\" ],\r\n  \"dictValue\" : [ \"紧急\" ],\r\n  \"dictType\" : [ \"task_yxj\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"120\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-18 21:21:48', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (297, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"标签管理\" ],\r\n  \"url\" : [ \"/task/label\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"90\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-18 21:49:04', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (298, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"116\" ],\r\n  \"roleName\" : [ \"普通用户\" ],\r\n  \"roleKey\" : [ \"ys\" ],\r\n  \"roleSort\" : [ \"10\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2423,2425,2427,2426,2424,2428\" ]\r\n}', 0, NULL, '2021-05-18 21:49:15', '2021-05-18');
INSERT INTO `sys_oper_log` VALUES (299, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2423\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"数据分析\" ],\r\n  \"url\" : [ \"/task/chart/index\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"80\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-21 17:22:47', '2021-05-21');
INSERT INTO `sys_oper_log` VALUES (300, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"116\" ],\r\n  \"roleName\" : [ \"普通用户\" ],\r\n  \"roleKey\" : [ \"ys\" ],\r\n  \"roleSort\" : [ \"10\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"2423,2429,2430,2425,2427,2426,2424,2428,2432\" ]\r\n}', 0, NULL, '2021-05-21 17:22:54', '2021-05-21');
INSERT INTO `sys_oper_log` VALUES (301, '终验报审', 1, 'com.study.later.controller.LastcheckController.addSave()', 1, 'jl11', 12699, 0, '监理单位1', '/gp/later/lastcheck/add', '127.0.0.1', NULL, '{\n  \"createBy\" : [ \"jl11\" ],\n  \"path\" : [ \"\" ],\n  \"jldw.deptId\" : [ \"\" ],\n  \"jsdw.deptId\" : [ \"211\" ],\n  \"project.projectId\" : [ \"12\" ],\n  \"yezhu.userId\" : [ \"12700\" ],\n  \"jianli.userId\" : [ \"12704\" ],\n  \"docName\" : [ \"34\" ],\n  \"securityClassification\" : [ \"非密\" ],\n  \"user.userId\" : [ \"12699\" ],\n  \"content\" : [ \"34\" ],\n  \"readUserIds\" : [ \"12704\", \"12700\", \"12698\" ],\n  \"remark\" : [ \"\" ]\n}', 0, NULL, '2021-05-23 15:19:05', '2021-05-23');
INSERT INTO `sys_oper_log` VALUES (302, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"文章管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"60\" ],\r\n  \"icon\" : [ \"fa fa-file-pdf-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-23 23:01:26', '2021-05-23');
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2433\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"文章分类\" ],\r\n  \"url\" : [ \"/article/item\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-23 23:01:49', '2021-05-23');
INSERT INTO `sys_oper_log` VALUES (304, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2433\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"文章管理\" ],\r\n  \"url\" : [ \"/article/main\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"9\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-23 23:02:12', '2021-05-23');
INSERT INTO `sys_oper_log` VALUES (305, '字典类型', 1, 'com.study.web.controller.system.SysDictTypeController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/dict/add', '127.0.0.1', NULL, '{\r\n  \"dictName\" : [ \"文章是否置顶\" ],\r\n  \"dictType\" : [ \"article_istop\" ],\r\n  \"dictSort\" : [ \"150\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'article_istop\' for key \'dict_type\'\r\n### The error may involve com.study.system.dao.SysDictTypeDao.add-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_dict_type(      dict_name,       dict_type,       status,             create_by,       dict_sort,      create_time    )values(      ?,       ?,       ?,             ?,       ?,      sysdate()    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'article_istop\' for key \'dict_type\'\n; Duplicate entry \'article_istop\' for key \'dict_type\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'article_istop\' for key \'dict_type\'', '2021-05-23 23:03:57', '2021-05-23');
INSERT INTO `sys_oper_log` VALUES (306, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"数据管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"70\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-23 23:47:08', '2021-05-23');
INSERT INTO `sys_oper_log` VALUES (307, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2436\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"食物管理\" ],\r\n  \"url\" : [ \"/task/food\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-23 23:47:25', '2021-05-23');
INSERT INTO `sys_oper_log` VALUES (308, '菜单管理', 2, 'com.study.web.controller.system.SysMenuController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/edit', '127.0.0.1', NULL, '{\r\n  \"menuId\" : [ \"2436\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"数据管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"70\" ],\r\n  \"icon\" : [ \"fa fa-cube\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-23 23:47:45', '2021-05-23');
INSERT INTO `sys_oper_log` VALUES (309, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/add', '127.0.0.1', NULL, '{\r\n  \"configName\" : [ \"跑腿起步价\" ],\r\n  \"configKey\" : [ \"price_paotu_start\" ],\r\n  \"configValue\" : [ \"1.5\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-24 21:30:23', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (310, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/add', '127.0.0.1', NULL, '{\r\n  \"configName\" : [ \"跑腿起步价公里数\" ],\r\n  \"configKey\" : [ \"distance_paotu_start\" ],\r\n  \"configValue\" : [ \"3\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"即3功力内跑腿只收起步价\" ]\r\n}', 0, NULL, '2021-05-24 21:32:46', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (311, '参数管理', 2, 'com.study.web.controller.system.SysConfigController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/edit', '127.0.0.1', NULL, '{\r\n  \"configId\" : [ \"119\" ],\r\n  \"configName\" : [ \"跑腿起步价\" ],\r\n  \"configKey\" : [ \"price_paotu_start\" ],\r\n  \"configValue\" : [ \"4\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-24 21:32:50', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (312, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/add', '127.0.0.1', NULL, '{\r\n  \"configName\" : [ \"跑腿每公里价格\" ],\r\n  \"configKey\" : [ \"price_paotu_one\" ],\r\n  \"configValue\" : [ \"2\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"超过跑腿起步价之后每公里价格\" ]\r\n}', 0, NULL, '2021-05-24 21:33:39', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (313, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/add', '127.0.0.1', NULL, '{\r\n  \"configName\" : [ \"打印复印价格/张\" ],\r\n  \"configKey\" : [ \"price_print_one\" ],\r\n  \"configValue\" : [ \"0.1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"打印价格\" ]\r\n}', 0, NULL, '2021-05-24 21:37:54', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (314, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/add', '127.0.0.1', NULL, '{\r\n  \"configName\" : [ \"打印起步价\" ],\r\n  \"configKey\" : [ \"price_print_start\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"若打印张数*打印单价的钱少于起步价，则按起步价算\" ]\r\n}', 0, NULL, '2021-05-24 21:38:44', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (315, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/add', '127.0.0.1', NULL, '{\r\n  \"configName\" : [ \"快递起步价\" ],\r\n  \"configKey\" : [ \"price_parcel_start\" ],\r\n  \"configValue\" : [ \"3\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-24 22:21:08', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (316, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/add', '127.0.0.1', NULL, '{\r\n  \"configName\" : [ \"快递起步重量\" ],\r\n  \"configKey\" : [ \"weight_parcel_start\" ],\r\n  \"configValue\" : [ \"3\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-24 22:22:09', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (317, '参数管理', 1, 'com.study.web.controller.system.SysConfigController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/config/add', '127.0.0.1', NULL, '{\r\n  \"configName\" : [ \"快递超起步价后每千克价格\" ],\r\n  \"configKey\" : [ \"price_parcel_one\" ],\r\n  \"configValue\" : [ \"1\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-24 22:22:45', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (318, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2436\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"商店货物管理\" ],\r\n  \"url\" : [ \"/task/goods\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"90\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-24 22:34:10', '2021-05-24');
INSERT INTO `sys_oper_log` VALUES (319, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2429', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:06', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (320, '角色管理', 2, 'com.study.web.controller.system.SysRoleController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/role/edit', '127.0.0.1', NULL, '{\r\n  \"roleId\" : [ \"116\" ],\r\n  \"roleName\" : [ \"普通用户\" ],\r\n  \"roleKey\" : [ \"ys\" ],\r\n  \"roleSort\" : [ \"10\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-26 19:38:15', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (321, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2429', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:19', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (322, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2430', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:24', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (323, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2431', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:29', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (324, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2425', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:33', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (325, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2427', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:39', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (326, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2426', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:43', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (327, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2424', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:46', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (328, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2428', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:49', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (329, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2432', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:52', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (330, '菜单管理', 3, 'com.study.web.controller.system.SysMenuController.remove()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/remove/2423', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-26 19:38:54', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (331, '角色管理', 1, 'com.study.web.controller.system.SysRoleController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/role/add', '127.0.0.1', NULL, '{\r\n  \"roleName\" : [ \"跑腿员\" ],\r\n  \"roleKey\" : [ \"pty\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', 0, NULL, '2021-05-26 19:39:22', '2021-05-26');
INSERT INTO `sys_oper_log` VALUES (332, '个人信息', 2, 'com.study.web.controller.system.SysProfileController.updateAvatar()', 1, 'ys1', 12717, 0, '内部', '/gp/system/user/profile/updateAvatar', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-27 22:15:10', '2021-05-27');
INSERT INTO `sys_oper_log` VALUES (333, '个人信息', 2, 'com.study.web.controller.system.SysProfileController.updateAvatar()', 1, 'pt1', 12719, 0, '内部', '/gp/system/user/profile/updateAvatar', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-05-27 22:15:46', '2021-05-27');
INSERT INTO `sys_oper_log` VALUES (334, '菜单管理', 2, 'com.study.web.controller.system.SysMenuController.editSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/edit', '127.0.0.1', NULL, '{\r\n  \"menuId\" : [ \"2437\" ],\r\n  \"parentId\" : [ \"2436\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"外卖饭菜管理\" ],\r\n  \"url\" : [ \"/task/food\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-27 23:37:57', '2021-05-27');
INSERT INTO `sys_oper_log` VALUES (335, '重置密码', 2, 'com.study.web.controller.system.SysProfileController.resetPwd()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/user/profile/resetPwd', '127.0.0.1', NULL, '{\r\n  \"oldPassword\" : [ \"123456\" ],\r\n  \"newPassword\" : [ \"123456\" ],\r\n  \"confirmPassword\" : [ \"123456\" ]\r\n}', 0, NULL, '2021-05-28 23:08:36', '2021-05-28');
INSERT INTO `sys_oper_log` VALUES (336, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"骑手认证\" ],\r\n  \"url\" : [ \"/system/user/rzIndex\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"130\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-29 01:48:37', '2021-05-29');
INSERT INTO `sys_oper_log` VALUES (337, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"交易订单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"80\" ],\r\n  \"icon\" : [ \"fa fa-map-signs\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-29 11:50:49', '2021-05-29');
INSERT INTO `sys_oper_log` VALUES (338, '菜单管理', 1, 'com.study.web.controller.system.SysMenuController.addSave()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/menu/add', '127.0.0.1', NULL, '{\r\n  \"parentId\" : [ \"2440\" ],\r\n  \"menuTopId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"外卖订单\" ],\r\n  \"url\" : [ \"/task/order/food\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"100\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', 0, NULL, '2021-05-29 11:51:24', '2021-05-29');
INSERT INTO `sys_oper_log` VALUES (339, '个人信息', 2, 'com.study.web.controller.system.SysProfileController.updateAvatar()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/user/profile/updateAvatar', '127.0.0.1', NULL, '{ }', 0, NULL, '2021-09-11 21:23:01', '2021-09-11');
INSERT INTO `sys_oper_log` VALUES (340, '个人信息', 2, 'com.study.web.controller.system.SysProfileController.update()', 1, 'admin', 1, 0, 'XX部门', '/gp/system/user/profile/update', '127.0.0.1', NULL, '{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"超级管理员\" ],\r\n  \"phonenumber\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"sex\" : [ \"1\" ]\r\n}', 0, NULL, '2021-09-11 21:23:05', '2021-09-11');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'gly', '管理员', 1, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-04-12 21:41:27', '', NULL, NULL, 0);
INSERT INTO `sys_post` VALUES (2, 'yz', '业主', 2, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-04-12 21:40:54', '', NULL, NULL, 0);
INSERT INTO `sys_post` VALUES (3, 'jl', '监理人员', 3, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-04-12 21:40:41', '', NULL, NULL, 0);
INSERT INTO `sys_post` VALUES (4, 'pl', '项目经理', 4, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2021-04-12 21:40:24', '', NULL, NULL, 0);
INSERT INTO `sys_post` VALUES (5, 'fzr', '建设负责人', 5, '0', 'admin', '2021-04-13 21:40:48', 'admin', '2021-04-13 21:40:54', '', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `delete_flag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', 0, 'admin', '2018-03-16 11:33:00', 'admin', '2020-11-05 14:37:13', '管理员', NULL, NULL);
INSERT INTO `sys_role` VALUES (116, '普通用户', 'ys', 10, '1', '0', 0, 'admin', '2021-05-01 23:18:25', 'admin', '2021-05-26 19:38:13', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (117, '跑腿员', 'pty', 1, '1', '0', 0, 'admin', '2021-05-26 19:39:21', '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号/学号',
  `idcardno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 2停用）',
  `balance` float NULL DEFAULT 0 COMMENT '余额',
  `user_type` tinyint(4) NULL DEFAULT 0 COMMENT '0教师 1学生 2家长',
  `openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信公众号OPENID',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标志（0代表存在 1代表删除）',
  `oldpwd` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rz` tinyint(4) NULL DEFAULT 0 COMMENT '0未认证 1通过 2未通过',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `index_longname_unique`(`login_name`, `delete_flag`) USING BTREE,
  UNIQUE INDEX `index_code_unique`(`user_code`, `delete_flag`) USING BTREE,
  UNIQUE INDEX `index_idcardno_unique`(`idcardno`, `delete_flag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12724 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '超级管理员', '0001', '0001', '', '', '1', '/profile/avatar/2021/09/11/8884bcf0bec106fe7a6b1d79bc806ed6.png', 'dc627736009773eb987242a9ea0814f8', '965960', '0', 0, 0, '', '2021-04-21 23:43:50', '127.0.0.1', '2021-09-12 18:30:00', '管理员', 'admin', '2021-05-01 23:23:12', 'admin', '2021-09-12 18:29:59', NULL, NULL, 0, 'yZtq77VQjcHPOkQk8IxJzg==', 0);
INSERT INTO `sys_user` VALUES (12717, 213, 'ys1', '用户明', NULL, NULL, '13811223344@qq.com', '13811223344', '0', '/profile/avatar/2021/09/11/b8cd5244ba2c53ca0166a23a4fa09828.jpg', 'c5e0b6d86440b80ce72ec1c16318c7e4', '39976f', '0', 41, 1, NULL, '2021-05-27 11:43:56', '127.0.0.1', '2021-05-27 22:12:16', NULL, '', '2021-05-27 11:43:56', '', '2021-09-11 22:45:55', NULL, NULL, 0, '2A9eB9iQFIzRv9H1Dqn3o6wjdRJw576Y3pJ6P6A7CBNiDrIGx0X4qkmKzrBcfuNR', 0);
INSERT INTO `sys_user` VALUES (12718, 213, 'ys2', '用户2', NULL, NULL, '', '13822336655', '0', '/profile/avatar/2021/05/29/891c312620ef6103f7c80ccc8dace214.jpg', '7efbd7e9293d82e14cadd142962a6c37', '15dd90', '0', 186, 1, NULL, '2021-05-27 11:44:19', '', NULL, NULL, '', '2021-05-27 11:44:19', '', '2021-05-29 01:10:23', NULL, NULL, 0, 'OvZvUwfsIaRhsWcM7pFWk6li9jT98jEUGUfa9lb/rgZiDrIGx0X4qkmKzrBcfuNR', 0);
INSERT INTO `sys_user` VALUES (12719, 213, 'pt1', '跑腿12', NULL, NULL, '', '13555665566', '0', '/profile/avatar/2021/09/11/8b94f4ee54c95a04e6b679edd39590ba.jpg', '1cd54c95cf0681b4bec7dc0faac5bb78', '69530b', '0', 45, 2, NULL, '2021-05-27 11:44:40', '127.0.0.1', '2021-05-27 22:15:36', NULL, '', '2021-05-27 11:44:40', '', '2021-09-11 22:42:43', NULL, NULL, 0, 'FtUgOn9nPXpNLOBTvfF9AUvwtZcmdz1DPILm8Sx7nt5iDrIGx0X4qkmKzrBcfuNR', 1);
INSERT INTO `sys_user` VALUES (12720, 213, 'pt2', '跑腿2', NULL, NULL, '', '17855669966', '0', '', '7563ddbcebc70e17954c219fff719a22', '9b2590', '0', 0, 2, NULL, '2021-05-27 11:45:00', '', NULL, NULL, '', '2021-05-27 11:45:00', '', NULL, NULL, NULL, 0, 'HlPofzfPGyvd49f9S59XCJfS+mbYu9Hma+wWlk4ocp5iDrIGx0X4qkmKzrBcfuNR', 0);
INSERT INTO `sys_user` VALUES (12721, 213, 'pt3', '跑腿3', NULL, '121212202008081211', '', '13855662255', '0', '/profile/avatar/2021/05/29/2c3a4dc745366e9081457b5b11a79535.jpg', '2221ac199df5ad126658b4c47b789daf', 'b3439d', '0', 0, 2, NULL, '2021-05-29 13:12:23', '', NULL, NULL, '', '2021-05-29 13:12:23', '', '2021-05-29 13:13:06', NULL, NULL, 0, 'irZqf5tEYw6GQPeXeNJdKvCrS80G3krSntJCRgCvWn1iDrIGx0X4qkmKzrBcfuNR', 1);
INSERT INTO `sys_user` VALUES (12722, 213, 'pt4', '跑腿4', NULL, '513039199211203423', 'paotui4@qq.com', '13938423942', '0', '/profile/avatar/2021/09/12/92a51c4bde8d803263a798e02ec30add.jpg', 'e1f860a09f50cdddcb7b02d833d1c4e1', 'fad703', '0', 7, 2, NULL, '2021-09-11 23:41:35', '', NULL, NULL, '', '2021-09-11 23:41:35', '', '2021-09-12 17:44:10', NULL, NULL, 0, '/EH7MGJ91QFWcKEZNay4XlSy1d9E0fVXA9vLAKlyi2piDrIGx0X4qkmKzrBcfuNR', 1);
INSERT INTO `sys_user` VALUES (12723, 213, 'ys4', '杨晓婷', NULL, '513030199211031342', 'xiaoting@126.com', '13539849953', '0', '/profile/avatar/2021/09/12/98f0b392ffecd67df7588828ebaf0d46.jpg', '86d85dd927361f78f160f90132527f1a', 'b19f8f', '0', 332, 1, NULL, '2021-09-12 15:14:10', '', NULL, NULL, '', '2021-09-12 15:14:10', '', '2021-09-12 15:19:05', NULL, NULL, 0, '0WG0OmBVF3mhDgpirCDEfpv9s1SVtbubDSA3iVXJWJ1iDrIGx0X4qkmKzrBcfuNR', 0);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户姓名',
  `user_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '学工号',
  `idcardno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '身份证',
  `user_type` int(11) NULL DEFAULT 0,
  `phonenumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(11) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('7fce4009-00c8-49df-b957-a0dbe3762ad0', 'admin', '超级管理员', '0001', '0001', 0, '', 'XX部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-09-12 18:29:41', '2021-09-12 18:30:00', 604800000);
INSERT INTO `sys_user_online` VALUES ('a6ddbf30-01b9-47c8-8f98-2475f803eceb', 'admin', '超级管理员', '0001', '0001', 0, '', 'XX部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2021-09-11 22:28:23', '2021-09-11 22:28:28', 604800000);
INSERT INTO `sys_user_online` VALUES ('af3d082c-99cb-4eef-a8d0-74ba1e73d134', 'admin', '超级管理员', '0001', '0001', 0, '', 'XX部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2021-09-12 18:29:48', '2021-09-12 18:29:52', 604800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (12717, 116);
INSERT INTO `sys_user_role` VALUES (12718, 116);
INSERT INTO `sys_user_role` VALUES (12719, 117);
INSERT INTO `sys_user_role` VALUES (12720, 117);
INSERT INTO `sys_user_role` VALUES (12721, 117);
INSERT INTO `sys_user_role` VALUES (12722, 117);
INSERT INTO `sys_user_role` VALUES (12723, 116);

-- ----------------------------
-- Table structure for task_address
-- ----------------------------
DROP TABLE IF EXISTS `task_address`;
CREATE TABLE `task_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_address
-- ----------------------------
INSERT INTO `task_address` VALUES (1, 12717, '4号205', '13867232323', 1);
INSERT INTO `task_address` VALUES (2, 12717, '4号222', '13767675566', 0);
INSERT INTO `task_address` VALUES (3, 12718, '3号楼302', '13865455566', 1);
INSERT INTO `task_address` VALUES (4, 12723, '芙8-224', '13539849953', 1);
INSERT INTO `task_address` VALUES (5, 12723, '芙8-225', '13539849954', 0);

-- ----------------------------
-- Table structure for task_detail
-- ----------------------------
DROP TABLE IF EXISTS `task_detail`;
CREATE TABLE `task_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `utype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `io` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `money` float NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_detail
-- ----------------------------
INSERT INTO `task_detail` VALUES (1, 12717, 'user', '2021-05-27 23:03:26', 'in', NULL, 'cz', 30, '充值');
INSERT INTO `task_detail` VALUES (2, 12717, 'user', '2021-05-27 23:03:52', 'in', NULL, 'cz', 20, '充值');
INSERT INTO `task_detail` VALUES (3, 12719, 'pty', '2021-05-27 23:00:00', 'in', 6, 'wm', 4, '外卖跑腿收入');
INSERT INTO `task_detail` VALUES (4, 12717, 'user', '2021-05-27 23:00:00', 'out', 6, 'wm', 6, '外卖支出');
INSERT INTO `task_detail` VALUES (5, 12719, 'pty', '2021-05-28 00:10:29', 'in', 7, 'wm', 8, '外卖跑腿收入');
INSERT INTO `task_detail` VALUES (6, 12717, 'user', '2021-05-28 00:10:29', 'out', 7, 'wm', 22, '外卖支出');
INSERT INTO `task_detail` VALUES (7, 12719, 'pty', '2021-05-28 00:10:35', 'in', 4, 'wm', 7, '外卖跑腿收入');
INSERT INTO `task_detail` VALUES (8, 12717, 'user', '2021-05-28 00:10:35', 'out', 4, 'wm', 8, '外卖支出');
INSERT INTO `task_detail` VALUES (9, 12719, 'pty', '2021-05-28 00:10:55', 'out', NULL, 'qx', 3, '取现');
INSERT INTO `task_detail` VALUES (10, 12719, 'pty', '2021-05-28 10:45:55', 'in', 3, 'gw', 7, '购物跑腿收入');
INSERT INTO `task_detail` VALUES (11, 12717, 'user', '2021-05-28 10:45:55', 'out', 3, 'gw', 10, '购物支出');
INSERT INTO `task_detail` VALUES (12, 12718, 'user', '2021-05-29 01:09:30', 'in', NULL, 'cz', 200, '充值');
INSERT INTO `task_detail` VALUES (15, 12717, 'user', '2021-05-29 13:07:21', 'in', NULL, 'cz', 20, '充值');
INSERT INTO `task_detail` VALUES (16, 12719, 'pty', '2021-05-29 13:10:58', 'in', 11, 'wm', 7, '外卖跑腿收入');
INSERT INTO `task_detail` VALUES (17, 12717, 'user', '2021-05-29 13:10:58', 'out', 11, 'wm', 15, '外卖支出');
INSERT INTO `task_detail` VALUES (18, 12717, 'user', '2021-09-11 23:27:41', 'in', NULL, 'cz', 50, '充值');
INSERT INTO `task_detail` VALUES (19, 12719, 'pty', '2021-09-11 23:29:14', 'in', 6, 'gw', 8, '购物跑腿收入');
INSERT INTO `task_detail` VALUES (20, 12717, 'user', '2021-09-11 23:29:14', 'out', 6, 'gw', 15, '购物支出');
INSERT INTO `task_detail` VALUES (21, 12722, 'pty', NULL, 'in', 3, 'kd', 3, '跑腿收入');
INSERT INTO `task_detail` VALUES (22, 12717, 'user', NULL, 'out', 3, 'kd', 3, '跑腿支出');
INSERT INTO `task_detail` VALUES (23, 12723, 'user', '2021-09-12 15:22:25', 'in', NULL, 'cz', 200, '充值');
INSERT INTO `task_detail` VALUES (24, 12723, 'user', '2021-09-12 15:22:35', 'in', NULL, 'cz', 150, '充值');
INSERT INTO `task_detail` VALUES (25, 12722, 'pty', '2021-09-12 18:18:23', 'in', 13, 'wm', 4, '外卖跑腿收入');
INSERT INTO `task_detail` VALUES (26, 12723, 'user', '2021-09-12 18:18:23', 'out', 13, 'wm', 18, '外卖支出');

-- ----------------------------
-- Table structure for task_food
-- ----------------------------
DROP TABLE IF EXISTS `task_food`;
CREATE TABLE `task_food`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '食物ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '食物名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `sort` int(255) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_food
-- ----------------------------
INSERT INTO `task_food` VALUES (1, '青椒肉丝盖饭', '', '/profile/upload/2021/09/11/1fdc4e8e8922e05098c8a5b826dde13d.jpg', 8.00, 100);
INSERT INTO `task_food` VALUES (2, '蛋炒饭', '', '/profile/upload/2021/09/11/a82f3b50e204b08f1d049cd3e7e576a0.jpg', 6.00, 90);

-- ----------------------------
-- Table structure for task_food_detail
-- ----------------------------
DROP TABLE IF EXISTS `task_food_detail`;
CREATE TABLE `task_food_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskfood_id` bigint(20) NULL DEFAULT NULL,
  `food_id` bigint(20) NULL DEFAULT NULL,
  `food_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `food_price` float(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_food_detail
-- ----------------------------
INSERT INTO `task_food_detail` VALUES (1, 4, 1, '面包', 1.00);
INSERT INTO `task_food_detail` VALUES (2, 5, 1, '面包', 1.00);
INSERT INTO `task_food_detail` VALUES (3, 6, 2, '方便面', 2.50);
INSERT INTO `task_food_detail` VALUES (4, 7, 1, '青椒肉丝盖饭', 8.00);
INSERT INTO `task_food_detail` VALUES (5, 7, 2, '蛋炒饭', 6.00);
INSERT INTO `task_food_detail` VALUES (6, 8, 1, '青椒肉丝盖饭', 8.00);
INSERT INTO `task_food_detail` VALUES (7, 9, 1, '青椒肉丝盖饭', 8.00);
INSERT INTO `task_food_detail` VALUES (8, 10, 1, '青椒肉丝盖饭', 8.00);
INSERT INTO `task_food_detail` VALUES (9, 11, 1, '青椒肉丝盖饭', 8.00);
INSERT INTO `task_food_detail` VALUES (10, 12, 1, '青椒肉丝盖饭', 8.00);
INSERT INTO `task_food_detail` VALUES (11, 12, 2, '蛋炒饭', 6.00);
INSERT INTO `task_food_detail` VALUES (12, 13, 1, '青椒肉丝盖饭', 8.00);
INSERT INTO `task_food_detail` VALUES (13, 13, 2, '蛋炒饭', 6.00);

-- ----------------------------
-- Table structure for task_food_order
-- ----------------------------
DROP TABLE IF EXISTS `task_food_order`;
CREATE TABLE `task_food_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_id` bigint(20) NULL DEFAULT NULL,
  `address_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `money` float(255, 0) NULL DEFAULT NULL,
  `distance` float(255, 0) NULL DEFAULT NULL,
  `money_paotui` float(255, 0) NULL DEFAULT NULL,
  `money_food` float(255, 0) NULL DEFAULT NULL,
  `fbsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jdsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wcsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  `pty_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_food_order
-- ----------------------------
INSERT INTO `task_food_order` VALUES (4, '3', 12717, 'wm88389537', 2, '4号222', '13767675566', 8, 4, 7, 1, '2021-05-27 20:49:54', '2021-05-27 21:04:50', '2021-05-28 00:10:35', 3, 12719);
INSERT INTO `task_food_order` VALUES (6, '33', 12717, 'wm88587645', 2, '4号222', '13767675566', 6, 3, 4, 2, '2021-05-27 21:14:40', '2021-05-27 21:18:43', '2021-05-27 23:04:52', 3, 12719);
INSERT INTO `task_food_order` VALUES (7, '快点', 12717, 'wm47643327', 2, '4号222', '13767675566', 22, 5, 8, 14, '2021-05-27 23:45:20', '2021-05-28 00:10:17', '2021-05-28 00:10:29', 3, 12719);
INSERT INTO `task_food_order` VALUES (9, NULL, 12717, 'wm18102117', 2, '4号222', '13767675566', 12, 3, 4, 8, '2021-05-29 00:05:24', '2021-05-29 01:57:30', NULL, 1, 12719);
INSERT INTO `task_food_order` VALUES (10, '快点', 12718, 'wm60302195', 3, '3号楼302', '13865455566', 15, 4, 7, 8, '2021-05-29 01:11:49', '2021-05-29 01:17:49', NULL, 1, 12719);
INSERT INTO `task_food_order` VALUES (11, '快一点', 12717, 'wm62701072', 1, '4号205', '13867232323', 15, 4, 7, 8, '2021-05-29 13:09:00', '2021-05-29 13:10:07', '2021-05-29 13:10:58', 3, 12719);
INSERT INTO `task_food_order` VALUES (12, '点了个外卖', 12723, 'wm99657524', 4, '芙8-224', '13539849953', 22, 5, 8, 14, '2021-09-12 15:21:30', '2021-09-12 18:15:55', NULL, 1, 12722);
INSERT INTO `task_food_order` VALUES (13, '我想吃饭了', 12723, 'wm39258754', 5, '芙8-225', '13539849954', 18, 3, 4, 14, '2021-09-12 17:52:35', '2021-09-12 18:14:06', '2021-09-12 18:18:23', 3, 12722);

-- ----------------------------
-- Table structure for task_goods
-- ----------------------------
DROP TABLE IF EXISTS `task_goods`;
CREATE TABLE `task_goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `sort` int(255) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_goods
-- ----------------------------
INSERT INTO `task_goods` VALUES (3, '面包', '', '/profile/upload/2021/09/11/96aa20407974b2bb232fff1647e99031.jpg', 3.00, 100);
INSERT INTO `task_goods` VALUES (4, '方便面', '', '/profile/upload/2021/09/11/8cc507e750fbe83fa7ffd36105a4f816.jpg', 4.50, 90);

-- ----------------------------
-- Table structure for task_goods_detail
-- ----------------------------
DROP TABLE IF EXISTS `task_goods_detail`;
CREATE TABLE `task_goods_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `taskgoods_id` bigint(20) NULL DEFAULT NULL,
  `goods_id` bigint(20) NULL DEFAULT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `goods_price` float(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_goods_detail
-- ----------------------------
INSERT INTO `task_goods_detail` VALUES (1, 3, 3, '面包', 3.00);
INSERT INTO `task_goods_detail` VALUES (2, 4, 3, '面包', 3.00);
INSERT INTO `task_goods_detail` VALUES (3, 4, 4, '方便面', 4.50);
INSERT INTO `task_goods_detail` VALUES (4, 5, 3, '面包', 3.00);
INSERT INTO `task_goods_detail` VALUES (5, 5, 4, '方便面', 4.50);
INSERT INTO `task_goods_detail` VALUES (6, 6, 3, '面包', 3.00);
INSERT INTO `task_goods_detail` VALUES (7, 6, 4, '方便面', 4.50);
INSERT INTO `task_goods_detail` VALUES (8, 7, 3, '面包', 3.00);
INSERT INTO `task_goods_detail` VALUES (9, 7, 4, '方便面', 4.50);

-- ----------------------------
-- Table structure for task_goods_order
-- ----------------------------
DROP TABLE IF EXISTS `task_goods_order`;
CREATE TABLE `task_goods_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_id` bigint(20) NULL DEFAULT NULL,
  `address_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `money` float(255, 0) NULL DEFAULT NULL,
  `distance` float(255, 0) NULL DEFAULT NULL,
  `money_paotui` float(255, 0) NULL DEFAULT NULL,
  `money_goods` float(255, 0) NULL DEFAULT NULL,
  `fbsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jdsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wcsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  `pty_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_goods_order
-- ----------------------------
INSERT INTO `task_goods_order` VALUES (3, '23', 12717, 'gw52868595', 2, '4号222', '13767675566', 10, 4, 7, 3, '2021-05-28 10:38:41', '2021-05-28 10:39:14', '2021-05-28 10:45:55', 3, 12719);
INSERT INTO `task_goods_order` VALUES (4, '吃的', 12717, 'gw54621889', 2, '4号222', '13767675566', 14, 4, 7, 7, '2021-05-29 00:08:24', NULL, NULL, 4, NULL);
INSERT INTO `task_goods_order` VALUES (6, '我肚子饿了', 12717, 'gw20953127', 1, '4号205', '13867232323', 15, 5, 8, 7, '2021-09-11 22:46:59', '2021-09-11 23:19:57', '2021-09-11 23:29:14', 3, 12719);
INSERT INTO `task_goods_order` VALUES (7, '帮我买点东西', 12723, 'gw23123146', 4, '芙8-224', '13539849953', 11, 3, 4, 7, '2021-09-12 15:23:27', '2021-09-12 17:43:32', NULL, 1, 12722);

-- ----------------------------
-- Table structure for task_message
-- ----------------------------
DROP TABLE IF EXISTS `task_message`;
CREATE TABLE `task_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `utype` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_message
-- ----------------------------
INSERT INTO `task_message` VALUES (1, 'dd', '2021-05-28 00:05:04', 'pty', NULL, 12719);
INSERT INTO `task_message` VALUES (2, '11', '2021-05-28 00:06:24', 'pty', 6, 12719);
INSERT INTO `task_message` VALUES (3, 'ff', '2021-05-28 00:09:54', 'user', 6, 12717);
INSERT INTO `task_message` VALUES (4, '44', '2021-05-28 10:46:04', 'pty', 3, 12719);
INSERT INTO `task_message` VALUES (5, '快一点', '2021-05-29 00:00:57', 'user', 8, 12717);
INSERT INTO `task_message` VALUES (6, '好', '2021-05-29 13:06:56', 'user', 9, 12717);
INSERT INTO `task_message` VALUES (7, '祝你用餐愉快', '2021-09-11 23:29:34', 'pty', 6, 12719);
INSERT INTO `task_message` VALUES (8, '不错 送货员态度好服务好', '2021-09-11 23:30:48', 'user', 6, 12717);
INSERT INTO `task_message` VALUES (9, '送到了！', '2021-09-11 23:51:13', 'pty', 3, 12722);
INSERT INTO `task_message` VALUES (10, '外卖给你送到了哦！祝你用餐愉快！', '2021-09-12 18:20:22', 'pty', 13, 12722);
INSERT INTO `task_message` VALUES (11, '谢谢跑腿小哥了！', '2021-09-12 18:23:02', 'user', 13, 12723);

-- ----------------------------
-- Table structure for task_moment
-- ----------------------------
DROP TABLE IF EXISTS `task_moment`;
CREATE TABLE `task_moment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime(0) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_moment
-- ----------------------------
INSERT INTO `task_moment` VALUES (1, '2021-05-28 16:35:39', 12717, '4444');
INSERT INTO `task_moment` VALUES (2, '2021-05-28 16:53:11', 12717, '4');
INSERT INTO `task_moment` VALUES (3, '2021-05-28 23:34:29', 12719, '');
INSERT INTO `task_moment` VALUES (4, '2021-05-28 23:34:36', 12719, 'ddddddd');
INSERT INTO `task_moment` VALUES (6, '2021-09-11 23:53:55', 12717, '今天很开心哦！');
INSERT INTO `task_moment` VALUES (7, '2021-09-12 18:06:08', 12723, '我可以叫人取快递了，好开心！');

-- ----------------------------
-- Table structure for task_moment_image
-- ----------------------------
DROP TABLE IF EXISTS `task_moment_image`;
CREATE TABLE `task_moment_image`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `moment_id` bigint(20) NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_moment_image
-- ----------------------------
INSERT INTO `task_moment_image` VALUES (1, 1, '/profile/upload/2021/05/28/244bfa0418dd5b569540c2f9683fe06d.jpg');
INSERT INTO `task_moment_image` VALUES (2, 2, '/profile/upload/2021/05/28/163dd8b2b43ff9b44de52809afd7e686.png');
INSERT INTO `task_moment_image` VALUES (3, 2, '/profile/upload/2021/05/28/aa7aba6d890739b840eee83bde568740.png');
INSERT INTO `task_moment_image` VALUES (4, 2, '/profile/upload/2021/05/28/ed4b2a399e4dd7821f9a417719c72619.jpg');
INSERT INTO `task_moment_image` VALUES (5, 2, '/profile/upload/2021/05/28/95a71ee9dc9bc534b153b5d8cc660144.jpg');
INSERT INTO `task_moment_image` VALUES (6, 2, '/profile/upload/2021/05/28/5c98d358fa8cfa43f8dced4c0a736309.jpg');
INSERT INTO `task_moment_image` VALUES (7, 3, '/profile/upload/2021/05/28/706ea8a4ff80bc52775073b994a556e7.jpg');
INSERT INTO `task_moment_image` VALUES (8, 3, '/profile/upload/2021/05/28/dd08c1780acb60a8e2056ca86cd24665.jpg');
INSERT INTO `task_moment_image` VALUES (9, 3, '/profile/upload/2021/05/28/b17dca80c46b5e3f61c28888d72c663a.jpg');
INSERT INTO `task_moment_image` VALUES (10, 3, '/profile/upload/2021/05/28/5da05d0bb4bfad8c2a8eb381f1cccc60.jpg');
INSERT INTO `task_moment_image` VALUES (11, 3, '/profile/upload/2021/05/28/d017fac689c0cf88d39888f0c8d239b3.jpg');
INSERT INTO `task_moment_image` VALUES (12, 3, '/profile/upload/2021/05/28/9d1efbe4d4a61d7a98223adcef51fd0d.jpg');
INSERT INTO `task_moment_image` VALUES (13, 3, '/profile/upload/2021/05/28/af768d1c6c1bef781e471cd5bb0b7c7b.jpg');
INSERT INTO `task_moment_image` VALUES (14, 3, '/profile/upload/2021/05/28/4ba6da87270b6a8876e0d176b77b88e0.jpg');
INSERT INTO `task_moment_image` VALUES (15, 3, '/profile/upload/2021/05/28/23005957820da996841f9399a146347f.jpg');
INSERT INTO `task_moment_image` VALUES (17, 6, '/profile/upload/2021/09/11/79e734582198de9cf519ea18f8c32922.png');
INSERT INTO `task_moment_image` VALUES (18, 7, '/profile/upload/2021/09/12/e3b616a6bee90c84586f65d8748601a0.jpg');
INSERT INTO `task_moment_image` VALUES (19, 7, '/profile/upload/2021/09/12/214969cb6eb4ec9e0e99aa0a0ae772ad.jpg');
INSERT INTO `task_moment_image` VALUES (20, 7, '/profile/upload/2021/09/12/aa5991508e046c86f9e3010c6e230497.jpg');

-- ----------------------------
-- Table structure for task_other_order
-- ----------------------------
DROP TABLE IF EXISTS `task_other_order`;
CREATE TABLE `task_other_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_id` bigint(20) NULL DEFAULT NULL,
  `address_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `money` float(255, 0) NULL DEFAULT NULL,
  `distance` float(255, 0) NULL DEFAULT NULL,
  `money_paotui` float(255, 0) NULL DEFAULT NULL,
  `fbsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jdsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wcsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  `pty_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_other_order
-- ----------------------------
INSERT INTO `task_other_order` VALUES (1, '图书馆占座排队', 12718, 'qt14773552', 3, '3号楼302', '13865455566', 7, 4, 7, '2021-05-29 01:18:49', NULL, NULL, 4, NULL);
INSERT INTO `task_other_order` VALUES (2, '帮我去取个医院报告', 12717, 'qt14341962', 1, '4号205', '13867232323', 14, 12, 7, '2021-09-11 23:39:43', NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for task_parcel
-- ----------------------------
DROP TABLE IF EXISTS `task_parcel`;
CREATE TABLE `task_parcel`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `address_id` bigint(20) NULL DEFAULT NULL,
  `address_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `weight` float NULL DEFAULT NULL,
  `money` float NULL DEFAULT NULL,
  `fbsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jdsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wcsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pty_id` bigint(20) NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_parcel
-- ----------------------------
INSERT INTO `task_parcel` VALUES (2, 'kd53505576', '圆通324234234234', '学习门口', '下午送到', 12718, 3, '3号楼302', '13865455566', 5, 6, '2021-05-29 01:12:35', '2021-05-29 13:13:38', NULL, 12721, 1);
INSERT INTO `task_parcel` VALUES (3, 'kd28770731', '3412951910292342', '6B-202', '洗发液', 12717, 1, '4号205', '13867232323', 3, 3, '2021-09-11 23:37:43', '2021-09-11 23:49:04', NULL, 12722, 3);
INSERT INTO `task_parcel` VALUES (4, 'kd82310364', '3591904159149', '6C-201', '我的包裹取下谢谢', 12723, 5, '芙8-225', '13539849954', 2, 3, '2021-09-12 17:58:46', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for task_print_order
-- ----------------------------
DROP TABLE IF EXISTS `task_print_order`;
CREATE TABLE `task_print_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `distance` float NULL DEFAULT NULL,
  `address_id` bigint(20) NULL DEFAULT NULL,
  `address_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `money` float(255, 0) NULL DEFAULT NULL,
  `pages` int(11) NULL DEFAULT NULL,
  `money_paotui` float(255, 0) NULL DEFAULT NULL,
  `money_print` float(255, 0) NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fbsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jdsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wcsj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  `pty_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_print_order
-- ----------------------------
INSERT INTO `task_print_order` VALUES (1, '哈哈哈', 12717, 'dy66656257', 4, 2, '4号222', '13767675566', 47, 44, 7, NULL, NULL, '2021-05-29 00:49:27', NULL, NULL, 0, NULL);
INSERT INTO `task_print_order` VALUES (3, '打印下我的报告', 12717, 'dy45240725', 5, 1, '4号205', '13867232323', 50, 20, 8, NULL, NULL, '2021-09-11 23:38:42', NULL, NULL, 0, NULL);
INSERT INTO `task_print_order` VALUES (4, '帮我打印个报告', 12723, 'dy45292120', 3, 5, '芙8-225', '13539849954', 23, 23, 4, NULL, NULL, '2021-09-12 15:23:59', NULL, NULL, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
