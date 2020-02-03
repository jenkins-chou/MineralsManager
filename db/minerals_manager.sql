/*
 Navicat Premium Data Transfer

 Source Server         : administrator
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : minerals_manager

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 03/02/2020 18:51:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `base_enterprise`;
CREATE TABLE `base_enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_name` varchar(255) DEFAULT NULL COMMENT '企业名称',
  `enterprise_describe` varchar(255) DEFAULT NULL COMMENT '企业描述',
  `enterprise_logo` varchar(255) DEFAULT NULL COMMENT '企业logo',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `enterprise_people_num` varchar(255) DEFAULT NULL COMMENT '企业人数',
  `enterprise_regis_time` varchar(255) DEFAULT NULL COMMENT '申请时间',
  `create_time` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for base_menu
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `menu_level` varchar(255) DEFAULT NULL COMMENT '菜单等级',
  `menu_parent` varchar(255) DEFAULT NULL COMMENT '父菜单',
  `menu_sub_size` int(11) DEFAULT NULL COMMENT '子菜单数量',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '页面URL',
  `menu_index` int(255) DEFAULT NULL COMMENT '排序号',
  `menu_icon` varchar(255) DEFAULT NULL COMMENT 'icon',
  `user_type` varchar(255) DEFAULT NULL COMMENT '用户类型',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_menu
-- ----------------------------
BEGIN;
INSERT INTO `base_menu` VALUES (1, '系统设置', '1', '0', NULL, '', 999, '', '4', '', '', 'delete');
INSERT INTO `base_menu` VALUES (2, '菜单设置', '2', '1', NULL, '../pages/manager/system/menu.html', 1, '', '4', '', '', 'delete');
INSERT INTO `base_menu` VALUES (103, '行政管理', '1', '1', NULL, NULL, 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (104, '矿产管理', '1', '1', NULL, NULL, 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (105, '开发商管理', '1', '1', NULL, NULL, 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (106, '订单管理', '1', '1', NULL, NULL, 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (107, '数据统计', '1', '1', NULL, NULL, 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (108, '员工管理', '1', '103', NULL, NULL, 1, NULL, '4', NULL, NULL, 'delete');
INSERT INTO `base_menu` VALUES (109, '员工管理', '2', '103', NULL, '../pages/manager/staff/list.html', 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (110, '载具管理', '2', '103', NULL, '../pages/manager/transport/list.html', 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (111, '矿区管理', '2', '104', NULL, '../pages/manager/ore_area/list.html', 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (112, '运输管理', '2', '104', NULL, '../pages/manager/transaction_record/list.html', 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (113, '开采管理', '2', '104', NULL, '../pages/manager/ore_exploit_record/list.html', 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (114, '开发商列表', '2', '105', NULL, '../pages/manager/ore_develop/list.html', 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (116, '订单列表', '2', '106', NULL, '../pages/manager/base_order/list.html', 1, NULL, '4', NULL, NULL, 'normal');
INSERT INTO `base_menu` VALUES (117, '图表统计', '2', '107', NULL, '../pages/manager/statistics/index.html', 1, NULL, '4', NULL, NULL, 'normal');
COMMIT;

-- ----------------------------
-- Table structure for base_message
-- ----------------------------
DROP TABLE IF EXISTS `base_message`;
CREATE TABLE `base_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sender` varchar(255) DEFAULT NULL COMMENT '发送者id',
  `getter` varchar(255) DEFAULT NULL COMMENT '接受者id',
  `message` varchar(255) DEFAULT NULL COMMENT '信息内容',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `send_time` varchar(255) DEFAULT NULL COMMENT '发送时间',
  `send_state` varchar(255) DEFAULT NULL COMMENT '发送状态',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for base_module
-- ----------------------------
DROP TABLE IF EXISTS `base_module`;
CREATE TABLE `base_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `module_title` varchar(255) DEFAULT NULL COMMENT '功能模块标题',
  `module_name` varchar(255) DEFAULT NULL COMMENT '功能模块名称',
  `module_index` varchar(255) DEFAULT NULL COMMENT '功能模块排序号',
  `create_time` varchar(255) DEFAULT NULL COMMENT '功能模块创建时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '功能模块备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of base_module
-- ----------------------------
BEGIN;
INSERT INTO `base_module` VALUES (1, NULL, 'module1', NULL, '1573224661', NULL, 'normal');
INSERT INTO `base_module` VALUES (2, NULL, NULL, NULL, '1573401476', NULL, 'normal');
INSERT INTO `base_module` VALUES (3, NULL, NULL, NULL, '1573401482', NULL, 'normal');
INSERT INTO `base_module` VALUES (4, NULL, NULL, NULL, '1573401496', NULL, 'normal');
INSERT INTO `base_module` VALUES (5, NULL, NULL, NULL, '1573401513', NULL, 'normal');
COMMIT;

-- ----------------------------
-- Table structure for base_order
-- ----------------------------
DROP TABLE IF EXISTS `base_order`;
CREATE TABLE `base_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party_a` varchar(255) DEFAULT NULL COMMENT '甲方',
  `party_b` varchar(255) DEFAULT NULL COMMENT '乙方',
  `order_ore_id` varchar(255) DEFAULT NULL COMMENT '矿区id',
  `capacity` varchar(255) DEFAULT NULL COMMENT '订单矿产容量',
  `unit_price` varchar(255) DEFAULT NULL COMMENT '单价',
  `total_price` varchar(255) DEFAULT NULL COMMENT '总价',
  `deal_time` varchar(255) DEFAULT NULL COMMENT '成交时间',
  `create_time` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_order
-- ----------------------------
BEGIN;
INSERT INTO `base_order` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1580726457', NULL, 'delete');
COMMIT;

-- ----------------------------
-- Table structure for base_state
-- ----------------------------
DROP TABLE IF EXISTS `base_state`;
CREATE TABLE `base_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `module_id` varchar(255) DEFAULT NULL COMMENT 'moduleid',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for base_type
-- ----------------------------
DROP TABLE IF EXISTS `base_type`;
CREATE TABLE `base_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `module_id` varchar(255) DEFAULT NULL COMMENT 'moduleid',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实名称',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `email` varchar(255) DEFAULT NULL COMMENT 'email',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `wechat` varchar(255) DEFAULT NULL COMMENT 'wechat',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq',
  `age` varchar(255) DEFAULT NULL COMMENT 'age',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `slogan` varchar(255) DEFAULT NULL COMMENT '签名',
  `region` varchar(255) DEFAULT NULL COMMENT '地区',
  `type` varchar(255) DEFAULT NULL COMMENT '用户类型',
  `type_describe` varchar(255) DEFAULT NULL COMMENT '用户类型描述',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  `identity` varchar(255) DEFAULT NULL COMMENT '身份',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user
-- ----------------------------
BEGIN;
INSERT INTO `base_user` VALUES (7, '456', '456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '教师', NULL, NULL, '1572004895', NULL, 'delete');
INSERT INTO `base_user` VALUES (8, 'admin', 'admin', '系统管理员', '134126', 'email000', '联系地址', 'wchat', 'qq', '26', '', 'hello', '地区', '4', '系统管理员', NULL, NULL, NULL, NULL, 'normal');
INSERT INTO `base_user` VALUES (9, '123', '123', '周先生', '电话', 'email', '地址', '13413739238923', 'qq号', '21', NULL, '签名', '广东', '1', '学生', NULL, NULL, '1572147442', NULL, 'delete');
INSERT INTO `base_user` VALUES (12, '789', '789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '学生', NULL, NULL, '1572150642', NULL, 'delete');
INSERT INTO `base_user` VALUES (13, '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'ѧ��', NULL, NULL, '1575559080', NULL, 'normal');
INSERT INTO `base_user` VALUES (14, 'user1', 'user1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'ѧ��', NULL, NULL, '1577798598', NULL, 'normal');
COMMIT;

-- ----------------------------
-- Table structure for base_user_type
-- ----------------------------
DROP TABLE IF EXISTS `base_user_type`;
CREATE TABLE `base_user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user_type
-- ----------------------------
BEGIN;
INSERT INTO `base_user_type` VALUES (1, '1', NULL, '学生', NULL, NULL, 'delete');
INSERT INTO `base_user_type` VALUES (2, '2', NULL, '教师', NULL, NULL, 'normal');
INSERT INTO `base_user_type` VALUES (3, '3', NULL, '管理员', NULL, NULL, 'delete');
INSERT INTO `base_user_type` VALUES (4, '4', NULL, '管理员', NULL, NULL, 'normal');
COMMIT;

-- ----------------------------
-- Table structure for ore_area
-- ----------------------------
DROP TABLE IF EXISTS `ore_area`;
CREATE TABLE `ore_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ore_area` varchar(255) DEFAULT NULL COMMENT '矿区名称',
  `ore_province` varchar(255) DEFAULT NULL COMMENT '矿区省份',
  `ore_city` varchar(255) DEFAULT NULL COMMENT '矿区所属市',
  `ore_capacity` varchar(255) DEFAULT NULL COMMENT '矿区容量',
  `ore_found_time` varchar(255) DEFAULT NULL COMMENT '勘探时间',
  `ore_img` varchar(255) DEFAULT NULL COMMENT '矿区图',
  `create_time` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ore_develop
-- ----------------------------
DROP TABLE IF EXISTS `ore_develop`;
CREATE TABLE `ore_develop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ore_area_id` int(11) DEFAULT NULL COMMENT '矿区id',
  `ore_developer` varchar(255) DEFAULT NULL COMMENT '矿区开发商',
  `ore_contract_time` varchar(255) DEFAULT NULL COMMENT '签约时间',
  `ore_contract_duration` varchar(255) DEFAULT NULL COMMENT '合同时长',
  `ore_comtract_amount` varchar(255) DEFAULT NULL COMMENT '签约开采量',
  `ore_contract_img` varchar(255) DEFAULT NULL COMMENT '合同图',
  `ore_part_a` varchar(255) DEFAULT NULL COMMENT '甲方',
  `ore_part_b` varchar(255) DEFAULT NULL COMMENT '乙方',
  `create_time` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ore_exploit_record
-- ----------------------------
DROP TABLE IF EXISTS `ore_exploit_record`;
CREATE TABLE `ore_exploit_record` (
  `id` int(11) NOT NULL,
  `ore_exploit_record` varchar(255) DEFAULT NULL COMMENT '开采记录',
  `ore_exploit_time` varchar(255) DEFAULT NULL COMMENT '开采时间',
  `ore_exploit_cpacity` varchar(255) DEFAULT NULL COMMENT '开采容量',
  `ore_exploit_duration` varchar(255) DEFAULT NULL COMMENT '开菜时长',
  `ore_exploit_developer` varchar(255) DEFAULT NULL COMMENT '开发商',
  `create_time` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `join_time` varchar(255) DEFAULT NULL COMMENT '加入时间',
  `number` varchar(255) DEFAULT NULL COMMENT '员工编号',
  `department` varchar(255) DEFAULT NULL COMMENT '部门',
  `position` varchar(255) DEFAULT NULL COMMENT '职位',
  `create_time` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
BEGIN;
INSERT INTO `staff` VALUES (1, NULL, NULL, NULL, NULL, NULL, '1575558417', NULL, 'delete');
INSERT INTO `staff` VALUES (2, 'asdsa', 'dsadsa', 'fadsfd', NULL, NULL, '1575559097', NULL, 'normal');
INSERT INTO `staff` VALUES (3, '11', '2019-12-22', '123', NULL, NULL, '1577798646', NULL, 'delete');
COMMIT;

-- ----------------------------
-- Table structure for transaction_record
-- ----------------------------
DROP TABLE IF EXISTS `transaction_record`;
CREATE TABLE `transaction_record` (
  `id` int(11) NOT NULL,
  `ore_id` varchar(255) DEFAULT NULL COMMENT '矿区id',
  `transport_id` varchar(255) DEFAULT NULL COMMENT '载具id',
  `driver` varchar(255) DEFAULT NULL COMMENT '运输负责人',
  `capacity` varchar(255) DEFAULT NULL COMMENT '运输容量',
  `destination` varchar(255) DEFAULT NULL COMMENT '目的地',
  `price` varchar(255) DEFAULT NULL COMMENT '价格',
  `create_time` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for transport
-- ----------------------------
DROP TABLE IF EXISTS `transport`;
CREATE TABLE `transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL COMMENT '载具id',
  `model` varchar(255) DEFAULT NULL COMMENT '载具型号',
  `price` varchar(255) DEFAULT NULL COMMENT '单价',
  `capacity` varchar(255) DEFAULT NULL COMMENT '载具容量',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `life` varchar(255) DEFAULT NULL COMMENT '寿命',
  `purchase_date` varchar(255) DEFAULT NULL COMMENT '购买时间',
  `number` varchar(255) DEFAULT NULL COMMENT '编号',
  `create_time` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
