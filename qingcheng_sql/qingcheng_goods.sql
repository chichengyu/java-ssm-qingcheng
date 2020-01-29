/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : qingcheng_goods

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2019-12-20 17:49:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_album
-- ----------------------------
DROP TABLE IF EXISTS `tb_album`;
CREATE TABLE `tb_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(100) DEFAULT NULL COMMENT '相册名称',
  `image` varchar(100) DEFAULT NULL COMMENT '相册封面',
  `image_items` text COMMENT '图片列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='相册表';

-- ----------------------------
-- Records of tb_album
-- ----------------------------
INSERT INTO `tb_album` VALUES ('1', '华为mete20', 'http://localhost:9101/img/2.jpg', '[{\"url\":\"http://localhost:9101/img/1.jpg\",\"uid\":1548143143154,\"status\":\"success\"},{\"url\":\"http://localhost:9101/img/7.jpg\",\"uid\":1548143143155,\"status\":\"success\"}]');

-- ----------------------------
-- Table structure for tb_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_brand`;
CREATE TABLE `tb_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `name` varchar(100) NOT NULL COMMENT '品牌名称',
  `image` varchar(1000) DEFAULT '' COMMENT '品牌图片地址',
  `letter` char(1) DEFAULT '' COMMENT '品牌的首字母',
  `seq` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325414 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of tb_brand
-- ----------------------------
INSERT INTO `tb_brand` VALUES ('1115', 'HTC', 'https://xiaochi-img.oss-cn-shenzhen.aliyuncs.com/qingcheng/brand/2019/12/6d3b9eddace241bd916be87ebc223ff4.png', 'H', null);
INSERT INTO `tb_brand` VALUES ('1528', 'LG', 'https://xiaochi-img.oss-cn-shenzhen.aliyuncs.com/qingcheng/brand/2019/12/0294519ea3734d3c8973caa1501dc19f.jpg', 'L', null);
INSERT INTO `tb_brand` VALUES ('1912', 'NEC', '', 'N', null);
INSERT INTO `tb_brand` VALUES ('2032', 'OPPO', 'http://img10.360buyimg.com/popshop/jfs/t2119/133/2264148064/4303/b8ab3755/56b2f385N8e4eb051.jpg', 'O', null);
INSERT INTO `tb_brand` VALUES ('2505', 'TCL', '', 'T', null);
INSERT INTO `tb_brand` VALUES ('3177', '爱贝多', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('3539', '安桥', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('3941', '白金', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('4986', '波导', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('6522', '朵唯', '', 'D', null);
INSERT INTO `tb_brand` VALUES ('6742', '飞利浦', 'http://img12.360buyimg.com/popshop/jfs/t18361/122/1318410299/1870/36fe70c9/5ac43a4dNa44a0ce0.jpg', 'F', null);
INSERT INTO `tb_brand` VALUES ('7174', '富可视', '', 'F', null);
INSERT INTO `tb_brand` VALUES ('7203', '富士通', '', 'F', null);
INSERT INTO `tb_brand` VALUES ('7420', '格力', '', 'G', null);
INSERT INTO `tb_brand` VALUES ('7817', '海尔', 'http://image.leyou.com/group1/M00/00/00/wKg4ZVrYZcyAVOzoAAB846UcmLg013.png', 'H', null);
INSERT INTO `tb_brand` VALUES ('7888', '海信', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('8214', '黑莓', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('8551', '华硕', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('8557', '华为', 'http://img10.360buyimg.com/popshop/jfs/t5662/36/8888655583/7806/1c629c01/598033b4Nd6055897.jpg', 'H', null);
INSERT INTO `tb_brand` VALUES ('8740', '惠普', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('9420', '金立', '', 'J', null);
INSERT INTO `tb_brand` VALUES ('9637', '京瓷', '', 'J', null);
INSERT INTO `tb_brand` VALUES ('10317', '康佳', '', 'K', null);
INSERT INTO `tb_brand` VALUES ('10640', '酷派', 'http://img10.360buyimg.com/popshop/jfs/t2521/347/883897149/3732/91c917ec/5670cf96Ncffa2ae6.jpg', 'K', null);
INSERT INTO `tb_brand` VALUES ('11516', '联想', 'http://img11.360buyimg.com/popshop/jfs/t6799/74/1348425607/15774/bc286188/59804c98N1944175e.jpg', 'L', null);
INSERT INTO `tb_brand` VALUES ('12286', '漫步者', '', 'M', null);
INSERT INTO `tb_brand` VALUES ('12669', '魅族', 'http://img13.360buyimg.com/popshop/jfs/t3511/131/31887105/4943/48f83fa9/57fdf4b8N6e95624d.jpg', 'M', null);
INSERT INTO `tb_brand` VALUES ('13066', '摩托罗拉', '', 'M', null);
INSERT INTO `tb_brand` VALUES ('13539', '诺基亚', 'http://img11.360buyimg.com/popshop/jfs/t2572/102/189476501/7717/16cc5814/563b33d4N6c59780c.jpg', 'N', null);
INSERT INTO `tb_brand` VALUES ('14026', 'Apple', 'http://img12.360buyimg.com/popshop/jfs/t2989/240/151377693/3895/30ad9044/574d36dbN262ef26d.jpg', 'A', null);
INSERT INTO `tb_brand` VALUES ('14478', '青橙', '', 'Q', null);
INSERT INTO `tb_brand` VALUES ('15127', '三星', 'http://img14.360buyimg.com/popshop/jfs/t2701/34/484677369/7439/ee13e8fa/5716e2c4Nc925baf3.jpg', 'S', null);
INSERT INTO `tb_brand` VALUES ('15539', '神舟', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('16506', '索爱', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('16538', '索尼', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('16975', '天语', '', 'T', null);
INSERT INTO `tb_brand` VALUES ('17193', '外星人', '', 'W', null);
INSERT INTO `tb_brand` VALUES ('17424', '威图', '', 'W', null);
INSERT INTO `tb_brand` VALUES ('17440', '微软', '', 'W', null);
INSERT INTO `tb_brand` VALUES ('18078', 'NAMO', '', 'N', null);
INSERT INTO `tb_brand` VALUES ('18362', '小辣椒', 'http://img14.360buyimg.com/popshop/g14/M00/09/10/rBEhV1K6uOwIAAAAAAAGxx0kTvQAAHWYwPIloIAAAbf434.png', 'X', null);
INSERT INTO `tb_brand` VALUES ('18374', '小米', 'http://img10.360buyimg.com/popshop/jfs/t7084/169/439244907/4647/724c7958/598042c9N6e4e79e5.jpg', 'X', null);
INSERT INTO `tb_brand` VALUES ('20130', '优思', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('20710', '长虹', '', 'C', null);
INSERT INTO `tb_brand` VALUES ('21011', '中兴', 'http://img13.360buyimg.com/popshop/jfs/t2551/271/1317227522/3284/7419745e/56a855a3Ne38ee719.jpg', 'Z', null);
INSERT INTO `tb_brand` VALUES ('21360', 'beats', '', 'b', null);
INSERT INTO `tb_brand` VALUES ('21553', '本易', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('22261', 'tonino lamborghini', '', 'T', null);
INSERT INTO `tb_brand` VALUES ('22575', '布鲁雅尔', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('23049', '广信', '', 'G', null);
INSERT INTO `tb_brand` VALUES ('23130', '夏普', 'http://img12.360buyimg.com/popshop/jfs/t2458/315/2153417538/12751/2ff4e617/56b15fe9Naae1551d.jpg', 'X', null);
INSERT INTO `tb_brand` VALUES ('25376', '马歇尔', '', 'M', null);
INSERT INTO `tb_brand` VALUES ('25591', 'vivo', 'http://img13.360buyimg.com/popshop/jfs/t2458/318/1092287831/5774/b7b4ff89/563b3484N9ba68e13.jpg', 'V', null);
INSERT INTO `tb_brand` VALUES ('27094', '努比亚', 'http://img14.360buyimg.com/popshop/jfs/t2101/155/882410684/3730/b24b14db/5631cd12N7548352d.jpg', 'N', null);
INSERT INTO `tb_brand` VALUES ('27306', '360', 'http://img10.360buyimg.com/popshop/jfs/t5182/149/2437584670/15334/2e1ebf3/591aa1abN602ebecf.jpg', 'S', null);
INSERT INTO `tb_brand` VALUES ('32315', '其他', '', 'Q', null);
INSERT INTO `tb_brand` VALUES ('36404', '金圣达', '', 'J', null);
INSERT INTO `tb_brand` VALUES ('36652', '贝尔丰', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('36654', '大显（DaXian）', '', 'D', null);
INSERT INTO `tb_brand` VALUES ('36657', '朗界（RugGear）', '', 'L', null);
INSERT INTO `tb_brand` VALUES ('38125', 'SUGAR', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('38126', '美图（meitu）', 'http://img14.360buyimg.com/popshop/jfs/t3553/225/1930378991/5787/c2ebdd72/5836e479N88a98abb.jpg', 'M', null);
INSERT INTO `tb_brand` VALUES ('38605', 'MANN', '', 'M', null);
INSERT INTO `tb_brand` VALUES ('43644', '21KE', '', 'E', null);
INSERT INTO `tb_brand` VALUES ('45227', '易百年', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('45693', '威途（vertu）', '', 'V', null);
INSERT INTO `tb_brand` VALUES ('45757', '欧奇（ouki）', '', 'o', null);
INSERT INTO `tb_brand` VALUES ('49144', 'SPIGEN', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('50450', '亿和源（YHYON）', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('51040', 'BIHEE', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('52302', '优购（UooGou）', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('53317', '迪美（DIM）', '', 'D', null);
INSERT INTO `tb_brand` VALUES ('54347', '尼凯恩（neken）', '', 'N', null);
INSERT INTO `tb_brand` VALUES ('55524', 'B&O PLAY', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('56411', '誉品（YEPEN）', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('59110', '诺亚信（NOAIN）', '', 'N', null);
INSERT INTO `tb_brand` VALUES ('60106', '奥乐迪奥（AoleDior）', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('63032', '一加', 'http://img14.360buyimg.com/popshop/jfs/t2398/233/975959106/6263/a786f5b8/563b33ffN9c288c6c.jpg', 'Y', null);
INSERT INTO `tb_brand` VALUES ('63833', '雷蛇（Razer）', '', 'L', null);
INSERT INTO `tb_brand` VALUES ('68927', '詹姆士（GERMY）', '', 'G', null);
INSERT INTO `tb_brand` VALUES ('89010', '纽曼（Newman）', '', 'N', null);
INSERT INTO `tb_brand` VALUES ('91515', '锤子（smartisan）', 'http://img13.360buyimg.com/popshop/jfs/t1954/102/907711365/5487/9f26868f/5631ccdeNe8df5efb.jpg', 'C', null);
INSERT INTO `tb_brand` VALUES ('102501', '赛博宇华（SOP）', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('104490', '谷歌（Google）', '', 'G', null);
INSERT INTO `tb_brand` VALUES ('109150', '爱贝多（Babyfit）', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('110303', '万利达（Malata）', '', 'W', null);
INSERT INTO `tb_brand` VALUES ('113718', '优它（YOTAPHONE）', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('114119', 'TETC', '', 'T', null);
INSERT INTO `tb_brand` VALUES ('123856', '炫华（xuanhua）', '', 'X', null);
INSERT INTO `tb_brand` VALUES ('128080', '托尼洛·兰博基尼（Tonino Lamborghini）', '', 'T', null);
INSERT INTO `tb_brand` VALUES ('129098', '木糖醇（MuTuCu）', '', 'M', null);
INSERT INTO `tb_brand` VALUES ('130455', '爱玛（EMMA）', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('131546', '硕尼姆（Sonim）', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('133747', 'CAT', '', 'C', null);
INSERT INTO `tb_brand` VALUES ('134922', 'ZUK', '', 'Z', null);
INSERT INTO `tb_brand` VALUES ('135967', 'sungee', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('149070', 'AGM', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('151370', 'SOYES', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('151844', 'KODAK', '', 'K', null);
INSERT INTO `tb_brand` VALUES ('155608', '施耐德（schneider）', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('159313', 'MOQI', '', 'M', null);
INSERT INTO `tb_brand` VALUES ('174275', 'Essentials', '', 'E', null);
INSERT INTO `tb_brand` VALUES ('178969', 'SAMWEI', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('179105', '小霸王（SUBOR）', '', 'X', null);
INSERT INTO `tb_brand` VALUES ('179528', 'VETAS', '', 'V', null);
INSERT INTO `tb_brand` VALUES ('179624', '优学派', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('180213', '纽曼（Newman）', '', 'N', null);
INSERT INTO `tb_brand` VALUES ('194213', 'DEVIALET', '', 'D', null);
INSERT INTO `tb_brand` VALUES ('196065', 'SHANGPREE', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('197126', 'IMOO', '', 'I', null);
INSERT INTO `tb_brand` VALUES ('203084', 'FNNI', '', 'F', null);
INSERT INTO `tb_brand` VALUES ('204089', '小格雷', '', 'X', null);
INSERT INTO `tb_brand` VALUES ('205278', 'COTTEE', '', 'C', null);
INSERT INTO `tb_brand` VALUES ('209178', 'YAAO', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('214915', '纽曼', '', 'N', null);
INSERT INTO `tb_brand` VALUES ('219484', 'CONQUEST', '', 'C', null);
INSERT INTO `tb_brand` VALUES ('221149', '铂爵（BIOJUET）', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('222294', '荣耀', '', 'R', null);
INSERT INTO `tb_brand` VALUES ('223023', '保千里（PROTRULY）', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('223199', 'Blu', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('223316', 'unruly', '', 'U', null);
INSERT INTO `tb_brand` VALUES ('225085', 'Tonino Lamborghini', '', 'T', null);
INSERT INTO `tb_brand` VALUES ('228280', '守护宝', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('233984', '8848', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('234746', 'Gold Elite', '', 'G', null);
INSERT INTO `tb_brand` VALUES ('238798', 'HONOR', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('240112', 'BIXING', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('246053', '锐族', '', 'R', null);
INSERT INTO `tb_brand` VALUES ('247149', '国美（GOME）', '', 'G', null);
INSERT INTO `tb_brand` VALUES ('247652', '中兴健康（ZTE Health）', '', 'Z', null);
INSERT INTO `tb_brand` VALUES ('248132', 'YOSTAR', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('249404', '创星', '', 'C', null);
INSERT INTO `tb_brand` VALUES ('253520', 'VERTU', '', 'V', null);
INSERT INTO `tb_brand` VALUES ('261196', 'LBER', '', 'L', null);
INSERT INTO `tb_brand` VALUES ('261480', '滝风（ION MEDIC）', '', 'L', null);
INSERT INTO `tb_brand` VALUES ('262180', '梦幻门（MENG HUAN MEN）', '', 'M', null);
INSERT INTO `tb_brand` VALUES ('262334', '意龍（E&L）', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('264451', '艾尼卡（Anica）', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('265247', 'DMZ DAMUZHI', '', 'D', null);
INSERT INTO `tb_brand` VALUES ('267981', 'UNNO', '', 'U', null);
INSERT INTO `tb_brand` VALUES ('271696', '红鸟', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('276102', '紐萬（Niuwan）', '', 'N', null);
INSERT INTO `tb_brand` VALUES ('276381', 'Podor', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('276780', '海语（HAIYU）', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('278268', 'YISON', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('278755', 'SOAP', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('279173', 'renebelle', '', 'R', null);
INSERT INTO `tb_brand` VALUES ('280120', 'AKESR', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('280152', 'YOTA', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('284571', 'HOOLFINE', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('285331', '金柏利', '', 'J', null);
INSERT INTO `tb_brand` VALUES ('286273', 'BLACKPOULO', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('287292', 'SIMPLEWAY', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('290104', 'KaiDC', '', 'K', null);
INSERT INTO `tb_brand` VALUES ('290682', '奥缇斯（autrise）', '', 'A', null);
INSERT INTO `tb_brand` VALUES ('302250', '橄榄树（Olive tree）', '', 'G', null);
INSERT INTO `tb_brand` VALUES ('304654', 'HIGE', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('314866', '360手机', '', 'S', null);
INSERT INTO `tb_brand` VALUES ('316578', '克里特（kreta）', '', 'k', null);
INSERT INTO `tb_brand` VALUES ('316596', 'HOOLFINE', '', 'H', null);
INSERT INTO `tb_brand` VALUES ('316618', 'RONXS', '', 'R', null);
INSERT INTO `tb_brand` VALUES ('325396', '飞利浦（PHILIPS）', '', 'P', null);
INSERT INTO `tb_brand` VALUES ('325398', '比亚兹（ESK）', '', 'B', null);
INSERT INTO `tb_brand` VALUES ('325399', '亿色(ESR)', '', 'Y', null);
INSERT INTO `tb_brand` VALUES ('325400', '阿里斯顿', null, 'A', null);
INSERT INTO `tb_brand` VALUES ('325402', 'ABC', null, 'A', null);
INSERT INTO `tb_brand` VALUES ('325403', 'ABC', null, 'A', null);
INSERT INTO `tb_brand` VALUES ('325404', '黑马', 'http://www.itheima.com/', 'H', null);
INSERT INTO `tb_brand` VALUES ('325405', '传智', 'http://www.baidu.com', 'C', null);
INSERT INTO `tb_brand` VALUES ('325406', '黑马', '11', 'H', null);
INSERT INTO `tb_brand` VALUES ('325411', '迷你', 'http://localhost:9101/img/12.jpg', 'M', null);
INSERT INTO `tb_brand` VALUES ('325412', '新立', 'http://localhost:9101/img/11.jpg', 'X', null);
INSERT INTO `tb_brand` VALUES ('325413', '我', 'https://xiaochi-img.oss-cn-shenzhen.aliyuncs.com/qingcheng/brand/2019/12/19add04d1529440b96b14f269aa79ae5.png', '1', '10');

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `goods_num` int(11) DEFAULT '0' COMMENT '商品数量',
  `is_show` char(1) DEFAULT NULL COMMENT '是否显示',
  `is_menu` char(1) DEFAULT NULL COMMENT '是否导航',
  `seq` int(11) DEFAULT NULL COMMENT '排序',
  `parent_id` int(20) DEFAULT NULL COMMENT '上级ID',
  `template_id` int(11) DEFAULT NULL COMMENT '模板ID',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1218 DEFAULT CHARSET=utf8 COMMENT='商品类目';

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('1', '图书、音像、电子书刊', '100', '0', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('2', '电子书刊', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('3', '电子书', '100', '1', '0', '1', '2', '42');
INSERT INTO `tb_category` VALUES ('4', '网络原创', '100', '1', '0', '1', '2', '42');
INSERT INTO `tb_category` VALUES ('5', '数字杂志', '100', '1', '0', '1', '2', '42');
INSERT INTO `tb_category` VALUES ('6', '多媒体图书', '100', '1', '0', '1', '2', '42');
INSERT INTO `tb_category` VALUES ('7', '音像', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('8', '音乐', '100', '1', '0', '1', '7', '42');
INSERT INTO `tb_category` VALUES ('9', '影视', '100', '1', '0', '1', '7', '42');
INSERT INTO `tb_category` VALUES ('10', '教育音像', '100', '1', '0', '1', '7', '42');
INSERT INTO `tb_category` VALUES ('11', '英文原版', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('13', '商务投资', '100', '1', '0', '1', '11', '42');
INSERT INTO `tb_category` VALUES ('14', '英语学习与考试', '100', '1', '0', '1', '11', '42');
INSERT INTO `tb_category` VALUES ('16', '传记', '100', '1', '0', '1', '11', '42');
INSERT INTO `tb_category` VALUES ('18', '文艺', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('19', '小说', '100', '1', '0', '1', '18', '42');
INSERT INTO `tb_category` VALUES ('20', '文学', '100', '1', '0', '1', '18', '42');
INSERT INTO `tb_category` VALUES ('21', '青春文学', '100', '1', '0', '1', '18', '42');
INSERT INTO `tb_category` VALUES ('22', '传记', '100', '1', '0', '1', '18', '42');
INSERT INTO `tb_category` VALUES ('23', '艺术', '100', '1', '0', '1', '18', '42');
INSERT INTO `tb_category` VALUES ('24', '少儿', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('25', '少儿', '100', '1', '0', '1', '24', '42');
INSERT INTO `tb_category` VALUES ('26', '0-2岁', '100', '1', '0', '1', '24', '42');
INSERT INTO `tb_category` VALUES ('27', '3-6岁', '100', '1', '0', '1', '24', '42');
INSERT INTO `tb_category` VALUES ('28', '7-10岁', '100', '1', '0', '1', '24', '42');
INSERT INTO `tb_category` VALUES ('29', '11-14岁', '100', '1', '0', '1', '24', '42');
INSERT INTO `tb_category` VALUES ('30', '人文社科', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('31', '历史', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('32', '哲学', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('33', '国学', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('34', '政治/军事', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('35', '法律', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('36', '宗教', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('37', '心理学', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('38', '文化', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('39', '社会科学', '100', '1', '0', '1', '30', '42');
INSERT INTO `tb_category` VALUES ('40', '经管励志', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('41', '经济', '100', '1', '0', '1', '40', '42');
INSERT INTO `tb_category` VALUES ('42', '金融与投资', '100', '1', '0', '1', '40', '42');
INSERT INTO `tb_category` VALUES ('43', '管理', '100', '1', '0', '1', '40', '42');
INSERT INTO `tb_category` VALUES ('44', '励志与成功', '100', '1', '0', '1', '40', '42');
INSERT INTO `tb_category` VALUES ('45', '生活', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('46', '生活', '100', '1', '0', '1', '45', '42');
INSERT INTO `tb_category` VALUES ('47', '健身与保健', '100', '1', '0', '1', '45', '42');
INSERT INTO `tb_category` VALUES ('48', '家庭与育儿', '100', '1', '0', '1', '45', '42');
INSERT INTO `tb_category` VALUES ('49', '旅游', '100', '1', '0', '1', '45', '42');
INSERT INTO `tb_category` VALUES ('50', '动漫/幽默', '100', '1', '0', '1', '45', '42');
INSERT INTO `tb_category` VALUES ('51', '科技', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('52', '科技', '100', '1', '0', '1', '51', '42');
INSERT INTO `tb_category` VALUES ('53', '工程', '100', '1', '0', '1', '51', '42');
INSERT INTO `tb_category` VALUES ('54', '建筑', '100', '1', '0', '1', '51', '42');
INSERT INTO `tb_category` VALUES ('55', '医学', '100', '1', '0', '1', '51', '42');
INSERT INTO `tb_category` VALUES ('56', '科学与自然', '100', '1', '0', '1', '51', '42');
INSERT INTO `tb_category` VALUES ('57', '计算机与互联网', '100', '1', '0', '1', '51', '42');
INSERT INTO `tb_category` VALUES ('58', '体育/运动', '100', '1', '0', '1', '51', '42');
INSERT INTO `tb_category` VALUES ('59', '教育', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('60', '教材教辅', '100', '1', '0', '1', '59', '42');
INSERT INTO `tb_category` VALUES ('61', '教育与考试', '100', '1', '0', '1', '59', '42');
INSERT INTO `tb_category` VALUES ('62', '外语学习', '100', '1', '0', '1', '59', '42');
INSERT INTO `tb_category` VALUES ('64', '语言文字', '100', '1', '0', '1', '59', '42');
INSERT INTO `tb_category` VALUES ('65', '港台图书', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('66', '艺术/设计/收藏', '100', '1', '0', '1', '65', '42');
INSERT INTO `tb_category` VALUES ('67', '经济管理', '100', '1', '0', '1', '65', '42');
INSERT INTO `tb_category` VALUES ('68', '文化/学术', '100', '1', '0', '1', '65', '42');
INSERT INTO `tb_category` VALUES ('69', '少儿文学/国学', '100', '1', '0', '1', '65', '42');
INSERT INTO `tb_category` VALUES ('70', '其它', '100', '1', '0', '1', '1', '42');
INSERT INTO `tb_category` VALUES ('71', '工具书', '100', '1', '0', '1', '70', '42');
INSERT INTO `tb_category` VALUES ('72', '影印版', '100', '1', '0', '1', '70', '42');
INSERT INTO `tb_category` VALUES ('73', '套装书', '100', '1', '0', '1', '70', '42');
INSERT INTO `tb_category` VALUES ('74', '家用电器', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('75', '大家电', '100', '1', '0', '1', '74', '42');
INSERT INTO `tb_category` VALUES ('76', '曲面电视', '100', '1', '0', '1', '75', '43');
INSERT INTO `tb_category` VALUES ('77', '空调', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('78', '冰箱', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('79', '洗衣机', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('80', '家庭影院', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('81', 'DVD播放机', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('82', '迷你音响', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('83', '烟机/灶具', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('84', '热水器', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('85', '消毒柜/洗碗机', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('86', '酒柜/冰吧/冷柜', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('87', '家电配件', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('88', '家电下乡', '100', '1', '0', '1', '75', '42');
INSERT INTO `tb_category` VALUES ('89', '生活电器', '100', '1', '0', '1', '74', '42');
INSERT INTO `tb_category` VALUES ('90', '电风扇', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('91', '冷风扇', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('92', '净化器', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('93', '饮水机', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('94', '净水设备', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('95', '挂烫机/熨斗', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('96', '吸尘器', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('97', '电话机', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('98', '插座', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('99', '收录/音机', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('100', '清洁机', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('101', '加湿器', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('102', '除湿机', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('103', '取暖电器', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('104', '其它生活电器', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('105', '扫地机器人', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('106', '干衣机', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('107', '生活电器配件', '100', '1', '0', '1', '89', '42');
INSERT INTO `tb_category` VALUES ('108', '厨房电器', '100', '1', '0', '1', '74', '42');
INSERT INTO `tb_category` VALUES ('109', '料理/榨汁机', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('110', '豆浆机', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('111', '电饭煲', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('112', '电压力锅', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('113', '面包机', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('114', '咖啡机', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('115', '微波炉', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('116', '电烤箱', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('117', '电磁炉', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('118', '电饼铛/烧烤盘', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('119', '煮蛋器', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('120', '酸奶机', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('121', '电炖锅', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('122', '电水壶/热水瓶', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('123', '多用途锅', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('124', '果蔬解毒机', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('125', '其它厨房电器', '100', '1', '0', '1', '108', '42');
INSERT INTO `tb_category` VALUES ('126', '个护健康', '100', '1', '0', '1', '74', '42');
INSERT INTO `tb_category` VALUES ('127', '剃须刀', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('128', '剃/脱毛器', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('129', '口腔护理', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('130', '电吹风', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('131', '美容器', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('132', '美发器', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('133', '按摩椅', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('134', '按摩器', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('135', '足浴盆', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('136', '血压计', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('137', '健康秤/厨房秤', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('138', '血糖仪', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('139', '体温计', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('140', '计步器/脂肪检测仪', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('141', '其它健康电器', '100', '1', '0', '1', '126', '42');
INSERT INTO `tb_category` VALUES ('142', '五金家装', '100', '1', '0', '1', '74', '42');
INSERT INTO `tb_category` VALUES ('143', '电动工具', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('144', '手动工具', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('145', '仪器仪表', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('146', '浴霸/排气扇', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('147', '灯具', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('148', 'LED灯', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('149', '洁身器', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('150', '水槽', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('151', '龙头', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('152', '淋浴花洒', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('153', '厨卫五金', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('154', '家具五金', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('155', '门铃', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('156', '电气开关', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('157', '插座', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('158', '电工电料', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('159', '监控安防', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('160', '电线线缆', '100', '1', '0', '1', '142', '42');
INSERT INTO `tb_category` VALUES ('161', '电脑、办公', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('162', '电脑整机', '100', '1', '0', '1', '161', '42');
INSERT INTO `tb_category` VALUES ('163', '笔记本', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('164', '超极本', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('165', '游戏本', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('166', '平板电脑', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('167', '平板电脑配件', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('168', '台式机', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('169', '服务器/工作站', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('170', '笔记本配件', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('171', '电脑配件', '100', '1', '0', '1', '161', '42');
INSERT INTO `tb_category` VALUES ('172', 'CPU', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('173', '主板', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('174', '显卡', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('175', '硬盘', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('176', 'SSD固态硬盘', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('177', '内存', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('178', '机箱', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('179', '电源', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('180', '显示器', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('181', '刻录机/光驱', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('182', '散热器', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('183', '声卡/扩展卡', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('184', '装机配件', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('185', '组装电脑', '100', '1', '0', '1', '171', '42');
INSERT INTO `tb_category` VALUES ('186', '外设产品', '100', '1', '0', '1', '161', '42');
INSERT INTO `tb_category` VALUES ('187', '移动硬盘', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('188', 'U盘', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('189', '鼠标', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('190', '键盘', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('191', '鼠标垫', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('192', '摄像头', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('193', '手写板', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('194', '外置盒', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('195', '插座', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('196', '线缆', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('197', 'UPS电源', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('198', '电脑工具', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('199', '游戏设备', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('200', '电玩', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('201', '电脑清洁', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('202', '网络产品', '100', '1', '0', '1', '161', '42');
INSERT INTO `tb_category` VALUES ('203', '路由器', '100', '1', '0', '1', '202', '42');
INSERT INTO `tb_category` VALUES ('204', '网卡', '100', '1', '0', '1', '202', '42');
INSERT INTO `tb_category` VALUES ('205', '交换机', '100', '1', '0', '1', '202', '42');
INSERT INTO `tb_category` VALUES ('206', '网络存储', '100', '1', '0', '1', '202', '42');
INSERT INTO `tb_category` VALUES ('207', '4G/3G上网', '100', '1', '0', '1', '202', '42');
INSERT INTO `tb_category` VALUES ('208', '网络盒子', '100', '1', '0', '1', '202', '42');
INSERT INTO `tb_category` VALUES ('209', '网络配件', '100', '1', '0', '1', '202', '42');
INSERT INTO `tb_category` VALUES ('210', '办公设备', '100', '1', '0', '1', '161', '42');
INSERT INTO `tb_category` VALUES ('211', '投影机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('212', '投影配件', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('213', '多功能一体机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('214', '打印机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('215', '传真设备', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('216', '验钞/点钞机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('217', '扫描设备', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('218', '复合机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('219', '碎纸机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('220', '考勤机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('221', '墨粉', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('222', '收款/POS机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('223', '会议音频视频', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('224', '保险柜', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('225', '装订/封装机', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('226', '安防监控', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('227', '办公家具', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('228', '白板', '100', '1', '0', '1', '210', '42');
INSERT INTO `tb_category` VALUES ('229', '文具/耗材', '100', '1', '0', '1', '161', '42');
INSERT INTO `tb_category` VALUES ('230', '硒鼓/墨粉', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('231', '墨盒', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('232', '色带', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('233', '纸类', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('234', '办公文具', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('235', '学生文具', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('236', '文件管理', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('237', '财会用品', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('238', '本册/便签', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('239', '计算器', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('240', '激光笔', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('241', '笔类', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('242', '画具画材', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('243', '刻录碟片/附件', '100', '1', '0', '1', '229', '42');
INSERT INTO `tb_category` VALUES ('244', '服务产品', '100', '1', '0', '1', '161', '42');
INSERT INTO `tb_category` VALUES ('245', '上门服务', '100', '1', '0', '1', '244', '42');
INSERT INTO `tb_category` VALUES ('246', '远程服务', '100', '1', '0', '1', '244', '42');
INSERT INTO `tb_category` VALUES ('247', '电脑软件', '100', '1', '0', '1', '244', '42');
INSERT INTO `tb_category` VALUES ('248', '京东服务', '100', '1', '0', '1', '244', '42');
INSERT INTO `tb_category` VALUES ('249', '个护化妆', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('250', '面部护肤', '100', '1', '0', '1', '249', '42');
INSERT INTO `tb_category` VALUES ('251', '清洁', '100', '1', '0', '1', '250', '42');
INSERT INTO `tb_category` VALUES ('252', '护肤', '100', '1', '0', '1', '250', '42');
INSERT INTO `tb_category` VALUES ('253', '面膜', '100', '1', '0', '1', '250', '42');
INSERT INTO `tb_category` VALUES ('254', '剃须', '100', '1', '0', '1', '250', '42');
INSERT INTO `tb_category` VALUES ('255', '套装', '100', '1', '0', '1', '250', '42');
INSERT INTO `tb_category` VALUES ('256', '身体护肤', '100', '1', '0', '1', '249', '42');
INSERT INTO `tb_category` VALUES ('257', '沐浴', '100', '1', '0', '1', '256', '42');
INSERT INTO `tb_category` VALUES ('258', '润肤', '100', '1', '0', '1', '256', '42');
INSERT INTO `tb_category` VALUES ('259', '颈部', '100', '1', '0', '1', '256', '42');
INSERT INTO `tb_category` VALUES ('260', '手足', '100', '1', '0', '1', '256', '42');
INSERT INTO `tb_category` VALUES ('261', '纤体塑形', '100', '1', '0', '1', '256', '42');
INSERT INTO `tb_category` VALUES ('262', '美胸', '100', '1', '0', '1', '256', '42');
INSERT INTO `tb_category` VALUES ('263', '套装', '100', '1', '0', '1', '256', '42');
INSERT INTO `tb_category` VALUES ('264', '口腔护理', '100', '1', '0', '1', '249', '42');
INSERT INTO `tb_category` VALUES ('265', '牙膏/牙粉', '100', '1', '0', '1', '264', '42');
INSERT INTO `tb_category` VALUES ('266', '牙刷/牙线', '100', '1', '0', '1', '264', '42');
INSERT INTO `tb_category` VALUES ('267', '漱口水', '100', '1', '0', '1', '264', '42');
INSERT INTO `tb_category` VALUES ('268', '套装', '100', '1', '0', '1', '264', '42');
INSERT INTO `tb_category` VALUES ('269', '女性护理', '100', '1', '0', '1', '249', '42');
INSERT INTO `tb_category` VALUES ('270', '卫生巾', '100', '1', '0', '1', '269', '42');
INSERT INTO `tb_category` VALUES ('271', '卫生护垫', '100', '1', '0', '1', '269', '42');
INSERT INTO `tb_category` VALUES ('272', '私密护理', '100', '1', '0', '1', '269', '42');
INSERT INTO `tb_category` VALUES ('273', '脱毛膏', '100', '1', '0', '1', '269', '42');
INSERT INTO `tb_category` VALUES ('274', '洗发护发', '100', '1', '0', '1', '249', '42');
INSERT INTO `tb_category` VALUES ('275', '洗发', '100', '1', '0', '1', '274', '42');
INSERT INTO `tb_category` VALUES ('276', '护发', '100', '1', '0', '1', '274', '42');
INSERT INTO `tb_category` VALUES ('277', '染发', '100', '1', '0', '1', '274', '42');
INSERT INTO `tb_category` VALUES ('278', '造型', '100', '1', '0', '1', '274', '42');
INSERT INTO `tb_category` VALUES ('279', '假发', '100', '1', '0', '1', '274', '42');
INSERT INTO `tb_category` VALUES ('280', '套装', '100', '1', '0', '1', '274', '42');
INSERT INTO `tb_category` VALUES ('281', '香水彩妆', '100', '1', '0', '1', '249', '42');
INSERT INTO `tb_category` VALUES ('282', '香水', '100', '1', '0', '1', '281', '42');
INSERT INTO `tb_category` VALUES ('283', '底妆', '100', '1', '0', '1', '281', '42');
INSERT INTO `tb_category` VALUES ('284', '腮红', '100', '1', '0', '1', '281', '42');
INSERT INTO `tb_category` VALUES ('285', '眼部', '100', '1', '0', '1', '281', '42');
INSERT INTO `tb_category` VALUES ('286', '唇部', '100', '1', '0', '1', '281', '42');
INSERT INTO `tb_category` VALUES ('287', '美甲', '100', '1', '0', '1', '281', '42');
INSERT INTO `tb_category` VALUES ('288', '美容工具', '100', '1', '0', '1', '281', '42');
INSERT INTO `tb_category` VALUES ('289', '套装', '100', '1', '0', '1', '281', '42');
INSERT INTO `tb_category` VALUES ('290', '钟表', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('291', '钟表', '100', '1', '0', '1', '290', '42');
INSERT INTO `tb_category` VALUES ('292', '男表', '100', '1', '0', '1', '291', '42');
INSERT INTO `tb_category` VALUES ('293', '女表', '100', '1', '0', '1', '291', '42');
INSERT INTO `tb_category` VALUES ('294', '儿童手表', '100', '1', '0', '1', '291', '42');
INSERT INTO `tb_category` VALUES ('295', '座钟挂钟', '100', '1', '0', '1', '291', '42');
INSERT INTO `tb_category` VALUES ('296', '母婴', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('297', '奶粉', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('298', '婴幼奶粉', '100', '1', '0', '1', '297', '42');
INSERT INTO `tb_category` VALUES ('299', '成人奶粉', '100', '1', '0', '1', '297', '42');
INSERT INTO `tb_category` VALUES ('300', '营养辅食', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('301', '益生菌/初乳', '100', '1', '0', '1', '300', '42');
INSERT INTO `tb_category` VALUES ('302', '米粉/菜粉', '100', '1', '0', '1', '300', '42');
INSERT INTO `tb_category` VALUES ('303', '果泥/果汁', '100', '1', '0', '1', '300', '42');
INSERT INTO `tb_category` VALUES ('304', 'DHA', '100', '1', '0', '1', '300', '42');
INSERT INTO `tb_category` VALUES ('305', '宝宝零食', '100', '1', '0', '1', '300', '42');
INSERT INTO `tb_category` VALUES ('306', '钙铁锌/维生素', '100', '1', '0', '1', '300', '42');
INSERT INTO `tb_category` VALUES ('307', '清火/开胃', '100', '1', '0', '1', '300', '42');
INSERT INTO `tb_category` VALUES ('308', '面条/粥', '100', '1', '0', '1', '300', '42');
INSERT INTO `tb_category` VALUES ('309', '尿裤湿巾', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('310', '婴儿尿裤', '100', '1', '0', '1', '309', '42');
INSERT INTO `tb_category` VALUES ('311', '拉拉裤', '100', '1', '0', '1', '309', '42');
INSERT INTO `tb_category` VALUES ('312', '湿巾', '100', '1', '0', '1', '309', '42');
INSERT INTO `tb_category` VALUES ('313', '成人尿裤', '100', '1', '0', '1', '309', '42');
INSERT INTO `tb_category` VALUES ('314', '喂养用品', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('315', '奶瓶奶嘴', '100', '1', '0', '1', '314', '42');
INSERT INTO `tb_category` VALUES ('316', '吸奶器', '100', '1', '0', '1', '314', '42');
INSERT INTO `tb_category` VALUES ('317', '暖奶消毒', '100', '1', '0', '1', '314', '42');
INSERT INTO `tb_category` VALUES ('318', '碗盘叉勺', '100', '1', '0', '1', '314', '42');
INSERT INTO `tb_category` VALUES ('319', '水壶/水杯', '100', '1', '0', '1', '314', '42');
INSERT INTO `tb_category` VALUES ('320', '牙胶安抚', '100', '1', '0', '1', '314', '42');
INSERT INTO `tb_category` VALUES ('321', '辅食料理机', '100', '1', '0', '1', '314', '42');
INSERT INTO `tb_category` VALUES ('322', '洗护用品', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('323', '宝宝护肤', '100', '1', '0', '1', '322', '42');
INSERT INTO `tb_category` VALUES ('324', '宝宝洗浴', '100', '1', '0', '1', '322', '42');
INSERT INTO `tb_category` VALUES ('325', '奶瓶清洗', '100', '1', '0', '1', '322', '42');
INSERT INTO `tb_category` VALUES ('326', '驱蚊防蚊', '100', '1', '0', '1', '322', '42');
INSERT INTO `tb_category` VALUES ('327', '理发器', '100', '1', '0', '1', '322', '42');
INSERT INTO `tb_category` VALUES ('328', '洗衣液/皂', '100', '1', '0', '1', '322', '42');
INSERT INTO `tb_category` VALUES ('329', '日常护理', '100', '1', '0', '1', '322', '42');
INSERT INTO `tb_category` VALUES ('330', '座便器', '100', '1', '0', '1', '322', '42');
INSERT INTO `tb_category` VALUES ('331', '童车童床', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('332', '婴儿推车', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('333', '餐椅摇椅', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('334', '婴儿床', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('335', '学步车', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('336', '三轮车', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('337', '自行车', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('338', '电动车', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('339', '扭扭车', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('340', '滑板车', '100', '1', '0', '1', '331', '42');
INSERT INTO `tb_category` VALUES ('341', '寝居服饰', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('342', '婴儿外出服', '100', '1', '0', '1', '341', '42');
INSERT INTO `tb_category` VALUES ('343', '婴儿内衣', '100', '1', '0', '1', '341', '42');
INSERT INTO `tb_category` VALUES ('344', '婴儿礼盒', '100', '1', '0', '1', '341', '42');
INSERT INTO `tb_category` VALUES ('345', '婴儿鞋帽袜', '100', '1', '0', '1', '341', '42');
INSERT INTO `tb_category` VALUES ('346', '安全防护', '100', '1', '0', '1', '341', '42');
INSERT INTO `tb_category` VALUES ('347', '家居床品', '100', '1', '0', '1', '341', '42');
INSERT INTO `tb_category` VALUES ('348', '妈妈专区', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('349', '妈咪包/背婴带', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('350', '产后塑身', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('351', '文胸/内裤', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('352', '防辐射服', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('353', '孕妇装', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('354', '孕期营养', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('355', '孕妈美容', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('356', '待产/新生', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('357', '月子装', '100', '1', '0', '1', '348', '42');
INSERT INTO `tb_category` VALUES ('358', '童装童鞋', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('359', '套装', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('360', '上衣', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('361', '裤子', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('362', '裙子', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('363', '内衣/家居服', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('364', '羽绒服/棉服', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('365', '亲子装', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('366', '儿童配饰', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('367', '礼服/演出服', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('368', '运动鞋', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('369', '皮鞋/帆布鞋', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('370', '靴子', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('371', '凉鞋', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('372', '功能鞋', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('373', '户外/运动服', '100', '1', '0', '1', '358', '42');
INSERT INTO `tb_category` VALUES ('374', '安全座椅', '100', '1', '0', '1', '296', '42');
INSERT INTO `tb_category` VALUES ('375', '提篮式', '100', '1', '0', '1', '374', '42');
INSERT INTO `tb_category` VALUES ('376', '安全座椅', '100', '1', '0', '1', '374', '42');
INSERT INTO `tb_category` VALUES ('377', '增高垫', '100', '1', '0', '1', '374', '42');
INSERT INTO `tb_category` VALUES ('378', '食品饮料、保健食品', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('379', '进口食品', '100', '1', '0', '1', '378', '42');
INSERT INTO `tb_category` VALUES ('380', '饼干蛋糕', '100', '1', '0', '1', '379', '42');
INSERT INTO `tb_category` VALUES ('381', '糖果/巧克力', '100', '1', '0', '1', '379', '42');
INSERT INTO `tb_category` VALUES ('382', '休闲零食', '100', '1', '0', '1', '379', '42');
INSERT INTO `tb_category` VALUES ('383', '冲调饮品', '100', '1', '0', '1', '379', '42');
INSERT INTO `tb_category` VALUES ('384', '粮油调味', '100', '1', '0', '1', '379', '42');
INSERT INTO `tb_category` VALUES ('385', '牛奶', '100', '1', '0', '1', '379', '42');
INSERT INTO `tb_category` VALUES ('386', '地方特产', '100', '1', '0', '1', '378', '42');
INSERT INTO `tb_category` VALUES ('387', '其他特产', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('388', '新疆', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('389', '北京', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('390', '山西', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('391', '内蒙古', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('392', '福建', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('393', '湖南', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('394', '四川', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('395', '云南', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('396', '东北', '100', '1', '0', '1', '386', '42');
INSERT INTO `tb_category` VALUES ('397', '休闲食品', '100', '1', '0', '1', '378', '42');
INSERT INTO `tb_category` VALUES ('398', '休闲零食', '100', '1', '0', '1', '397', '42');
INSERT INTO `tb_category` VALUES ('399', '坚果炒货', '100', '1', '0', '1', '397', '42');
INSERT INTO `tb_category` VALUES ('400', '肉干肉脯', '100', '1', '0', '1', '397', '42');
INSERT INTO `tb_category` VALUES ('401', '蜜饯果干', '100', '1', '0', '1', '397', '42');
INSERT INTO `tb_category` VALUES ('402', '糖果/巧克力', '100', '1', '0', '1', '397', '42');
INSERT INTO `tb_category` VALUES ('403', '饼干蛋糕', '100', '1', '0', '1', '397', '42');
INSERT INTO `tb_category` VALUES ('404', '无糖食品', '100', '1', '0', '1', '397', '42');
INSERT INTO `tb_category` VALUES ('405', '粮油调味', '100', '1', '0', '1', '378', '42');
INSERT INTO `tb_category` VALUES ('406', '米面杂粮', '100', '1', '0', '1', '405', '42');
INSERT INTO `tb_category` VALUES ('407', '食用油', '100', '1', '0', '1', '405', '42');
INSERT INTO `tb_category` VALUES ('408', '调味品', '100', '1', '0', '1', '405', '42');
INSERT INTO `tb_category` VALUES ('409', '南北干货', '100', '1', '0', '1', '405', '42');
INSERT INTO `tb_category` VALUES ('410', '方便食品', '100', '1', '0', '1', '405', '42');
INSERT INTO `tb_category` VALUES ('411', '有机食品', '100', '1', '0', '1', '405', '42');
INSERT INTO `tb_category` VALUES ('412', '饮料冲调', '100', '1', '0', '1', '378', '42');
INSERT INTO `tb_category` VALUES ('413', '饮用水', '100', '1', '0', '1', '412', '42');
INSERT INTO `tb_category` VALUES ('414', '饮料', '100', '1', '0', '1', '412', '42');
INSERT INTO `tb_category` VALUES ('415', '牛奶乳品', '100', '1', '0', '1', '412', '42');
INSERT INTO `tb_category` VALUES ('416', '咖啡/奶茶', '100', '1', '0', '1', '412', '42');
INSERT INTO `tb_category` VALUES ('417', '冲饮谷物', '100', '1', '0', '1', '412', '42');
INSERT INTO `tb_category` VALUES ('418', '蜂蜜/柚子茶', '100', '1', '0', '1', '412', '42');
INSERT INTO `tb_category` VALUES ('419', '成人奶粉', '100', '1', '0', '1', '412', '42');
INSERT INTO `tb_category` VALUES ('420', '食品礼券', '100', '1', '0', '1', '378', '42');
INSERT INTO `tb_category` VALUES ('421', '月饼', '100', '1', '0', '1', '420', '42');
INSERT INTO `tb_category` VALUES ('422', '大闸蟹', '100', '1', '0', '1', '420', '42');
INSERT INTO `tb_category` VALUES ('423', '粽子', '100', '1', '0', '1', '420', '42');
INSERT INTO `tb_category` VALUES ('424', '卡券', '100', '1', '0', '1', '420', '42');
INSERT INTO `tb_category` VALUES ('425', '茗茶', '100', '1', '0', '1', '378', '42');
INSERT INTO `tb_category` VALUES ('426', '铁观音', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('427', '普洱', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('428', '龙井', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('429', '绿茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('430', '红茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('431', '乌龙茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('432', '花草茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('433', '花果茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('434', '养生茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('435', '黑茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('436', '白茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('437', '其它茶', '100', '1', '0', '1', '425', '42');
INSERT INTO `tb_category` VALUES ('438', '汽车用品', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('439', '维修保养', '100', '1', '0', '1', '438', '42');
INSERT INTO `tb_category` VALUES ('440', '润滑油', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('441', '添加剂', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('442', '防冻液', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('443', '滤清器', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('444', '火花塞', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('445', '雨刷', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('446', '车灯', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('447', '后视镜', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('448', '轮胎', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('449', '轮毂', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('450', '刹车片/盘', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('451', '喇叭/皮带', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('452', '蓄电池', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('453', '底盘装甲/护板', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('454', '贴膜', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('455', '汽修工具', '100', '1', '0', '1', '439', '42');
INSERT INTO `tb_category` VALUES ('456', '车载电器', '100', '1', '0', '1', '438', '42');
INSERT INTO `tb_category` VALUES ('457', '导航仪', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('458', '安全预警仪', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('459', '行车记录仪', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('460', '倒车雷达', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('461', '蓝牙设备', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('462', '时尚影音', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('463', '净化器', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('464', '电源', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('465', '冰箱', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('466', '吸尘器', '100', '1', '0', '1', '456', '42');
INSERT INTO `tb_category` VALUES ('467', '美容清洗', '100', '1', '0', '1', '438', '42');
INSERT INTO `tb_category` VALUES ('468', '车蜡', '100', '1', '0', '1', '467', '42');
INSERT INTO `tb_category` VALUES ('469', '补漆笔', '100', '1', '0', '1', '467', '42');
INSERT INTO `tb_category` VALUES ('470', '玻璃水', '100', '1', '0', '1', '467', '42');
INSERT INTO `tb_category` VALUES ('471', '清洁剂', '100', '1', '0', '1', '467', '42');
INSERT INTO `tb_category` VALUES ('472', '洗车工具', '100', '1', '0', '1', '467', '42');
INSERT INTO `tb_category` VALUES ('473', '洗车配件', '100', '1', '0', '1', '467', '42');
INSERT INTO `tb_category` VALUES ('474', '汽车装饰', '100', '1', '0', '1', '438', '42');
INSERT INTO `tb_category` VALUES ('475', '脚垫', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('476', '座垫', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('477', '座套', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('478', '后备箱垫', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('479', '头枕腰靠', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('480', '香水', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('481', '空气净化', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('482', '车内饰品', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('483', '功能小件', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('484', '车身装饰件', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('485', '车衣', '100', '1', '0', '1', '474', '42');
INSERT INTO `tb_category` VALUES ('486', '安全自驾', '100', '1', '0', '1', '438', '42');
INSERT INTO `tb_category` VALUES ('487', '安全座椅', '100', '1', '0', '1', '486', '42');
INSERT INTO `tb_category` VALUES ('488', '胎压充气', '100', '1', '0', '1', '486', '42');
INSERT INTO `tb_category` VALUES ('489', '防盗设备', '100', '1', '0', '1', '486', '42');
INSERT INTO `tb_category` VALUES ('490', '应急救援', '100', '1', '0', '1', '486', '42');
INSERT INTO `tb_category` VALUES ('491', '保温箱', '100', '1', '0', '1', '486', '42');
INSERT INTO `tb_category` VALUES ('492', '储物箱', '100', '1', '0', '1', '486', '42');
INSERT INTO `tb_category` VALUES ('493', '自驾野营', '100', '1', '0', '1', '486', '42');
INSERT INTO `tb_category` VALUES ('494', '摩托车装备', '100', '1', '0', '1', '486', '42');
INSERT INTO `tb_category` VALUES ('495', '玩具乐器', '100', '0', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('496', '适用年龄', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('497', '0-6个月', '100', '1', '0', '1', '496', '42');
INSERT INTO `tb_category` VALUES ('498', '6-12个月', '100', '1', '0', '1', '496', '42');
INSERT INTO `tb_category` VALUES ('499', '1-3岁', '100', '1', '0', '1', '496', '42');
INSERT INTO `tb_category` VALUES ('500', '3-6岁', '100', '1', '0', '1', '496', '42');
INSERT INTO `tb_category` VALUES ('501', '6-14岁', '100', '1', '0', '1', '496', '42');
INSERT INTO `tb_category` VALUES ('502', '14岁以上', '100', '1', '0', '1', '496', '42');
INSERT INTO `tb_category` VALUES ('503', '遥控/电动', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('504', '遥控车', '100', '1', '0', '1', '503', '42');
INSERT INTO `tb_category` VALUES ('505', '遥控飞机', '100', '1', '0', '1', '503', '42');
INSERT INTO `tb_category` VALUES ('506', '遥控船', '100', '1', '0', '1', '503', '42');
INSERT INTO `tb_category` VALUES ('507', '机器人/电动', '100', '1', '0', '1', '503', '42');
INSERT INTO `tb_category` VALUES ('508', '轨道/助力', '100', '1', '0', '1', '503', '42');
INSERT INTO `tb_category` VALUES ('509', '毛绒布艺', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('510', '毛绒/布艺', '100', '1', '0', '1', '509', '42');
INSERT INTO `tb_category` VALUES ('511', '靠垫/抱枕', '100', '1', '0', '1', '509', '42');
INSERT INTO `tb_category` VALUES ('512', '娃娃玩具', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('513', '芭比娃娃', '100', '1', '0', '1', '512', '42');
INSERT INTO `tb_category` VALUES ('514', '卡通娃娃', '100', '1', '0', '1', '512', '42');
INSERT INTO `tb_category` VALUES ('515', '智能娃娃', '100', '1', '0', '1', '512', '42');
INSERT INTO `tb_category` VALUES ('516', '模型玩具', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('517', '仿真模型', '100', '1', '0', '1', '516', '42');
INSERT INTO `tb_category` VALUES ('518', '拼插模型', '100', '1', '0', '1', '516', '42');
INSERT INTO `tb_category` VALUES ('519', '收藏爱好', '100', '1', '0', '1', '516', '42');
INSERT INTO `tb_category` VALUES ('520', '健身玩具', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('521', '炫舞毯', '100', '1', '0', '1', '520', '42');
INSERT INTO `tb_category` VALUES ('522', '爬行垫/毯', '100', '1', '0', '1', '520', '42');
INSERT INTO `tb_category` VALUES ('523', '户外玩具', '100', '1', '0', '1', '520', '42');
INSERT INTO `tb_category` VALUES ('524', '戏水玩具', '100', '1', '0', '1', '520', '42');
INSERT INTO `tb_category` VALUES ('525', '动漫玩具', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('526', '电影周边', '100', '1', '0', '1', '525', '42');
INSERT INTO `tb_category` VALUES ('527', '卡通周边', '100', '1', '0', '1', '525', '42');
INSERT INTO `tb_category` VALUES ('528', '网游周边', '100', '1', '0', '1', '525', '42');
INSERT INTO `tb_category` VALUES ('529', '益智玩具', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('530', '摇铃/床铃', '100', '1', '0', '1', '529', '42');
INSERT INTO `tb_category` VALUES ('531', '健身架', '100', '1', '0', '1', '529', '42');
INSERT INTO `tb_category` VALUES ('532', '早教启智', '100', '1', '0', '1', '529', '42');
INSERT INTO `tb_category` VALUES ('533', '拖拉玩具', '100', '1', '0', '1', '529', '42');
INSERT INTO `tb_category` VALUES ('534', '积木拼插', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('535', '积木', '100', '1', '0', '1', '534', '42');
INSERT INTO `tb_category` VALUES ('536', '拼图', '100', '1', '0', '1', '534', '42');
INSERT INTO `tb_category` VALUES ('537', '磁力棒', '100', '1', '0', '1', '534', '42');
INSERT INTO `tb_category` VALUES ('538', '立体拼插', '100', '1', '0', '1', '534', '42');
INSERT INTO `tb_category` VALUES ('539', 'DIY玩具', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('540', '手工彩泥', '100', '1', '0', '1', '539', '42');
INSERT INTO `tb_category` VALUES ('541', '绘画工具', '100', '1', '0', '1', '539', '42');
INSERT INTO `tb_category` VALUES ('542', '情景玩具', '100', '1', '0', '1', '539', '42');
INSERT INTO `tb_category` VALUES ('543', '创意减压', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('544', '减压玩具', '100', '1', '0', '1', '543', '42');
INSERT INTO `tb_category` VALUES ('545', '创意玩具', '100', '1', '0', '1', '543', '42');
INSERT INTO `tb_category` VALUES ('546', '乐器相关', '100', '1', '0', '1', '495', '42');
INSERT INTO `tb_category` VALUES ('547', '钢琴', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('548', '电子琴', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('549', '手风琴', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('550', '吉他/贝斯', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('551', '民族管弦乐器', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('552', '西洋管弦乐', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('553', '口琴/口风琴/竖笛', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('554', '西洋打击乐器', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('555', '各式乐器配件', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('556', '电脑音乐', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('557', '工艺礼品乐器', '100', '1', '0', '1', '546', '42');
INSERT INTO `tb_category` VALUES ('558', '手机', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('559', '手机通讯', '100', '1', '0', '1', '558', '42');
INSERT INTO `tb_category` VALUES ('560', '手机', '100', '1', '0', '1', '559', '42');
INSERT INTO `tb_category` VALUES ('561', '对讲机', '100', '1', '0', '1', '559', '42');
INSERT INTO `tb_category` VALUES ('562', '运营商', '100', '1', '0', '1', '558', '42');
INSERT INTO `tb_category` VALUES ('563', '购机送费', '100', '1', '0', '1', '562', '42');
INSERT INTO `tb_category` VALUES ('564', '“0”元购机', '100', '1', '0', '1', '562', '42');
INSERT INTO `tb_category` VALUES ('565', '选号中心', '100', '1', '0', '1', '562', '42');
INSERT INTO `tb_category` VALUES ('566', '选号入网', '100', '1', '0', '1', '562', '42');
INSERT INTO `tb_category` VALUES ('567', '手机配件', '100', '1', '0', '1', '558', '42');
INSERT INTO `tb_category` VALUES ('568', '手机电池', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('569', '蓝牙耳机', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('570', '充电器/数据线', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('571', '手机耳机', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('572', '手机贴膜', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('573', '手机存储卡', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('574', '手机保护套', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('575', '车载配件', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('576', 'iPhone 配件', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('577', '创意配件', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('578', '便携/无线音响', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('579', '手机饰品', '100', '1', '0', '1', '567', '42');
INSERT INTO `tb_category` VALUES ('580', '数码', '100', '1', '0', '1', '0', '43');
INSERT INTO `tb_category` VALUES ('581', '摄影摄像', '100', '1', '0', '1', '580', '42');
INSERT INTO `tb_category` VALUES ('582', '数码相机', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('583', '单电/微单相机', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('584', '单反相机', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('585', '摄像机', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('586', '拍立得', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('587', '运动相机', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('588', '镜头', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('589', '户外器材', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('590', '影棚器材', '100', '1', '0', '1', '581', '42');
INSERT INTO `tb_category` VALUES ('591', '数码配件', '100', '1', '0', '1', '580', '42');
INSERT INTO `tb_category` VALUES ('592', '存储卡', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('593', '读卡器', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('594', '滤镜', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('595', '闪光灯/手柄', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('596', '相机包', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('597', '三脚架/云台', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('598', '相机清洁', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('599', '相机贴膜', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('600', '机身附件', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('601', '镜头附件', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('602', '电池/充电器', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('603', '移动电源', '100', '1', '0', '1', '591', '42');
INSERT INTO `tb_category` VALUES ('604', '智能设备', '100', '1', '0', '1', '580', '42');
INSERT INTO `tb_category` VALUES ('605', '智能手环', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('606', '智能手表', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('607', '智能眼镜', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('608', '运动跟踪器', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('609', '健康监测', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('610', '智能配饰', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('611', '智能家居', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('612', '体感车', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('613', '其他配件', '100', '1', '0', '1', '604', '42');
INSERT INTO `tb_category` VALUES ('614', '时尚影音', '100', '1', '0', '1', '580', '42');
INSERT INTO `tb_category` VALUES ('615', 'MP3/MP4', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('616', '智能设备', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('617', '耳机/耳麦', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('618', '音箱', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('619', '高清播放器', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('620', 'MP3/MP4配件', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('621', '麦克风', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('622', '专业音频', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('623', '数码相框', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('624', '苹果配件', '100', '1', '0', '1', '614', '42');
INSERT INTO `tb_category` VALUES ('625', '电子教育', '100', '1', '0', '1', '580', '42');
INSERT INTO `tb_category` VALUES ('626', '电子词典', '100', '1', '0', '1', '625', '42');
INSERT INTO `tb_category` VALUES ('627', '电纸书', '100', '1', '0', '1', '625', '42');
INSERT INTO `tb_category` VALUES ('628', '录音笔', '100', '1', '0', '1', '625', '42');
INSERT INTO `tb_category` VALUES ('629', '复读机', '100', '1', '0', '1', '625', '42');
INSERT INTO `tb_category` VALUES ('630', '点读机/笔', '100', '1', '0', '1', '625', '42');
INSERT INTO `tb_category` VALUES ('631', '学生平板', '100', '1', '0', '1', '625', '42');
INSERT INTO `tb_category` VALUES ('632', '早教机', '100', '1', '0', '1', '625', '42');
INSERT INTO `tb_category` VALUES ('633', '家居家装', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('634', '家纺', '100', '1', '0', '1', '633', '42');
INSERT INTO `tb_category` VALUES ('635', '床品套件', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('636', '被子', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('637', '枕芯', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('638', '床单被罩', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('639', '毯子', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('640', '床垫/床褥', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('641', '蚊帐', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('642', '抱枕靠垫', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('643', '毛巾浴巾', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('644', '电热毯', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('645', '窗帘/窗纱', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('646', '布艺软饰', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('647', '凉席', '100', '1', '0', '1', '634', '42');
INSERT INTO `tb_category` VALUES ('648', '灯具', '100', '1', '0', '1', '633', '42');
INSERT INTO `tb_category` VALUES ('649', '台灯', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('650', '节能灯', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('651', '装饰灯', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('652', '落地灯', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('653', '应急灯/手电', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('654', 'LED灯', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('655', '吸顶灯', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('656', '五金电器', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('657', '筒灯射灯', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('658', '吊灯', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('659', '氛围照明', '100', '1', '0', '1', '648', '42');
INSERT INTO `tb_category` VALUES ('660', '生活日用', '100', '1', '0', '1', '633', '42');
INSERT INTO `tb_category` VALUES ('661', '收纳用品', '100', '1', '0', '1', '660', '42');
INSERT INTO `tb_category` VALUES ('662', '雨伞雨具', '100', '1', '0', '1', '660', '42');
INSERT INTO `tb_category` VALUES ('663', '浴室用品', '100', '1', '0', '1', '660', '42');
INSERT INTO `tb_category` VALUES ('664', '缝纫/针织用品', '100', '1', '0', '1', '660', '42');
INSERT INTO `tb_category` VALUES ('665', '洗晒/熨烫', '100', '1', '0', '1', '660', '42');
INSERT INTO `tb_category` VALUES ('666', '净化除味', '100', '1', '0', '1', '660', '42');
INSERT INTO `tb_category` VALUES ('667', '家装软饰', '100', '1', '0', '1', '633', '42');
INSERT INTO `tb_category` VALUES ('668', '桌布/罩件', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('669', '地毯地垫', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('670', '沙发垫套/椅垫', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('671', '相框/照片墙', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('672', '装饰字画', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('673', '节庆饰品', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('674', '手工/十字绣', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('675', '装饰摆件', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('676', '保暖防护', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('677', '帘艺隔断', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('678', '墙贴/装饰贴', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('679', '钟饰', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('680', '花瓶花艺', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('681', '香薰蜡烛', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('682', '创意家居', '100', '1', '0', '1', '667', '42');
INSERT INTO `tb_category` VALUES ('683', '清洁用品', '100', '1', '0', '1', '633', '42');
INSERT INTO `tb_category` VALUES ('684', '纸品湿巾', '100', '1', '0', '1', '683', '42');
INSERT INTO `tb_category` VALUES ('685', '衣物清洁', '100', '1', '0', '1', '683', '42');
INSERT INTO `tb_category` VALUES ('686', '清洁工具', '100', '1', '0', '1', '683', '42');
INSERT INTO `tb_category` VALUES ('687', '驱虫用品', '100', '1', '0', '1', '683', '42');
INSERT INTO `tb_category` VALUES ('688', '家庭清洁', '100', '1', '0', '1', '683', '42');
INSERT INTO `tb_category` VALUES ('689', '皮具护理', '100', '1', '0', '1', '683', '42');
INSERT INTO `tb_category` VALUES ('690', '一次性用品', '100', '1', '0', '1', '683', '42');
INSERT INTO `tb_category` VALUES ('691', '宠物生活', '100', '1', '0', '1', '633', '42');
INSERT INTO `tb_category` VALUES ('692', '宠物主粮', '100', '1', '0', '1', '691', '42');
INSERT INTO `tb_category` VALUES ('693', '宠物零食', '100', '1', '0', '1', '691', '42');
INSERT INTO `tb_category` VALUES ('694', '医疗保健', '100', '1', '0', '1', '691', '42');
INSERT INTO `tb_category` VALUES ('695', '家居日用', '100', '1', '0', '1', '691', '42');
INSERT INTO `tb_category` VALUES ('696', '宠物玩具', '100', '1', '0', '1', '691', '42');
INSERT INTO `tb_category` VALUES ('697', '出行装备', '100', '1', '0', '1', '691', '42');
INSERT INTO `tb_category` VALUES ('698', '洗护美容', '100', '1', '0', '1', '691', '42');
INSERT INTO `tb_category` VALUES ('699', '厨具', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('700', '烹饪锅具', '100', '1', '0', '1', '699', '42');
INSERT INTO `tb_category` VALUES ('701', '炒锅', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('702', '煎锅', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('703', '压力锅', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('704', '蒸锅', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('705', '汤锅', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('706', '奶锅', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('707', '锅具套装', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('708', '煲类', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('709', '水壶', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('710', '火锅', '100', '1', '0', '1', '700', '42');
INSERT INTO `tb_category` VALUES ('711', '刀剪菜板', '100', '1', '0', '1', '699', '42');
INSERT INTO `tb_category` VALUES ('712', '菜刀', '100', '1', '0', '1', '711', '42');
INSERT INTO `tb_category` VALUES ('713', '剪刀', '100', '1', '0', '1', '711', '42');
INSERT INTO `tb_category` VALUES ('714', '刀具套装', '100', '1', '0', '1', '711', '42');
INSERT INTO `tb_category` VALUES ('715', '砧板', '100', '1', '0', '1', '711', '42');
INSERT INTO `tb_category` VALUES ('716', '瓜果刀/刨', '100', '1', '0', '1', '711', '42');
INSERT INTO `tb_category` VALUES ('717', '多功能刀', '100', '1', '0', '1', '711', '42');
INSERT INTO `tb_category` VALUES ('718', '厨房配件', '100', '1', '0', '1', '699', '42');
INSERT INTO `tb_category` VALUES ('719', '保鲜盒', '100', '1', '0', '1', '718', '42');
INSERT INTO `tb_category` VALUES ('720', '烘焙/烧烤', '100', '1', '0', '1', '718', '42');
INSERT INTO `tb_category` VALUES ('721', '饭盒/提锅', '100', '1', '0', '1', '718', '42');
INSERT INTO `tb_category` VALUES ('722', '储物/置物架', '100', '1', '0', '1', '718', '42');
INSERT INTO `tb_category` VALUES ('723', '厨房DIY/小工具', '100', '1', '0', '1', '718', '42');
INSERT INTO `tb_category` VALUES ('724', '水具酒具', '100', '1', '0', '1', '699', '42');
INSERT INTO `tb_category` VALUES ('725', '塑料杯', '100', '1', '0', '1', '724', '42');
INSERT INTO `tb_category` VALUES ('726', '运动水壶', '100', '1', '0', '1', '724', '42');
INSERT INTO `tb_category` VALUES ('727', '玻璃杯', '100', '1', '0', '1', '724', '42');
INSERT INTO `tb_category` VALUES ('728', '陶瓷/马克杯', '100', '1', '0', '1', '724', '42');
INSERT INTO `tb_category` VALUES ('729', '保温杯', '100', '1', '0', '1', '724', '42');
INSERT INTO `tb_category` VALUES ('730', '保温壶', '100', '1', '0', '1', '724', '42');
INSERT INTO `tb_category` VALUES ('731', '酒杯/酒具', '100', '1', '0', '1', '724', '42');
INSERT INTO `tb_category` VALUES ('732', '杯具套装', '100', '1', '0', '1', '724', '42');
INSERT INTO `tb_category` VALUES ('733', '餐具', '100', '1', '0', '1', '699', '42');
INSERT INTO `tb_category` VALUES ('734', '餐具套装', '100', '1', '0', '1', '733', '42');
INSERT INTO `tb_category` VALUES ('735', '碗/碟/盘', '100', '1', '0', '1', '733', '42');
INSERT INTO `tb_category` VALUES ('736', '筷勺/刀叉', '100', '1', '0', '1', '733', '42');
INSERT INTO `tb_category` VALUES ('737', '一次性用品', '100', '1', '0', '1', '733', '42');
INSERT INTO `tb_category` VALUES ('738', '果盘/果篮', '100', '1', '0', '1', '733', '42');
INSERT INTO `tb_category` VALUES ('739', '茶具/咖啡具', '100', '1', '0', '1', '699', '42');
INSERT INTO `tb_category` VALUES ('740', '整套茶具', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('741', '茶杯', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('742', '茶壶', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('743', '茶盘茶托', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('744', '茶叶罐', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('745', '茶具配件', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('746', '茶宠摆件', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('747', '咖啡具', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('748', '其他', '100', '1', '0', '1', '739', '42');
INSERT INTO `tb_category` VALUES ('749', '服饰内衣', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('750', '女装', '100', '1', '0', '1', '749', '42');
INSERT INTO `tb_category` VALUES ('751', 'T恤', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('752', '衬衫', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('753', '针织衫', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('754', '雪纺衫', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('755', '卫衣', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('756', '马甲', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('757', '连衣裙', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('758', '半身裙', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('759', '牛仔裤', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('760', '休闲裤', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('761', '打底裤', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('762', '正装裤', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('763', '小西装', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('764', '短外套', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('765', '风衣', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('766', '毛呢大衣', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('767', '真皮皮衣', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('768', '棉服', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('769', '羽绒服', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('770', '大码女装', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('771', '中老年女装', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('772', '婚纱', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('773', '打底衫', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('774', '旗袍/唐装', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('775', '加绒裤', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('776', '吊带/背心', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('777', '羊绒衫', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('778', '短裤', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('779', '皮草', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('780', '礼服', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('781', '仿皮皮衣', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('782', '羊毛衫', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('783', '设计师/潮牌', '100', '1', '0', '1', '750', '42');
INSERT INTO `tb_category` VALUES ('784', '男装', '100', '1', '0', '1', '749', '42');
INSERT INTO `tb_category` VALUES ('785', '衬衫', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('786', 'T恤', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('787', 'POLO衫', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('788', '针织衫', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('789', '羊绒衫', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('790', '卫衣', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('791', '马甲/背心', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('792', '夹克', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('793', '风衣', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('794', '毛呢大衣', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('795', '仿皮皮衣', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('796', '西服', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('797', '棉服', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('798', '羽绒服', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('799', '牛仔裤', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('800', '休闲裤', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('801', '西裤', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('802', '西服套装', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('803', '大码男装', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('804', '中老年男装', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('805', '唐装/中山装', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('806', '工装', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('807', '真皮皮衣', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('808', '加绒裤', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('809', '卫裤/运动裤', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('810', '短裤', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('811', '设计师/潮牌', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('812', '羊毛衫', '100', '1', '0', '1', '784', '42');
INSERT INTO `tb_category` VALUES ('813', '内衣', '100', '1', '0', '1', '749', '42');
INSERT INTO `tb_category` VALUES ('814', '文胸', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('815', '女式内裤', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('816', '男式内裤', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('817', '睡衣/家居服', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('818', '塑身美体', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('819', '泳衣', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('820', '吊带/背心', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('821', '抹胸', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('822', '连裤袜/丝袜', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('823', '美腿袜', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('824', '商务男袜', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('825', '保暖内衣', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('826', '情侣睡衣', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('827', '文胸套装', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('828', '少女文胸', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('829', '休闲棉袜', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('830', '大码内衣', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('831', '内衣配件', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('832', '打底裤袜', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('833', '打底衫', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('834', '秋衣秋裤', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('835', '情趣内衣', '100', '1', '0', '1', '813', '42');
INSERT INTO `tb_category` VALUES ('836', '服饰配件', '100', '1', '0', '1', '749', '42');
INSERT INTO `tb_category` VALUES ('837', '太阳镜', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('838', '光学镜架/镜片', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('839', '围巾/手套/帽子套装', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('840', '袖扣', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('841', '棒球帽', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('842', '毛线帽', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('843', '遮阳帽', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('844', '老花镜', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('845', '装饰眼镜', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('846', '防辐射眼镜', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('847', '游泳镜', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('848', '女士丝巾/围巾/披肩', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('849', '男士丝巾/围巾', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('850', '鸭舌帽', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('851', '贝雷帽', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('852', '礼帽', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('853', '真皮手套', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('854', '毛线手套', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('855', '防晒手套', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('856', '男士腰带/礼盒', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('857', '女士腰带/礼盒', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('858', '钥匙扣', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('859', '遮阳伞/雨伞', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('860', '口罩', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('861', '耳罩/耳包', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('862', '假领', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('863', '毛线/布面料', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('864', '领带/领结/领带夹', '100', '1', '0', '1', '836', '42');
INSERT INTO `tb_category` VALUES ('865', '鞋靴', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('866', '流行男鞋', '100', '1', '0', '1', '865', '42');
INSERT INTO `tb_category` VALUES ('867', '商务休闲鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('868', '正装鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('869', '休闲鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('870', '凉鞋/沙滩鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('871', '男靴', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('872', '功能鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('873', '拖鞋/人字拖', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('874', '雨鞋/雨靴', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('875', '传统布鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('876', '鞋配件', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('877', '帆布鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('878', '增高鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('879', '工装鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('880', '定制鞋', '100', '1', '0', '1', '866', '42');
INSERT INTO `tb_category` VALUES ('881', '时尚女鞋', '100', '1', '0', '1', '865', '42');
INSERT INTO `tb_category` VALUES ('882', '高跟鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('883', '单鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('884', '休闲鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('885', '凉鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('886', '女靴', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('887', '雪地靴', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('888', '拖鞋/人字拖', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('889', '踝靴', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('890', '筒靴', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('891', '帆布鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('892', '雨鞋/雨靴', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('893', '妈妈鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('894', '鞋配件', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('895', '特色鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('896', '鱼嘴鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('897', '布鞋/绣花鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('898', '马丁靴', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('899', '坡跟鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('900', '松糕鞋', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('901', '内增高', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('902', '防水台', '100', '1', '0', '1', '881', '42');
INSERT INTO `tb_category` VALUES ('903', '礼品箱包', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('904', '潮流女包', '100', '1', '0', '1', '903', '42');
INSERT INTO `tb_category` VALUES ('905', '钱包', '100', '1', '0', '1', '904', '42');
INSERT INTO `tb_category` VALUES ('906', '手拿包/晚宴包', '100', '1', '0', '1', '904', '42');
INSERT INTO `tb_category` VALUES ('907', '单肩包', '100', '1', '0', '1', '904', '42');
INSERT INTO `tb_category` VALUES ('908', '双肩包', '100', '1', '0', '1', '904', '42');
INSERT INTO `tb_category` VALUES ('909', '手提包', '100', '1', '0', '1', '904', '42');
INSERT INTO `tb_category` VALUES ('910', '斜挎包', '100', '1', '0', '1', '904', '42');
INSERT INTO `tb_category` VALUES ('911', '钥匙包', '100', '1', '0', '1', '904', '42');
INSERT INTO `tb_category` VALUES ('912', '卡包/零钱包', '100', '1', '0', '1', '904', '42');
INSERT INTO `tb_category` VALUES ('913', '精品男包', '100', '1', '0', '1', '903', '42');
INSERT INTO `tb_category` VALUES ('914', '钱包/卡包', '100', '1', '0', '1', '913', '42');
INSERT INTO `tb_category` VALUES ('915', '男士手包', '100', '1', '0', '1', '913', '42');
INSERT INTO `tb_category` VALUES ('916', '商务公文包', '100', '1', '0', '1', '913', '42');
INSERT INTO `tb_category` VALUES ('917', '双肩包', '100', '1', '0', '1', '913', '42');
INSERT INTO `tb_category` VALUES ('918', '单肩/斜挎包', '100', '1', '0', '1', '913', '42');
INSERT INTO `tb_category` VALUES ('919', '钥匙包', '100', '1', '0', '1', '913', '42');
INSERT INTO `tb_category` VALUES ('920', '功能箱包', '100', '1', '0', '1', '903', '42');
INSERT INTO `tb_category` VALUES ('921', '电脑包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('922', '拉杆箱/拉杆包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('923', '旅行包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('924', '旅行配件', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('925', '休闲运动包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('926', '登山包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('927', '妈咪包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('928', '书包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('929', '相机包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('930', '腰包/胸包', '100', '1', '0', '1', '920', '42');
INSERT INTO `tb_category` VALUES ('931', '礼品', '100', '1', '0', '1', '903', '42');
INSERT INTO `tb_category` VALUES ('932', '火机烟具', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('933', '礼品文具', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('934', '军刀军具', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('935', '收藏品', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('936', '工艺礼品', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('937', '创意礼品', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('938', '礼盒礼券', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('939', '鲜花绿植', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('940', '婚庆用品', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('941', '京东卡', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('942', '美妆礼品', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('943', '地方礼品', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('944', '古董把玩', '100', '1', '0', '1', '931', '42');
INSERT INTO `tb_category` VALUES ('945', '奢侈品', '100', '1', '0', '1', '903', '42');
INSERT INTO `tb_category` VALUES ('946', '箱包', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('947', '钱包', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('948', '服饰', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('949', '腰带', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('950', '太阳镜/眼镜框', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('951', '配件', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('952', '鞋靴', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('953', '饰品', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('954', '名品腕表', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('955', '高档化妆品', '100', '1', '0', '1', '945', '42');
INSERT INTO `tb_category` VALUES ('956', '婚庆', '100', '1', '0', '1', '903', '42');
INSERT INTO `tb_category` VALUES ('957', '婚嫁首饰', '100', '1', '0', '1', '956', '42');
INSERT INTO `tb_category` VALUES ('958', '婚纱摄影', '100', '1', '0', '1', '956', '42');
INSERT INTO `tb_category` VALUES ('959', '婚纱礼服', '100', '1', '0', '1', '956', '42');
INSERT INTO `tb_category` VALUES ('960', '婚庆服务', '100', '1', '0', '1', '956', '42');
INSERT INTO `tb_category` VALUES ('961', '婚庆礼品/用品', '100', '1', '0', '1', '956', '42');
INSERT INTO `tb_category` VALUES ('962', '婚宴', '100', '1', '0', '1', '956', '42');
INSERT INTO `tb_category` VALUES ('963', '珠宝', '100', '0', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('964', '时尚饰品', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('965', '项链', '100', '1', '0', '1', '964', '42');
INSERT INTO `tb_category` VALUES ('966', '手链/脚链', '100', '1', '0', '1', '964', '42');
INSERT INTO `tb_category` VALUES ('967', '戒指', '100', '1', '0', '1', '964', '42');
INSERT INTO `tb_category` VALUES ('968', '耳饰', '100', '1', '0', '1', '964', '42');
INSERT INTO `tb_category` VALUES ('969', '头饰', '100', '1', '0', '1', '964', '42');
INSERT INTO `tb_category` VALUES ('970', '胸针', '100', '1', '0', '1', '964', '42');
INSERT INTO `tb_category` VALUES ('971', '婚庆饰品', '100', '1', '0', '1', '964', '42');
INSERT INTO `tb_category` VALUES ('972', '饰品配件', '100', '1', '0', '1', '964', '42');
INSERT INTO `tb_category` VALUES ('973', '纯金K金饰品', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('974', '吊坠/项链', '100', '1', '0', '1', '973', '42');
INSERT INTO `tb_category` VALUES ('975', '手镯/手链/脚链', '100', '1', '0', '1', '973', '42');
INSERT INTO `tb_category` VALUES ('976', '戒指', '100', '1', '0', '1', '973', '42');
INSERT INTO `tb_category` VALUES ('977', '耳饰', '100', '1', '0', '1', '973', '42');
INSERT INTO `tb_category` VALUES ('978', '金银投资', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('979', '工艺金', '100', '1', '0', '1', '978', '42');
INSERT INTO `tb_category` VALUES ('980', '工艺银', '100', '1', '0', '1', '978', '42');
INSERT INTO `tb_category` VALUES ('981', '银饰', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('982', '吊坠/项链', '100', '1', '0', '1', '981', '42');
INSERT INTO `tb_category` VALUES ('983', '手镯/手链/脚链', '100', '1', '0', '1', '981', '42');
INSERT INTO `tb_category` VALUES ('984', '戒指/耳饰', '100', '1', '0', '1', '981', '42');
INSERT INTO `tb_category` VALUES ('985', '宝宝银饰', '100', '1', '0', '1', '981', '42');
INSERT INTO `tb_category` VALUES ('986', '千足银手镯', '100', '1', '0', '1', '981', '42');
INSERT INTO `tb_category` VALUES ('987', '钻石', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('988', '裸钻', '100', '1', '0', '1', '987', '42');
INSERT INTO `tb_category` VALUES ('989', '戒指', '100', '1', '0', '1', '987', '42');
INSERT INTO `tb_category` VALUES ('990', '项链/吊坠', '100', '1', '0', '1', '987', '42');
INSERT INTO `tb_category` VALUES ('991', '耳饰', '100', '1', '0', '1', '987', '42');
INSERT INTO `tb_category` VALUES ('992', '手镯/手链', '100', '1', '0', '1', '987', '42');
INSERT INTO `tb_category` VALUES ('993', '翡翠玉石', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('994', '项链/吊坠', '100', '1', '0', '1', '993', '42');
INSERT INTO `tb_category` VALUES ('995', '手镯/手串', '100', '1', '0', '1', '993', '42');
INSERT INTO `tb_category` VALUES ('996', '戒指', '100', '1', '0', '1', '993', '42');
INSERT INTO `tb_category` VALUES ('997', '耳饰', '100', '1', '0', '1', '993', '42');
INSERT INTO `tb_category` VALUES ('998', '挂件/摆件/把件', '100', '1', '0', '1', '993', '42');
INSERT INTO `tb_category` VALUES ('999', '高值收藏', '100', '1', '0', '1', '993', '42');
INSERT INTO `tb_category` VALUES ('1000', '水晶玛瑙', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('1001', '项链/吊坠', '100', '1', '0', '1', '1000', '42');
INSERT INTO `tb_category` VALUES ('1002', '耳饰', '100', '1', '0', '1', '1000', '42');
INSERT INTO `tb_category` VALUES ('1003', '手镯/手链/脚链', '100', '1', '0', '1', '1000', '42');
INSERT INTO `tb_category` VALUES ('1004', '戒指', '100', '1', '0', '1', '1000', '42');
INSERT INTO `tb_category` VALUES ('1005', '头饰/胸针', '100', '1', '0', '1', '1000', '42');
INSERT INTO `tb_category` VALUES ('1006', '摆件/挂件', '100', '1', '0', '1', '1000', '42');
INSERT INTO `tb_category` VALUES ('1007', '彩宝', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('1008', '项链/吊坠', '100', '1', '0', '1', '1007', '42');
INSERT INTO `tb_category` VALUES ('1009', '耳饰', '100', '1', '0', '1', '1007', '42');
INSERT INTO `tb_category` VALUES ('1010', '手镯/手链', '100', '1', '0', '1', '1007', '42');
INSERT INTO `tb_category` VALUES ('1011', '戒指', '100', '1', '0', '1', '1007', '42');
INSERT INTO `tb_category` VALUES ('1012', '铂金', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('1013', '项链/吊坠', '100', '1', '0', '1', '1012', '42');
INSERT INTO `tb_category` VALUES ('1014', '手镯/手链/脚链', '100', '1', '0', '1', '1012', '42');
INSERT INTO `tb_category` VALUES ('1015', '戒指', '100', '1', '0', '1', '1012', '42');
INSERT INTO `tb_category` VALUES ('1016', '耳饰', '100', '1', '0', '1', '1012', '42');
INSERT INTO `tb_category` VALUES ('1017', '天然木饰', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('1018', '小叶紫檀', '100', '1', '0', '1', '1017', '42');
INSERT INTO `tb_category` VALUES ('1019', '黄花梨', '100', '1', '0', '1', '1017', '42');
INSERT INTO `tb_category` VALUES ('1020', '沉香', '100', '1', '0', '1', '1017', '42');
INSERT INTO `tb_category` VALUES ('1021', '金丝楠', '100', '1', '0', '1', '1017', '42');
INSERT INTO `tb_category` VALUES ('1022', '菩提', '100', '1', '0', '1', '1017', '42');
INSERT INTO `tb_category` VALUES ('1023', '其他', '100', '1', '0', '1', '1017', '42');
INSERT INTO `tb_category` VALUES ('1024', '珍珠', '100', '1', '0', '1', '963', '42');
INSERT INTO `tb_category` VALUES ('1025', '项链', '100', '1', '0', '1', '1024', '42');
INSERT INTO `tb_category` VALUES ('1026', '吊坠', '100', '1', '0', '1', '1024', '42');
INSERT INTO `tb_category` VALUES ('1027', '耳饰', '100', '1', '0', '1', '1024', '42');
INSERT INTO `tb_category` VALUES ('1028', '手链', '100', '1', '0', '1', '1024', '42');
INSERT INTO `tb_category` VALUES ('1029', '戒指', '100', '1', '0', '1', '1024', '42');
INSERT INTO `tb_category` VALUES ('1030', '胸针', '100', '1', '0', '1', '1024', '42');
INSERT INTO `tb_category` VALUES ('1031', '运动健康', '100', '1', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('1032', '运动鞋包', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1033', '休闲鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1034', '板鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1035', '帆布鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1036', '专项运动鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1037', '跑步鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1038', '篮球鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1039', '足球鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1040', '训练鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1041', '乒羽网鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1042', '拖鞋', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1043', '运动包', '100', '1', '0', '1', '1032', '42');
INSERT INTO `tb_category` VALUES ('1044', '运动服饰', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1045', '运动配饰', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1046', '羽绒服', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1047', '毛衫/线衫', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1048', '乒羽网服', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1049', '训练服', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1050', '运动背心', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1051', '卫衣/套头衫', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1052', '夹克/风衣', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1053', 'T恤', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1054', '棉服', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1055', '运动裤', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1056', '套装', '100', '1', '0', '1', '1044', '42');
INSERT INTO `tb_category` VALUES ('1057', '骑行运动', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1058', '折叠车', '100', '1', '0', '1', '1057', '42');
INSERT INTO `tb_category` VALUES ('1059', '山地车/公路车', '100', '1', '0', '1', '1057', '42');
INSERT INTO `tb_category` VALUES ('1060', '电动车', '100', '1', '0', '1', '1057', '42');
INSERT INTO `tb_category` VALUES ('1061', '其他整车', '100', '1', '0', '1', '1057', '42');
INSERT INTO `tb_category` VALUES ('1062', '骑行服', '100', '1', '0', '1', '1057', '42');
INSERT INTO `tb_category` VALUES ('1063', '骑行装备', '100', '1', '0', '1', '1057', '42');
INSERT INTO `tb_category` VALUES ('1064', '垂钓用品', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1065', '鱼竿鱼线', '100', '1', '0', '1', '1064', '42');
INSERT INTO `tb_category` VALUES ('1066', '浮漂鱼饵', '100', '1', '0', '1', '1064', '42');
INSERT INTO `tb_category` VALUES ('1067', '钓鱼桌椅', '100', '1', '0', '1', '1064', '42');
INSERT INTO `tb_category` VALUES ('1068', '钓鱼配件', '100', '1', '0', '1', '1064', '42');
INSERT INTO `tb_category` VALUES ('1069', '钓箱鱼包', '100', '1', '0', '1', '1064', '42');
INSERT INTO `tb_category` VALUES ('1070', '其它', '100', '1', '0', '1', '1064', '42');
INSERT INTO `tb_category` VALUES ('1071', '游泳用品', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1072', '泳镜', '100', '1', '0', '1', '1071', '42');
INSERT INTO `tb_category` VALUES ('1073', '泳帽', '100', '1', '0', '1', '1071', '42');
INSERT INTO `tb_category` VALUES ('1074', '游泳包防水包', '100', '1', '0', '1', '1071', '42');
INSERT INTO `tb_category` VALUES ('1075', '女士泳衣', '100', '1', '0', '1', '1071', '42');
INSERT INTO `tb_category` VALUES ('1076', '男士泳衣', '100', '1', '0', '1', '1071', '42');
INSERT INTO `tb_category` VALUES ('1077', '比基尼', '100', '1', '0', '1', '1071', '42');
INSERT INTO `tb_category` VALUES ('1078', '其它', '100', '1', '0', '1', '1071', '42');
INSERT INTO `tb_category` VALUES ('1079', '户外鞋服', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1080', '冲锋衣裤', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1081', '速干衣裤', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1082', '滑雪服', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1083', '羽绒服/棉服', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1084', '休闲衣裤', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1085', '抓绒衣裤', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1086', '软壳衣裤', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1087', 'T恤', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1088', '户外风衣', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1089', '功能内衣', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1090', '军迷服饰', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1091', '登山鞋', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1092', '雪地靴', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1093', '徒步鞋', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1094', '越野跑鞋', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1095', '休闲鞋', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1096', '工装鞋', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1097', '溯溪鞋', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1098', '沙滩/凉拖', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1099', '户外袜', '100', '1', '0', '1', '1079', '42');
INSERT INTO `tb_category` VALUES ('1100', '户外装备', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1101', '帐篷/垫子', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1102', '睡袋/吊床', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1103', '登山攀岩', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1104', '背包', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1105', '户外配饰', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1106', '户外照明', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1107', '户外仪表', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1108', '户外工具', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1109', '望远镜', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1110', '旅游用品', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1111', '便携桌椅床', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1112', '野餐烧烤', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1113', '军迷用品', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1114', '救援装备', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1115', '滑雪装备', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1116', '极限户外', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1117', '冲浪潜水', '100', '1', '0', '1', '1100', '42');
INSERT INTO `tb_category` VALUES ('1118', '健身训练', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1119', '综合训练器', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1120', '其他大型器械', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1121', '哑铃', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1122', '仰卧板/收腹机', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1123', '其他中小型器材', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1124', '瑜伽舞蹈', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1125', '武术搏击', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1126', '健身车/动感单车', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1127', '跑步机', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1128', '运动护具', '100', '1', '0', '1', '1118', '42');
INSERT INTO `tb_category` VALUES ('1129', '纤体瑜伽', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1130', '瑜伽垫', '100', '1', '0', '1', '1129', '42');
INSERT INTO `tb_category` VALUES ('1131', '瑜伽服', '100', '1', '0', '1', '1129', '42');
INSERT INTO `tb_category` VALUES ('1132', '瑜伽配件', '100', '1', '0', '1', '1129', '42');
INSERT INTO `tb_category` VALUES ('1133', '瑜伽套装', '100', '1', '0', '1', '1129', '42');
INSERT INTO `tb_category` VALUES ('1134', '舞蹈鞋服', '100', '1', '0', '1', '1129', '42');
INSERT INTO `tb_category` VALUES ('1135', '体育用品', '100', '1', '0', '1', '1031', '42');
INSERT INTO `tb_category` VALUES ('1136', '羽毛球', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1137', '乒乓球', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1138', '篮球', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1139', '足球', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1140', '网球', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1141', '排球', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1142', '高尔夫', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1143', '台球', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1144', '棋牌麻将', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1145', '轮滑滑板', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1146', '其他', '100', '1', '0', '1', '1135', '42');
INSERT INTO `tb_category` VALUES ('1147', '彩票、旅行、充值、票务', '100', '0', '0', '1', '0', '42');
INSERT INTO `tb_category` VALUES ('1148', '彩票', '100', '1', '0', '1', '1147', '42');
INSERT INTO `tb_category` VALUES ('1149', '双色球', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1150', '大乐透', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1151', '福彩3D', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1152', '排列三', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1153', '排列五', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1154', '七星彩', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1155', '七乐彩', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1156', '竞彩足球', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1157', '竞彩篮球', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1158', '新时时彩', '100', '1', '0', '1', '1148', '42');
INSERT INTO `tb_category` VALUES ('1159', '机票', '100', '1', '0', '1', '1147', '42');
INSERT INTO `tb_category` VALUES ('1160', '国内机票', '100', '1', '0', '1', '1159', '42');
INSERT INTO `tb_category` VALUES ('1161', '酒店', '100', '1', '0', '1', '1147', '42');
INSERT INTO `tb_category` VALUES ('1162', '国内酒店', '100', '1', '0', '1', '1161', '42');
INSERT INTO `tb_category` VALUES ('1163', '酒店团购', '100', '1', '0', '1', '1161', '42');
INSERT INTO `tb_category` VALUES ('1164', '旅行', '100', '1', '0', '1', '1147', '42');
INSERT INTO `tb_category` VALUES ('1165', '度假', '100', '1', '0', '1', '1164', '42');
INSERT INTO `tb_category` VALUES ('1166', '景点', '100', '1', '0', '1', '1164', '42');
INSERT INTO `tb_category` VALUES ('1167', '租车', '100', '1', '0', '1', '1164', '42');
INSERT INTO `tb_category` VALUES ('1168', '火车票', '100', '1', '0', '1', '1164', '42');
INSERT INTO `tb_category` VALUES ('1169', '旅游团购', '100', '1', '0', '1', '1164', '42');
INSERT INTO `tb_category` VALUES ('1170', '充值', '100', '1', '0', '1', '1147', '42');
INSERT INTO `tb_category` VALUES ('1171', '手机充值', '100', '1', '0', '1', '1170', '42');
INSERT INTO `tb_category` VALUES ('1172', '游戏', '100', '1', '0', '1', '1147', '42');
INSERT INTO `tb_category` VALUES ('1173', '游戏点卡', '100', '1', '0', '1', '1172', '42');
INSERT INTO `tb_category` VALUES ('1174', 'QQ充值', '100', '1', '0', '1', '1172', '42');
INSERT INTO `tb_category` VALUES ('1175', '票务', '100', '1', '0', '1', '1147', '42');
INSERT INTO `tb_category` VALUES ('1176', '电影票', '100', '1', '0', '1', '1175', '42');
INSERT INTO `tb_category` VALUES ('1177', '演唱会', '100', '1', '0', '1', '1175', '42');
INSERT INTO `tb_category` VALUES ('1178', '话剧歌剧', '100', '1', '0', '1', '1175', '42');
INSERT INTO `tb_category` VALUES ('1179', '音乐会', '100', '1', '0', '1', '1175', '42');
INSERT INTO `tb_category` VALUES ('1180', '体育赛事', '100', '1', '0', '1', '1175', '42');
INSERT INTO `tb_category` VALUES ('1181', '舞蹈芭蕾', '100', '1', '0', '1', '1175', '42');
INSERT INTO `tb_category` VALUES ('1182', '戏曲综艺', '100', '1', '0', '1', '1175', '42');
INSERT INTO `tb_category` VALUES ('1191', '分类测试_毛祥溢', '100', '1', '0', '1', '18', '42');
INSERT INTO `tb_category` VALUES ('1192', '小家电', '100', '1', '0', '1', '74', '42');
INSERT INTO `tb_category` VALUES ('1193', '英文小说', '100', '1', '0', '1', '11', '42');
INSERT INTO `tb_category` VALUES ('1194', '火锅涮锅', '100', '1', '0', '1', '718', '42');
INSERT INTO `tb_category` VALUES ('1195', '手电筒', '100', '1', '0', '1', '1192', '42');
INSERT INTO `tb_category` VALUES ('1196', '照妖镜', '100', '1', '0', '1', '1192', '42');
INSERT INTO `tb_category` VALUES ('1197', 'AA', '100', '1', '0', '1', '274', '42');
INSERT INTO `tb_category` VALUES ('1198', '蓝宝石', '100', '1', '0', '1', '987', '42');
INSERT INTO `tb_category` VALUES ('1199', '电子小说', '100', '1', '0', '1', '2', '42');
INSERT INTO `tb_category` VALUES ('1200', '上网本', '100', '1', '0', '1', '162', '42');
INSERT INTO `tb_category` VALUES ('1201', '婴儿礼服', '100', '1', '0', '1', '341', '42');
INSERT INTO `tb_category` VALUES ('1202', '电子漫画书', '100', '1', '0', '1', '2', '42');
INSERT INTO `tb_category` VALUES ('1203', '不移动软盘', '100', '1', '0', '1', '186', '42');
INSERT INTO `tb_category` VALUES ('1204', '购机送流量', '100', '1', '0', '1', '562', '42');
INSERT INTO `tb_category` VALUES ('1206', '二手家电', '100', '1', '0', '1', '74', '42');
INSERT INTO `tb_category` VALUES ('1207', '电子教科书', '100', '1', '0', '1', '2', '42');
INSERT INTO `tb_category` VALUES ('1208', '儿童电脑', '100', '1', '0', '1', '625', '42');
INSERT INTO `tb_category` VALUES ('1212', '测试手机分类', '100', '1', '0', '1', '558', '42');
INSERT INTO `tb_category` VALUES ('1213', '测试餐具', '100', '1', '0', '1', '733', '42');
INSERT INTO `tb_category` VALUES ('1214', '黑马电视', '100', '1', '0', '1', '161', '42');
INSERT INTO `tb_category` VALUES ('1215', '电子文学', '100', '1', '0', '1', '2', '11');
INSERT INTO `tb_category` VALUES ('1216', '电子画报', null, '1', '0', '101', '2', '43');

-- ----------------------------
-- Table structure for tb_category_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_category_brand`;
CREATE TABLE `tb_category_brand` (
  `category_id` int(11) NOT NULL COMMENT '分类ID',
  `brand_id` int(11) NOT NULL COMMENT '品牌ID',
  PRIMARY KEY (`category_id`,`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category_brand
-- ----------------------------
INSERT INTO `tb_category_brand` VALUES ('76', '1528');
INSERT INTO `tb_category_brand` VALUES ('76', '2505');
INSERT INTO `tb_category_brand` VALUES ('76', '10317');
INSERT INTO `tb_category_brand` VALUES ('76', '15127');
INSERT INTO `tb_category_brand` VALUES ('76', '20710');
INSERT INTO `tb_category_brand` VALUES ('558', '2032');
INSERT INTO `tb_category_brand` VALUES ('558', '6522');
INSERT INTO `tb_category_brand` VALUES ('558', '8557');
INSERT INTO `tb_category_brand` VALUES ('558', '9420');
INSERT INTO `tb_category_brand` VALUES ('558', '12669');
INSERT INTO `tb_category_brand` VALUES ('558', '15127');
INSERT INTO `tb_category_brand` VALUES ('558', '18374');

-- ----------------------------
-- Table structure for tb_para
-- ----------------------------
DROP TABLE IF EXISTS `tb_para`;
CREATE TABLE `tb_para` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `options` varchar(2000) DEFAULT NULL COMMENT '选项',
  `seq` int(11) DEFAULT NULL COMMENT '排序',
  `template_id` int(11) DEFAULT NULL COMMENT '模板ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='参数表';

-- ----------------------------
-- Records of tb_para
-- ----------------------------
INSERT INTO `tb_para` VALUES ('1', '出厂年份', '2001,2002,2004,2005', '1', '42');
INSERT INTO `tb_para` VALUES ('2', '版本', '10,20,30', '11', '42');
INSERT INTO `tb_para` VALUES ('11', '测试参数1', '参数1', '1', '5');
INSERT INTO `tb_para` VALUES ('12', '测试参数2', '参数2', '1', '5');

-- ----------------------------
-- Table structure for tb_pref
-- ----------------------------
DROP TABLE IF EXISTS `tb_pref`;
CREATE TABLE `tb_pref` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cate_id` int(11) DEFAULT NULL COMMENT '分类ID',
  `buy_money` int(11) DEFAULT NULL COMMENT '消费金额',
  `pre_money` int(11) DEFAULT NULL COMMENT '优惠金额',
  `start_time` date DEFAULT NULL COMMENT '活动开始日期',
  `end_time` date DEFAULT NULL COMMENT '活动截至日期',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `state` char(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pref
-- ----------------------------
INSERT INTO `tb_pref` VALUES ('1', null, '100', '30', null, null, null, null);
INSERT INTO `tb_pref` VALUES ('2', null, '300', '100', null, null, null, null);
INSERT INTO `tb_pref` VALUES ('3', '1', '50', '10', null, null, null, null);
INSERT INTO `tb_pref` VALUES ('4', '2', '100', '40', null, null, null, null);

-- ----------------------------
-- Table structure for tb_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku`;
CREATE TABLE `tb_sku` (
  `id` varchar(20) NOT NULL COMMENT '商品id',
  `sn` varchar(100) NOT NULL COMMENT '商品条码',
  `name` varchar(200) NOT NULL COMMENT 'SKU名称',
  `price` int(20) NOT NULL COMMENT '价格（分）',
  `num` int(10) NOT NULL COMMENT '库存数量',
  `alert_num` int(11) DEFAULT NULL COMMENT '库存预警数量',
  `image` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `images` varchar(2000) DEFAULT NULL COMMENT '商品图片列表',
  `weight` int(11) DEFAULT NULL COMMENT '重量（克）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `spu_id` varchar(20) DEFAULT NULL COMMENT 'SPUID',
  `category_id` int(10) DEFAULT NULL COMMENT '类目ID',
  `category_name` varchar(200) DEFAULT NULL COMMENT '类目名称',
  `brand_name` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `spec` varchar(200) DEFAULT NULL COMMENT '规格',
  `sale_num` int(11) DEFAULT '0' COMMENT '销量',
  `comment_num` int(11) DEFAULT '0' COMMENT '评论数',
  `status` char(1) DEFAULT '1' COMMENT '商品状态 1-正常，2-下架，3-删除',
  PRIMARY KEY (`id`),
  KEY `cid` (`category_id`),
  KEY `status` (`status`),
  KEY `updated` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of tb_sku
-- ----------------------------

-- ----------------------------
-- Table structure for tb_spec
-- ----------------------------
DROP TABLE IF EXISTS `tb_spec`;
CREATE TABLE `tb_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT '名称',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '规格选项',
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `template_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='规格表';

-- ----------------------------
-- Records of tb_spec
-- ----------------------------
INSERT INTO `tb_spec` VALUES ('1', '测试规格', '测试规格', '1', '1');
INSERT INTO `tb_spec` VALUES ('2', '测试规格1', '测试规格1,测试规格2,测试规格3', '1', '1');
INSERT INTO `tb_spec` VALUES ('7', '测试规格1', '规格1,规格2,规格3', '1', '5');
INSERT INTO `tb_spec` VALUES ('8', '测试规格2', '规格1,规格2,规格3', '1', '5');

-- ----------------------------
-- Table structure for tb_template
-- ----------------------------
DROP TABLE IF EXISTS `tb_template`;
CREATE TABLE `tb_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '' COMMENT '模板名称',
  `spec_num` int(11) NOT NULL DEFAULT '0' COMMENT '规格数量',
  `para_num` int(11) NOT NULL DEFAULT '0' COMMENT '参数数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='模板表';

-- ----------------------------
-- Records of tb_template
-- ----------------------------
INSERT INTO `tb_template` VALUES ('1', '测试模板', '1', '1');
INSERT INTO `tb_template` VALUES ('2', '11', '1', '1');
INSERT INTO `tb_template` VALUES ('3', '2', '0', '0');
INSERT INTO `tb_template` VALUES ('4', '测试模板1', '0', '0');
INSERT INTO `tb_template` VALUES ('5', '测试模板2', '2', '2');
