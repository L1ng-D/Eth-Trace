/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : farm_trace

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/11/2022 19:34:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detection
-- ----------------------------
DROP TABLE IF EXISTS `detection`;
CREATE TABLE `detection`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `product_id` int NOT NULL COMMENT '产品id',
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '商品名称',
  `unity` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '检查单位名称',
  `director` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '合格证图片',
  `is_valid` tinyint NULL DEFAULT NULL COMMENT '检查结果 0不合格  1合格',
  `create_time` datetime NULL DEFAULT NULL COMMENT '检查时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detection
-- ----------------------------
INSERT INTO `detection` VALUES (1, 178, '8iqOAAwzZp', 'kfZ1jaDoHI', 'X0E675OtXS', 'e0194xRTf0', 1, '2003-08-30 23:04:44');
INSERT INTO `detection` VALUES (2, 70, 'gcGExDoCDd', 'EH2x0sJ84L', 'z2sTQmRz0x', 'v5cUJabPB6', 1, '2014-03-03 18:06:16');
INSERT INTO `detection` VALUES (3, 125, 'a0ZirrRsSI', '8jSLI6qJF9', 's1jmJJC6Fo', 'lh9ks2lBHk', 0, '2020-07-01 17:23:37');
INSERT INTO `detection` VALUES (4, 463, 'QgSwNRgLGD', 'qcPbHvZyKA', 'ELuec2fXOi', 'XpI3ZmFUzs', 0, '2017-09-15 09:01:04');
INSERT INTO `detection` VALUES (5, 713, 'hLBTGPOsoE', 'bbNImLofkX', 'cV9xRX0uTt', 'o6gchcDxRA', 0, '2015-05-15 23:20:40');
INSERT INTO `detection` VALUES (6, 555, 'TPLsSpQ6WH', 'NVwULzkWSp', 'g2vVdovg8i', 'bc5Rd1parm', 0, '2004-12-30 03:40:11');
INSERT INTO `detection` VALUES (7, 930, 'uoMdNP4eYk', 'qQiBNPumun', 'yMlQubqJvA', '7DLGr66RZd', 1, '2011-03-07 18:13:48');
INSERT INTO `detection` VALUES (8, 4, 'oQ7sNm7xfd', 'MMhTK6LCQ1', 'KEHmnsuJjQ', 'GxMgh275lU', 1, '2015-01-12 16:22:30');
INSERT INTO `detection` VALUES (9, 383, 'ZseY2fZWdx', 'XhZT2mENlN', 'jRCdbVfdJq', 'lS09qFrVOq', 1, '2006-12-01 20:33:15');
INSERT INTO `detection` VALUES (10, 406, 'zhRVMy8GiJ', 'RtyfSNN3vo', '0zUwg5AFxJ', 'ggJO9ozNM1', 1, '2022-01-07 04:40:50');
INSERT INTO `detection` VALUES (11, 710, 'fTzHDNac7j', '1XwfsnfdLN', 'n8pdjxgBvP', 'v3MiHrZoP7', 1, '2022-01-01 15:33:28');
INSERT INTO `detection` VALUES (12, 459, 'pXAIySMBtp', 'zZrRjhfDAs', 'w4Q65eWp8J', 'j90YbFRo9A', 1, '2013-11-19 18:41:19');
INSERT INTO `detection` VALUES (13, 456, 'nUIBMS8L1n', 'XQcYVl2Dkn', '0luLJ9j1Gf', '4x5FxDlyyx', 1, '2006-03-17 14:48:57');
INSERT INTO `detection` VALUES (14, 472, 'PM6BlpEfir', 'MoQd7NOpa4', 'AfWC28ynH2', 'pa4SaGKJGf', 1, '2012-08-25 20:17:35');
INSERT INTO `detection` VALUES (15, 218, '0QejJ5zhaL', 'cNvQZUUSC2', 'K7T9mCyKjI', 'QTux2wtUpc', 1, '2012-07-07 22:24:24');
INSERT INTO `detection` VALUES (16, 635, '9cfz4kDXrh', 'LOuZ6RYiEj', 'vNkjg7HgXh', 'KaoGvrtP3x', 1, '2005-10-06 06:01:41');
INSERT INTO `detection` VALUES (17, 60, 'VQpKjTX9at', 'm4ipzMwBfh', 'szHwrjaY5l', 'B6OfWJVJhP', 1, '2008-07-17 19:31:18');
INSERT INTO `detection` VALUES (18, 878, 'VQ9bKsLA35', 'TnPYeuMvmR', 'fePxDp4mrh', 'LY8tqWCZZQ', 1, '2007-01-07 23:37:02');
INSERT INTO `detection` VALUES (19, 311, 'qkCjUP4iPQ', 'mY7RDeLXaV', 'Xcg1fobeuE', '98Fh9fu8oB', 1, '2001-06-26 12:58:37');
INSERT INTO `detection` VALUES (20, 127, '1mxNB0ENmI', 'bbzeLZSDFS', '7ylL7sczDi', 'RR3U6cmDft', 1, '2006-11-24 19:48:09');

-- ----------------------------
-- Table structure for farmer
-- ----------------------------
DROP TABLE IF EXISTS `farmer`;
CREATE TABLE `farmer`  (
  `fid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'id',
  `farmer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '人员姓名',
  `company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '所属单位',
  `picture` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '照片链接',
  `health_certificate` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '健康证链接'
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of farmer
-- ----------------------------

-- ----------------------------
-- Table structure for grow_info
-- ----------------------------
DROP TABLE IF EXISTS `grow_info`;
CREATE TABLE `grow_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `crop_id` int NULL DEFAULT NULL COMMENT '作物id',
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '照片',
  `weather_conditon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '天气状况',
  `farmerid` int NULL DEFAULT NULL COMMENT '记录人',
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '描述',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of grow_info
-- ----------------------------

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics`  (
  `lid` int NOT NULL COMMENT '物流id',
  `pid` int NULL DEFAULT NULL COMMENT '产品id',
  `time` datetime NULL DEFAULT NULL COMMENT '时间',
  `place` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '地点',
  `tid` int NULL DEFAULT NULL COMMENT '订单编号',
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '订单状态',
  `postman` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '配送员',
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logistics
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '产品名',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `company` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '上传单位',
  `area` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '种植地区',
  `is_pass` int NULL DEFAULT NULL COMMENT '是否审批通过',
  `image` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '图片链接、',
  `trace_code` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '溯源码',
  `create_time` datetime NULL DEFAULT NULL COMMENT '上传时间',
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '牛肉干', 1, '猛牛', '内蒙古', 1, 'aaa.jpg', '0xjklsdf89asdaadf', '2022-10-13 11:12:47', '2022-10-25 11:12:52');
INSERT INTO `product` VALUES (2, '苹果牛奶', 1, '牛公司', '北京', 1, 'Il9e1VgcU3', '0tZcRDs8Iw', '2015-08-04 23:22:52', '2008-06-04 11:47:16');
INSERT INTO `product` VALUES (3, 'Ryan Martin', 1, 'Miguel Food LLC', 'OuKFvUrNy5', 0, 'JfAPtZq5wM', 'Gz7Xqr4f8I', '2006-03-15 14:22:06', '2011-05-12 17:24:15');
INSERT INTO `product` VALUES (4, 'Song Xiaoming', 0, 'Kelley Brothers Inc.', 'MgC0DSpwYJ', 1, '8xX1H71zI2', 'oq7QTNFAem', '2021-03-13 08:56:56', '2005-02-27 06:58:59');
INSERT INTO `product` VALUES (5, 'Eddie Morris', 0, 'Daisuke Corporation', 'PXerdNEK3o', 0, 'zkxTro1ami', 'x8LDqaSG8D', '2006-02-03 14:28:50', '2002-11-23 07:09:09');
INSERT INTO `product` VALUES (6, 'Lui Tin Lok', 1, 'Ling Ling Limited', '1daFpiWImh', 0, 'O0BlRrjuCl', 'JsWhtFfHUt', '2007-08-25 12:23:17', '2019-04-24 00:03:05');
INSERT INTO `product` VALUES (7, 'Cai Xiuying', 1, 'Xiuying Company Limited', 'jFZqs4W35t', 0, 'qxBHbhNa0L', 'SWjlnLqvkW', '2008-07-24 11:00:18', '2022-09-28 04:05:09');
INSERT INTO `product` VALUES (8, 'Fujii Airi', 1, 'Kaito Logistic Corporation', 'JxoNdAwB18', 0, 'kg5oJnQYS3', 'ytNUYgeK10', '2016-09-25 23:34:10', '2008-10-16 08:16:55');
INSERT INTO `product` VALUES (9, 'Uchida Daisuke', 1, 'Mak\'s Telecommunication Limited', 'CmjCP1w12G', 0, '4iV4CijKim', '7rkhyVn0Lm', '2017-05-29 18:32:48', '2004-08-10 12:23:02');
INSERT INTO `product` VALUES (10, 'Rose Gibson', 1, 'Xiaoming Trading Company Limited', '11tFhfmrRY', 0, 'sW8xMmam8j', 'jz6q0QW7qm', '2009-11-11 22:30:28', '2018-09-08 22:30:55');
INSERT INTO `product` VALUES (11, 'Fong Ching Wan', 1, 'Shannon Consultants Inc.', 'Rz4ghbSoPa', 0, 'a5f1KF5YDt', '7GeRDP774F', '2017-07-08 02:34:33', '2004-10-18 16:37:43');
INSERT INTO `product` VALUES (12, 'Ichikawa Mio', 1, 'Sharon LLC', 'LHB74vHDOY', 0, 'sblQ25f4Yd', '0yEfdtDrqD', '2005-12-06 23:07:51', '2021-01-26 23:54:29');
INSERT INTO `product` VALUES (13, 'Tang Rui', 0, 'Kenta Corporation', 'QmEIukv0Cc', 0, 'JU1AzC9QqC', 'sTisDjC8dV', '2002-10-16 18:32:49', '2013-07-18 19:57:38');
INSERT INTO `product` VALUES (14, 'Lu Yuning', 1, 'Tin Wing Technology Limited', 'CHi1hhZs9p', 0, '14RJlaQoHk', 'FOeC4Ny45E', '2009-01-11 01:21:23', '2006-04-15 08:34:45');
INSERT INTO `product` VALUES (15, 'William Reynolds', 0, 'Jenkins Brothers Toy Inc.', '0xCC3j7oGV', 0, 'DmJvh7lPoa', 'Z3CWXtaQd4', '2003-08-08 14:38:45', '2018-11-18 12:15:56');
INSERT INTO `product` VALUES (16, 'Ma Lu', 1, 'Wai Yee Logistic Limited', 'pRkgI4JJUN', 0, '8YgimbHzOw', 'MTnvK11IrA', '2012-10-27 17:48:43', '2009-03-31 17:43:02');
INSERT INTO `product` VALUES (17, 'Chen Yuning', 0, 'Han Pharmaceutical Company Limited', 'DerOASdcYf', 0, 'HU9KLPYodM', '6SgCRttYFY', '2016-07-23 18:10:06', '2016-04-30 22:47:56');
INSERT INTO `product` VALUES (18, 'Shing Chiu Wai', 1, 'Kimura Corporation', 'BHt9sFWEh0', 1, 'yZpq0Uv8VC', 'stxZVSfpLb', '2006-12-23 07:36:05', '2013-07-14 13:04:43');
INSERT INTO `product` VALUES (19, 'Martha Cole', 1, 'Ryota Residence Corporation', 'yLNzA2gK6n', 1, 're2Gc1ygPu', '9vnSHlOv2r', '2016-08-06 11:40:59', '2012-05-09 18:01:17');
INSERT INTO `product` VALUES (20, 'Randy Mendez', 1, 'Nichols Technology LLC', 'qzFM2mvzfd', 1, 'zj6JsTJocM', 'dhR1ShIOst', '2000-09-15 06:30:32', '2022-09-19 17:40:49');
INSERT INTO `product` VALUES (21, 'Eric Cruz', 1, 'Wong Kee Engineering Limited', 'BuuZWkm3Iq', 1, 'bIwEh4DZqt', 'I63XazkivQ', '2015-10-29 17:04:16', '2006-03-30 18:16:06');
INSERT INTO `product` VALUES (22, 'Laura Gibson', 1, 'Siu Wai Engineering Limited', '1LXqPfOTV0', 1, 'xjdAMdqogt', 'Ti67gaqWiB', '2005-08-23 22:19:10', '2017-08-23 20:20:43');
INSERT INTO `product` VALUES (23, 'Mo Lan', 1, 'Nakano Electronic Corporation', 'KzoXX2z7Po', 1, 'iZjf5cTN5Y', 'YGzBm703rt', '2013-01-09 17:16:54', '2018-11-03 01:48:51');
INSERT INTO `product` VALUES (24, 'Sugawara Hikari', 1, 'Kwok Yin Industrial Limited', 'Qtfh58vtg1', 1, 'bItUupKLE3', 'BJa74lxNeX', '2011-09-08 06:09:29', '2002-03-12 23:27:57');
INSERT INTO `product` VALUES (25, 'Miyazaki Aoshi', 1, 'Kwok Kuen Limited', 'wZ22D2cBAn', 1, 'Oz16O8bX5C', 'zymGa8JJ2M', '2019-03-25 10:33:46', '2004-02-06 11:02:20');
INSERT INTO `product` VALUES (26, 'Russell Washington', 1, 'Chiu Wai Industrial Limited', '06Np6xgZaj', 1, '7yAgn5qVCh', 'PBG6P4gAis', '2003-04-17 02:29:36', '2019-05-13 22:33:18');
INSERT INTO `product` VALUES (27, 'Theodore Nichols', 1, 'Koo\'s Logistic Limited', 'URrvqteRKG', 1, '6KvlkJmYUP', 'cxocTBBu6L', '2020-06-14 14:28:22', '2000-11-19 15:16:32');
INSERT INTO `product` VALUES (28, 'Yuan Zhiyuan', 1, 'Kazuma Technology Corporation', 'wRWFRzUpHN', 1, 'LbgmY0rHfH', 'rATfL1nGJ1', '2015-12-09 05:12:41', '2006-10-09 06:22:51');
INSERT INTO `product` VALUES (29, 'Carlos Henry', 1, 'Arai Corporation', 'WhdWZvSN5J', 1, 'nwhKNMRlyr', 'e4NpPgg6CQ', '2020-03-13 06:44:44', '2021-06-26 03:55:57');
INSERT INTO `product` VALUES (30, 'Otsuka Daisuke', 1, 'Yun Fat Trading Limited', 'LP3XdSc9sT', 1, 'CAsF2NnQhk', 'TRwa6E6rvZ', '2020-02-18 08:03:00', '2011-02-09 22:07:27');
INSERT INTO `product` VALUES (31, 'Tao Ting Fung', 1, 'Gladys Food LLC', 'ACPkhHagI2', 1, 'aOatbTlKji', 'cNmy6UscPc', '2011-04-05 14:09:02', '2007-05-22 14:27:22');
INSERT INTO `product` VALUES (32, 'test', NULL, 'xx公司', '中国', 0, NULL, NULL, '2022-11-02 19:53:05', NULL);
INSERT INTO `product` VALUES (33, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-02 19:59:34', NULL);

-- ----------------------------
-- Table structure for product_crop
-- ----------------------------
DROP TABLE IF EXISTS `product_crop`;
CREATE TABLE `product_crop`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL COMMENT '农产品id',
  `crop_id` int NULL DEFAULT NULL COMMENT '农作物id',
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_crop
-- ----------------------------
INSERT INTO `product_crop` VALUES (1, 1, 3, '牛', '2022-11-02 18:44:13', '2022-11-02 18:44:15');
INSERT INTO `product_crop` VALUES (2, 2, 1, '苹果', '2022-11-02 18:44:59', '2022-11-02 18:45:01');
INSERT INTO `product_crop` VALUES (3, 2, 2, '牛奶', '2022-11-02 18:45:15', '2022-11-02 18:45:19');
INSERT INTO `product_crop` VALUES (4, 32, 1, '苹果', '2022-11-02 19:53:05', NULL);
INSERT INTO `product_crop` VALUES (5, 32, 2, '牛奶', '2022-11-02 19:53:05', NULL);
INSERT INTO `product_crop` VALUES (6, 33, 1, '苹果', '2022-11-02 19:59:34', NULL);
INSERT INTO `product_crop` VALUES (7, 33, 2, '牛奶', '2022-11-02 19:59:34', NULL);

-- ----------------------------
-- Table structure for role_application
-- ----------------------------
DROP TABLE IF EXISTS `role_application`;
CREATE TABLE `role_application`  (
  `id` int NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `certificate` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '营业许可证',
  `text` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '申请说明',
  `pass` int NULL DEFAULT NULL COMMENT 'fail 0   待审批 1  通过2',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_application
-- ----------------------------

-- ----------------------------
-- Table structure for tb_crop
-- ----------------------------
DROP TABLE IF EXISTS `tb_crop`;
CREATE TABLE `tb_crop`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `plant_time` datetime NULL DEFAULT NULL,
  `plant_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `plant_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_crop
-- ----------------------------
INSERT INTO `tb_crop` VALUES (1, '苹果', '2022-11-09 18:41:08', '北京', '111', '2022-11-16 18:41:24', NULL);
INSERT INTO `tb_crop` VALUES (2, '牛奶', '2022-11-15 18:41:38', '内蒙古', '1', '2022-11-15 18:41:46', NULL);
INSERT INTO `tb_crop` VALUES (3, '牛', '2022-11-16 18:43:04', '内蒙古', '2', '2022-11-08 18:43:18', NULL);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `role` int NOT NULL COMMENT '0普通用户  1管理员  2供应商',
  `is_delete` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'aaaaaa', 'mim7wavd9emj3c9m4cfc@ec17548dae85f86889c656dc3663ea8f', 0, 0, '2022-11-23 18:48:24', NULL);
INSERT INTO `tb_user` VALUES (2, 'aaaaaaa', 'jq8pc4aechrjhed4tat0@36a01211f50ca1df69ec6f886b91aabb', 0, 0, '2022-11-03 18:48:26', NULL);
INSERT INTO `tb_user` VALUES (3, 'aaaa', '02ngfm3yjd96xycye3f2@66c271609e74505feae59aa9a58904d6', 0, 0, '2022-10-24 18:18:55', NULL);
INSERT INTO `tb_user` VALUES (4, 'aaa0a', '3gykc3x1xtm4m9z8k68s@34523952e7d2c33423318be95918af7a', 0, 0, '2022-10-24 18:20:05', NULL);
INSERT INTO `tb_user` VALUES (5, 'ling', '1ge395xpswqzphi1jf61@ab55399710bfb781439f3274cdad375b', 0, 0, '2022-10-24 18:58:17', NULL);
INSERT INTO `tb_user` VALUES (7, 'admin', 'yzh9l1aql661kj7wjnhe@c6c5223a665b0eeb31db54aa3401214c', 1, 0, '2022-10-25 23:18:49', NULL);
INSERT INTO `tb_user` VALUES (8, 'admin1', '56azj7jo1voxheir99xx@61eac7666d6785a4e04bc50695d68d2e', 0, 0, '2022-10-25 23:19:04', NULL);
INSERT INTO `tb_user` VALUES (9, 'admin2', 'dpmtp81yhtvkobtufwwg@35c740b87cfc2cca8dbc6db41e53bdcc', 0, 0, '2022-10-25 23:19:15', NULL);
INSERT INTO `tb_user` VALUES (10, 'admin3', '54mp07otb096gp8d65fb@6f46cfe58e5f1ea125b5e1230aa91d9e', 0, 0, '2022-10-25 23:20:29', NULL);
INSERT INTO `tb_user` VALUES (11, 'a', 'kjlscnjoly5ut73f2kwe@9d732539fa34ca5d4949a4676019db41', 0, 1, '2022-10-25 23:24:14', NULL);
INSERT INTO `tb_user` VALUES (12, 'aa', 'akt3tmubfecxmushc0ct@333e869794f758727f2c6fbdefe71f53', 0, 1, '2022-10-25 23:25:48', NULL);
INSERT INTO `tb_user` VALUES (13, 'lingd', '4za7fez3jf8x6tib8b29@8ab2ff6e62237f82b4276c24b400d0a2', 0, 1, '2022-10-26 15:35:15', NULL);
INSERT INTO `tb_user` VALUES (14, 'lixuyang', '123456', 2, 0, '2022-11-23 18:55:04', '2022-11-23 18:55:06');

SET FOREIGN_KEY_CHECKS = 1;
