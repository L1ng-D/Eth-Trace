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

 Date: 11/12/2022 23:00:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_crop
-- ----------------------------
DROP TABLE IF EXISTS `tb_crop`;
CREATE TABLE `tb_crop`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL COMMENT '供应商id',
  `image` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `plant_time` datetime NULL DEFAULT NULL,
  `plant_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `plant_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_crop
-- ----------------------------
INSERT INTO `tb_crop` VALUES (1, '苹果', 8, 'a.jpg', '2022-11-09 18:41:08', '北京', '111', '2022-11-16 18:41:24', '2022-11-30 22:35:40');
INSERT INTO `tb_crop` VALUES (2, '牛奶', 9, 'b.png', '2022-11-15 18:41:38', '内蒙古', '1', '2022-11-15 18:41:46', '2022-11-30 22:35:43');
INSERT INTO `tb_crop` VALUES (3, '牛', 10, 'image.jpeg', '2022-11-16 18:43:04', '内蒙古', '999', '2022-11-08 18:43:18', '2022-11-30 22:35:47');
INSERT INTO `tb_crop` VALUES (4, 'Sato Hikaru', 8, 'image.jpeg', '2017-06-23 17:11:10', 'cYFmpw7SQS', '666', '2014-10-11 19:13:04', '2011-01-16 03:53:18');
INSERT INTO `tb_crop` VALUES (5, 'Lui On Na', 8, 'image.jpeg', '2001-07-30 12:41:08', 'KMLufn79tK', '666', '2020-04-12 18:35:13', '2015-11-19 05:33:52');
INSERT INTO `tb_crop` VALUES (6, 'Ye Yunxi', 8, 'image.jpeg', '2013-04-13 07:26:59', 'CCqWra6YYP', '666', '2007-12-03 15:07:18', '2000-06-29 20:56:48');
INSERT INTO `tb_crop` VALUES (7, 'Ye Yunxi', 8, 'image.jpeg', '2014-01-22 23:43:11', 'LQZisbEQt6', '666', '2014-05-22 19:06:00', '2006-02-22 14:44:02');
INSERT INTO `tb_crop` VALUES (8, 'Suzuki Momoe', 8, 'image.jpeg', '2001-06-02 18:58:37', 'SJZ23nQkHV', '666', '2013-10-21 13:24:37', '2007-11-15 14:19:01');
INSERT INTO `tb_crop` VALUES (9, 'Liang Zhennan', 8, 'image.jpeg', '2001-12-10 08:31:31', 'E7rnaDarzc', '666', '2010-05-18 19:25:09', '2006-08-30 05:19:17');
INSERT INTO `tb_crop` VALUES (10, 'Jiang Xiaoming', 8, 'image.jpeg', '2022-06-29 06:16:18', 'uMvZUNdQEo', '666', '2003-05-10 16:26:14', '2020-02-22 14:59:24');
INSERT INTO `tb_crop` VALUES (11, 'Ueda Aoshi', 8, 'image.jpeg', '2015-06-11 23:15:25', 'VyJnyjiBL9', '666', '2021-07-26 10:52:24', '2004-01-07 16:41:57');
INSERT INTO `tb_crop` VALUES (12, 'Mok On Kay', 9, 'image.jpeg', '2006-06-16 17:52:18', 'cpl2rQHCXz', '666', '2008-05-21 21:01:08', '2011-10-17 07:24:37');
INSERT INTO `tb_crop` VALUES (13, 'Hao Lu', 9, 'image.jpeg', '2015-10-18 14:35:31', 'GV0BCyD4CF', '666', '2011-05-26 12:33:44', '2016-06-07 07:32:45');
INSERT INTO `tb_crop` VALUES (14, 'To Kwok Wing', 9, 'image.jpeg', '2012-02-09 17:01:39', 'Lu4vGXjgLD', '666', '2004-12-09 19:51:00', '2010-03-13 14:06:47');
INSERT INTO `tb_crop` VALUES (15, 'Yao Lu', 9, 'image.jpeg', '2015-06-22 01:47:58', 'Rc0oBJCeNi', '666', '2018-05-06 08:48:28', '2005-10-22 19:33:26');
INSERT INTO `tb_crop` VALUES (16, 'Long Yunxi', 9, 'image.jpeg', '2003-02-22 06:06:43', 'QhbUGdst2m', '666', '2018-06-02 15:14:01', '2002-02-10 09:14:28');
INSERT INTO `tb_crop` VALUES (17, 'Nakagawa Yuto', 9, 'image.jpeg', '2001-12-08 02:45:18', 'YGjri88tUS', '666', '2009-05-25 22:58:07', '2012-07-20 09:47:06');
INSERT INTO `tb_crop` VALUES (18, 'Kevin Fox', 10, 'image.jpeg', '2014-09-26 21:42:14', 'Tt65VFAxE4', '666', '2000-08-04 22:44:25', '2006-10-30 06:48:41');
INSERT INTO `tb_crop` VALUES (19, 'Lau Tin Wing', 10, 'image.jpeg', '2018-05-26 12:11:07', '576oAce3iX', '666', '2003-02-06 14:00:21', '2020-03-14 20:44:37');
INSERT INTO `tb_crop` VALUES (20, 'Fujiwara Momoka', 10, 'image.jpeg', '2008-02-08 16:13:22', 'C8YslX5aUY', '666', '2009-01-15 15:56:14', '2017-03-13 14:54:09');
INSERT INTO `tb_crop` VALUES (21, 'Lisa Chavez', 10, 'image.jpeg', '2019-08-08 12:35:16', 'Y6niuM6D5X', '666', '2008-09-10 16:49:25', '2006-03-22 07:10:24');
INSERT INTO `tb_crop` VALUES (22, 'Cheryl Ellis', 10, 'image.jpeg', '2017-09-08 03:25:43', 'QSWfeWQBLM', '666', '2020-06-09 10:55:09', '2019-05-16 03:12:16');
INSERT INTO `tb_crop` VALUES (23, 'Ono Takuya', 10, 'image.jpeg', '2010-07-09 06:08:09', 'bgOv6zn4Ly', '', '2002-12-10 17:09:05', '2007-10-01 15:47:30');

-- ----------------------------
-- Table structure for tb_crop_growth
-- ----------------------------
DROP TABLE IF EXISTS `tb_crop_growth`;
CREATE TABLE `tb_crop_growth`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `crop_id` bigint NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_crop_growth
-- ----------------------------
INSERT INTO `tb_crop_growth` VALUES (1, 1, '【种下】作物', '2022-11-06 22:38:08');
INSERT INTO `tb_crop_growth` VALUES (2, 1, '【浇水】5min', '2022-11-07 22:38:50');
INSERT INTO `tb_crop_growth` VALUES (3, 1, '【施肥】', '2022-11-08 22:39:06');
INSERT INTO `tb_crop_growth` VALUES (4, 1, 'xxxxxxx', '2022-11-11 22:39:24');
INSERT INTO `tb_crop_growth` VALUES (5, 1, '【收获】', '2022-11-25 22:39:35');
INSERT INTO `tb_crop_growth` VALUES (6, 2, 'xxxx', '2022-11-17 22:39:54');
INSERT INTO `tb_crop_growth` VALUES (7, 2, 'aaaa', '2022-11-24 22:40:03');
INSERT INTO `tb_crop_growth` VALUES (8, 2, 'bbbbbbbbb', '2022-11-30 22:40:24');
INSERT INTO `tb_crop_growth` VALUES (9, 3, 'adgfsdfasdf', '2022-11-30 22:40:32');

-- ----------------------------
-- Table structure for tb_detection
-- ----------------------------
DROP TABLE IF EXISTS `tb_detection`;
CREATE TABLE `tb_detection`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
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
-- Records of tb_detection
-- ----------------------------
INSERT INTO `tb_detection` VALUES (1, 178, '8iqOAAwzZp', 'kfZ1jaDoHI', 'X0E675OtXS', 'e0194xRTf0', 1, '2003-08-30 23:04:44');
INSERT INTO `tb_detection` VALUES (2, 70, 'gcGExDoCDd', 'EH2x0sJ84L', 'z2sTQmRz0x', 'v5cUJabPB6', 1, '2014-03-03 18:06:16');
INSERT INTO `tb_detection` VALUES (3, 125, 'a0ZirrRsSI', '8jSLI6qJF9', 's1jmJJC6Fo', 'lh9ks2lBHk', 0, '2020-07-01 17:23:37');
INSERT INTO `tb_detection` VALUES (4, 463, 'QgSwNRgLGD', 'qcPbHvZyKA', 'ELuec2fXOi', 'XpI3ZmFUzs', 0, '2017-09-15 09:01:04');
INSERT INTO `tb_detection` VALUES (5, 713, 'hLBTGPOsoE', 'bbNImLofkX', 'cV9xRX0uTt', 'o6gchcDxRA', 0, '2015-05-15 23:20:40');
INSERT INTO `tb_detection` VALUES (6, 555, 'TPLsSpQ6WH', 'NVwULzkWSp', 'g2vVdovg8i', 'bc5Rd1parm', 0, '2004-12-30 03:40:11');
INSERT INTO `tb_detection` VALUES (7, 930, 'uoMdNP4eYk', 'qQiBNPumun', 'yMlQubqJvA', '7DLGr66RZd', 1, '2011-03-07 18:13:48');
INSERT INTO `tb_detection` VALUES (8, 4, 'oQ7sNm7xfd', 'MMhTK6LCQ1', 'KEHmnsuJjQ', 'GxMgh275lU', 1, '2015-01-12 16:22:30');
INSERT INTO `tb_detection` VALUES (9, 383, 'ZseY2fZWdx', 'XhZT2mENlN', 'jRCdbVfdJq', 'lS09qFrVOq', 1, '2006-12-01 20:33:15');
INSERT INTO `tb_detection` VALUES (10, 406, 'zhRVMy8GiJ', 'RtyfSNN3vo', '0zUwg5AFxJ', 'ggJO9ozNM1', 1, '2022-01-07 04:40:50');
INSERT INTO `tb_detection` VALUES (11, 710, 'fTzHDNac7j', '1XwfsnfdLN', 'n8pdjxgBvP', 'v3MiHrZoP7', 1, '2022-01-01 15:33:28');
INSERT INTO `tb_detection` VALUES (12, 459, 'pXAIySMBtp', 'zZrRjhfDAs', 'w4Q65eWp8J', 'j90YbFRo9A', 1, '2013-11-19 18:41:19');
INSERT INTO `tb_detection` VALUES (13, 456, 'nUIBMS8L1n', 'XQcYVl2Dkn', '0luLJ9j1Gf', '4x5FxDlyyx', 1, '2006-03-17 14:48:57');
INSERT INTO `tb_detection` VALUES (14, 472, 'PM6BlpEfir', 'MoQd7NOpa4', 'AfWC28ynH2', 'pa4SaGKJGf', 1, '2012-08-25 20:17:35');
INSERT INTO `tb_detection` VALUES (15, 218, '0QejJ5zhaL', 'cNvQZUUSC2', 'K7T9mCyKjI', 'QTux2wtUpc', 1, '2012-07-07 22:24:24');
INSERT INTO `tb_detection` VALUES (16, 635, '9cfz4kDXrh', 'LOuZ6RYiEj', 'vNkjg7HgXh', 'KaoGvrtP3x', 1, '2005-10-06 06:01:41');
INSERT INTO `tb_detection` VALUES (17, 60, 'VQpKjTX9at', 'm4ipzMwBfh', 'szHwrjaY5l', 'B6OfWJVJhP', 1, '2008-07-17 19:31:18');
INSERT INTO `tb_detection` VALUES (18, 878, 'VQ9bKsLA35', 'TnPYeuMvmR', 'fePxDp4mrh', 'LY8tqWCZZQ', 1, '2007-01-07 23:37:02');
INSERT INTO `tb_detection` VALUES (19, 311, 'qkCjUP4iPQ', 'mY7RDeLXaV', 'Xcg1fobeuE', '98Fh9fu8oB', 1, '2001-06-26 12:58:37');
INSERT INTO `tb_detection` VALUES (20, 127, '1mxNB0ENmI', 'bbzeLZSDFS', '7ylL7sczDi', 'RR3U6cmDft', 1, '2006-11-24 19:48:09');

-- ----------------------------
-- Table structure for tb_logistics
-- ----------------------------
DROP TABLE IF EXISTS `tb_logistics`;
CREATE TABLE `tb_logistics`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '物流id',
  `product_id` bigint NULL DEFAULT NULL COMMENT '产品id',
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `company` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '目的地',
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_logistics
-- ----------------------------
INSERT INTO `tb_logistics` VALUES (1, 1, '牛肉干', '猛牛公司', '内蒙古', '浙江省', '2022-11-16 13:50:36', '2022-11-16 13:50:38');
INSERT INTO `tb_logistics` VALUES (2, 2, '苹果牛奶', '毅力公司', '北京', '浙江省', '2022-11-27 13:53:02', '2022-11-27 13:53:06');
INSERT INTO `tb_logistics` VALUES (3, 1, '牛肉干', '猛牛公司', '内蒙古', '江苏省', '2022-11-27 13:53:20', '2022-11-27 13:53:23');

-- ----------------------------
-- Table structure for tb_logistics_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_logistics_info`;
CREATE TABLE `tb_logistics_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logistics_id` bigint NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL COMMENT '快递信息',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf16 COLLATE = utf16_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_logistics_info
-- ----------------------------
INSERT INTO `tb_logistics_info` VALUES (1, 1, '【内蒙古呼和浩特市公司】已收件', '2022-11-25 16:54:21');
INSERT INTO `tb_logistics_info` VALUES (2, 1, '【内蒙古x公司】已发出 下一站【杭州中心】', '2022-11-25 17:55:15');
INSERT INTO `tb_logistics_info` VALUES (3, 1, '【杭州转运中心】已收入', '2022-11-26 16:55:47');
INSERT INTO `tb_logistics_info` VALUES (4, 1, '【派送中】xxxx', '2022-11-26 18:57:10');
INSERT INTO `tb_logistics_info` VALUES (5, 1, '【已签收】本人签收', '2022-11-27 16:57:46');
INSERT INTO `tb_logistics_info` VALUES (6, 2, '【xxx】已发货', '2022-11-09 16:58:00');
INSERT INTO `tb_logistics_info` VALUES (7, 2, '【xxx】已发出', '2022-11-10 16:58:23');
INSERT INTO `tb_logistics_info` VALUES (8, 3, '【xxxx】不想发货', '2022-11-18 16:58:44');

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product`  (
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
-- Records of tb_product
-- ----------------------------
INSERT INTO `tb_product` VALUES (1, '牛肉干', 1, '猛牛公司', '内蒙古', 1, 'aaa.jpg', '0xjklsdf89asdaadf', '2022-10-13 11:12:47', '2022-10-25 11:12:52');
INSERT INTO `tb_product` VALUES (2, '苹果牛奶', 1, '毅力公司', '北京', 1, 'Il9e1VgcU3', '0tZcRDs8Iw', '2015-08-04 23:22:52', '2008-06-04 11:47:16');
INSERT INTO `tb_product` VALUES (3, 'Ryan Martin', 1, 'Miguel Food LLC', 'OuKFvUrNy5', 0, 'JfAPtZq5wM', 'Gz7Xqr4f8I', '2006-03-15 14:22:06', '2011-05-12 17:24:15');
INSERT INTO `tb_product` VALUES (4, 'Song Xiaoming', 0, 'Kelley Brothers Inc.', 'MgC0DSpwYJ', 1, '8xX1H71zI2', 'oq7QTNFAem', '2021-03-13 08:56:56', '2005-02-27 06:58:59');
INSERT INTO `tb_product` VALUES (5, 'Eddie Morris', 0, 'Daisuke Corporation', 'PXerdNEK3o', 0, 'zkxTro1ami', 'x8LDqaSG8D', '2006-02-03 14:28:50', '2002-11-23 07:09:09');
INSERT INTO `tb_product` VALUES (6, 'Lui Tin Lok', 1, 'Ling Ling Limited', '1daFpiWImh', 0, 'O0BlRrjuCl', 'JsWhtFfHUt', '2007-08-25 12:23:17', '2019-04-24 00:03:05');
INSERT INTO `tb_product` VALUES (7, 'Cai Xiuying', 1, 'Xiuying Company Limited', 'jFZqs4W35t', 0, 'qxBHbhNa0L', 'SWjlnLqvkW', '2008-07-24 11:00:18', '2022-09-28 04:05:09');
INSERT INTO `tb_product` VALUES (8, 'Fujii Airi', 1, 'Kaito Logistic Corporation', 'JxoNdAwB18', 0, 'kg5oJnQYS3', 'ytNUYgeK10', '2016-09-25 23:34:10', '2008-10-16 08:16:55');
INSERT INTO `tb_product` VALUES (9, 'Uchida Daisuke', 1, 'Mak\'s Telecommunication Limited', 'CmjCP1w12G', 0, '4iV4CijKim', '7rkhyVn0Lm', '2017-05-29 18:32:48', '2004-08-10 12:23:02');
INSERT INTO `tb_product` VALUES (10, 'Rose Gibson', 1, 'Xiaoming Trading Company Limited', '11tFhfmrRY', 0, 'sW8xMmam8j', 'jz6q0QW7qm', '2009-11-11 22:30:28', '2018-09-08 22:30:55');
INSERT INTO `tb_product` VALUES (11, 'Fong Ching Wan', 1, 'Shannon Consultants Inc.', 'Rz4ghbSoPa', 0, 'a5f1KF5YDt', '7GeRDP774F', '2017-07-08 02:34:33', '2004-10-18 16:37:43');
INSERT INTO `tb_product` VALUES (12, 'Ichikawa Mio', 1, 'Sharon LLC', 'LHB74vHDOY', 0, 'sblQ25f4Yd', '0yEfdtDrqD', '2005-12-06 23:07:51', '2021-01-26 23:54:29');
INSERT INTO `tb_product` VALUES (13, 'Tang Rui', 0, 'Kenta Corporation', 'QmEIukv0Cc', 0, 'JU1AzC9QqC', 'sTisDjC8dV', '2002-10-16 18:32:49', '2013-07-18 19:57:38');
INSERT INTO `tb_product` VALUES (14, 'Lu Yuning', 1, 'Tin Wing Technology Limited', 'CHi1hhZs9p', 0, '14RJlaQoHk', 'FOeC4Ny45E', '2009-01-11 01:21:23', '2006-04-15 08:34:45');
INSERT INTO `tb_product` VALUES (15, 'William Reynolds', 0, 'Jenkins Brothers Toy Inc.', '0xCC3j7oGV', 0, 'DmJvh7lPoa', 'Z3CWXtaQd4', '2003-08-08 14:38:45', '2018-11-18 12:15:56');
INSERT INTO `tb_product` VALUES (16, 'Ma Lu', 1, 'Wai Yee Logistic Limited', 'pRkgI4JJUN', 0, '8YgimbHzOw', 'MTnvK11IrA', '2012-10-27 17:48:43', '2009-03-31 17:43:02');
INSERT INTO `tb_product` VALUES (17, 'Chen Yuning', 0, 'Han Pharmaceutical Company Limited', 'DerOASdcYf', 0, 'HU9KLPYodM', '6SgCRttYFY', '2016-07-23 18:10:06', '2016-04-30 22:47:56');
INSERT INTO `tb_product` VALUES (18, 'Shing Chiu Wai', 1, 'Kimura Corporation', 'BHt9sFWEh0', 1, 'yZpq0Uv8VC', 'stxZVSfpLb', '2006-12-23 07:36:05', '2013-07-14 13:04:43');
INSERT INTO `tb_product` VALUES (19, 'Martha Cole', 1, 'Ryota Residence Corporation', 'yLNzA2gK6n', 1, 're2Gc1ygPu', '9vnSHlOv2r', '2016-08-06 11:40:59', '2012-05-09 18:01:17');
INSERT INTO `tb_product` VALUES (20, 'Randy Mendez', 1, 'Nichols Technology LLC', 'qzFM2mvzfd', 1, 'zj6JsTJocM', 'dhR1ShIOst', '2000-09-15 06:30:32', '2022-09-19 17:40:49');
INSERT INTO `tb_product` VALUES (21, 'Eric Cruz', 1, 'Wong Kee Engineering Limited', 'BuuZWkm3Iq', 1, 'bIwEh4DZqt', 'I63XazkivQ', '2015-10-29 17:04:16', '2006-03-30 18:16:06');
INSERT INTO `tb_product` VALUES (22, 'Laura Gibson', 1, 'Siu Wai Engineering Limited', '1LXqPfOTV0', 1, 'xjdAMdqogt', 'Ti67gaqWiB', '2005-08-23 22:19:10', '2017-08-23 20:20:43');
INSERT INTO `tb_product` VALUES (23, 'Mo Lan', 1, 'Nakano Electronic Corporation', 'KzoXX2z7Po', 1, 'iZjf5cTN5Y', 'YGzBm703rt', '2013-01-09 17:16:54', '2018-11-03 01:48:51');
INSERT INTO `tb_product` VALUES (24, 'Sugawara Hikari', 1, 'Kwok Yin Industrial Limited', 'Qtfh58vtg1', 1, 'bItUupKLE3', 'BJa74lxNeX', '2011-09-08 06:09:29', '2002-03-12 23:27:57');
INSERT INTO `tb_product` VALUES (25, 'Miyazaki Aoshi', 1, 'Kwok Kuen Limited', 'wZ22D2cBAn', 1, 'Oz16O8bX5C', 'zymGa8JJ2M', '2019-03-25 10:33:46', '2004-02-06 11:02:20');
INSERT INTO `tb_product` VALUES (26, 'Russell Washington', 1, 'Chiu Wai Industrial Limited', '06Np6xgZaj', 1, '7yAgn5qVCh', 'PBG6P4gAis', '2003-04-17 02:29:36', '2019-05-13 22:33:18');
INSERT INTO `tb_product` VALUES (27, 'Theodore Nichols', 1, 'Koo\'s Logistic Limited', 'URrvqteRKG', 1, '6KvlkJmYUP', 'cxocTBBu6L', '2020-06-14 14:28:22', '2000-11-19 15:16:32');
INSERT INTO `tb_product` VALUES (28, 'Yuan Zhiyuan', 1, 'Kazuma Technology Corporation', 'wRWFRzUpHN', 1, 'LbgmY0rHfH', 'rATfL1nGJ1', '2015-12-09 05:12:41', '2006-10-09 06:22:51');
INSERT INTO `tb_product` VALUES (29, 'Carlos Henry', 1, 'Arai Corporation', 'WhdWZvSN5J', 1, 'nwhKNMRlyr', 'e4NpPgg6CQ', '2020-03-13 06:44:44', '2021-06-26 03:55:57');
INSERT INTO `tb_product` VALUES (30, 'Otsuka Daisuke', 1, 'Yun Fat Trading Limited', 'LP3XdSc9sT', 1, 'CAsF2NnQhk', 'TRwa6E6rvZ', '2020-02-18 08:03:00', '2011-02-09 22:07:27');
INSERT INTO `tb_product` VALUES (31, 'Tao Ting Fung', 1, 'Gladys Food LLC', 'ACPkhHagI2', 1, 'aOatbTlKji', 'cNmy6UscPc', '2011-04-05 14:09:02', '2007-05-22 14:27:22');
INSERT INTO `tb_product` VALUES (32, 'test', NULL, 'xx公司', '中国', 0, NULL, NULL, '2022-11-02 19:53:05', NULL);
INSERT INTO `tb_product` VALUES (33, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-02 19:59:34', NULL);

-- ----------------------------
-- Table structure for tb_product_crop
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_crop`;
CREATE TABLE `tb_product_crop`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL COMMENT '农产品id',
  `crop_id` int NULL DEFAULT NULL COMMENT '农作物id',
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = sjis COLLATE = sjis_japanese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_product_crop
-- ----------------------------
INSERT INTO `tb_product_crop` VALUES (1, 1, 3, '牛', '2022-11-02 18:44:13', '2022-11-02 18:44:15');
INSERT INTO `tb_product_crop` VALUES (2, 2, 1, '苹果', '2022-11-02 18:44:59', '2022-11-02 18:45:01');
INSERT INTO `tb_product_crop` VALUES (3, 2, 2, '牛奶', '2022-11-02 18:45:15', '2022-11-02 18:45:19');
INSERT INTO `tb_product_crop` VALUES (4, 32, 1, '苹果', '2022-11-02 19:53:05', NULL);
INSERT INTO `tb_product_crop` VALUES (5, 32, 2, '牛奶', '2022-11-02 19:53:05', NULL);
INSERT INTO `tb_product_crop` VALUES (6, 33, 1, '苹果', '2022-11-02 19:59:34', NULL);
INSERT INTO `tb_product_crop` VALUES (7, 33, 2, '牛奶', '2022-11-02 19:59:34', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'aaaaaa', 'mim7wavd9emj3c9m4cfc@ec17548dae85f86889c656dc3663ea8f', 0, 0, '2022-11-23 18:48:24', NULL);
INSERT INTO `tb_user` VALUES (2, 'aaaaaaa', 'jq8pc4aechrjhed4tat0@36a01211f50ca1df69ec6f886b91aabb', 0, 0, '2022-11-03 18:48:26', NULL);
INSERT INTO `tb_user` VALUES (3, 'aaaa', '02ngfm3yjd96xycye3f2@66c271609e74505feae59aa9a58904d6', 0, 0, '2022-10-24 18:18:55', NULL);
INSERT INTO `tb_user` VALUES (4, 'aaa0a', '3gykc3x1xtm4m9z8k68s@34523952e7d2c33423318be95918af7a', 0, 0, '2022-10-24 18:20:05', NULL);
INSERT INTO `tb_user` VALUES (5, 'ling', '1ge395xpswqzphi1jf61@ab55399710bfb781439f3274cdad375b', 0, 0, '2022-10-24 18:58:17', NULL);
INSERT INTO `tb_user` VALUES (7, 'admin', 'yzh9l1aql661kj7wjnhe@c6c5223a665b0eeb31db54aa3401214c', 1, 0, '2022-10-25 23:18:49', NULL);
INSERT INTO `tb_user` VALUES (8, '开心农场', '56azj7jo1voxheir99xx@61eac7666d6785a4e04bc50695d68d2e', 2, 0, '2022-10-25 23:19:04', NULL);
INSERT INTO `tb_user` VALUES (9, '快乐农场', 'dpmtp81yhtvkobtufwwg@35c740b87cfc2cca8dbc6db41e53bdcc', 2, 0, '2022-10-25 23:19:15', NULL);
INSERT INTO `tb_user` VALUES (10, '伤心农场', '54mp07otb096gp8d65fb@6f46cfe58e5f1ea125b5e1230aa91d9e', 2, 0, '2022-10-25 23:20:29', NULL);
INSERT INTO `tb_user` VALUES (11, 'a', 'kjlscnjoly5ut73f2kwe@9d732539fa34ca5d4949a4676019db41', 2, 1, '2022-10-25 23:24:14', NULL);
INSERT INTO `tb_user` VALUES (12, '农场', 'akt3tmubfecxmushc0ct@333e869794f758727f2c6fbdefe71f53', 2, 1, '2022-10-25 23:25:48', NULL);
INSERT INTO `tb_user` VALUES (13, 'lingd', '4za7fez3jf8x6tib8b29@8ab2ff6e62237f82b4276c24b400d0a2', 0, 1, '2022-10-26 15:35:15', NULL);
INSERT INTO `tb_user` VALUES (14, 'lixuyang', '123456', 2, 0, '2022-11-23 18:55:04', '2022-11-23 18:55:06');
INSERT INTO `tb_user` VALUES (15, '万丽', '15acf7o05ma1f1bmjc8z@6e1a6fa41d0d331fc89294eb368f7ea0', 0, NULL, '2022-12-11 14:18:44', NULL);

-- ----------------------------
-- Table structure for tb_user_application
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_application`;
CREATE TABLE `tb_user_application`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL COMMENT '0待审批  1：通过  2：驳回',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_application
-- ----------------------------
INSERT INTO `tb_user_application` VALUES (1, 1, 'xxx.word', 0);
INSERT INTO `tb_user_application` VALUES (2, 2, 'xx.pdf', 0);

SET FOREIGN_KEY_CHECKS = 1;
