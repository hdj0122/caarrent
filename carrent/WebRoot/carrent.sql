/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : carrent

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-05-25 19:52:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bus_car
-- ----------------------------
DROP TABLE IF EXISTS `bus_car`;
CREATE TABLE `bus_car` (
  `carnumber` varchar(255) NOT NULL,
  `cartype` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `rentprice` double(10,2) DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `isrenting` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `carimg` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`carnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_car
-- ----------------------------
INSERT INTO `bus_car` VALUES ('55', '55', '55', '55.00', '55.00', '55', '0', '22227777', 'images/defaultcarimage.jpg', '2020-05-08 12:03:31');
INSERT INTO `bus_car` VALUES ('6', '6', '6', '6.00', '7.00', '8', '0', '8', '2020-05-23/202005231136347173660.jpg', '2020-05-23 11:36:47');
INSERT INTO `bus_car` VALUES ('鄂A66666', 'SUV', '白色', '280000.00', '500.00', '5000', '0', '宝马X1', '', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A77777', 'SUV', '白色', '350000.00', '1500.00', '12000', '0', '宝马X3', '', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A88888', '轿车', '黑色', '880000.00', '1000.00', '10000', '0', '保时捷 卡宴', '2020-03-31/202003311630139897796.jpg', '2019-05-07 14:52:15');

-- ----------------------------
-- Table structure for bus_check
-- ----------------------------
DROP TABLE IF EXISTS `bus_check`;
CREATE TABLE `bus_check` (
  `checkid` varchar(255) NOT NULL,
  `checkdate` datetime DEFAULT NULL,
  `checkdesc` varchar(255) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `paymoney` double(255,0) DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  `rentid` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`checkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_check
-- ----------------------------
INSERT INTO `bus_check` VALUES ('JC_20180612_170407_0385_63960', '2018-06-12 00:00:00', '在G50高速超速', '超速', '500', '习大大', 'CZ_20180611_171304_0732_57330', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180612_172559_0323_71959', '2018-06-13 00:00:00', '无', '无', '0', '习大大', 'CZ_20180612_164747_0573_26177', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180718_091454_0191_93480', '2018-07-18 00:00:00', '无', '无', '0', '习大大', 'CZ_20180718_091206_0365_62161', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181024_170206_355_7589', '2018-10-24 17:02:06', '无', '无', '0', '超级管理员', 'CZ_20181024_102327_735_9111', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_105333_218_89516', '2018-12-02 00:00:00', '1231321', '111122', '200', '超级管理员', 'CZ_20180612_164808_0385_37625', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_111951_947_77152', '2018-12-03 00:00:00', '无', '无', '0', '超级管理员', 'CZ_20181201_111936_383_31565', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_2018_0901_175053_57325085', '2018-09-01 00:00:00', '在G50  1127-1130段超速20%未达50%', '有违章未处理', '500', '超级管理员', 'CZ_2018_0901_175000_97637709', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190322_142814_147_8624', '2019-03-22 14:28:14', '222', '11', '100', '超级管理员', 'CZ_20190320_141553_303_8141', '2019-05-07 14:55:30');

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer` (
  `identity` varchar(255) NOT NULL COMMENT '身份证',
  `custname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` int(255) DEFAULT NULL COMMENT '性别',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `career` varchar(255) DEFAULT NULL COMMENT '职位',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES ('1111', '222', '1', '22', '22', '22', '2020-05-23 11:35:54');
INSERT INTO `bus_customer` VALUES ('421087133414144412', '张小明', '1', '武昌', '13456788987', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431321199291331131', '张三', '1', '武昌', '13431334113', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431321199291331132', '孙中山', '1', '汉口', '134131314131', '总统', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431341134191311311', '李四', '0', '汉阳', '13451313113', 'CEO', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431341134191311314', '王小明', '1', '汉口', '13413131113', 'CEO', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('4566656565552', '1', '0', '汉阳', '15670653256', '11', '2020-03-30 19:41:18');

-- ----------------------------
-- Table structure for bus_rent
-- ----------------------------
DROP TABLE IF EXISTS `bus_rent`;
CREATE TABLE `bus_rent` (
  `rentid` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `begindate` datetime DEFAULT NULL,
  `returndate` datetime DEFAULT NULL,
  `rentflag` int(11) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `carnumber` varchar(255) DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`rentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_rent
-- ----------------------------
INSERT INTO `bus_rent` VALUES ('CZ_20180611_171304_0732_57330', '1600.00', '2017-01-01 00:00:00', '2017-06-18 00:00:00', '1', '421087133414144412', '鄂A77777', '李四', '2017-01-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164747_0573_26177', '500.00', '2018-01-13 00:00:00', '2018-06-23 00:00:00', '1', '431321199291331131', '鄂A66666', '李四', '2018-01-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164808_0385_37625', '1000.00', '2018-03-13 00:00:00', '2018-06-15 00:00:00', '1', '421087133414144412', '鄂A88888', '王五', '2018-03-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180718_091206_0365_62161', '500.00', '2018-05-18 00:00:00', '2018-07-21 00:00:00', '1', '421087133414144412', '鄂A66666', '张三', '2018-05-18 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20181024_102327_735_9111', '500.00', '2018-07-23 10:23:27', '2018-10-31 10:23:29', '1', '421087133414144412', '鄂A66666', '李四', '2018-07-23 10:23:27');
INSERT INTO `bus_rent` VALUES ('CZ_20181201_111936_383_31565', '1500.00', '2018-09-01 00:00:00', '2018-12-29 00:00:00', '1', '43131334113331131', '鄂A77777', '王五', '2018-09-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_2018_0901_175000_97637709', '500.00', '2018-12-01 00:00:00', '2018-09-10 00:00:00', '1', '431321199291331131', '鄂A66666', '李四', '2018-12-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20190320_141553_303_8141', '1500.00', '2019-03-20 14:15:53', '2019-03-22 14:15:56', '1', '43131334113331131', '鄂A77777', '超级管理员', '2019-03-20 14:15:53');

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=458 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES ('1', 'admin-超级管理员', '127.0.0.1', '2018-10-27 09:01:21');
INSERT INTO `sys_log_login` VALUES ('2', 'admin-超级管理员', '127.0.0.1', '2018-10-27 09:25:31');
INSERT INTO `sys_log_login` VALUES ('3', 'admin-超级管理员', '127.0.0.1', '2018-10-27 09:25:43');
INSERT INTO `sys_log_login` VALUES ('4', 'admin-超级管理员', '127.0.0.1', '2018-10-27 09:36:02');
INSERT INTO `sys_log_login` VALUES ('5', 'admin-超级管理员', '127.0.0.1', '2018-10-27 10:14:36');
INSERT INTO `sys_log_login` VALUES ('6', 'admin-超级管理员', '127.0.0.2', '2018-10-27 10:25:40');
INSERT INTO `sys_log_login` VALUES ('342', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-28 17:41:12');
INSERT INTO `sys_log_login` VALUES ('343', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 14:17:25');
INSERT INTO `sys_log_login` VALUES ('344', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 14:32:39');
INSERT INTO `sys_log_login` VALUES ('345', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:00:06');
INSERT INTO `sys_log_login` VALUES ('346', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:19:52');
INSERT INTO `sys_log_login` VALUES ('347', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:22:28');
INSERT INTO `sys_log_login` VALUES ('348', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:22:56');
INSERT INTO `sys_log_login` VALUES ('349', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:24:12');
INSERT INTO `sys_log_login` VALUES ('350', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:29:41');
INSERT INTO `sys_log_login` VALUES ('351', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:39:08');
INSERT INTO `sys_log_login` VALUES ('352', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:44:45');
INSERT INTO `sys_log_login` VALUES ('353', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:44:58');
INSERT INTO `sys_log_login` VALUES ('354', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:47:20');
INSERT INTO `sys_log_login` VALUES ('355', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:48:36');
INSERT INTO `sys_log_login` VALUES ('356', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:48:45');
INSERT INTO `sys_log_login` VALUES ('357', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:49:05');
INSERT INTO `sys_log_login` VALUES ('358', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:49:30');
INSERT INTO `sys_log_login` VALUES ('359', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:50:10');
INSERT INTO `sys_log_login` VALUES ('360', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:50:57');
INSERT INTO `sys_log_login` VALUES ('361', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:53:02');
INSERT INTO `sys_log_login` VALUES ('362', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 15:57:41');
INSERT INTO `sys_log_login` VALUES ('363', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:01:52');
INSERT INTO `sys_log_login` VALUES ('364', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:04:48');
INSERT INTO `sys_log_login` VALUES ('365', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:06:00');
INSERT INTO `sys_log_login` VALUES ('366', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:14:39');
INSERT INTO `sys_log_login` VALUES ('367', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:28:54');
INSERT INTO `sys_log_login` VALUES ('368', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:29:31');
INSERT INTO `sys_log_login` VALUES ('369', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:30:37');
INSERT INTO `sys_log_login` VALUES ('370', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:32:49');
INSERT INTO `sys_log_login` VALUES ('371', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:34:39');
INSERT INTO `sys_log_login` VALUES ('372', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:34:53');
INSERT INTO `sys_log_login` VALUES ('373', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:39:02');
INSERT INTO `sys_log_login` VALUES ('374', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:41:45');
INSERT INTO `sys_log_login` VALUES ('375', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:42:16');
INSERT INTO `sys_log_login` VALUES ('376', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 16:45:00');
INSERT INTO `sys_log_login` VALUES ('377', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 19:10:34');
INSERT INTO `sys_log_login` VALUES ('378', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 19:11:33');
INSERT INTO `sys_log_login` VALUES ('379', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 19:37:33');
INSERT INTO `sys_log_login` VALUES ('380', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 09:41:14');
INSERT INTO `sys_log_login` VALUES ('381', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 11:36:58');
INSERT INTO `sys_log_login` VALUES ('382', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 11:37:09');
INSERT INTO `sys_log_login` VALUES ('383', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 11:37:45');
INSERT INTO `sys_log_login` VALUES ('384', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 16:11:05');
INSERT INTO `sys_log_login` VALUES ('385', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 16:15:50');
INSERT INTO `sys_log_login` VALUES ('386', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 16:26:02');
INSERT INTO `sys_log_login` VALUES ('387', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 16:29:45');
INSERT INTO `sys_log_login` VALUES ('388', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:09:02');
INSERT INTO `sys_log_login` VALUES ('389', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:09:31');
INSERT INTO `sys_log_login` VALUES ('390', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:11:49');
INSERT INTO `sys_log_login` VALUES ('391', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:12:16');
INSERT INTO `sys_log_login` VALUES ('392', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:13:29');
INSERT INTO `sys_log_login` VALUES ('393', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:14:52');
INSERT INTO `sys_log_login` VALUES ('394', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:15:03');
INSERT INTO `sys_log_login` VALUES ('395', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:15:21');
INSERT INTO `sys_log_login` VALUES ('396', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:21:09');
INSERT INTO `sys_log_login` VALUES ('397', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:25:11');
INSERT INTO `sys_log_login` VALUES ('398', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:25:32');
INSERT INTO `sys_log_login` VALUES ('399', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:37:58');
INSERT INTO `sys_log_login` VALUES ('400', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:39:46');
INSERT INTO `sys_log_login` VALUES ('401', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:52:14');
INSERT INTO `sys_log_login` VALUES ('402', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:54:01');
INSERT INTO `sys_log_login` VALUES ('403', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 17:55:42');
INSERT INTO `sys_log_login` VALUES ('404', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 18:31:00');
INSERT INTO `sys_log_login` VALUES ('405', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 18:32:12');
INSERT INTO `sys_log_login` VALUES ('406', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 18:36:33');
INSERT INTO `sys_log_login` VALUES ('407', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 18:38:01');
INSERT INTO `sys_log_login` VALUES ('408', '李四-ls', '0:0:0:0:0:0:0:1', '2020-03-31 18:38:23');
INSERT INTO `sys_log_login` VALUES ('409', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 20:07:36');
INSERT INTO `sys_log_login` VALUES ('410', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-01 18:48:10');
INSERT INTO `sys_log_login` VALUES ('411', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-04 15:53:00');
INSERT INTO `sys_log_login` VALUES ('412', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-04 18:39:32');
INSERT INTO `sys_log_login` VALUES ('413', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-04 18:41:37');
INSERT INTO `sys_log_login` VALUES ('414', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-04 18:54:19');
INSERT INTO `sys_log_login` VALUES ('415', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-04 18:57:01');
INSERT INTO `sys_log_login` VALUES ('416', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-08 16:19:07');
INSERT INTO `sys_log_login` VALUES ('417', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-21 19:51:16');
INSERT INTO `sys_log_login` VALUES ('418', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-24 19:48:45');
INSERT INTO `sys_log_login` VALUES ('419', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-24 19:55:53');
INSERT INTO `sys_log_login` VALUES ('420', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-24 19:56:01');
INSERT INTO `sys_log_login` VALUES ('421', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-24 20:38:43');
INSERT INTO `sys_log_login` VALUES ('422', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-24 20:56:16');
INSERT INTO `sys_log_login` VALUES ('423', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-24 20:58:28');
INSERT INTO `sys_log_login` VALUES ('424', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-24 20:58:36');
INSERT INTO `sys_log_login` VALUES ('425', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-24 21:10:30');
INSERT INTO `sys_log_login` VALUES ('426', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-08 11:59:03');
INSERT INTO `sys_log_login` VALUES ('427', '李四-ls', '0:0:0:0:0:0:0:1', '2020-05-08 11:59:56');
INSERT INTO `sys_log_login` VALUES ('428', '王五-ww', '0:0:0:0:0:0:0:1', '2020-05-08 12:00:50');
INSERT INTO `sys_log_login` VALUES ('429', '王五-ww', '0:0:0:0:0:0:0:1', '2020-05-08 12:02:31');
INSERT INTO `sys_log_login` VALUES ('430', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-08 12:11:26');
INSERT INTO `sys_log_login` VALUES ('431', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-20 10:40:39');
INSERT INTO `sys_log_login` VALUES ('432', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-20 11:01:21');
INSERT INTO `sys_log_login` VALUES ('433', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-20 11:01:55');
INSERT INTO `sys_log_login` VALUES ('434', '王五-ww', '0:0:0:0:0:0:0:1', '2020-05-22 19:06:11');
INSERT INTO `sys_log_login` VALUES ('435', '小明-xm', '0:0:0:0:0:0:0:1', '2020-05-22 19:07:58');
INSERT INTO `sys_log_login` VALUES ('436', '张三-zhangsan', '0:0:0:0:0:0:0:1', '2020-05-22 19:12:03');
INSERT INTO `sys_log_login` VALUES ('437', '李四-ls', '0:0:0:0:0:0:0:1', '2020-05-22 19:12:18');
INSERT INTO `sys_log_login` VALUES ('438', '王五-ww', '0:0:0:0:0:0:0:1', '2020-05-22 19:12:37');
INSERT INTO `sys_log_login` VALUES ('439', '1-1', '0:0:0:0:0:0:0:1', '2020-05-22 19:12:55');
INSERT INTO `sys_log_login` VALUES ('440', '1-1', '0:0:0:0:0:0:0:1', '2020-05-22 19:21:58');
INSERT INTO `sys_log_login` VALUES ('441', '王五-ww', '0:0:0:0:0:0:0:1', '2020-05-22 19:22:13');
INSERT INTO `sys_log_login` VALUES ('442', '王五-ww', '0:0:0:0:0:0:0:1', '2020-05-22 19:22:19');
INSERT INTO `sys_log_login` VALUES ('443', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-22 19:22:33');
INSERT INTO `sys_log_login` VALUES ('444', '小明-xm', '0:0:0:0:0:0:0:1', '2020-05-22 19:22:48');
INSERT INTO `sys_log_login` VALUES ('445', '李四-ls', '0:0:0:0:0:0:0:1', '2020-05-22 19:23:08');
INSERT INTO `sys_log_login` VALUES ('446', '张三-zhangsan', '0:0:0:0:0:0:0:1', '2020-05-22 19:28:39');
INSERT INTO `sys_log_login` VALUES ('447', '张三-zhangsan', '0:0:0:0:0:0:0:1', '2020-05-22 19:35:58');
INSERT INTO `sys_log_login` VALUES ('448', '张三-zhangsan', '0:0:0:0:0:0:0:1', '2020-05-22 19:36:52');
INSERT INTO `sys_log_login` VALUES ('449', '李四-ls', '0:0:0:0:0:0:0:1', '2020-05-22 19:37:29');
INSERT INTO `sys_log_login` VALUES ('450', '王五-ww', '0:0:0:0:0:0:0:1', '2020-05-22 19:37:44');
INSERT INTO `sys_log_login` VALUES ('451', '小明-xm', '0:0:0:0:0:0:0:1', '2020-05-22 19:38:23');
INSERT INTO `sys_log_login` VALUES ('452', '张三-zhangsan', '0:0:0:0:0:0:0:1', '2020-05-22 19:38:51');
INSERT INTO `sys_log_login` VALUES ('453', '1-1', '0:0:0:0:0:0:0:1', '2020-05-22 19:40:07');
INSERT INTO `sys_log_login` VALUES ('454', '1-1', '0:0:0:0:0:0:0:1', '2020-05-22 19:41:17');
INSERT INTO `sys_log_login` VALUES ('455', '1-1', '0:0:0:0:0:0:0:1', '2020-05-22 19:43:21');
INSERT INTO `sys_log_login` VALUES ('456', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-23 11:35:31');
INSERT INTO `sys_log_login` VALUES ('457', '李四-ls', '0:0:0:0:0:0:0:1', '2020-05-23 11:39:43');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `spread` int(255) DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `available` int(255) DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '汽车出租系统', null, '1', null, '&#xe68e;', '1');
INSERT INTO `sys_menu` VALUES ('2', '1', '基础管理', '', '0', '', '&#xe653;', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '业务管理', null, '0', null, '&#xe663;', '1');
INSERT INTO `sys_menu` VALUES ('4', '1', '系统管理', '', '0', '', '&#xe716;', '1');
INSERT INTO `sys_menu` VALUES ('5', '1', '统计分析', null, '0', null, '&#xe629;', '1');
INSERT INTO `sys_menu` VALUES ('6', '2', '客户管理', '../bus/toCustomerManager.action', '0', null, '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('7', '2', '车辆管理', '../bus/toCarManager.action', '0', null, '&#xe657;', '1');
INSERT INTO `sys_menu` VALUES ('8', '3', '汽车出租', null, '0', null, '&#xe65b;', '1');
INSERT INTO `sys_menu` VALUES ('9', '3', '出租单管理', null, '0', null, '&#xe6b2;', '1');
INSERT INTO `sys_menu` VALUES ('10', '3', '汽车入库', null, '0', null, '&#xe65a;', '1');
INSERT INTO `sys_menu` VALUES ('11', '3', '检查单管理', null, '0', null, '&#xe705;', '1');
INSERT INTO `sys_menu` VALUES ('12', '4', '菜单管理', '../sys/toMenuManager.action', '0', null, '&#xe60f;', '1');
INSERT INTO `sys_menu` VALUES ('13', '4', '角色管理', '../sys/toRoleManager.action', '0', null, '&#xe66f;', '1');
INSERT INTO `sys_menu` VALUES ('14', '4', '用户管理', '../sys/toUserManager.action', '0', null, '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('15', '4', '日志管理', '../sys/toLogManager.action', '0', null, '&#xe655;', '1');
INSERT INTO `sys_menu` VALUES ('16', '4', '公告管理', '../sys/toNewsManager.action', '0', '', '&#xe645;', '1');
INSERT INTO `sys_menu` VALUES ('18', '5', '客户地区统计', '../stat/toCustomerAreaStat.action', '0', null, '&#xe63c;', '1');

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_news
-- ----------------------------
INSERT INTO `sys_news` VALUES ('5', '关系公告', '解决的借款收到税款的开始了考虑带上来看电视打开了电视看看几点上课', '2018-06-14 18:05:22', '习大大');
INSERT INTO `sys_news` VALUES ('6', '4444', '<p><img src=\"http://127.0.0.1:8080/bjsxt/resources/umeditor/jsp/upload/20190319/99511552975805893.jpg\"/></p>', '2019-03-19 14:10:11', '超级管理员');
INSERT INTO `sys_news` VALUES ('7', '555', '555', '2020-03-30 15:03:48', '超级管理员');
INSERT INTO `sys_news` VALUES ('8', '777', '<img src=\"http://localhost:8080/hnas/resources/layui/images/face/11.gif\" alt=\"[爱你]\">', '2020-03-30 15:20:51', '超级管理员');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `roledesc` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '拥有所有菜单权限', '1');
INSERT INTO `sys_role` VALUES ('2', '业务管理员', '拥有所以业务菜单', '1');
INSERT INTO `sys_role` VALUES ('3', '系统管理员', '管理系统', '1');
INSERT INTO `sys_role` VALUES ('4', '数据统计管理员', '数据统计管理员', '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '4');
INSERT INTO `sys_role_menu` VALUES ('3', '12');
INSERT INTO `sys_role_menu` VALUES ('3', '13');
INSERT INTO `sys_role_menu` VALUES ('3', '14');
INSERT INTO `sys_role_menu` VALUES ('3', '15');
INSERT INTO `sys_role_menu` VALUES ('3', '16');
INSERT INTO `sys_role_menu` VALUES ('4', '1');
INSERT INTO `sys_role_menu` VALUES ('4', '5');
INSERT INTO `sys_role_menu` VALUES ('4', '18');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('3', '1');
INSERT INTO `sys_role_user` VALUES ('4', '2');
INSERT INTO `sys_role_user` VALUES ('5', '3');
INSERT INTO `sys_role_user` VALUES ('6', '4');
INSERT INTO `sys_role_user` VALUES ('9', '2');
INSERT INTO `sys_role_user` VALUES ('9', '3');
INSERT INTO `sys_role_user` VALUES ('9', '4');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` int(255) DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `type` int(255) DEFAULT '2' COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '4313341334413', '超级管理员', '1', '武汉', '134441331311', 'e10adc3949ba59abbe56e057f20f883e', 'CEO', '1', '1');
INSERT INTO `sys_user` VALUES ('3', 'zs', '3413334134131131', '张三', '1', '武汉', '13413131311', 'e10adc3949ba59abbe56e057f20f883e', 'BA', '2', '1');
INSERT INTO `sys_user` VALUES ('4', 'ls', '43311341311314341', '李四', '1', '武汉', '1341314113131', 'e10adc3949ba59abbe56e057f20f883e', '扫地的', '2', '1');
INSERT INTO `sys_user` VALUES ('5', 'ww', '4313133131331312', '王五', '1', '武汉', '13413131131', 'e10adc3949ba59abbe56e057f20f883e', '领导', '2', '1');
INSERT INTO `sys_user` VALUES ('6', 'xm', '45113141331131131', '小明', '1', '武昌', '13451333131', 'e10adc3949ba59abbe56e057f20f883e', '扫地地', '2', '1');
INSERT INTO `sys_user` VALUES ('9', '1', '111', '1', '1', '11', '19845621234', 'e10adc3949ba59abbe56e057f20f883e', '1', '2', '1');
