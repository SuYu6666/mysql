/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : mydb1

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2021-01-09 17:35:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dpid` bigint(20) NOT NULL AUTO_INCREMENT,
  `dpname` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`dpid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '开发部');
INSERT INTO `dept` VALUES ('2', '人事部');
INSERT INTO `dept` VALUES ('3', '财务部');
INSERT INTO `dept` VALUES ('4', '市场部');
INSERT INTO `dept` VALUES ('5', '运维部');
INSERT INTO `dept` VALUES ('6', '董事会');

-- ----------------------------
-- Table structure for `logininfo`
-- ----------------------------
DROP TABLE IF EXISTS `logininfo`;
CREATE TABLE `logininfo` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logininfo
-- ----------------------------
INSERT INTO `logininfo` VALUES ('1', '4001', '123');

-- ----------------------------
-- Table structure for `personnel`
-- ----------------------------
DROP TABLE IF EXISTS `personnel`;
CREATE TABLE `personnel` (
  `pid` int(20) NOT NULL AUTO_INCREMENT,
  `psname` varchar(25) DEFAULT NULL,
  `postid` int(11) DEFAULT NULL,
  `dpid` int(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `salary` double(20,0) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `EntryTime` date DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personnel
-- ----------------------------
INSERT INTO `personnel` VALUES ('4001', '李玉莹', '3', '6', '青岛市燕儿岛路1号', '150054', '15863043918', '2021-01-06', '0');

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `postname` varchar(255) NOT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', '董事长');
INSERT INTO `position` VALUES ('2', '总经理');
INSERT INTO `position` VALUES ('3', '部门经理');
INSERT INTO `position` VALUES ('4', '项目组长');
INSERT INTO `position` VALUES ('5', '普通员工');
