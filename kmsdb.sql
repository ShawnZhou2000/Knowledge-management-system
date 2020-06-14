/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : kms

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 14/06/2020 08:40:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`  (
  `Kid` int(0) NOT NULL,
  `Kcategory` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `Ktitle` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `Kauthor` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `AddTime` datetime(0) NOT NULL,
  `Kcontent` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  PRIMARY KEY (`Kid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf32 COLLATE = utf32_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userAccount` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `userPassword` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `userPrivilege` varchar(255) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  PRIMARY KEY (`userAccount`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf32 COLLATE = utf32_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
