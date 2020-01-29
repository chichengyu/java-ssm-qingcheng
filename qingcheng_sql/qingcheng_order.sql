/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : qingcheng_order

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2019-12-20 17:50:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_category_report
-- ----------------------------
DROP TABLE IF EXISTS `tb_category_report`;
CREATE TABLE `tb_category_report` (
  `category_id1` int(11) NOT NULL COMMENT '1级分类',
  `category_id2` int(11) NOT NULL COMMENT '2级分类',
  `category_id3` int(11) NOT NULL COMMENT '3级分类',
  `count_date` date NOT NULL COMMENT '统计日期',
  `num` int(11) DEFAULT NULL COMMENT '销售数量',
  `money` int(11) DEFAULT NULL COMMENT '销售额',
  PRIMARY KEY (`category_id1`,`category_id2`,`category_id3`,`count_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category_report
-- ----------------------------
INSERT INTO `tb_category_report` VALUES ('1', '4', '5', '2019-01-26', '1', '300');
INSERT INTO `tb_category_report` VALUES ('74', '7', '8', '2019-01-26', '5', '900');
INSERT INTO `tb_category_report` VALUES ('161', '171', '177', '2019-04-15', '29', '4829');
INSERT INTO `tb_category_report` VALUES ('2', '7', '8', '2019-04-15', '5', '900');
INSERT INTO `tb_category_report` VALUES ('1', '4', '5', '2019-04-15', '1', '300');
INSERT INTO `tb_category_report` VALUES ('1', '2', '3', '2019-04-15', '2', '1002');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '订单id',
  `total_num` int(11) DEFAULT NULL COMMENT '数量合计',
  `total_money` int(11) DEFAULT NULL COMMENT '金额合计',
  `pre_money` int(11) DEFAULT NULL COMMENT '优惠金额',
  `post_fee` int(11) DEFAULT NULL COMMENT '邮费',
  `pay_money` int(11) DEFAULT NULL COMMENT '实付金额',
  `pay_type` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '支付类型，1、在线支付、0 货到付款',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '订单更新时间',
  `pay_time` datetime DEFAULT NULL COMMENT '付款时间',
  `consign_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `shipping_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流单号',
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名称',
  `buyer_message` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '买家留言',
  `buyer_rate` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否评价',
  `receiver_contact` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人',
  `receiver_mobile` varchar(12) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人手机',
  `receiver_address` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人地址',
  `source_type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '订单来源：1:web，2：app，3：微信公众号，4：微信小程序  5 H5手机页面',
  `transaction_id` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '交易流水号',
  `order_status` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '订单状态',
  `pay_status` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '支付状态',
  `consign_status` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '发货状态',
  `is_delete` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`),
  KEY `status` (`order_status`),
  KEY `payment_type` (`pay_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1', null, null, null, null, null, '1', '2019-04-15 00:00:00', '2017-08-24 20:42:25', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('10', null, null, null, null, '267', '1', '2019-04-15 00:00:00', '2017-08-24 21:01:11', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('1028501748186087424', null, null, null, null, '4329', '1', '2019-04-15 00:00:00', null, '2019-04-15 15:01:30', null, null, null, null, null, 'lijialong', null, null, '叶问', '999111', '咏春武馆总部', null, null, '1', '1', null, '0');
INSERT INTO `tb_order` VALUES ('1028501749566013440', null, null, null, null, '0', '1', '2019-04-15 00:00:00', null, '2019-04-15 16:44:41', null, null, null, null, null, 'lijialong', null, null, '叶问', '999111', '咏春武馆总部', null, null, '1', '1', null, '0');
INSERT INTO `tb_order` VALUES ('1028624753851629569', null, null, null, null, '0', '1', '2019-04-15 00:00:00', null, '2019-04-15 16:51:22', null, null, null, null, null, 'lijialong', null, null, '叶问', '999111', '咏春武馆总部', null, '1028624753851629568', '1', '1', null, '0');
INSERT INTO `tb_order` VALUES ('1028625576669216769', '1', null, null, null, '0', '1', '2019-04-15 00:00:00', null, '2019-04-15 17:11:22', null, null, null, null, null, 'lijialong', null, null, '叶问', '999111', '咏春武馆总部', null, '1028625576669216768', '2', '1', null, '0');
INSERT INTO `tb_order` VALUES ('1029536196264460289', null, null, null, null, '0', '1', '2019-04-15 00:00:00', null, '2019-04-15 17:01:42', null, null, null, null, null, 'lijialong', null, null, '李小龙', '11011011', '永春武馆', null, '1029536196264460288', '1', '1', null, '0');
INSERT INTO `tb_order` VALUES ('1029540851476332545', '1', '1', null, null, '0', '1', '2019-04-15 00:00:00', null, '2019-04-15 18:19:04', null, null, null, null, null, 'lijialong', null, null, '李小龙', '11011011', '永春武馆', null, '1029540851476332544', '2', '1', null, '0');
INSERT INTO `tb_order` VALUES ('11', null, null, null, null, '300', '1', '2019-04-15 00:00:00', '2017-08-24 21:01:11', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('1106089444903096320', '5', '6995', null, null, null, '1', '2019-04-15 00:00:00', null, '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', '0', '0', '0');
INSERT INTO `tb_order` VALUES ('1106089983590141952', '1', '1399', null, null, null, '1', '2019-04-15 00:00:00', null, '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', '0');
INSERT INTO `tb_order` VALUES ('1106104092389937152', '2', '298', null, null, '298', '1', '2019-04-15 00:00:00', null, '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', '0');
INSERT INTO `tb_order` VALUES ('1106107407773339648', '69', '10281', '0', null, '10281', '1', '2019-04-15 00:00:00', null, '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', '0');
INSERT INTO `tb_order` VALUES ('1106109621740900352', '6', '11394', '4000', null, '7394', '1', '2019-04-15 00:00:00', null, '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', '0');
INSERT INTO `tb_order` VALUES ('1106111554773979136', '7', '13293', '4000', null, '9293', '1', '2019-04-15 00:00:00', null, '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', '0');
INSERT INTO `tb_order` VALUES ('1106113685203587072', '7', '13293', '4000', null, '9293', '1', '2019-04-15 00:00:00', null, '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', '0');
INSERT INTO `tb_order` VALUES ('1131155505654403072', '2', '33200', '0', null, '33200', '1', '2019-05-22 19:11:03', null, null, null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', null);
INSERT INTO `tb_order` VALUES ('1131155892608307200', '1', '80000', '0', null, '80000', '1', '2019-05-22 19:12:35', null, null, null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', null);
INSERT INTO `tb_order` VALUES ('1131162823150407680', '1', '80000', '0', null, '80000', '1', '2019-05-22 19:40:08', null, null, null, null, null, null, null, '13944445555', '快点', null, '李佳星', '13301212233', '中腾大厦', null, null, '0', '0', '0', null);
INSERT INTO `tb_order` VALUES ('1131943869836038144', '1', '80000', '0', null, '80000', '1', '2019-05-24 23:23:44', null, null, null, null, null, null, null, '13944445555', null, null, '', '', '', null, null, '0', '0', '0', null);
INSERT INTO `tb_order` VALUES ('1131959611226722304', '1', '1', '0', null, '1', '1', '2019-05-25 00:26:17', '2019-05-25 18:02:21', '2019-05-25 18:02:21', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000305201905257478006122', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132112186555109376', '1', '1', '0', null, '1', '1', '2019-05-25 10:32:34', '2019-05-25 19:07:07', '2019-05-25 19:07:07', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000296201905254628074050', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132182393906663424', '1', '1', '0', null, '1', '1', '2019-05-25 15:11:32', '2019-05-25 16:45:59', '2019-05-25 16:45:59', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000290201905258079559022', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132196397093883904', '1', '1', '0', null, '1', '1', '2019-05-25 16:07:11', '2019-05-25 16:22:11', '2019-05-25 16:22:11', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000296201905259451214593', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132200028757168128', '1', '1', '0', null, '1', '1', '2019-05-25 16:21:37', '2019-05-25 16:22:20', '2019-05-25 16:22:20', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000303201905257598178222', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132295753927102464', '1', '1', '0', null, '1', '1', '2019-05-25 22:41:59', '2019-05-25 22:42:27', '2019-05-25 22:42:27', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000299201905258853427181', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132454405589831680', '1', '1', '0', null, '1', '1', '2019-05-26 09:12:25', '2019-05-26 09:12:57', '2019-05-26 09:12:57', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000292201905264690569016', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132455140763242496', '1', '1', '0', null, '1', '1', '2019-05-26 09:15:20', '2019-05-26 09:15:39', '2019-05-26 09:15:39', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000292201905268717642982', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132457431151022080', '1', '1', '0', null, '1', '1', '2019-05-26 09:24:26', '2019-05-26 09:24:46', '2019-05-26 09:24:46', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000308201905267529641030', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132458301683011584', '1', '1', '0', null, '1', '1', '2019-05-26 09:27:54', '2019-05-26 09:28:12', '2019-05-26 09:28:12', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000301201905263340558231', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132462618108366848', '1', '1', '0', null, '1', '1', '2019-05-26 09:45:03', '2019-05-26 09:45:30', '2019-05-26 09:45:30', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000293201905262441223874', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132464442437668864', '1', '1', '0', null, '1', '1', '2019-05-26 09:52:18', '2019-05-26 09:52:41', '2019-05-26 09:52:41', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000291201905261035954285', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132466614030176256', '1', '1', '0', null, '1', '1', '2019-05-26 10:00:56', '2019-05-26 10:01:12', '2019-05-26 10:01:12', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000293201905263221931622', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132467027097817088', '1', '1', '0', null, '1', '1', '2019-05-26 10:02:34', '2019-05-26 10:18:21', '2019-05-26 10:18:21', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000307201905264610835873', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132471446476558336', '1', '1', '0', null, '1', '1', '2019-05-26 10:20:08', '2019-05-26 10:26:26', '2019-05-26 10:26:26', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000307201905262656114983', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132566231610691584', '1', '1', '0', null, '1', '1', '2019-05-26 16:36:46', '2019-05-26 16:37:12', '2019-05-26 16:37:12', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000291201905268026978303', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('1132834450854514688', '1', '1', '0', null, '1', '1', '2019-05-27 10:22:35', '2019-05-27 10:23:19', '2019-05-27 10:23:19', null, null, null, null, null, '13944445555', null, null, '李佳星', '13301212233', '中腾大厦', null, '4200000307201905278362498491', '1', '1', '0', null);
INSERT INTO `tb_order` VALUES ('12', null, null, null, null, '3', '1', '2019-04-15 00:00:00', '2017-08-24 21:05:56', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('13', null, null, null, null, '267', '1', '2019-04-15 00:00:00', '2017-08-24 21:05:56', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('14', null, null, null, null, '300', '1', '2019-04-15 00:00:00', '2017-08-24 21:05:56', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('15', null, null, null, null, '3', '1', '2019-04-15 00:00:00', '2017-08-24 23:07:38', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('16', null, null, null, null, '267', '1', '2019-04-15 00:00:00', '2017-08-24 23:07:38', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('17', null, null, null, null, '300', '1', '2019-04-15 00:00:00', '2017-08-24 23:07:38', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('18', null, null, null, null, '178', '1', '2019-04-15 00:00:00', '2017-08-25 11:59:03', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, null, null, null, null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('19', null, null, null, null, '2', '1', '2019-04-15 00:00:00', '2017-08-25 11:59:03', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, null, null, null, null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('2', null, null, null, null, null, '1', '2019-04-15 00:00:00', '2017-08-24 20:44:03', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '4', null, null, '0');
INSERT INTO `tb_order` VALUES ('20', null, null, null, null, '178', '1', '2019-04-15 00:00:00', '2017-08-25 11:59:03', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, null, null, null, null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('21', null, null, null, null, '178', '1', '2019-04-15 00:00:00', '2017-08-25 23:26:10', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('22', null, null, null, null, '2', '1', '2019-04-15 00:00:00', '2017-08-25 23:26:11', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('23', null, null, null, null, '178', '1', '2019-04-15 00:00:00', '2017-08-25 23:26:11', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('24', null, null, null, null, '2', '1', '2019-04-15 00:00:00', '2017-08-25 23:28:10', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('25', null, null, null, null, '1', '1', '2019-04-15 00:00:00', '2017-08-25 23:49:18', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('26', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 00:06:31', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳红', '13700221122', '修正大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('27', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 00:10:13', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('28', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 00:17:53', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('29', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 00:19:56', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('3', null, null, null, null, '3', '1', '2019-04-15 00:00:00', '2017-08-24 20:46:10', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '4', null, null, '0');
INSERT INTO `tb_order` VALUES ('30', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 00:37:47', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('31', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 00:37:47', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('32', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 00:41:13', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '2', null, null, '0');
INSERT INTO `tb_order` VALUES ('33', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 00:41:14', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '2', null, null, '0');
INSERT INTO `tb_order` VALUES ('34', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 11:57:26', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, null, null, null, null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('35', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 12:21:39', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, null, null, null, null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('36', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 12:34:46', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, null, null, null, null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('37', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 12:47:44', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, null, null, null, null, null, '2', null, null, '0');
INSERT INTO `tb_order` VALUES ('38', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-08-26 12:47:44', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, null, null, null, null, null, '2', null, null, '0');
INSERT INTO `tb_order` VALUES ('4', null, null, null, null, '267', '1', '2019-04-15 00:00:00', '2017-08-24 20:46:11', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('5', null, null, null, null, '300', '1', '2019-04-15 00:00:00', '2017-08-24 20:46:11', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('6', null, null, null, null, '3', '1', '2019-04-15 00:00:00', '2017-08-24 20:46:40', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('7', null, null, null, null, '267', '1', '2019-04-15 00:00:00', '2017-08-24 20:46:40', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('8', null, null, null, null, '300', '1', '2019-04-15 00:00:00', '2017-08-24 20:46:40', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('9', null, null, null, null, '3', '1', '2019-04-15 00:00:00', '2017-08-24 21:01:10', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', null, null, '0', null, null, '0');
INSERT INTO `tb_order` VALUES ('918159799198212096', null, null, null, null, '400', '1', '2019-04-15 00:00:00', '2017-10-12 01:02:09', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '叶问', '999111', '咏春武馆总部', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('918334996291301376', null, null, null, null, '2004', '2', '2019-04-15 00:00:00', '2017-10-12 12:38:19', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李小龙', '11011011', '永春武馆', '2', null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('918334996698148864', null, null, null, null, '1798', '2', '2019-04-15 00:00:00', '2017-10-12 12:38:19', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李小龙', '11011011', '永春武馆', '2', null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('918773289399160832', null, null, null, null, '200', '1', '2019-04-15 00:00:00', '2017-10-13 17:39:56', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李小龙', '11011011', '永春武馆', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('918780408353546240', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-10-13 18:08:14', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李小龙', '11011011', '永春武馆', null, null, '2', null, null, '0');
INSERT INTO `tb_order` VALUES ('918806410454654976', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-10-13 19:51:33', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '2', null, null, '0');
INSERT INTO `tb_order` VALUES ('918833485639081984', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-10-13 21:39:08', '2019-04-15 00:00:00', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '1', null, null, '0');
INSERT INTO `tb_order` VALUES ('918835712441212928', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-10-13 21:47:59', '2019-04-15 19:55:56', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', null, null, '2', '1', null, '0');
INSERT INTO `tb_order` VALUES ('919055624854081536', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-10-14 12:21:50', '2019-04-15 20:03:10', null, null, null, null, null, 'lijialong', null, null, '李佳星', '13301212233', '中腾大厦', '2', null, '1', '1', null, '0');
INSERT INTO `tb_order` VALUES ('919059760869863424', null, null, null, null, '0', '1', '2019-04-15 00:00:00', '2017-10-14 12:38:16', '2019-04-15 21:10:07', null, null, null, null, null, 'lijialong', null, null, '李嘉诚', '13900112222', '金燕龙办公楼', '2', null, '2', '1', null, '0');

-- ----------------------------
-- Table structure for tb_order_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_config`;
CREATE TABLE `tb_order_config` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `order_timeout` int(11) DEFAULT NULL COMMENT '正常订单超时时间（分）',
  `seckill_timeout` int(11) DEFAULT NULL COMMENT '秒杀订单超时时间（分）',
  `take_timeout` int(11) DEFAULT NULL COMMENT '自动收货（天）',
  `service_timeout` int(11) DEFAULT NULL COMMENT '售后期限',
  `comment_timeout` int(11) DEFAULT NULL COMMENT '自动五星好评',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order_config
-- ----------------------------
INSERT INTO `tb_order_config` VALUES ('1', '60', '10', '15', '7', '7');

-- ----------------------------
-- Table structure for tb_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_item`;
CREATE TABLE `tb_order_item` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `category_id1` int(11) DEFAULT NULL COMMENT '1级分类',
  `category_id2` int(11) DEFAULT NULL COMMENT '2级分类',
  `category_id3` int(11) DEFAULT NULL COMMENT '3级分类',
  `spu_id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'SPU_ID',
  `sku_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'SKU_ID',
  `order_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '订单ID',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `price` int(20) DEFAULT NULL COMMENT '单价',
  `num` int(10) DEFAULT NULL COMMENT '数量',
  `money` int(20) DEFAULT NULL COMMENT '总金额',
  `pay_money` int(11) DEFAULT NULL COMMENT '实付金额',
  `image` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '图片地址',
  `weight` int(11) DEFAULT NULL COMMENT '重量',
  `post_fee` int(11) DEFAULT NULL COMMENT '运费',
  `is_return` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否退货',
  PRIMARY KEY (`id`),
  KEY `item_id` (`sku_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_order_item
-- ----------------------------
INSERT INTO `tb_order_item` VALUES ('1', '161', '171', '177', '149187842867954', '19', '3', '3G 6', '1', '3', '3', '3', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('10', '161', '171', '177', '149187842867954', '19', '12', '3G 6', '1', '3', '3', '3', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('1028501748186087425', '161', '171', '177', '149187842867970', '1369296', '1028501748186087424', '精品女装111 联通2G 16G', '333', '13', '4329', '4329', 'http://192.168.25.133/group1/M00/00/00/wKgZhVteZyWAJnBZABpWgKKlOQM126.png', null, null, null);
INSERT INTO `tb_order_item` VALUES ('1028501749566013441', '161', '171', '177', '149187842867960', '1369283', '1028501749566013440', '精品半身裙（秋款打折） 移动4G 32G', '0', '6', '0', '100', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('1028501749582790656', '161', '171', '177', '149187842867960', '1369282', '1028501749566013440', '精品半身裙（秋款打折） 移动4G 16G', '0', '6', '0', '100', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('1028624753851629570', '1', '4', '5', '149187842867960', '1369280', '1028624753851629569', '精品半身裙（秋款打折） 移动3G 16G', '0', '1', '300', '300', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('1028625576669216770', '2', '7', '8', '149187842867960', '1369281', '1028625576669216769', '精品半身裙（秋款打折） 移动3G 32G', '0', '2', '400', '400', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('1029536196264460290', '2', '7', '8', '149187842867960', '1369281', '1029536196264460289', '精品半身裙（秋款打折） 移动3G 32G', '0', '3', '500', '500', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('1029540851476332546', '1', '2', '3', '149187842867960', '1369280', '1029540851476332545', '精品半身裙（秋款打折） 移动3G 16G', '0', '2', '1002', '1002', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('11', '161', '171', '177', '149187842867952', '18', '13', '3G 6', '89', '3', '267', '267', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('1106089444903096321', '161', '171', '177', '1', '1025149', '1106089444903096320', '飞利浦（PHILIPS） 32PFL3045/T3 32英寸 高清LED液晶电视（黑色）', '1399', '5', '6995', '6995', 'http://img10.360buyimg.com/n1/s450x450_jfs/t3457/294/236823024/102048/c97f5825/58072422Ndd7e66c4.jpg', '0', null, null);
INSERT INTO `tb_order_item` VALUES ('1106089983590141953', '161', '171', '177', '1', '1025149', '1106089983590141952', '飞利浦（PHILIPS） 32PFL3045/T3 32英寸 高清LED液晶电视（黑色）', '1399', '1', '1399', '1399', 'http://img10.360buyimg.com/n1/s450x450_jfs/t3457/294/236823024/102048/c97f5825/58072422Ndd7e66c4.jpg', '0', null, null);
INSERT INTO `tb_order_item` VALUES ('1106104092524154880', '161', '171', '177', '1', '875724', '1106104092389937152', '诺基亚(NOKIA) 1050 (RM-908) 蓝色 移动联通2G手机', '149', '2', '298', '298', 'http://img10.360buyimg.com/n1/s450x450_jfs/t3457/294/236823024/102048/c97f5825/58072422Ndd7e66c4.jpg', '0', null, null);
INSERT INTO `tb_order_item` VALUES ('1106107407865614336', '161', '171', '177', '1', '875724', '1106107407773339648', '诺基亚(NOKIA) 1050 (RM-908) 蓝色 移动联通2G手机', '149', '69', '10281', '10281', 'http://img10.360buyimg.com/n1/s450x450_jfs/t3457/294/236823024/102048/c97f5825/58072422Ndd7e66c4.jpg', '0', null, null);
INSERT INTO `tb_order_item` VALUES ('1106109621740900353', '161', '171', '177', '1', '1008825', '1106109621740900352', 'TCL L40F3301B 40英寸 超窄边框蓝光LED液晶电视（珠光黑）', '1899', '6', '11394', '11394', 'http://img10.360buyimg.com/n1/s450x450_jfs/t3457/294/236823024/102048/c97f5825/58072422Ndd7e66c4.jpg', '0', null, null);
INSERT INTO `tb_order_item` VALUES ('1106111554904002560', '161', '171', '177', '1', '1008825', '1106111554773979136', 'TCL L40F3301B 40英寸 超窄边框蓝光LED液晶电视（珠光黑）', '1899', '7', '13293', '13293', 'http://img10.360buyimg.com/n1/s450x450_jfs/t3457/294/236823024/102048/c97f5825/58072422Ndd7e66c4.jpg', '0', null, null);
INSERT INTO `tb_order_item` VALUES ('1106113685337804800', '161', '171', '177', '1', '1008825', '1106113685203587072', 'TCL L40F3301B 40英寸 超窄边框蓝光LED液晶电视（珠光黑）', '1899', '7', '13293', '13293', 'http://img10.360buyimg.com/n1/s450x450_jfs/t3457/294/236823024/102048/c97f5825/58072422Ndd7e66c4.jpg', '0', null, null);
INSERT INTO `tb_order_item` VALUES ('1131155505834758144', '74', '75', '76', '10000018913700', '100000189137', '1131155505654403072', '夕阳红防蓝光老花镜男女通用款 清新灰色时尚大框镜架不易折断老花眼镜E9004G 200度 灰色', '16600', '2', '33200', '33200', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t26281/196/340140952/94362/c353173/5b8f6e63N56334c08.jpg!q70.jpg.webp', '20', null, null);
INSERT INTO `tb_order_item` VALUES ('1131155892654444544', '74', '75', '76', '10000117267400', '100001320053', '1131155892608307200', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '80000', '1', '80000', '80000', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1131162823406260224', '74', '75', '76', '10000117267400', '100001320053', '1131162823150407680', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '80000', '1', '80000', '80000', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1131943870104473600', '74', '75', '76', '10000117267400', '100001320053', '1131943869836038144', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '80000', '1', '80000', '80000', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1131959611440631808', '74', '75', '76', '10000117267400', '100001320053', '1131959611226722304', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132112186769018880', '74', '75', '76', '10000117267400', '100001320053', '1132112186555109376', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132182394061852672', '74', '75', '76', '10000117267400', '100001320053', '1132182393906663424', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132196397177769984', '74', '75', '76', '10000117267400', '100001320053', '1132196397093883904', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132200028979466240', '74', '75', '76', '10000117267400', '100001320053', '1132200028757168128', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132295754082291712', '74', '75', '76', '10000117267400', '100001320053', '1132295753927102464', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132454405736632320', '74', '75', '76', '10000117267400', '100001320053', '1132454405589831680', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132455140817768448', '74', '75', '76', '10000117267400', '100001320053', '1132455140763242496', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132457431213936640', '74', '75', '76', '10000117267400', '100001320053', '1132457431151022080', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132458301754314752', '74', '75', '76', '10000117267400', '100001320053', '1132458301683011584', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132462618179670016', '74', '75', '76', '10000117267400', '100001320053', '1132462618108366848', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132464442576080896', '74', '75', '76', '10000117267400', '100001320053', '1132464442437668864', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132466614097285120', '74', '75', '76', '10000117267400', '100001320053', '1132466614030176256', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132467027135565824', '74', '75', '76', '10000117267400', '100001320053', '1132467027097817088', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132471446514307072', '74', '75', '76', '10000117267400', '100001320053', '1132471446476558336', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132566231816212480', '74', '75', '76', '10000117267400', '100001320053', '1132566231610691584', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('1132834451131338752', '74', '75', '76', '10000117267400', '100001320053', '1132834450854514688', '一加手机6T 8GB+128GB 亮瓷黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '1', '1', '1', '1', 'https://m.360buyimg.com/mobilecms/s720x720_jfs/t1/6425/40/3887/217009/5bd716e9E4886d5d8/b3da975f4047ded3.jpg!q70.jpg.webp', '10', null, null);
INSERT INTO `tb_order_item` VALUES ('12', '161', '171', '177', '149187842867952', '17', '14', '3G 5.5', '100', '3', '300', '300', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('13', '161', '171', '177', '149187842867954', '19', '15', '3G 6', '1', '3', '3', '3', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('14', '161', '171', '177', '149187842867952', '18', '16', '3G 6', '89', '3', '267', '267', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('15', '161', '171', '177', '149187842867952', '17', '17', '3G 5.5', '100', '3', '300', '300', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('16', '161', '171', '177', '149187842867952', '18', '18', '高端皮具护理 联通3G 6寸', '89', '2', '178', '178', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('17', '161', '171', '177', '149187842867954', '19', '19', '3G 6', '1', '2', '2', '2', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('18', '161', '171', '177', '149187842867952', '18', '20', '3G 6', '89', '2', '178', '178', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('19', '161', '171', '177', '149187842867952', '18', '21', '高端皮具护理 联通3G 6寸', '89', '2', '178', '178', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('2', '161', '171', '177', '149187842867952', '18', '4', '3G 6', '89', '3', '267', '267', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('20', '161', '171', '177', '149187842867954', '19', '22', '3G 6', '1', '2', '2', '2', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('21', '161', '171', '177', '149187842867952', '18', '23', '3G 6', '89', '2', '178', '178', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('22', '161', '171', '177', '149187842867954', '19', '24', '古董 移动3G 6寸', '1', '2', '2', '2', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('23', '161', '171', '177', '149187842867954', '19', '25', '古董 移动3G 6寸', '1', '1', '1', '1', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('24', '161', '171', '177', '149187842867954', '19', '26', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('25', '161', '171', '177', '149187842867954', '19', '27', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('26', '161', '171', '177', '149187842867954', '19', '28', '3G 6', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('27', '161', '171', '177', '149187842867954', '19', '29', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('28', '161', '171', '177', '149187842867954', '19', '30', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('29', '161', '171', '177', '149187842867952', '18', '31', '高端皮具护理 联通3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('3', '161', '171', '177', '149187842867952', '17', '5', '3G 5.5', '100', '3', '300', '300', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('30', '161', '171', '177', '149187842867952', '18', '32', '高端皮具护理 联通3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('31', '161', '171', '177', '149187842867954', '19', '33', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('32', '161', '171', '177', '149187842867954', '19', '34', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('33', '161', '171', '177', '149187842867954', '19', '35', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('34', '161', '171', '177', '149187842867954', '19', '36', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('35', '161', '171', '177', '149187842867954', '19', '37', '古董 移动3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('36', '161', '171', '177', '149187842867952', '18', '38', '高端皮具护理 联通3G 6寸', '0', '1', '0', '100', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('4', '161', '171', '177', '149187842867954', '19', '6', '3G 6', '1', '3', '3', '3', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('5', '161', '171', '177', '149187842867952', '18', '7', '3G 6', '89', '3', '267', '267', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('6', '161', '171', '177', '149187842867952', '17', '8', '3G 5.5', '100', '3', '300', '300', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('7', '161', '171', '177', '149187842867954', '19', '9', '3G 6', '1', '3', '3', '3', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('8', '161', '171', '177', '149187842867952', '18', '10', '3G 6', '89', '3', '267', '267', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('9', '161', '171', '177', '149187842867952', '17', '11', '3G 5.5', '100', '3', '300', '300', null, null, null, null);
INSERT INTO `tb_order_item` VALUES ('918159799198212097', '161', '171', '177', '149187842867960', '1369280', '918159799198212096', '精品半身裙（秋款打折） 移动3G 16G', '200', '2', '400', '400', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('918334996291301377', '161', '171', '177', '149187842867960', '1369280', '918334996291301376', '精品半身裙（秋款打折） 移动3G 16G', '200', '8', '1600', '1600', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('918334996622651392', '161', '171', '177', '149187842867960', '1369281', '918334996291301376', '精品半身裙（秋款打折） 移动3G 32G', '202', '2', '404', '404', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('918334996698148865', '161', '171', '177', '1', '1369278', '918334996698148864', '【联通合约惠机】小米 红米Note 增强版 象牙白 联通4G手机', '899', '2', '1798', '1798', 'http://img12.360buyimg.com/n1/s450x450_jfs/t3034/299/2060854617/119711/577e85cb/57d11b6cN1fd1194d.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('918773289399160833', '161', '171', '177', '149187842867960', '1369280', '918773289399160832', '精品半身裙（秋款打折） 移动3G 16G', '200', '1', '200', '200', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('918780408353546241', '161', '171', '177', '149187842867960', '1369280', '918780408353546240', '精品半身裙（秋款打折） 移动3G 16G', '0', '1', '0', '100', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('918806410454654977', '161', '171', '177', '149187842867960', '1369280', '918806410454654976', '精品半身裙（秋款打折） 移动3G 16G', '0', '1', '0', '100', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('918833485639081985', '161', '171', '177', '149187842867960', '1369280', '918833485639081984', '精品半身裙（秋款打折） 移动3G 16G', '0', '1', '0', '100', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('918835712441212929', '161', '171', '177', '149187842867960', '1369280', '918835712441212928', '精品半身裙（秋款打折） 移动3G 16G', '0', '1', '0', '100', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('919055624854081537', '161', '171', '177', '149187842867960', '1369280', '919055624854081536', '精品半身裙（秋款打折） 移动3G 16G', '0', '1', '0', '100', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);
INSERT INTO `tb_order_item` VALUES ('919059760869863425', '161', '171', '177', '149187842867960', '1369280', '919059760869863424', '精品半身裙（秋款打折） 移动3G 16G', '0', '2', '0', '100', 'http://192.168.25.133/group1/M00/00/00/wKgZhVnGbYuAO6AHAAjlKdWCzvg253.jpg', null, null, null);

-- ----------------------------
-- Table structure for tb_order_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_log`;
CREATE TABLE `tb_order_log` (
  `id` varchar(20) NOT NULL COMMENT 'ID',
  `operater` varchar(50) DEFAULT NULL COMMENT '操作员',
  `operate_time` datetime DEFAULT NULL COMMENT '操作时间',
  `order_id` varchar(20) DEFAULT NULL COMMENT '订单ID',
  `order_status` char(1) DEFAULT NULL COMMENT '订单状态',
  `pay_status` char(1) DEFAULT NULL COMMENT '付款状态',
  `consign_status` char(1) DEFAULT NULL COMMENT '发货状态',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order_log
-- ----------------------------
INSERT INTO `tb_order_log` VALUES ('1132200173863309312', 'system', '2019-05-25 16:22:11', '1132196397093883904', '1', '1', null, '支付流水号：4200000296201905259451214593');
INSERT INTO `tb_order_log` VALUES ('1132200209930129408', 'system', '2019-05-25 16:22:20', '1132200028757168128', '1', '1', null, '支付流水号：4200000303201905257598178222');
INSERT INTO `tb_order_log` VALUES ('1132206161848832000', 'system', '2019-05-25 16:45:59', '1132182393906663424', '1', '1', null, '支付流水号：4200000290201905258079559022');
INSERT INTO `tb_order_log` VALUES ('1132225379893907456', 'system', '2019-05-25 18:02:21', '1131959611226722304', '1', '1', null, '支付流水号：4200000305201905257478006122');
INSERT INTO `tb_order_log` VALUES ('1132241680192376832', 'system', '2019-05-25 19:07:07', '1132112186555109376', '1', '1', null, '支付流水号：4200000296201905254628074050');
INSERT INTO `tb_order_log` VALUES ('1132295870507782144', 'system', '2019-05-25 22:42:27', '1132295753927102464', '1', '1', null, '支付流水号：4200000299201905258853427181');
INSERT INTO `tb_order_log` VALUES ('1132454541724356608', 'system', '2019-05-26 09:12:57', '1132454405589831680', '1', '1', null, '支付流水号：4200000292201905264690569016');
INSERT INTO `tb_order_log` VALUES ('1132455219880398848', 'system', '2019-05-26 09:15:39', '1132455140763242496', '1', '1', null, '支付流水号：4200000292201905268717642982');
INSERT INTO `tb_order_log` VALUES ('1132457512054951936', 'system', '2019-05-26 09:24:46', '1132457431151022080', '1', '1', null, '支付流水号：4200000308201905267529641030');
INSERT INTO `tb_order_log` VALUES ('1132458376219987968', 'system', '2019-05-26 09:28:12', '1132458301683011584', '1', '1', null, '支付流水号：4200000301201905263340558231');
INSERT INTO `tb_order_log` VALUES ('1132462730851258368', 'system', '2019-05-26 09:45:30', '1132462618108366848', '1', '1', null, '支付流水号：4200000293201905262441223874');
INSERT INTO `tb_order_log` VALUES ('1132464538705334272', 'system', '2019-05-26 09:52:41', '1132464442437668864', '1', '1', null, '支付流水号：4200000291201905261035954285');
INSERT INTO `tb_order_log` VALUES ('1132466682250530816', 'system', '2019-05-26 10:01:12', '1132466614030176256', '1', '1', null, '支付流水号：4200000293201905263221931622');
INSERT INTO `tb_order_log` VALUES ('1132471000135503872', 'system', '2019-05-26 10:18:21', '1132467027097817088', '1', '1', null, '支付流水号：4200000307201905264610835873');
INSERT INTO `tb_order_log` VALUES ('1132473031084609536', 'system', '2019-05-26 10:26:26', '1132471446476558336', '1', '1', null, '支付流水号：4200000307201905262656114983');
INSERT INTO `tb_order_log` VALUES ('1132566341300129792', 'system', '2019-05-26 16:37:12', '1132566231610691584', '1', '1', null, '支付流水号：4200000291201905268026978303');
INSERT INTO `tb_order_log` VALUES ('1132834637433933824', 'system', '2019-05-27 10:23:19', '1132834450854514688', '1', '1', null, '支付流水号：4200000307201905278362498491');

-- ----------------------------
-- Table structure for tb_preferential
-- ----------------------------
DROP TABLE IF EXISTS `tb_preferential`;
CREATE TABLE `tb_preferential` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `buy_money` int(11) DEFAULT NULL COMMENT '消费金额',
  `pre_money` int(11) DEFAULT NULL COMMENT '优惠金额',
  `category_id` int(20) DEFAULT NULL COMMENT '品类ID',
  `start_time` date DEFAULT NULL COMMENT '活动开始日期',
  `end_time` date DEFAULT NULL COMMENT '活动截至日期',
  `state` varchar(1) DEFAULT NULL COMMENT '状态',
  `type` varchar(1) DEFAULT NULL COMMENT '类型1不翻倍 2翻倍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_preferential
-- ----------------------------
INSERT INTO `tb_preferential` VALUES ('1', '10000', '3000', '757', '2019-01-16', '2019-08-01', '1', '1');
INSERT INTO `tb_preferential` VALUES ('2', '30000', '10000', '757', '2019-01-16', '2019-08-01', '1', '1');
INSERT INTO `tb_preferential` VALUES ('3', '60000', '30000', '757', '2019-01-16', '2019-08-01', '1', '1');
INSERT INTO `tb_preferential` VALUES ('4', '100000', '20000', '76', '2019-01-16', '2019-08-01', '1', '2');

-- ----------------------------
-- Table structure for tb_return_cause
-- ----------------------------
DROP TABLE IF EXISTS `tb_return_cause`;
CREATE TABLE `tb_return_cause` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cause` varchar(100) DEFAULT NULL COMMENT '原因',
  `seq` int(11) DEFAULT '1' COMMENT '排序',
  `status` char(1) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_return_cause
-- ----------------------------

-- ----------------------------
-- Table structure for tb_return_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_return_order`;
CREATE TABLE `tb_return_order` (
  `id` bigint(20) NOT NULL COMMENT '服务单号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单号',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_account` varchar(11) DEFAULT NULL COMMENT '用户账号',
  `linkman` varchar(20) DEFAULT NULL COMMENT '联系人',
  `linkman_mobile` varchar(11) DEFAULT NULL COMMENT '联系人手机',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `return_money` int(11) DEFAULT NULL COMMENT '退款金额',
  `is_return_freight` char(1) DEFAULT NULL COMMENT '是否退运费',
  `status` char(1) DEFAULT NULL COMMENT '申请状态',
  `dispose_time` datetime DEFAULT NULL COMMENT '处理时间',
  `return_cause` int(11) DEFAULT NULL COMMENT '退货退款原因',
  `evidence` varchar(1000) DEFAULT NULL COMMENT '凭证图片',
  `description` varchar(1000) DEFAULT NULL COMMENT '问题描述',
  `remark` varchar(1000) DEFAULT NULL COMMENT '处理备注',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_return_order
-- ----------------------------

-- ----------------------------
-- Table structure for tb_return_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_return_order_item`;
CREATE TABLE `tb_return_order_item` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `category_id` bigint(20) DEFAULT NULL COMMENT '分类ID',
  `spu_id` bigint(20) DEFAULT NULL COMMENT 'SPU_ID',
  `sku_id` bigint(20) NOT NULL COMMENT 'SKU_ID',
  `order_id` bigint(20) NOT NULL COMMENT '订单ID',
  `order_item_id` bigint(20) DEFAULT NULL COMMENT '订单明细ID',
  `return_order_id` bigint(20) NOT NULL COMMENT '退货订单ID',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `price` int(20) DEFAULT NULL COMMENT '单价',
  `num` int(10) DEFAULT NULL COMMENT '数量',
  `money` int(20) DEFAULT NULL COMMENT '总金额',
  `pay_money` int(20) DEFAULT NULL COMMENT '支付金额',
  `image` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '图片地址',
  `weight` int(11) DEFAULT NULL COMMENT '重量',
  PRIMARY KEY (`id`),
  KEY `item_id` (`sku_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_return_order_item
-- ----------------------------

-- ----------------------------
-- View structure for v_category1
-- ----------------------------
DROP VIEW IF EXISTS `v_category1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_category1` AS select `qingcheng_goods`.`tb_category`.`id` AS `id`,`qingcheng_goods`.`tb_category`.`name` AS `name` from `qingcheng_goods`.`tb_category` where (`qingcheng_goods`.`tb_category`.`parent_id` = 0) ;
