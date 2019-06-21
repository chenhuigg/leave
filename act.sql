/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : act

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2019-06-22 02:59:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `act_link`
-- ----------------------------
DROP TABLE IF EXISTS `act_link`;
CREATE TABLE `act_link` (
  `id` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_link
-- ----------------------------
INSERT INTO `act_link` VALUES ('1', '/leave/commit');
INSERT INTO `act_link` VALUES ('2', '/leave/access');
INSERT INTO `act_link` VALUES ('3', '/leave/refuse');

-- ----------------------------
-- Table structure for `act_menu`
-- ----------------------------
DROP TABLE IF EXISTS `act_menu`;
CREATE TABLE `act_menu` (
  `id` varchar(255) NOT NULL,
  `html` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_menu
-- ----------------------------
INSERT INTO `act_menu` VALUES ('1', '<a href=\"applylist.html\"><span class=\"btn btn-primary\">请假列表</span></a><br /><br />\r');
INSERT INTO `act_menu` VALUES ('2', '<a href=\"writenote.html\"><span class=\"btn btn-primary\">请假申请</span></a><br /><br />\r');
INSERT INTO `act_menu` VALUES ('3', '<a href=\"approvelist.html\"><span class=\"btn btn-primary\">请假审批</span></a><br /><br />\r');

-- ----------------------------
-- Table structure for `act_premission`
-- ----------------------------
DROP TABLE IF EXISTS `act_premission`;
CREATE TABLE `act_premission` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0 menu 1 url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_premission
-- ----------------------------
INSERT INTO `act_premission` VALUES ('1', '请假审批', '0');
INSERT INTO `act_premission` VALUES ('2', '请假申请', '0');
INSERT INTO `act_premission` VALUES ('3', '请假列表', '0');
INSERT INTO `act_premission` VALUES ('4', '提交请假申请', '1');
INSERT INTO `act_premission` VALUES ('5', '通过请假申请', '1');
INSERT INTO `act_premission` VALUES ('6', '拒绝请假申请', '1');

-- ----------------------------
-- Table structure for `act_p_l`
-- ----------------------------
DROP TABLE IF EXISTS `act_p_l`;
CREATE TABLE `act_p_l` (
  `p_id` varchar(255) NOT NULL,
  `l_id` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`,`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_p_l
-- ----------------------------
INSERT INTO `act_p_l` VALUES ('4', '1');
INSERT INTO `act_p_l` VALUES ('5', '2');
INSERT INTO `act_p_l` VALUES ('6', '3');

-- ----------------------------
-- Table structure for `act_p_m`
-- ----------------------------
DROP TABLE IF EXISTS `act_p_m`;
CREATE TABLE `act_p_m` (
  `p_id` varchar(255) NOT NULL,
  `m_id` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`,`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_p_m
-- ----------------------------
INSERT INTO `act_p_m` VALUES ('1', '3');
INSERT INTO `act_p_m` VALUES ('2', '2');
INSERT INTO `act_p_m` VALUES ('3', '1');

-- ----------------------------
-- Table structure for `act_role`
-- ----------------------------
DROP TABLE IF EXISTS `act_role`;
CREATE TABLE `act_role` (
  `id` varchar(36) NOT NULL,
  `rolename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_role
-- ----------------------------
INSERT INTO `act_role` VALUES ('1', '教务处');
INSERT INTO `act_role` VALUES ('2', '老师');
INSERT INTO `act_role` VALUES ('3', '学生');

-- ----------------------------
-- Table structure for `act_r_p`
-- ----------------------------
DROP TABLE IF EXISTS `act_r_p`;
CREATE TABLE `act_r_p` (
  `id` varchar(36) NOT NULL,
  `roleid` varchar(36) NOT NULL,
  `permissionid` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid` (`roleid`),
  KEY `permissionid` (`permissionid`),
  CONSTRAINT `act_r_p_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `act_role` (`id`),
  CONSTRAINT `act_r_p_ibfk_2` FOREIGN KEY (`permissionid`) REFERENCES `act_premission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_r_p
-- ----------------------------
INSERT INTO `act_r_p` VALUES ('1', '1', '1');
INSERT INTO `act_r_p` VALUES ('10', '1', '5');
INSERT INTO `act_r_p` VALUES ('11', '1', '6');
INSERT INTO `act_r_p` VALUES ('12', '2', '4');
INSERT INTO `act_r_p` VALUES ('13', '2', '5');
INSERT INTO `act_r_p` VALUES ('14', '2', '6');
INSERT INTO `act_r_p` VALUES ('15', '3', '4');
INSERT INTO `act_r_p` VALUES ('2', '1', '2');
INSERT INTO `act_r_p` VALUES ('3', '1', '3');
INSERT INTO `act_r_p` VALUES ('4', '2', '1');
INSERT INTO `act_r_p` VALUES ('5', '2', '2');
INSERT INTO `act_r_p` VALUES ('6', '2', '3');
INSERT INTO `act_r_p` VALUES ('7', '3', '2');
INSERT INTO `act_r_p` VALUES ('8', '3', '3');
INSERT INTO `act_r_p` VALUES ('9', '1', '4');

-- ----------------------------
-- Table structure for `act_table`
-- ----------------------------
DROP TABLE IF EXISTS `act_table`;
CREATE TABLE `act_table` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_time` varchar(255) NOT NULL,
  `to_time` varchar(255) NOT NULL,
  `cause` text NOT NULL,
  `state` char(1) NOT NULL,
  `approveid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `approveid` (`approveid`),
  KEY `time` (`time`) USING BTREE,
  CONSTRAINT `act_table_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `act_user` (`id`),
  CONSTRAINT `act_table_ibfk_2` FOREIGN KEY (`approveid`) REFERENCES `act_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_table
-- ----------------------------
INSERT INTO `act_table` VALUES ('1', '1', '2015-03-14 23:13', '2015-03-14 23:13', '生活所迫', '2', '2', null);
INSERT INTO `act_table` VALUES ('14f3a377-9328-11e9-8f5f-74c63b68556a', '1', '2019-06-21 22:22', '2019-06-22 03:03', '第三条消息', '1', '2', '2019-06-20 02:53:31');
INSERT INTO `act_table` VALUES ('2', '1', '2015-03-14 23:13', '2015-03-14 23:13', '学习', '2', '2', null);
INSERT INTO `act_table` VALUES ('3', '1', '2015-03-14 23:13', '2015-03-14 23:13', '肚子疼', '2', '2', null);
INSERT INTO `act_table` VALUES ('4', '3', '2015-03-14 23:13', '2015-03-14 23:13', '学习学习', '2', '2', null);
INSERT INTO `act_table` VALUES ('4e0d1ba8-9436-11e9-8f5f-74c63b68556a', '1', '2019-06-21 01:01', '2019-06-22 02:02', '玩游戏', '1', '2', '2019-06-21 11:07:59');
INSERT INTO `act_table` VALUES ('88a43ef5-944f-11e9-8f5f-74c63b68556a', '1', '2019-06-22 22:22', '2019-06-23 22:22', '玩游戏', '0', '2', '2019-06-22 02:08:35');
INSERT INTO `act_table` VALUES ('ca5d5eda-9321-11e9-8f5f-74c63b68556a', '3', '2019-06-20 12:12', '2019-06-22 12:12', '身体不适', '1', '2', null);
INSERT INTO `act_table` VALUES ('e2cbc100-9327-11e9-8f5f-74c63b68556a', '1', '0012-06-12 12:12', '0012-06-21 12:12', '第一条消息', '1', '2', '2019-06-20 02:52:07');
INSERT INTO `act_table` VALUES ('ef133967-9327-11e9-8f5f-74c63b68556a', '1', '2019-06-21 23:23', '2019-06-21 23:43', '第二条消息', '1', '2', '2019-06-20 02:52:28');
INSERT INTO `act_table` VALUES ('f2813af8-9429-11e9-8f5f-74c63b68556a', '1', '2019-06-22 12:12', '2019-06-22 12:12', '无原因', '1', '2', '2019-06-21 09:39:31');
INSERT INTO `act_table` VALUES ('f3f732bf-944e-11e9-8f5f-74c63b68556a', '2', '2019-06-22 12:12', '2019-06-22 12:12', '身体问题', '0', '0', '2019-06-22 02:04:26');

-- ----------------------------
-- Table structure for `act_user`
-- ----------------------------
DROP TABLE IF EXISTS `act_user`;
CREATE TABLE `act_user` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `act_user_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `act_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_user
-- ----------------------------
INSERT INTO `act_user` VALUES ('0', '教务处-鲁滨逊', '123', '1', '0');
INSERT INTO `act_user` VALUES ('1', '学生-路人甲', '123', '3', '2');
INSERT INTO `act_user` VALUES ('2', '老师-孔子', '123', '2', '0');
INSERT INTO `act_user` VALUES ('3', '学生-路人乙', '123', '3', '2');
