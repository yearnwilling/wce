/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : 127.0.0.1
 Source Database       : test

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : utf-8

 Date: 08/25/2015 10:49:45 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `password` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `admin`
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('1', 'wei', '123456'), ('2', 'weixianwei', '123456');
COMMIT;

-- ----------------------------
--  Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `person`
-- ----------------------------
BEGIN;
INSERT INTO `person` VALUES ('1', '张三'), ('2', '李四');
COMMIT;

-- ----------------------------
--  Table structure for `think_data`
-- ----------------------------
DROP TABLE IF EXISTS `think_data`;
CREATE TABLE `think_data` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `think_data`
-- ----------------------------
BEGIN;
INSERT INTO `think_data` VALUES ('1', 'thinkphp'), ('2', 'php'), ('3', 'framework');
COMMIT;

-- ----------------------------
--  Table structure for `think_form`
-- ----------------------------
DROP TABLE IF EXISTS `think_form`;
CREATE TABLE `think_form` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `think_form`
-- ----------------------------
BEGIN;
INSERT INTO `think_form` VALUES ('1', '113', '1212', '1437450364'), ('2', '1092', '9183', '1437455487');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('138', '111', '123', ''), ('139', 'weixianwei', 'e10adc3949ba59abbe56e057f20f883e', ''), ('140', '123', '202cb962ac59075b964b07152d234b70', 'weixianwei4@126.com'), ('141', '2', 'c81e728d9d4c2f636f067f89cc14862c', '2'), ('142', '111111', '698d51a19d8a121ce581499d7b701668', '1323'), ('143', 'eeee', '86871b9b1ab33b0834d455c540d82e89', 'ddee'), ('144', '1231312313', 'b0baee9d279d34fa1dfd71aadb908c3f', 'weixiantmail.com'), ('145', 'e', 'e1671797c52e15f763380b45e841ec32', 'eeed'), ('146', 'D', '5dbc98dcc983a70728bd082d1a47546e', 'DD'), ('147', 'DD', '350bfcb1e3cfb28ddff48ce525d4f139', 'DDD'), ('148', '', 'd41d8cd98f00b204e9800998ecf8427e', 'ddd'), ('149', 'ddd', '11ddbaf3386aea1f2974eee984542152', 'ddd'), ('150', 'wwee', 'd41d8cd98f00b204e9800998ecf8427e', ''), ('151', 'wiling', 'b21045e4abaebe667f17fcfd5c27c079', 'weixianwei4@126.com'), ('152', 'wo', 'b21045e4abaebe667f17fcfd5c27c079', 'weixianwei314@126.com'), ('153', 'wei', 'f2ca36f0a716ca599fcddca9b84bafc0', 'weixianwei@hotmail.com'), ('154', 'xian', '1807215e72492dd5fa118a6c6f620af0', 'weixianwei314@126.com'), ('155', '&lt;', '4297f44b13955235245b2497399d7a93', 'weixianwei4@126.com'), ('156', '&lt;&gt;', '4297f44b13955235245b2497399d7a93', 'weixianwei4@126.com'), ('157', '&lt;script&gt;alert(123)&lt;/script&gt;', '4297f44b13955235245b2497399d7a93', 'weixianwei4@126.com'), ('158', '&quot;', '4297f44b13955235245b2497399d7a93', 'weixianwei4@126.com'), ('159', '&quot;&gt;&lt;/span&gt;&lt;script&gt;alert(123)&lt;/script&gt;', '4297f44b13955235245b2497399d7a93', 'weixianwei4@126.com'), ('160', 'willing', '8ca9824993a025e1f1945a5f0cde9645', 'weixianwei@hotmail.com');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
