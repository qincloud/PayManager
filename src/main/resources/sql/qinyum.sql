/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : qinyum

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2017-02-04 20:02:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `income`
-- ----------------------------
DROP TABLE IF EXISTS `income`;
CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(20) DEFAULT NULL,
  `amount` float(14,0) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income
-- ----------------------------
INSERT INTO `income` VALUES ('1', '大舅给的红包', '200', '2017-01-31', '大年初二早上我还在睡觉,大舅来到我家给了200员人民币');
INSERT INTO `income` VALUES ('3', '幺舅的红包', '200', '2017-01-31', '大年三十幺舅给了我一个200元的红包');
INSERT INTO `income` VALUES ('4', '外婆给的红包', '200', '2017-01-31', '三十天的时候外婆给了我200人民币');
INSERT INTO `income` VALUES ('5', '二爸的红包', '200', '2017-02-03', '那天二爸和鹩哥来我家给了我红包然后就和他们去南充了');
INSERT INTO `income` VALUES ('6', '鹩哥', '200', '2017-02-03', '那天二爸和鹩哥来我家给了我红包然后就和他们去南充了');
INSERT INTO `income` VALUES ('7', '幺妈的红包', '200', '2017-02-03', '初三晚上幺妈给了我200元红包');

-- ----------------------------
-- Table structure for `pay`
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sprice` float(10,0) DEFAULT NULL,
  `cause` text,
  `quality` varchar(10) DEFAULT NULL,
  `sumprice` float(11,0) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay
-- ----------------------------
INSERT INTO `pay` VALUES ('1', '方便面', '4', '太饿了', '2盒方便面', '8', '2017-01-31', '晚上去小卖部买的');
INSERT INTO `pay` VALUES ('2', '豌杂面', '8', '太饿去吃东西', '3两', '8', '2017-01-31', '晚上太饿去吃小面');
INSERT INTO `pay` VALUES ('3', '小米锅巴', '1', '想吃东西了', '2包', '1', '2017-01-31', '我让廖静支去买了2包小吃然后我给他打了一天的电脑哈哈，现在会玩lol了呢');
INSERT INTO `pay` VALUES ('4', '小米锅巴', '1', '就是想吃了', '3', '3', '2017-01-31', '早上让廖静月给我买小吃，然后我走后我的电脑她可以一直打电脑');
INSERT INTO `pay` VALUES ('5', '车票', '3', '必须', '2张票', '5', '2017-02-03', '回搬罾和去南充一共5元车票,去南充花了3元，回搬罾用了2元');
INSERT INTO `pay` VALUES ('6', '锅盔', '6', '饿了', '1个', '6', '2017-02-03', '在南充走到中午太饿了就买了个锅盔');
INSERT INTO `pay` VALUES ('7', '营养快线', '5', '渴了', '1瓶', '5', '2017-02-03', '就是想买了但是我认为那样是不对的');
INSERT INTO `pay` VALUES ('8', '打的', '25', '要快点去南充长途汽车站', '1张', '25', '2017-02-03', '给甲甲过完生日吃完饭就打的去了车站');
INSERT INTO `pay` VALUES ('9', '1瓶呦呦奶茶', '4', '没零钱赶车', '1瓶', '4', '2017-02-03', '到搬罾的第二天想去南充玩玩，但是发现必须需要做公交但是我又没有零钱');
INSERT INTO `pay` VALUES ('10', '卫生纸', '1', '要拉巴巴了', '1包', '1', '2017-02-03', '要去泸州的时候突然想拉屎了');
INSERT INTO `pay` VALUES ('11', '康师傅方便面', '5', '要去泸州的时候买了一盒方便面', '1盒', '5', '2017-02-03', '要去泸州的时候买了一盒方便面');
INSERT INTO `pay` VALUES ('12', '车票', '115', '去泸州的车票', '1张', '115', '2017-02-03', '去泸州的车票');
INSERT INTO `pay` VALUES ('13', '到泸州上网', '20', '想上网了', '1张', '20', '2017-02-03', '我要永远记得');
INSERT INTO `pay` VALUES ('14', '到泸州住店', '50', '太累了太困了', '1房', '50', '2017-02-03', '但是太困了没办法了');
INSERT INTO `pay` VALUES ('15', '泸州公交', '2', '必须', '2张', '3', '2017-02-03', '坐车到泸州客运中心');
INSERT INTO `pay` VALUES ('16', '泸州到荣昌的车票', '21', '要回家了', '1张', '21', '2017-02-03', '2月3号11点25到南充的车票');
INSERT INTO `pay` VALUES ('17', '刀削面', '7', '我的中午饭', '3两', '7', '2017-02-03', '从泸州回到荣昌的第一顿刀削面');
INSERT INTO `pay` VALUES ('18', '抄手', '8', '到泸州从旅馆睡觉起来后吃的早饭', '2两', '8', '2017-02-03', '到泸州从旅馆睡觉起来后吃的早饭');
INSERT INTO `pay` VALUES ('19', '真果粒', '4', '等待上车喝一瓶玩', '1盒', '4', '2017-02-02 15:50', '在南充长途车站等车去泸州的途中买了一盒真果粒');
INSERT INTO `pay` VALUES ('20', '不记得的花费', '9', 'not why', '0', '9', '2017-02-04 17:50', 'hhhhhh');
