/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : act

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2019-07-02 18:03:39
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
INSERT INTO `act_link` VALUES ('00854779-7a00-4fb0-8e98-4583e788cf65', '/leave-ssm/writenote.html');
INSERT INTO `act_link` VALUES ('0873bc6b-e0f0-4f22-98a0-7fa3636647d9', '/leave-ssm/delUsers');
INSERT INTO `act_link` VALUES ('0874a3f5-2428-4447-8dbb-6a577803b0b6', '/leave-ssm/addPermission');
INSERT INTO `act_link` VALUES ('1', '/leave-ssm/commit');
INSERT INTO `act_link` VALUES ('113563eb-7588-48ef-9762-ddf89fe644a3', '/leave-ssm/approvelist');
INSERT INTO `act_link` VALUES ('128c5459-468a-45fe-bf30-de92c8cadffa', '/leave-ssm/useredit.html');
INSERT INTO `act_link` VALUES ('1ce9eb9f-6655-4c38-a054-c155dded576a', '/leave-ssm/useradd.html');
INSERT INTO `act_link` VALUES ('2', '/leave-ssm/access');
INSERT INTO `act_link` VALUES ('244e9e69-9de7-4fb3-ba20-edb6590d8bcb', '/leave-ssm/permissionadd.html');
INSERT INTO `act_link` VALUES ('24bdb564-787d-4e1e-9b2d-d9904c4b14cc', '/leave-ssm/getTable');
INSERT INTO `act_link` VALUES ('3', '/leave-ssm/refuse');
INSERT INTO `act_link` VALUES ('363f1b84-6d0a-4bf1-b216-97682ec2a937', '/leave-ssm/rolelist.html');
INSERT INTO `act_link` VALUES ('479ee2b8-26fe-4de0-8ded-c97f221939b5', '/leave-ssm/editnote.html');
INSERT INTO `act_link` VALUES ('4fcd3cfa-e0ab-4850-8d37-0b56a8ede65c', '/leave-ssm/delrole');
INSERT INTO `act_link` VALUES ('512d196f-d738-45c6-98d3-1871da943728', '/leave-ssm/editsave');
INSERT INTO `act_link` VALUES ('58f396d3-a04e-4111-bfc5-3b1435f3aff7', '/leave-ssm/roleadd.html');
INSERT INTO `act_link` VALUES ('5c3dbc1c-e2c6-496c-b68a-8004ea97b349', '/leave-ssm/delPermission');
INSERT INTO `act_link` VALUES ('5dffdf45-76dd-4a91-a30d-1aff1210263f', '/leave-ssm/approvelist.html');
INSERT INTO `act_link` VALUES ('63ae0ef3-4a82-4d9e-b5a8-095cb4471f0c', '/leave-ssm/getAllRole');
INSERT INTO `act_link` VALUES ('6ba072e1-8ace-49d9-928b-209d9c075899', '/leave-ssm/delListPermission');
INSERT INTO `act_link` VALUES ('6c1cf44b-82ee-4b42-afd6-58650d6787bc', '/leave-ssm/edit');
INSERT INTO `act_link` VALUES ('6f1fda2c-00a0-499f-9580-0a669792ec33', '/leave-ssm/applylist');
INSERT INTO `act_link` VALUES ('6f59db24-92d5-44a2-98f1-56d61d4a9813', '/leave-ssm/applylist.html');
INSERT INTO `act_link` VALUES ('88d8ee39-f167-4daa-af72-1e67041753a1', '/leave-ssm/getUserById');
INSERT INTO `act_link` VALUES ('8fc2f8cb-c11f-4d4c-beed-a288cbd6a582', '/leave-ssm/delUser');
INSERT INTO `act_link` VALUES ('92da7327-b61a-4270-83ea-eaffd891f2b1', '/leave-ssm/getPermissionInfoById');
INSERT INTO `act_link` VALUES ('9adfb945-0e1e-4362-9a8b-281aec8cf5ff', '/leave-ssm/getPermissionList');
INSERT INTO `act_link` VALUES ('ac318539-6be2-467e-b099-cee26dfabf86', '/leave-ssm/getPermissionDetailById');
INSERT INTO `act_link` VALUES ('ac96b4d7-b203-4fcf-af85-5dcc9b783dbe', '/leave-ssm/addPermissions');
INSERT INTO `act_link` VALUES ('b50ff29b-6e9e-46c5-9183-232f0a32515c', '/leave-ssm/roleadd');
INSERT INTO `act_link` VALUES ('bce2a442-b155-4d28-86c2-56ca47d50a5a', '/leave-ssm/permissions.html');
INSERT INTO `act_link` VALUES ('c4acab2e-3cc8-4427-9e8b-c1614c6b54a5', '/leave-ssm/cancle');
INSERT INTO `act_link` VALUES ('cbf33e71-7eae-4759-9fcb-1b7284f110e8', '/leave-ssm/assignpermissions.html');
INSERT INTO `act_link` VALUES ('d7e8455b-4a71-4ca9-9fb6-7367b7b0c13c', '/leave-ssm/userlist.html');
INSERT INTO `act_link` VALUES ('e0f66675-8fbf-4fc4-98b1-53d5d875f7d6', '/leave-ssm/permissiondetail.html');
INSERT INTO `act_link` VALUES ('e3bae26b-9f52-491f-bbcd-5d5de984186f', '/leave-ssm/permissionlist.html');
INSERT INTO `act_link` VALUES ('ec16d2bc-8a96-44e5-bf13-f058a20555a4', '/leave-ssm/getLocationPageUser');
INSERT INTO `act_link` VALUES ('f996ed73-ab5f-426f-bf36-86ff5f227d67', '/leave-ssm/putPermission');
INSERT INTO `act_link` VALUES ('fed7f407-c9f3-4a16-8a27-e5a1cceabd27', '/leave-ssm/addUser');

-- ----------------------------
-- Table structure for `act_menu`
-- ----------------------------
DROP TABLE IF EXISTS `act_menu`;
CREATE TABLE `act_menu` (
  `id` varchar(255) NOT NULL,
  `html` varchar(255) DEFAULT NULL,
  `parentid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_menu
-- ----------------------------
INSERT INTO `act_menu` VALUES ('0', '根菜单', '-1');
INSERT INTO `act_menu` VALUES ('1', '<a href=\"applylist.html\"><span class=\"btn btn-primary\">请假列表</span></a><br /><br />\n', '794adcc8-e716-4df2-af2c-b2809b18768c');
INSERT INTO `act_menu` VALUES ('1558674d-eeb3-4a25-aa96-22acde88a9c4', '权限管理', '0');
INSERT INTO `act_menu` VALUES ('1cfbc2f3-d4ed-494b-8222-e0df38372525', '<a href=\"userlist.html\"><span class=\"btn btn-primary\">用户维护</span></a><br /><br />\n', '1558674d-eeb3-4a25-aa96-22acde88a9c4');
INSERT INTO `act_menu` VALUES ('2', '<a href=\"writenote.html\"><span class=\"btn btn-primary\">请假申请</span></a><br /><br />\n', '794adcc8-e716-4df2-af2c-b2809b18768c');
INSERT INTO `act_menu` VALUES ('3', '<a href=\"approvelist.html\"><span class=\"btn btn-primary\">请假审批</span></a><br /><br />\n', '794adcc8-e716-4df2-af2c-b2809b18768c');
INSERT INTO `act_menu` VALUES ('4bfcba78-067b-4cc3-8664-cfa17a7138ba', '<a href=\"permissionlist.html\"><span class=\"btn btn-primary\">权限维护</span></a><br /><br />\n', '1558674d-eeb3-4a25-aa96-22acde88a9c4');
INSERT INTO `act_menu` VALUES ('794adcc8-e716-4df2-af2c-b2809b18768c', '请假管理', '0');
INSERT INTO `act_menu` VALUES ('ee352762-97ad-4127-a1a8-e29f9c581bdd', '<a href=\"rolelist.html\"><span class=\"btn btn-primary\">角色维护</span></a><br /><br />\n', '1558674d-eeb3-4a25-aa96-22acde88a9c4');

-- ----------------------------
-- Table structure for `act_permission`
-- ----------------------------
DROP TABLE IF EXISTS `act_permission`;
CREATE TABLE `act_permission` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '0 menu 1 url',
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_permission
-- ----------------------------
INSERT INTO `act_permission` VALUES ('049036e9-e67e-4abb-b843-c9c46f918fe2', '删除角色', '1', '2019-07-02 04:37:18');
INSERT INTO `act_permission` VALUES ('0790e2c7-3735-4071-aa6f-83cfa4d6b722', '权限维护【菜单】', '0', '2019-07-02 03:44:56');
INSERT INTO `act_permission` VALUES ('0fcca672-c899-4517-8258-96baa23c971b', '为角色添加权限', '1', '2019-07-02 04:38:33');
INSERT INTO `act_permission` VALUES ('1', '请假审批【菜单】', '0', null);
INSERT INTO `act_permission` VALUES ('2', '请假申请【菜单】', '0', null);
INSERT INTO `act_permission` VALUES ('25dc19b2-e8c4-4f49-903a-e48e6de5cc42', '增加权限', '1', '2019-07-02 04:34:31');
INSERT INTO `act_permission` VALUES ('2b57764b-fe2d-4715-a0c4-631d5b9c8b23', '新增角色', '1', '2019-07-02 04:36:53');
INSERT INTO `act_permission` VALUES ('2f762545-a352-4770-872d-811946465d5b', '跳转到新增角色', '1', '2019-07-02 04:23:36');
INSERT INTO `act_permission` VALUES ('3', '请假列表【菜单】', '0', null);
INSERT INTO `act_permission` VALUES ('307ffdc5-52ea-44d3-a23e-6de53a15d49e', '跳转到审批页面', '1', '2019-07-02 04:19:16');
INSERT INTO `act_permission` VALUES ('308de591-b651-496a-a08e-2736be0e588a', '获得权限列表', '1', '2019-07-02 04:34:09');
INSERT INTO `act_permission` VALUES ('347eaf40-22f5-4b5a-86e9-6d0a70efc36d', '权限管理【菜单】', '0', '2019-07-02 05:51:11');
INSERT INTO `act_permission` VALUES ('3590a69a-b086-4457-801c-9cac95637e00', '取消请假', '1', '2019-07-02 04:42:42');
INSERT INTO `act_permission` VALUES ('3dc97fdd-fe17-4af6-8899-5f51921e3150', '获取角色列表', '1', '2019-07-02 04:36:31');
INSERT INTO `act_permission` VALUES ('4', '提交请假申请', '1', null);
INSERT INTO `act_permission` VALUES ('40c0ae7d-b0de-428b-98fd-2d91beda7319', '跳转到角色列表', '1', '2019-07-02 04:23:11');
INSERT INTO `act_permission` VALUES ('419709e9-811e-48f9-8e1b-60bffc491c99', '跳转到修改申请页', '1', '2019-07-02 04:20:38');
INSERT INTO `act_permission` VALUES ('459e6f76-ca55-43f9-aaaf-49fad0cb7352', '修改某用户对应的信息', '1', '2019-07-02 04:48:07');
INSERT INTO `act_permission` VALUES ('4faee179-09a0-4f47-bacf-1743c19bb40c', '请假管理【菜单】', '0', '2019-07-02 05:50:46');
INSERT INTO `act_permission` VALUES ('5', '通过请假申请', '1', null);
INSERT INTO `act_permission` VALUES ('55191327-4a4c-41dd-8ac5-a0e09521ff63', '删除多个用户', '1', '2019-07-02 04:47:00');
INSERT INTO `act_permission` VALUES ('56841bba-f253-485b-a1c4-b18cf4ffa0f5', '用户维护【菜单】', '0', '2019-07-02 03:42:47');
INSERT INTO `act_permission` VALUES ('5ee55676-3c5c-4938-a814-bbaf7132714f', '跳转到角色分配权限界面', '1', '2019-07-02 04:24:03');
INSERT INTO `act_permission` VALUES ('6', '拒绝请假申请', '1', null);
INSERT INTO `act_permission` VALUES ('64bc47e2-2311-44ac-aa8f-3a4c3b0f86eb', '跳转到增加权限', '1', '2019-07-02 04:26:01');
INSERT INTO `act_permission` VALUES ('664e89ae-cee7-41e0-aa56-7faed3564764', '跳转到用户列表', '1', '2019-07-02 04:21:29');
INSERT INTO `act_permission` VALUES ('67a6fe16-bb25-4d97-895a-53d730f6c125', '跳转到主页面', '1', '2019-07-02 03:46:35');
INSERT INTO `act_permission` VALUES ('711d81a6-9197-42eb-9fb6-c6ace7d9b17d', '跳转到权限列表', '1', '2019-07-02 04:24:33');
INSERT INTO `act_permission` VALUES ('71dd09a6-ad91-4c7e-9008-74ceb3002d5d', '新增用户', '1', '2019-07-02 04:46:13');
INSERT INTO `act_permission` VALUES ('73e01862-957b-4d21-b763-8fff8c1c8b8e', '更新权限内容', '1', '2019-07-02 04:36:08');
INSERT INTO `act_permission` VALUES ('8b6b9533-ff4a-4b28-9526-9ffba31e016e', '获取某用户所对应的信息', '1', '2019-07-02 04:47:39');
INSERT INTO `act_permission` VALUES ('8f55f6b9-7828-478d-86a4-22214d26d88c', '获取角色权限信息', '1', '2019-07-02 04:38:11');
INSERT INTO `act_permission` VALUES ('93b0a493-204b-410e-8d89-8437322ccc4a', '查看请假申请列表', '1', '2019-07-02 04:41:07');
INSERT INTO `act_permission` VALUES ('94d43706-2185-4c96-9856-0b7b6f6e829b', '跳转到请假申请', '1', '2019-07-02 04:20:01');
INSERT INTO `act_permission` VALUES ('9a4d5f7b-c0ad-433e-ac1f-8ba3cd1e3045', '跳转到用户编辑界面', '1', '2019-07-02 04:22:04');
INSERT INTO `act_permission` VALUES ('9b202423-b391-46bb-8daf-8a50ff09ff43', '删除权限', '1', '2019-07-02 04:35:10');
INSERT INTO `act_permission` VALUES ('aa3b39d3-c9b9-40e8-9137-40117cdb00c5', '为角色删除权限', '1', '2019-07-02 04:38:57');
INSERT INTO `act_permission` VALUES ('af79f78a-acf0-43f7-8fd0-f502ffb54832', '获取权限详情', '1', '2019-07-02 04:35:44');
INSERT INTO `act_permission` VALUES ('b6ce6898-fa8b-4cdd-b400-1eea5109d339', '跳转到申请列表', '1', '2019-07-02 04:18:05');
INSERT INTO `act_permission` VALUES ('c0110efc-0e0b-4794-aa5f-f4c2f5535ec8', '获取用户请假表详情', '1', '2019-07-02 04:43:56');
INSERT INTO `act_permission` VALUES ('c1298a65-0251-48f9-9e4e-e8c06eb4f9cd', '获得用户列表', '1', '2019-07-02 04:45:51');
INSERT INTO `act_permission` VALUES ('c1d6868e-d757-443c-b3fa-cb41ccab1e7d', '跳转到权限详情', '1', '2019-07-02 04:25:01');
INSERT INTO `act_permission` VALUES ('f3151389-1e9b-46cd-a906-17956295181e', '角色维护【菜单】', '0', '2019-07-02 03:43:49');
INSERT INTO `act_permission` VALUES ('f49ebec4-2fe3-41ba-9c85-aac30539a2ce', '跳转到用户添加界面', '1', '2019-07-02 04:22:36');
INSERT INTO `act_permission` VALUES ('f9c7b368-80e4-4d3f-99cb-fcd9f02db385', '查看请假审批列表', '1', '2019-07-02 04:41:34');
INSERT INTO `act_permission` VALUES ('fc61c541-5282-4504-892f-e83ad7622a2b', '删除用户', '1', '2019-07-02 04:46:37');
INSERT INTO `act_permission` VALUES ('fe340509-da1d-4ac8-862d-82568110dc2e', '修改用户请假表详情', '1', '2019-07-02 04:44:20');

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
INSERT INTO `act_p_l` VALUES ('049036e9-e67e-4abb-b843-c9c46f918fe2', '4fcd3cfa-e0ab-4850-8d37-0b56a8ede65c');
INSERT INTO `act_p_l` VALUES ('0fcca672-c899-4517-8258-96baa23c971b', 'ac96b4d7-b203-4fcf-af85-5dcc9b783dbe');
INSERT INTO `act_p_l` VALUES ('25dc19b2-e8c4-4f49-903a-e48e6de5cc42', '0874a3f5-2428-4447-8dbb-6a577803b0b6');
INSERT INTO `act_p_l` VALUES ('2b57764b-fe2d-4715-a0c4-631d5b9c8b23', 'b50ff29b-6e9e-46c5-9183-232f0a32515c');
INSERT INTO `act_p_l` VALUES ('2f762545-a352-4770-872d-811946465d5b', '58f396d3-a04e-4111-bfc5-3b1435f3aff7');
INSERT INTO `act_p_l` VALUES ('307ffdc5-52ea-44d3-a23e-6de53a15d49e', '5dffdf45-76dd-4a91-a30d-1aff1210263f');
INSERT INTO `act_p_l` VALUES ('308de591-b651-496a-a08e-2736be0e588a', '9adfb945-0e1e-4362-9a8b-281aec8cf5ff');
INSERT INTO `act_p_l` VALUES ('3590a69a-b086-4457-801c-9cac95637e00', 'c4acab2e-3cc8-4427-9e8b-c1614c6b54a5');
INSERT INTO `act_p_l` VALUES ('3dc97fdd-fe17-4af6-8899-5f51921e3150', '63ae0ef3-4a82-4d9e-b5a8-095cb4471f0c');
INSERT INTO `act_p_l` VALUES ('4', '1');
INSERT INTO `act_p_l` VALUES ('40c0ae7d-b0de-428b-98fd-2d91beda7319', '363f1b84-6d0a-4bf1-b216-97682ec2a937');
INSERT INTO `act_p_l` VALUES ('419709e9-811e-48f9-8e1b-60bffc491c99', '479ee2b8-26fe-4de0-8ded-c97f221939b5');
INSERT INTO `act_p_l` VALUES ('459e6f76-ca55-43f9-aaaf-49fad0cb7352', '512d196f-d738-45c6-98d3-1871da943728');
INSERT INTO `act_p_l` VALUES ('5', '2');
INSERT INTO `act_p_l` VALUES ('55191327-4a4c-41dd-8ac5-a0e09521ff63', '0873bc6b-e0f0-4f22-98a0-7fa3636647d9');
INSERT INTO `act_p_l` VALUES ('5ee55676-3c5c-4938-a814-bbaf7132714f', 'cbf33e71-7eae-4759-9fcb-1b7284f110e8');
INSERT INTO `act_p_l` VALUES ('6', '3');
INSERT INTO `act_p_l` VALUES ('64bc47e2-2311-44ac-aa8f-3a4c3b0f86eb', '244e9e69-9de7-4fb3-ba20-edb6590d8bcb');
INSERT INTO `act_p_l` VALUES ('664e89ae-cee7-41e0-aa56-7faed3564764', 'd7e8455b-4a71-4ca9-9fb6-7367b7b0c13c');
INSERT INTO `act_p_l` VALUES ('67a6fe16-bb25-4d97-895a-53d730f6c125', 'bce2a442-b155-4d28-86c2-56ca47d50a5a');
INSERT INTO `act_p_l` VALUES ('711d81a6-9197-42eb-9fb6-c6ace7d9b17d', 'e3bae26b-9f52-491f-bbcd-5d5de984186f');
INSERT INTO `act_p_l` VALUES ('71dd09a6-ad91-4c7e-9008-74ceb3002d5d', 'fed7f407-c9f3-4a16-8a27-e5a1cceabd27');
INSERT INTO `act_p_l` VALUES ('73e01862-957b-4d21-b763-8fff8c1c8b8e', 'f996ed73-ab5f-426f-bf36-86ff5f227d67');
INSERT INTO `act_p_l` VALUES ('8b6b9533-ff4a-4b28-9526-9ffba31e016e', '88d8ee39-f167-4daa-af72-1e67041753a1');
INSERT INTO `act_p_l` VALUES ('8f55f6b9-7828-478d-86a4-22214d26d88c', '92da7327-b61a-4270-83ea-eaffd891f2b1');
INSERT INTO `act_p_l` VALUES ('93b0a493-204b-410e-8d89-8437322ccc4a', '6f1fda2c-00a0-499f-9580-0a669792ec33');
INSERT INTO `act_p_l` VALUES ('94d43706-2185-4c96-9856-0b7b6f6e829b', '00854779-7a00-4fb0-8e98-4583e788cf65');
INSERT INTO `act_p_l` VALUES ('9a4d5f7b-c0ad-433e-ac1f-8ba3cd1e3045', '128c5459-468a-45fe-bf30-de92c8cadffa');
INSERT INTO `act_p_l` VALUES ('9b202423-b391-46bb-8daf-8a50ff09ff43', '6ba072e1-8ace-49d9-928b-209d9c075899');
INSERT INTO `act_p_l` VALUES ('aa3b39d3-c9b9-40e8-9137-40117cdb00c5', '5c3dbc1c-e2c6-496c-b68a-8004ea97b349');
INSERT INTO `act_p_l` VALUES ('af79f78a-acf0-43f7-8fd0-f502ffb54832', 'ac318539-6be2-467e-b099-cee26dfabf86');
INSERT INTO `act_p_l` VALUES ('b6ce6898-fa8b-4cdd-b400-1eea5109d339', '6f59db24-92d5-44a2-98f1-56d61d4a9813');
INSERT INTO `act_p_l` VALUES ('c0110efc-0e0b-4794-aa5f-f4c2f5535ec8', '24bdb564-787d-4e1e-9b2d-d9904c4b14cc');
INSERT INTO `act_p_l` VALUES ('c1298a65-0251-48f9-9e4e-e8c06eb4f9cd', 'ec16d2bc-8a96-44e5-bf13-f058a20555a4');
INSERT INTO `act_p_l` VALUES ('c1d6868e-d757-443c-b3fa-cb41ccab1e7d', 'e0f66675-8fbf-4fc4-98b1-53d5d875f7d6');
INSERT INTO `act_p_l` VALUES ('f49ebec4-2fe3-41ba-9c85-aac30539a2ce', '1ce9eb9f-6655-4c38-a054-c155dded576a');
INSERT INTO `act_p_l` VALUES ('f9c7b368-80e4-4d3f-99cb-fcd9f02db385', '113563eb-7588-48ef-9762-ddf89fe644a3');
INSERT INTO `act_p_l` VALUES ('fc61c541-5282-4504-892f-e83ad7622a2b', '8fc2f8cb-c11f-4d4c-beed-a288cbd6a582');
INSERT INTO `act_p_l` VALUES ('fe340509-da1d-4ac8-862d-82568110dc2e', '6c1cf44b-82ee-4b42-afd6-58650d6787bc');

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
INSERT INTO `act_p_m` VALUES ('0790e2c7-3735-4071-aa6f-83cfa4d6b722', '4bfcba78-067b-4cc3-8664-cfa17a7138ba');
INSERT INTO `act_p_m` VALUES ('1', '3');
INSERT INTO `act_p_m` VALUES ('2', '2');
INSERT INTO `act_p_m` VALUES ('3', '1');
INSERT INTO `act_p_m` VALUES ('347eaf40-22f5-4b5a-86e9-6d0a70efc36d', '1558674d-eeb3-4a25-aa96-22acde88a9c4');
INSERT INTO `act_p_m` VALUES ('4faee179-09a0-4f47-bacf-1743c19bb40c', '794adcc8-e716-4df2-af2c-b2809b18768c');
INSERT INTO `act_p_m` VALUES ('56841bba-f253-485b-a1c4-b18cf4ffa0f5', '1cfbc2f3-d4ed-494b-8222-e0df38372525');
INSERT INTO `act_p_m` VALUES ('f3151389-1e9b-46cd-a906-17956295181e', 'ee352762-97ad-4127-a1a8-e29f9c581bdd');

-- ----------------------------
-- Table structure for `act_role`
-- ----------------------------
DROP TABLE IF EXISTS `act_role`;
CREATE TABLE `act_role` (
  `id` varchar(36) NOT NULL,
  `rolename` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_role
-- ----------------------------
INSERT INTO `act_role` VALUES ('1', '教务处', null);
INSERT INTO `act_role` VALUES ('2', '老师', null);
INSERT INTO `act_role` VALUES ('3', '学生', null);
INSERT INTO `act_role` VALUES ('575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '人事处', '2019-07-02 05:14:26');
INSERT INTO `act_role` VALUES ('7c66fef9-46e7-4e76-9078-95147e0bcc51', '超级管理员', '2019-07-02 04:51:30');

-- ----------------------------
-- Table structure for `act_r_p`
-- ----------------------------
DROP TABLE IF EXISTS `act_r_p`;
CREATE TABLE `act_r_p` (
  `id` varchar(36) NOT NULL,
  `roleid` varchar(36) NOT NULL,
  `permissionid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid` (`roleid`),
  KEY `permissionid` (`permissionid`)
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
INSERT INTO `act_r_p` VALUES ('1b6e754f-9ca9-11e9-8080-74c63b68556a', '1', 'f9c7b368-80e4-4d3f-99cb-fcd9f02db385');
INSERT INTO `act_r_p` VALUES ('3f7b4678-9ca9-11e9-8080-74c63b68556a', '2', '67a6fe16-bb25-4d97-895a-53d730f6c125');
INSERT INTO `act_r_p` VALUES ('4', '2', '1');
INSERT INTO `act_r_p` VALUES ('443b033b-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '459e6f76-ca55-43f9-aaaf-49fad0cb7352');
INSERT INTO `act_r_p` VALUES ('4444f101-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '8b6b9533-ff4a-4b28-9526-9ffba31e016e');
INSERT INTO `act_r_p` VALUES ('4444f467-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '55191327-4a4c-41dd-8ac5-a0e09521ff63');
INSERT INTO `act_r_p` VALUES ('4444f700-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', 'fc61c541-5282-4504-892f-e83ad7622a2b');
INSERT INTO `act_r_p` VALUES ('4446bec7-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '71dd09a6-ad91-4c7e-9008-74ceb3002d5d');
INSERT INTO `act_r_p` VALUES ('4446c576-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', 'c1298a65-0251-48f9-9e4e-e8c06eb4f9cd');
INSERT INTO `act_r_p` VALUES ('4446d2fa-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', 'f49ebec4-2fe3-41ba-9c85-aac30539a2ce');
INSERT INTO `act_r_p` VALUES ('444a9b21-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '9a4d5f7b-c0ad-433e-ac1f-8ba3cd1e3045');
INSERT INTO `act_r_p` VALUES ('444a9fc3-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '664e89ae-cee7-41e0-aa56-7faed3564764');
INSERT INTO `act_r_p` VALUES ('444aab03-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '67a6fe16-bb25-4d97-895a-53d730f6c125');
INSERT INTO `act_r_p` VALUES ('44518c31-9caa-11e9-8080-74c63b68556a', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '56841bba-f253-485b-a1c4-b18cf4ffa0f5');
INSERT INTO `act_r_p` VALUES ('5', '2', '2');
INSERT INTO `act_r_p` VALUES ('6', '2', '3');
INSERT INTO `act_r_p` VALUES ('665e8236-9ca9-11e9-8080-74c63b68556a', '2', 'fe340509-da1d-4ac8-862d-82568110dc2e');
INSERT INTO `act_r_p` VALUES ('6663bba9-9ca9-11e9-8080-74c63b68556a', '2', 'c0110efc-0e0b-4794-aa5f-f4c2f5535ec8');
INSERT INTO `act_r_p` VALUES ('6663bd18-9ca9-11e9-8080-74c63b68556a', '2', '3590a69a-b086-4457-801c-9cac95637e00');
INSERT INTO `act_r_p` VALUES ('6663be2d-9ca9-11e9-8080-74c63b68556a', '2', 'f9c7b368-80e4-4d3f-99cb-fcd9f02db385');
INSERT INTO `act_r_p` VALUES ('6663bf4b-9ca9-11e9-8080-74c63b68556a', '2', '93b0a493-204b-410e-8d89-8437322ccc4a');
INSERT INTO `act_r_p` VALUES ('6663c043-9ca9-11e9-8080-74c63b68556a', '2', '419709e9-811e-48f9-8e1b-60bffc491c99');
INSERT INTO `act_r_p` VALUES ('6663c154-9ca9-11e9-8080-74c63b68556a', '2', '94d43706-2185-4c96-9856-0b7b6f6e829b');
INSERT INTO `act_r_p` VALUES ('6663c6ed-9ca9-11e9-8080-74c63b68556a', '2', '307ffdc5-52ea-44d3-a23e-6de53a15d49e');
INSERT INTO `act_r_p` VALUES ('6663c80f-9ca9-11e9-8080-74c63b68556a', '2', 'b6ce6898-fa8b-4cdd-b400-1eea5109d339');
INSERT INTO `act_r_p` VALUES ('7', '3', '2');
INSERT INTO `act_r_p` VALUES ('8', '3', '3');
INSERT INTO `act_r_p` VALUES ('88a43523-9ca9-11e9-8080-74c63b68556a', '3', '67a6fe16-bb25-4d97-895a-53d730f6c125');
INSERT INTO `act_r_p` VALUES ('899bf261-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '459e6f76-ca55-43f9-aaaf-49fad0cb7352');
INSERT INTO `act_r_p` VALUES ('89a79e9d-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '8b6b9533-ff4a-4b28-9526-9ffba31e016e');
INSERT INTO `act_r_p` VALUES ('89a7a121-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '55191327-4a4c-41dd-8ac5-a0e09521ff63');
INSERT INTO `act_r_p` VALUES ('89a7a490-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'fc61c541-5282-4504-892f-e83ad7622a2b');
INSERT INTO `act_r_p` VALUES ('89b1455f-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '71dd09a6-ad91-4c7e-9008-74ceb3002d5d');
INSERT INTO `act_r_p` VALUES ('89b147b9-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'c1298a65-0251-48f9-9e4e-e8c06eb4f9cd');
INSERT INTO `act_r_p` VALUES ('89b14905-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'fe340509-da1d-4ac8-862d-82568110dc2e');
INSERT INTO `act_r_p` VALUES ('89b14a34-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'c0110efc-0e0b-4794-aa5f-f4c2f5535ec8');
INSERT INTO `act_r_p` VALUES ('89b14b28-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '3590a69a-b086-4457-801c-9cac95637e00');
INSERT INTO `act_r_p` VALUES ('89b14c39-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'f9c7b368-80e4-4d3f-99cb-fcd9f02db385');
INSERT INTO `act_r_p` VALUES ('89b14d52-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '93b0a493-204b-410e-8d89-8437322ccc4a');
INSERT INTO `act_r_p` VALUES ('89b14e41-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '6d572025-9a0d-424c-91ec-b9e89787ef31');
INSERT INTO `act_r_p` VALUES ('89b14f4a-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'aa3b39d3-c9b9-40e8-9137-40117cdb00c5');
INSERT INTO `act_r_p` VALUES ('89b15045-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '0fcca672-c899-4517-8258-96baa23c971b');
INSERT INTO `act_r_p` VALUES ('89b1513d-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '8f55f6b9-7828-478d-86a4-22214d26d88c');
INSERT INTO `act_r_p` VALUES ('89bcae42-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '049036e9-e67e-4abb-b843-c9c46f918fe2');
INSERT INTO `act_r_p` VALUES ('89bcb08b-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '2b57764b-fe2d-4715-a0c4-631d5b9c8b23');
INSERT INTO `act_r_p` VALUES ('89bcb202-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '3dc97fdd-fe17-4af6-8899-5f51921e3150');
INSERT INTO `act_r_p` VALUES ('89bcb398-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '73e01862-957b-4d21-b763-8fff8c1c8b8e');
INSERT INTO `act_r_p` VALUES ('89bcb53e-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'af79f78a-acf0-43f7-8fd0-f502ffb54832');
INSERT INTO `act_r_p` VALUES ('89bcb69c-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '9b202423-b391-46bb-8daf-8a50ff09ff43');
INSERT INTO `act_r_p` VALUES ('89bcb831-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '25dc19b2-e8c4-4f49-903a-e48e6de5cc42');
INSERT INTO `act_r_p` VALUES ('89bcb9a4-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '308de591-b651-496a-a08e-2736be0e588a');
INSERT INTO `act_r_p` VALUES ('89bcbaed-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '64bc47e2-2311-44ac-aa8f-3a4c3b0f86eb');
INSERT INTO `act_r_p` VALUES ('89ca4105-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'c1d6868e-d757-443c-b3fa-cb41ccab1e7d');
INSERT INTO `act_r_p` VALUES ('89ca4474-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '711d81a6-9197-42eb-9fb6-c6ace7d9b17d');
INSERT INTO `act_r_p` VALUES ('89ca4645-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '5ee55676-3c5c-4938-a814-bbaf7132714f');
INSERT INTO `act_r_p` VALUES ('89ca4781-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '2f762545-a352-4770-872d-811946465d5b');
INSERT INTO `act_r_p` VALUES ('89ca48f4-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '40c0ae7d-b0de-428b-98fd-2d91beda7319');
INSERT INTO `act_r_p` VALUES ('89ca4a45-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'f49ebec4-2fe3-41ba-9c85-aac30539a2ce');
INSERT INTO `act_r_p` VALUES ('89ca4b67-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '9a4d5f7b-c0ad-433e-ac1f-8ba3cd1e3045');
INSERT INTO `act_r_p` VALUES ('89ca4cc5-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '664e89ae-cee7-41e0-aa56-7faed3564764');
INSERT INTO `act_r_p` VALUES ('89ca4e09-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '419709e9-811e-48f9-8e1b-60bffc491c99');
INSERT INTO `act_r_p` VALUES ('89ca4f1a-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '94d43706-2185-4c96-9856-0b7b6f6e829b');
INSERT INTO `act_r_p` VALUES ('89ca5185-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '307ffdc5-52ea-44d3-a23e-6de53a15d49e');
INSERT INTO `act_r_p` VALUES ('89ca52b8-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'b6ce6898-fa8b-4cdd-b400-1eea5109d339');
INSERT INTO `act_r_p` VALUES ('89ca53bc-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '67a6fe16-bb25-4d97-895a-53d730f6c125');
INSERT INTO `act_r_p` VALUES ('89ca5505-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '0790e2c7-3735-4071-aa6f-83cfa4d6b722');
INSERT INTO `act_r_p` VALUES ('89d780fc-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', 'f3151389-1e9b-46cd-a906-17956295181e');
INSERT INTO `act_r_p` VALUES ('89d784b3-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '56841bba-f253-485b-a1c4-b18cf4ffa0f5');
INSERT INTO `act_r_p` VALUES ('89d78688-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '1');
INSERT INTO `act_r_p` VALUES ('89d78804-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '2');
INSERT INTO `act_r_p` VALUES ('89d78922-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '3');
INSERT INTO `act_r_p` VALUES ('89d78ab3-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '6');
INSERT INTO `act_r_p` VALUES ('89d78bea-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '5');
INSERT INTO `act_r_p` VALUES ('89d78d08-9ca6-11e9-8080-74c63b68556a', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '4');
INSERT INTO `act_r_p` VALUES ('8b72bd01-9ca9-11e9-8080-74c63b68556a', '3', 'b6ce6898-fa8b-4cdd-b400-1eea5109d339');
INSERT INTO `act_r_p` VALUES ('8d7d6d4b-9ca9-11e9-8080-74c63b68556a', '3', '94d43706-2185-4c96-9856-0b7b6f6e829b');
INSERT INTO `act_r_p` VALUES ('8fc78d0d-9ca9-11e9-8080-74c63b68556a', '3', '419709e9-811e-48f9-8e1b-60bffc491c99');
INSERT INTO `act_r_p` VALUES ('9bc4b7d0-9ca9-11e9-8080-74c63b68556a', '3', '93b0a493-204b-410e-8d89-8437322ccc4a');
INSERT INTO `act_r_p` VALUES ('a2863c43-9ca9-11e9-8080-74c63b68556a', '3', '3590a69a-b086-4457-801c-9cac95637e00');
INSERT INTO `act_r_p` VALUES ('a74279da-9ca9-11e9-8080-74c63b68556a', '3', 'fe340509-da1d-4ac8-862d-82568110dc2e');
INSERT INTO `act_r_p` VALUES ('a743c349-9ca9-11e9-8080-74c63b68556a', '3', 'c0110efc-0e0b-4794-aa5f-f4c2f5535ec8');
INSERT INTO `act_r_p` VALUES ('c3b002ef-9ca8-11e9-8080-74c63b68556a', '1', '67a6fe16-bb25-4d97-895a-53d730f6c125');
INSERT INTO `act_r_p` VALUES ('c9bcfebd-9ca8-11e9-8080-74c63b68556a', '1', '307ffdc5-52ea-44d3-a23e-6de53a15d49e');

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
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `act_user_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `act_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of act_user
-- ----------------------------
INSERT INTO `act_user` VALUES ('-1', '默认管理者', '123', '1', '-1', null);
INSERT INTO `act_user` VALUES ('0', '教务处-鲁滨逊', '123', '1', '0', null);
INSERT INTO `act_user` VALUES ('1', '学生-路人甲', '123', '3', '2', null);
INSERT INTO `act_user` VALUES ('11', '超级管理员', '123', '7c66fef9-46e7-4e76-9078-95147e0bcc51', '-1', null);
INSERT INTO `act_user` VALUES ('2', '老师-孔子', '123', '2', '0', null);
INSERT INTO `act_user` VALUES ('22', '人事处-房玄龄', '123', '575a2eeb-afb7-417c-9fd6-cf5443cc0bf6', '-1', null);
INSERT INTO `act_user` VALUES ('3', '学生-路人乙', '123', '3', '2', null);
INSERT INTO `act_user` VALUES ('4', '学生-路人丙', '123', '3', '2', null);
INSERT INTO `act_user` VALUES ('5', '学生-路人丁', '123', '3', '2', null);
INSERT INTO `act_user` VALUES ('6', '学生-路人戊', '123', '3', '2', null);
INSERT INTO `act_user` VALUES ('7', '高老师', '123', '2', '-1', '2019-06-28 02:03:52');
