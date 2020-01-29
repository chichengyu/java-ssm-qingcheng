/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : qingcheng_config

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2019-12-20 17:49:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_freight_template
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight_template`;
CREATE TABLE `tb_freight_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `type` char(1) DEFAULT NULL COMMENT '计费方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_freight_template
-- ----------------------------
