/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : taotao

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2017-07-13 16:57:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_content
-- ----------------------------
DROP TABLE IF EXISTS `tb_content`;
CREATE TABLE `tb_content` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `sub_title` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_content
-- ----------------------------

-- ----------------------------
-- Table structure for tb_content_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_content_category`;
CREATE TABLE `tb_content_category` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(300) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `is_parent` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_content_category
-- ----------------------------

-- ----------------------------
-- Table structure for tb_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_item`;
CREATE TABLE `tb_item` (
  `id` bigint(20) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `barcode` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `cid` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_item
-- ----------------------------

-- ----------------------------
-- Table structure for tb_item_cat
-- ----------------------------
DROP TABLE IF EXISTS `tb_item_cat`;
CREATE TABLE `tb_item_cat` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `is_parent` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_item_cat
-- ----------------------------

-- ----------------------------
-- Table structure for tb_item_desc
-- ----------------------------
DROP TABLE IF EXISTS `tb_item_desc`;
CREATE TABLE `tb_item_desc` (
  `item_id` bigint(20) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `item_desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_item_desc
-- ----------------------------

-- ----------------------------
-- Table structure for tb_item_param
-- ----------------------------
DROP TABLE IF EXISTS `tb_item_param`;
CREATE TABLE `tb_item_param` (
  `id` bigint(20) NOT NULL,
  `item_cat_id` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `param_data` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_item_param
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` varchar(100) NOT NULL,
  `payment` varchar(100) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `post_fee` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `consign_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `shipping_name` varchar(200) DEFAULT NULL,
  `shipping_code` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `buyer_message` varchar(500) DEFAULT NULL,
  `buyer_nick` varchar(500) DEFAULT NULL,
  `buyer_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_item`;
CREATE TABLE `tb_order_item` (
  `id` varchar(100) NOT NULL,
  `item_id` varchar(100) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `total_fee` decimal(20,4) DEFAULT NULL,
  `pic_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order_item
-- ----------------------------
INSERT INTO `tb_order_item` VALUES ('1', null, null, null, '1.00', '121.0000', null);

-- ----------------------------
-- Table structure for tb_order_shipping
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_shipping`;
CREATE TABLE `tb_order_shipping` (
  `order_id` varchar(100) NOT NULL,
  `receiver_name` varchar(200) DEFAULT NULL,
  `receiver_mobile` varchar(50) DEFAULT NULL,
  `receiver_city` varchar(100) DEFAULT NULL,
  `receiver_district` varchar(200) DEFAULT NULL,
  `receiver_address` varchar(200) DEFAULT NULL,
  `receiver_zip` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
