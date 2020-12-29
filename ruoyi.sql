/*
 Navicat Premium Data Transfer

 Source Server         : 本地Demo
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : ruoyiw

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 29/12/2020 20:23:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (2, 't_purchase', '', 'TPurchase', 'crud', 'com.ruoyi.project.system', 'system', 'purchase', NULL, 'ruoyi', NULL, 'admin', '2020-12-29 11:34:01', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (3, 't_workshop', '', 'TWorkshop', 'crud', 'com.ruoyi.project.system', 'system', 'workshop', NULL, 'ruoyi', NULL, 'admin', '2020-12-29 14:03:49', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (4, 't_minstore', '', 'TMinstore', 'crud', 'com.ruoyi.project.system', 'system', 'minstore', NULL, 'ruoyi', NULL, 'admin', '2020-12-29 14:12:43', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (5, 't_customer', '', 'TCustomer', 'crud', 'com.ruoyi.project.system', 'system', 'customer', NULL, 'ruoyi', NULL, 'admin', '2020-12-29 15:08:13', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (6, 't_worker', '', 'TWorker', 'crud', 'com.ruoyi.project.system', 'system', 'worker', NULL, 'ruoyi', NULL, 'admin', '2020-12-29 15:36:00', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (5, '2', 'pid', '进货编号', 'int(11)', 'Long', 'pid', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-12-29 11:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (6, '2', 'pname', '进货名称', 'varchar(255)', 'String', 'pname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-12-29 11:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (7, '2', 'ptype', '进货类型', 'varchar(255)', 'String', 'ptype', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-12-29 11:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (8, '2', 'pnum', '进货数量', 'int(11)', 'Long', 'pnum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-12-29 11:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (9, '2', 'ptime', '进货时间', 'datetime', 'Date', 'ptime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-12-29 11:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (10, '2', 'paddress', '进货地址', 'varchar(255)', 'String', 'paddress', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-12-29 11:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (11, '3', 'wsid', '车间编号', 'int(11)', 'Long', 'wsid', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-12-29 14:03:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (12, '3', 'wsname', '车间名称', 'varchar(255)', 'String', 'wsname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-12-29 14:03:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (13, '3', 'wsaddress', '车间地址', 'varchar(255)', 'String', 'wsaddress', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-12-29 14:03:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (14, '3', 'wsstate', '车间状态(1:空闲,2:繁忙)', 'varchar(255)', 'String', 'wsstate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-12-29 14:03:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (15, '4', 'minid', '材料入库编号', 'int(11)', 'Long', 'minid', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-12-29 14:12:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (16, '4', 'minname', '材料名称', 'varchar(255)', 'String', 'minname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-12-29 14:12:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (17, '4', 'mintype', '材料类型', 'varchar(255)', 'String', 'mintype', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-12-29 14:12:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (18, '4', 'minnum', '材料数量', 'int(11)', 'Long', 'minnum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-12-29 14:12:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (19, '4', 'mintime', '入库时间', 'datetime', 'Date', 'mintime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-12-29 14:12:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (20, '5', 'cid', '客户编号', 'int(10)', 'Integer', 'cid', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-12-29 15:08:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (21, '5', 'cname', '客户名称', 'varchar(255)', 'String', 'cname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-12-29 15:08:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (22, '5', 'ctype', '客户类型', 'varchar(255)', 'String', 'ctype', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-12-29 15:08:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (23, '5', 'caddress', '客户地址', 'varchar(255)', 'String', 'caddress', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-12-29 15:08:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, '5', 'cphone', '客户电话', 'varchar(255)', 'String', 'cphone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-12-29 15:08:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, '6', 'wid', '员工编号', 'int(11)', 'Long', 'wid', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-12-29 15:36:00', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, '6', 'wname', '员工姓名', 'varchar(255)', 'String', 'wname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-12-29 15:36:00', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, '6', 'wage', '员工年龄', 'varchar(255)', 'String', 'wage', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-12-29 15:36:00', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, '6', 'wsex', '员工性别', 'varchar(255)', 'String', 'wsex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2020-12-29 15:36:00', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, '6', 'whiredate', '入职日期', 'datetime', 'Date', 'whiredate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-12-29 15:36:00', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, '6', 'wleavedate', '离职日期', 'datetime', 'Date', 'wleavedate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-12-29 15:36:00', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, '6', 'wsalary', '员工薪资', 'double(10,2)', 'Double', 'wsalary', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-12-29 15:36:00', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(0) NOT NULL,
  `sched_time` bigint(0) NOT NULL,
  `priority` int(0) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(0) NOT NULL,
  `checkin_interval` bigint(0) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-OIOLJNR1609244559128', 1609244593758, 15000);
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'gao1609244407520', 1609244575315, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(0) NOT NULL,
  `repeat_interval` bigint(0) NOT NULL,
  `times_triggered` bigint(0) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(0) NULL DEFAULT NULL,
  `int_prop_2` int(0) NULL DEFAULT NULL,
  `long_prop_1` bigint(0) NULL DEFAULT NULL,
  `long_prop_2` bigint(0) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(0) NULL DEFAULT NULL,
  `prev_fire_time` bigint(0) NULL DEFAULT NULL,
  `priority` int(0) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(0) NOT NULL,
  `end_time` bigint(0) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(0) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1609244560000, -1, 5, 'PAUSED', 'CRON', 1609244559000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1609244565000, -1, 5, 'PAUSED', 'CRON', 1609244559000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1609244560000, -1, 5, 'PAUSED', 'CRON', 1609244559000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 10:57:29');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 10:58:27');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:00:32');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:02:10');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:05:31');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:08:23');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:10:05');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-12-28 11:10:11');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:11:43');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:15:35');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:19:22');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:23:28');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:27:14');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:27:57');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:28:50');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:28:59');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-28 11:53:56');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:54:00');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 11:57:40');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:18:51');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:21:01');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:23:01');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:24:22');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:27:24');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:31:04');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-28 14:33:53');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-28 14:34:02');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:34:07');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:40:28');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-28 14:40:38');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:40:39');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:40:42');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:42:16');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:47:22');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:57:31');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-28 14:58:38');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-28 14:58:40');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 14:58:44');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 15:00:24');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 15:30:49');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 15:47:57');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 15:50:17');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 15:56:37');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 15:57:43');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 15:59:14');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 16:03:10');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 16:27:13');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 16:48:39');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 16:49:09');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 16:49:57');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 16:54:35');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 17:50:27');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-28 18:46:06');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 18:46:13');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 19:02:11');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 19:04:10');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 19:12:31');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 19:26:59');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 20:45:59');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 20:46:52');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-28 22:26:18');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-28 22:26:23');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-29 09:17:05');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 09:17:08');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 09:24:38');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 09:39:47');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 10:32:17');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:21:03');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:22:02');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:26:18');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:28:20');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:38:40');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:40:03');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:40:47');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:41:45');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:43:06');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:48:27');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 11:48:54');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:00:39');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:08:19');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:10:35');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:10:45');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:13:36');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:15:05');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:22:05');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:24:19');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:25:13');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:26:46');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:35:30');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:37:17');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-29 14:39:10');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:39:20');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:41:10');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:44:01');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:53:02');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-29 14:55:46');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 14:55:54');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 15:00:43');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 15:05:21');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 15:18:10');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 15:35:36');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 15:36:00');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 16:20:26');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-29 16:32:11');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 16:32:18');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 16:40:19');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 16:43:37');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 16:51:06');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-29 17:02:54');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 17:02:59');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 17:07:01');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 17:55:53');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-29 18:47:55');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-29 18:47:59');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 18:48:03');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 18:51:55');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 18:55:25');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-12-29 19:06:34');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 19:06:42');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 19:07:10');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-12-29 19:07:33');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 19:13:45');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 20:20:20');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-12-29 20:22:49');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2044 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '出库管理', 0, 5, '#', 'menuItem', 'M', '0', '', 'fa fa-address-card', 'admin', '2020-12-28 10:58:34', 'admin', '2020-12-28 14:32:06', '');
INSERT INTO `sys_menu` VALUES (2001, '出库信息', 2000, 1, '/outstoremanage/store', 'menuItem', 'C', '0', 'outstoremanage:store:view', 'fa fa-address-card', 'admin', '2020-12-28 11:00:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '出库查询', 2001, 1, '#', 'menuItem', 'F', '0', 'outstoremanage:store:list', '#', 'admin', '2020-12-28 11:00:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '出库新增', 2001, 2, '#', 'menuItem', 'F', '0', 'outstoremanage:store:add', '#', 'admin', '2020-12-28 11:01:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '出库删除', 2001, 3, '#', 'menuItem', 'F', '0', 'outstoremanage:store:remove', '#', 'admin', '2020-12-28 11:02:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '入库管理', 0, 4, '#', 'menuItem', 'M', '0', '', 'fa fa-address-card', 'admin', '2020-12-28 11:02:44', 'admin', '2020-12-28 14:32:01', '');
INSERT INTO `sys_menu` VALUES (2006, '出库编辑', 2001, 4, '#', 'menuItem', 'F', '0', 'outstoremanage:store:edit', '#', 'admin', '2020-12-28 11:02:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '产品入库信息', 2005, 3, '/instoremanage/instore', 'menuItem', 'C', '0', 'instoremanage:instore:view', 'fa fa-address-card-o', 'admin', '2020-12-28 11:03:12', 'admin', '2020-12-29 14:29:52', '');
INSERT INTO `sys_menu` VALUES (2008, '出库导出', 2001, 5, '#', 'menuItem', 'F', '0', 'outstoremanage:store:export', '#', 'admin', '2020-12-28 11:03:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '运输信息', 2000, 2, '/outstoremanage/trans', 'menuItem', 'C', '0', 'outstoremanage:trans:view', 'fa fa-truck', 'admin', '2020-12-28 11:04:24', 'admin', '2020-12-28 11:05:42', '');
INSERT INTO `sys_menu` VALUES (2011, '查询', 2009, 1, '#', 'menuItem', 'F', '0', 'outstoremanage:trans:list', '#', 'admin', '2020-12-28 11:06:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '新增', 2009, 2, '#', 'menuItem', 'F', '0', 'outstoremanage:trans:add', '#', 'admin', '2020-12-28 11:06:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '修改', 2009, 3, '#', 'menuItem', 'F', '0', 'outstoremanage:trans:edit', '#', 'admin', '2020-12-28 11:07:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '导出', 2009, 4, '#', 'menuItem', 'F', '0', 'outstoremanage:trans:export', '#', 'admin', '2020-12-28 11:07:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '删除', 2009, 5, '#', 'menuItem', 'F', '0', 'outstoremanage:trans:remove', '#', 'admin', '2020-12-28 11:08:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '仓库管理', 0, 6, '#', 'menuItem', 'M', '0', NULL, 'fa fa-bank', 'admin', '2020-12-28 11:31:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '库内管理', 2016, 1, '/storemanage/store', 'menuItem', 'C', '0', 'storemanage:store:view', 'fa fa-bars', 'admin', '2020-12-28 11:33:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '仓库物品新增', 2017, 2, '#', 'menuItem', 'F', '0', 'storemanage:store:add', '#', 'admin', '2020-12-28 11:41:06', 'admin', '2020-12-28 11:45:12', '');
INSERT INTO `sys_menu` VALUES (2019, '仓库物品查询', 2017, 1, '#', 'menuItem', 'F', '0', 'storemanage:store:list', '#', 'admin', '2020-12-28 11:41:43', 'admin', '2020-12-28 11:45:24', '');
INSERT INTO `sys_menu` VALUES (2020, '仓库物品修改', 2017, 3, '#', 'menuItem', 'F', '0', 'storemanage:store:edit', '#', 'admin', '2020-12-28 11:44:08', 'admin', '2020-12-28 11:45:40', '');
INSERT INTO `sys_menu` VALUES (2021, '仓库物品删除', 2017, 4, '#', 'menuItem', 'F', '0', 'storemanage:store:remove', '#', 'admin', '2020-12-28 11:44:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '仓库物品导出', 2017, 5, '#', 'menuItem', 'F', '0', 'storemanage:store:export', '#', 'admin', '2020-12-28 11:46:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '订单信息', 2005, 2, '/crm/order', 'menuItem', 'C', '0', 'crm:order:view', 'fa fa-address-book-o', 'admin', '2020-12-28 14:25:32', 'admin', '2020-12-29 18:49:45', '');
INSERT INTO `sys_menu` VALUES (2025, '进货管理', 0, 7, '#', 'menuItem', 'M', '0', NULL, 'fa fa-asterisk', 'admin', '2020-12-29 11:28:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '进货信息', 2025, 1, '/purchasemanagement/purchase', 'menuItem', 'C', '0', 'purchasemanagement:purchase:view', 'fa fa-automobile', 'admin', '2020-12-29 11:31:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '新增进货', 2026, 1, '#', 'menuItem', 'F', '0', 'purchasemanagement:purchase:add', '#', 'admin', '2020-12-29 11:32:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '查询进货', 2026, 2, '#', 'menuItem', 'F', '0', 'purchasemanagement:purchase:list', '#', 'admin', '2020-12-29 11:32:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '编辑进货', 2026, 3, '#', 'menuItem', 'F', '0', 'purchasemanagement:purchase:edit', '#', 'admin', '2020-12-29 11:32:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '删除进货', 2026, 4, '#', 'menuItem', 'F', '0', 'purchasemanagement:purchase:remove', '#', 'admin', '2020-12-29 11:33:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '导出进货', 2026, 5, '#', 'menuItem', 'F', '0', 'purchasemanagement:purchase:export', '#', 'admin', '2020-12-29 11:33:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '车间管理', 0, 8, '#', 'menuItem', 'M', '0', NULL, 'fa fa-window-restore', 'admin', '2020-12-29 11:34:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '需求信息', 2032, 1, '/workshopmanage/demand', 'menuItem', 'C', '0', 'workshopmanage:demand:view', 'fa fa-window-maximize', 'admin', '2020-12-29 11:35:34', 'admin', '2020-12-29 14:20:35', '');
INSERT INTO `sys_menu` VALUES (2034, '查询', 2033, 1, '#', 'menuItem', 'F', '0', 'workshopmanage:demand:list', '#', 'admin', '2020-12-29 11:35:55', 'admin', '2020-12-29 14:20:48', '');
INSERT INTO `sys_menu` VALUES (2035, '新增', 2033, 2, '#', 'menuItem', 'F', '0', 'workshopmanage:demand:add', '#', 'admin', '2020-12-29 11:36:19', 'admin', '2020-12-29 14:20:57', '');
INSERT INTO `sys_menu` VALUES (2036, '修改', 2033, 3, '#', 'menuItem', 'F', '0', 'workshopmanage:demand:edit', '#', 'admin', '2020-12-29 11:36:41', 'admin', '2020-12-29 14:21:07', '');
INSERT INTO `sys_menu` VALUES (2037, '删除', 2033, 4, '#', 'menuItem', 'F', '0', 'workshopmanage:demand:remove', '#', 'admin', '2020-12-29 11:37:23', 'admin', '2020-12-29 14:21:17', '');
INSERT INTO `sys_menu` VALUES (2038, '导出', 2033, 5, '#', 'menuItem', 'F', '0', 'workshopmanage:demand:export', '#', 'admin', '2020-12-29 11:37:59', 'admin', '2020-12-29 14:21:26', '');
INSERT INTO `sys_menu` VALUES (2039, '客户管理', 0, 1, '#', 'menuItem', 'M', '0', NULL, 'fa fa-address-book', 'admin', '2020-12-29 14:08:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '客户信息', 2039, 1, '/crm/customer', 'menuItem', 'C', '0', 'crm:customer:view', 'fa fa-address-card', 'admin', '2020-12-29 14:10:09', 'admin', '2020-12-29 14:29:19', '');
INSERT INTO `sys_menu` VALUES (2041, '材料入库信息', 2005, 4, '/instoremanage/minstore', 'menuItem', 'C', '0', 'instoremanage:minstore:view', 'fa fa-address-card-o', 'admin', '2020-12-29 14:12:22', 'admin', '2020-12-29 14:30:19', '');
INSERT INTO `sys_menu` VALUES (2042, '车间信息', 2032, 2, '/workshopmanage/workshop', 'menuItem', 'C', '0', 'workshopmanage:workshop:view', 'fa fa-cab', 'admin', '2020-12-29 14:41:40', 'admin', '2020-12-29 14:41:54', '');
INSERT INTO `sys_menu` VALUES (2043, '车间员工信息', 2032, 3, '/workshopmanage/worker', 'menuItem', 'C', '0', 'workshopmanage:worker:view', 'fa fa-address-book-o', 'admin', '2020-12-29 16:35:06', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"出库管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 10:58:35');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"出库信息\"],\"url\":[\"/outstoremanage/store\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:store:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:00:09');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"出库查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:store:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:00:52');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"出库新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:store:add\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:01:46');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"出库删除\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:store:remove\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:02:27');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"入库管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:02:44');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"出库编辑\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:store:edit\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:02:56');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"入库信息\"],\"url\":[\"/instoremanage/instore\"],\"target\":[\"menuItem\"],\"perms\":[\"instoermanage:instore.view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:03:12');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"出库导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:store:export\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:03:23');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"M\"],\"menuName\":[\"运输信息\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-truck\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:04:24');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"客户管理\"],\"url\":[\"/instoremanage/customer\"],\"target\":[\"menuItem\"],\"perms\":[\"instoremanage:customer:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:04:36');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2009\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运输信息\"],\"url\":[\"/outstoremanage/trans\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:trans:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-truck\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:05:43');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:trans:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:06:21');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:trans:add\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:06:38');
INSERT INTO `sys_oper_log` VALUES (114, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,2000,2001,2002,2003,2004,2006,2008,2009,2011,2012,2005,2010,2007\"]}', 'null', 1, '不允许操作超级管理员角色', '2020-12-28 11:06:57');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:trans:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:07:35');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:trans:export\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:07:59');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2009\"],\"menuType\":[\"F\"],\"menuName\":[\"删除\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"outstoremanage:trans:remove\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:08:18');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"入库信息\"],\"url\":[\"/instoremanage/instore\"],\"target\":[\"menuItem\"],\"perms\":[\"instoermanage:instore:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:09:18');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"仓库管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-bank\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:31:31');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2016\"],\"menuType\":[\"C\"],\"menuName\":[\"库内管理\"],\"url\":[\"/storemanage/store\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:33:23');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"仓库新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:add\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:41:06');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"仓库查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:41:43');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"仓库修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:44:08');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"仓库物品删除\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:44:54');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2018\"],\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"仓库物品新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:add\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:45:12');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"仓库物品查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:45:24');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2020\"],\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"仓库物品修改\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:45:40');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2017\"],\"menuType\":[\"F\"],\"menuName\":[\"仓库物品导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"storemanage:store:export\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:46:55');
INSERT INTO `sys_oper_log` VALUES (129, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.storemanage.store.controller.TStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/storemanage/store/edit', '127.0.0.1', '内网IP', '{\"sid\":[\"1\"],\"sname\":[\"玛莎拉蒂\"],\"snum\":[\"200\"],\"stype\":[\"车\"],\"sstate\":[\"1\"],\"lid\":[\"1\"],\"inid\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:57:55');
INSERT INTO `sys_oper_log` VALUES (130, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.storemanage.store.controller.TStoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/storemanage/store/add', '127.0.0.1', '内网IP', '{\"sname\":[\"华为手机\"],\"snum\":[\"200\"],\"stype\":[\"手机\"],\"sstate\":[\"1\"],\"lid\":[\"003\"],\"inid\":[\"003\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:58:40');
INSERT INTO `sys_oper_log` VALUES (131, '【请填写功能名称】', 3, 'com.ruoyi.project.wms.storemanage.store.controller.TStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/storemanage/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 11:58:55');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"订单信息\"],\"url\":[\"/instoremanage/order\"],\"target\":[\"menuItem\"],\"perms\":[\"instoremanage:order:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:25:32');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2023\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"订单信息\"],\"url\":[\"/instoremanage/order\"],\"target\":[\"menuItem\"],\"perms\":[\"instoremanage:order:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:25:46');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2023\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"订单信息\"],\"url\":[\"/instoremanage/order\"],\"target\":[\"menuBlank\"],\"perms\":[\"instoremanage:order:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:28:41');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"出库管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:31:55');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"入库管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:32:01');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"出库管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:32:06');
INSERT INTO `sys_oper_log` VALUES (138, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.instoremanage.instore.controller.TInStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/instore/edit', '127.0.0.1', '内网IP', '{\"inid\":[\"1\"],\"inname\":[\"玛莎拉蒂\"],\"intype\":[\"汽车\"],\"innum\":[\"100\"],\"intime\":[\"2020-12-19\"],\"oid\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:33:32');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2023\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"订单信息\"],\"url\":[\"/instoremanage/order\"],\"target\":[\"menuItem\"],\"perms\":[\"instoremanage:order:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:34:48');
INSERT INTO `sys_oper_log` VALUES (140, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.instoremanage.customer.controller.TCustomerController.addSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/customer/add', '127.0.0.1', '内网IP', '{\"cname\":[\"xiaoxiao\"],\"ctype\":[\"大型\"],\"caddress\":[\"北京\"],\"cphone\":[\"18846114771\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:41:07');
INSERT INTO `sys_oper_log` VALUES (141, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.instoremanage.customer.controller.TCustomerController.editSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/customer/edit', '127.0.0.1', '内网IP', '{\"cid\":[\"3\"],\"cname\":[\"xiaoxia\"],\"ctype\":[\"大型\"],\"caddress\":[\"北京\"],\"cphone\":[\"18846114771\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:41:24');
INSERT INTO `sys_oper_log` VALUES (142, '【新增用户订单信息】', 1, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.addSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/add', '127.0.0.1', '内网IP', '{\"oname\":[\"aaaaaaa\"],\"otype\":[\"普通\"],\"onum\":[\"12\"],\"ocaddress\":[\"情情爱爱奥奥\"],\"oaddress\":[\"我说的吧肠道\"],\"otime\":[\"2020-12-31\"],\"cid\":[\"123456723456\"]}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'cid\' at row 1\r\n### The error may involve com.ruoyi.project.wms.instoremanage.order.mapper.TOrderMapper.insertTOrder-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_order          ( oname,             otype,             onum,             ocaddress,             oaddress,             otime,             cid )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'cid\' at row 1\n; Data truncation: Out of range value for column \'cid\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'cid\' at row 1', '2020-12-28 14:43:33');
INSERT INTO `sys_oper_log` VALUES (143, '【新增用户订单信息】', 1, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.addSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/add', '127.0.0.1', '内网IP', '{\"oname\":[\"aaaa\"],\"otype\":[\"普通\"],\"onum\":[\"12\"],\"ocaddress\":[\"情情爱\"],\"oaddress\":[\"我说的\"],\"otime\":[\"2020-12-31\"],\"cid\":[\"1234567\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:43:46');
INSERT INTO `sys_oper_log` VALUES (144, '【修改用户订单信息】', 2, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.editSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/edit', '127.0.0.1', '内网IP', '{\"oid\":[\"3\"],\"oname\":[\"aaaa\"],\"otype\":[\"所有\"],\"onum\":[\"12\"],\"ocaddress\":[\"情情爱\"],\"oaddress\":[\"我说的\"],\"otime\":[\"2020-12-31\"],\"cid\":[\"1234567\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:44:04');
INSERT INTO `sys_oper_log` VALUES (145, '【删除用户订单信息】', 3, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.remove()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 14:44:09');
INSERT INTO `sys_oper_log` VALUES (146, '【导出用户订单信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:44:12');
INSERT INTO `sys_oper_log` VALUES (147, '【导出用户订单信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:44:17');
INSERT INTO `sys_oper_log` VALUES (148, '【导出用户订单信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:44:29');
INSERT INTO `sys_oper_log` VALUES (149, '【导出用户订单信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:44:40');
INSERT INTO `sys_oper_log` VALUES (150, '【导出用户订单信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:44:49');
INSERT INTO `sys_oper_log` VALUES (151, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.instoremanage.customer.controller.TCustomerController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/customer/export', '127.0.0.1', '内网IP', '{\"cname\":[\"\"],\"ctype\":[\"大型\"],\"caddress\":[\"\"],\"cphone\":[\"\"]}', '{\"msg\":\"f083a9ec-4f12-43b8-99ff-1ccea790f0a9_customer.xlsx\",\"code\":0}', 0, NULL, '2020-12-28 14:44:56');
INSERT INTO `sys_oper_log` VALUES (152, '【导出用户订单信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:45:01');
INSERT INTO `sys_oper_log` VALUES (153, '【导出用户订单信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:47:32');
INSERT INTO `sys_oper_log` VALUES (154, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:57:39');
INSERT INTO `sys_oper_log` VALUES (155, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:57:42');
INSERT INTO `sys_oper_log` VALUES (156, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:57:48');
INSERT INTO `sys_oper_log` VALUES (157, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 14:57:53');
INSERT INTO `sys_oper_log` VALUES (158, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.instoremanage.customer.controller.TCustomerController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/customer/export', '127.0.0.1', '内网IP', '{\"cname\":[\"\"],\"ctype\":[\"大型\"],\"caddress\":[\"\"],\"cphone\":[\"\"]}', '{\"msg\":\"58e14d85-4771-48db-8472-cae2a1381e5e_customer.xlsx\",\"code\":0}', 0, NULL, '2020-12-28 14:58:29');
INSERT INTO `sys_oper_log` VALUES (159, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.instoremanage.instore.controller.TInStoreController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/instore/export', '127.0.0.1', '内网IP', '{\"inname\":[\"\"],\"intype\":[\"\"],\"innum\":[\"\"],\"params[beginIntime]\":[\"\"],\"params[endIntime]\":[\"\"],\"oid\":[\"\"]}', '{\"msg\":\"3e7587c9-b246-4c56-b94e-a2a572cb2309_instore.xlsx\",\"code\":0}', 0, NULL, '2020-12-28 15:00:36');
INSERT INTO `sys_oper_log` VALUES (160, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 15:03:43');
INSERT INTO `sys_oper_log` VALUES (161, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 15:03:47');
INSERT INTO `sys_oper_log` VALUES (162, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 15:03:52');
INSERT INTO `sys_oper_log` VALUES (163, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 15:04:35');
INSERT INTO `sys_oper_log` VALUES (164, '【导出客户信息】', 5, 'com.ruoyi.project.wms.instoremanage.order.controller.TOrderController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/order/export', '127.0.0.1', '内网IP', '{\"oname\":[\"\"],\"otype\":[\"\"],\"onum\":[\"\"],\"ocaddress\":[\"\"],\"oaddress\":[\"\"],\"params[beginOtime]\":[\"\"],\"params[endOtime]\":[\"\"],\"cid\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-28 15:04:42');
INSERT INTO `sys_oper_log` VALUES (165, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.outstoremanage.store.controller.TOutStoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/outstoremanage/store/add', '127.0.0.1', '内网IP', '{\"outname\":[\"111\"],\"outtype\":[\"111\"],\"outnum\":[\"111\"],\"outtime\":[\"2020-12-16\"],\"sid\":[\"111\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 16:58:10');
INSERT INTO `sys_oper_log` VALUES (166, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.outstoremanage.store.controller.TOutStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/outstoremanage/store/edit', '127.0.0.1', '内网IP', '{\"outid\":[\"3\"],\"outname\":[\"11122\"],\"outtype\":[\"111\"],\"outnum\":[\"111\"],\"outtime\":[\"2020-12-16\"],\"sid\":[\"111\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 16:58:15');
INSERT INTO `sys_oper_log` VALUES (167, '【请填写功能名称】', 3, 'com.ruoyi.project.wms.outstoremanage.store.controller.TOutStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/outstoremanage/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 16:58:23');
INSERT INTO `sys_oper_log` VALUES (168, '【删除运输信息】', 3, 'com.ruoyi.project.wms.outstoremanage.trans.controller.TTransController.remove()', 'POST', 1, 'admin', '研发部门', '/outstoremanage/trans/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 17:01:41');
INSERT INTO `sys_oper_log` VALUES (169, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.instoremanage.instore.controller.TInStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/instore/edit', '127.0.0.1', '内网IP', '{\"inid\":[\"1\"],\"inname\":[\"玛莎拉蒂\"],\"intype\":[\"汽车\"],\"innum\":[\"200\"],\"intime\":[\"2020-12-19\"],\"oid\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 20:46:39');
INSERT INTO `sys_oper_log` VALUES (170, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.instoremanage.instore.controller.TInStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/instore/edit', '127.0.0.1', '内网IP', '{\"inid\":[\"1\"],\"inname\":[\"玛莎拉蒂\"],\"intype\":[\"车\"],\"innum\":[\"200\"],\"intime\":[\"2020-12-19\"],\"oid\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 20:46:58');
INSERT INTO `sys_oper_log` VALUES (171, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.instoremanage.customer.controller.TCustomerController.addSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/customer/add', '127.0.0.1', '内网IP', '{\"cname\":[\"玛莎拉蒂集团\"],\"ctype\":[\"大型\"],\"caddress\":[\"上海\"],\"cphone\":[\"19987679876\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-28 20:59:14');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_demand\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:22:22');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_demand', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-12-29 11:22:25');
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"102\"],\"menuType\":[\"M\"],\"menuName\":[\"进货管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-american-sign-language-interpreting\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:23:45');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"进货管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-asterisk\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:28:54');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2025\"],\"menuType\":[\"C\"],\"menuName\":[\"进货信息\"],\"url\":[\"/purchasemanagement/purchase\"],\"target\":[\"menuItem\"],\"perms\":[\"purchasemanagement:purchase:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-automobile\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:31:13');
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2026\"],\"menuType\":[\"F\"],\"menuName\":[\"新增进货\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"purchasemanagement:purchase:add\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:32:08');
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2026\"],\"menuType\":[\"F\"],\"menuName\":[\"查询进货\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"purchasemanagement:purchase:list\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:32:31');
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2026\"],\"menuType\":[\"F\"],\"menuName\":[\"编辑进货\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"purchasemanagement:purchase:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:32:56');
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:33:00');
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2026\"],\"menuType\":[\"F\"],\"menuName\":[\"删除进货\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"purchasemanagement:purchase:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:33:22');
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2026\"],\"menuType\":[\"F\"],\"menuName\":[\"导出进货\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"purchasemanagement:purchase:export\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:33:46');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_purchase\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:34:01');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_purchase', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-12-29 11:34:05');
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"车间管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-window-restore\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:34:19');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2032\"],\"menuType\":[\"C\"],\"menuName\":[\"需求信息\"],\"url\":[\"/shopmanage/demand\"],\"target\":[\"menuItem\"],\"perms\":[\"shopmanage:demand:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-window-maximize\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:35:35');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"shopmanage:demand:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:35:56');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"shopmanage:demand:add\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:36:19');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"shopmanage:demand:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:36:42');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"删除\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"shopmanage:demand:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:37:23');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"shopmanage:demand:export\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:37:59');
INSERT INTO `sys_oper_log` VALUES (192, '【新增需求信息】', 1, 'com.ruoyi.project.wms.shopmanage.demand.controller.TDemandController.addSave()', 'POST', 1, 'admin', '研发部门', '/shopmanage/demand/add', '127.0.0.1', '内网IP', '{\"dname\":[\"玻璃\"],\"dnum\":[\"100\"],\"dtype\":[\"汽车玻璃\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:42:21');
INSERT INTO `sys_oper_log` VALUES (193, '【修改需求信息】', 2, 'com.ruoyi.project.wms.shopmanage.demand.controller.TDemandController.editSave()', 'POST', 1, 'admin', '研发部门', '/shopmanage/demand/edit', '127.0.0.1', '内网IP', '{\"did\":[\"1\"],\"dname\":[\"玛莎拉蒂\"],\"dnum\":[\"100\"],\"dtype\":[\"车\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:42:34');
INSERT INTO `sys_oper_log` VALUES (194, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.purchasemanagement.purchase.controller.TPurchaseController.addSave()', 'POST', 1, 'admin', '研发部门', '/purchasemanagement/purchase/add', '127.0.0.1', '内网IP', '{\"pname\":[\"java工程师2\"],\"ptype\":[\"222\"],\"pnum\":[\"222\"],\"ptime\":[\"2020-12-09\"],\"paddress\":[\"2222\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:43:21');
INSERT INTO `sys_oper_log` VALUES (195, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.purchasemanagement.purchase.controller.TPurchaseController.editSave()', 'POST', 1, 'admin', '研发部门', '/purchasemanagement/purchase/edit', '127.0.0.1', '内网IP', '{\"pid\":[\"2\"],\"pname\":[\"java工程师2222\"],\"ptype\":[\"222\"],\"pnum\":[\"222\"],\"ptime\":[\"2020-12-09\"],\"paddress\":[\"2222\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 11:43:25');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_workshop\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:03:50');
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_workshop', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-12-29 14:03:56');
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"客户管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:08:40');
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2039\"],\"menuType\":[\"C\"],\"menuName\":[\"客户信息\"],\"url\":[\"/basedata/customer\"],\"target\":[\"menuItem\"],\"perms\":[\"basedata:customer:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:10:09');
INSERT INTO `sys_oper_log` VALUES (200, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.purchasemanagement.purchase.controller.TPurchaseController.editSave()', 'POST', 1, 'admin', '研发部门', '/purchasemanagement/purchase/edit', '127.0.0.1', '内网IP', '{\"pid\":[\"2\"],\"pname\":[\"java工程师\"],\"ptype\":[\"222\"],\"pnum\":[\"222\"],\"ptime\":[\"2020-12-09\"],\"paddress\":[\"2222\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:11:01');
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"产品入库信息\"],\"url\":[\"/instoremanage/instore\"],\"target\":[\"menuItem\"],\"perms\":[\"instoermanage:instore:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:11:07');
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"材料入库信息\"],\"url\":[\"/instoremanage/minstore\"],\"target\":[\"menuItem\"],\"perms\":[\"instoermanage:minstore:view\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:12:22');
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_minstore\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:12:43');
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_minstore', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-12-29 14:12:48');
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2033\"],\"parentId\":[\"2032\"],\"menuType\":[\"C\"],\"menuName\":[\"需求信息\"],\"url\":[\"/workshopmanage/demand\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:demand:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-window-maximize\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:20:35');
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:demand:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:20:48');
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2035\"],\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:demand:add\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:20:57');
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2036\"],\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"修改\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:demand:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:21:07');
INSERT INTO `sys_oper_log` VALUES (209, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2037\"],\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"删除\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:demand:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:21:17');
INSERT INTO `sys_oper_log` VALUES (210, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2038\"],\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"导出\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:demand:export\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:21:26');
INSERT INTO `sys_oper_log` VALUES (211, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2040\"],\"parentId\":[\"2039\"],\"menuType\":[\"C\"],\"menuName\":[\"客户信息\"],\"url\":[\"/CRM/customer\"],\"target\":[\"menuItem\"],\"perms\":[\"CRM:customer:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:25:07');
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2040\"],\"parentId\":[\"2039\"],\"menuType\":[\"C\"],\"menuName\":[\"客户信息\"],\"url\":[\"/crm/customer\"],\"target\":[\"menuItem\"],\"perms\":[\"crm:customer:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:29:20');
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"产品入库信息\"],\"url\":[\"/instoremanage/instore\"],\"target\":[\"menuItem\"],\"perms\":[\"instoremanage:instore:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:29:53');
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2041\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"材料入库信息\"],\"url\":[\"/instoremanage/minstore\"],\"target\":[\"menuItem\"],\"perms\":[\"instoremanage:minstore:view\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:30:19');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2032\"],\"menuType\":[\"C\"],\"menuName\":[\"车间信息\"],\"url\":[\"/workshopmanage/workshop\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:workshop:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-cab\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:41:41');
INSERT INTO `sys_oper_log` VALUES (216, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.instoremanage.minstore.controller.TMinstoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/minstore/add', '127.0.0.1', '内网IP', '{\"minname\":[\"芯片\"],\"mintype\":[\"电子产品\"],\"minnum\":[\"1000\"],\"mintime\":[\"2020-12-29\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:41:45');
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2042\"],\"parentId\":[\"2032\"],\"menuType\":[\"C\"],\"menuName\":[\"车间信息\"],\"url\":[\"/workshopmanage/workshop\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:workshop:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-cab\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:41:54');
INSERT INTO `sys_oper_log` VALUES (218, '【请填写功能名称】', 2, 'com.ruoyi.project.wms.instoremanage.minstore.controller.TMinstoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/instoremanage/minstore/edit', '127.0.0.1', '内网IP', '{\"minid\":[\"2\"],\"minname\":[\"芯片\"],\"mintype\":[\"电子零件\"],\"minnum\":[\"1000\"],\"mintime\":[\"2020-12-29\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 14:42:05');
INSERT INTO `sys_oper_log` VALUES (219, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.instoremanage.minstore.controller.TMinstoreController.export()', 'POST', 1, 'admin', '研发部门', '/instoremanage/minstore/export', '127.0.0.1', '内网IP', '{\"minname\":[\"\"],\"mintype\":[\"\"],\"minnum\":[\"\"],\"params[beginMintime]\":[\"\"],\"params[endMintime]\":[\"\"]}', '{\"msg\":\"d8bd0e54-bc39-464b-8c12-9be30c7496de_minstore.xlsx\",\"code\":0}', 0, NULL, '2020-12-29 14:42:16');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_customer\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 15:08:14');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_customer', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-12-29 15:08:19');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_worker\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 15:36:00');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_worker', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-12-29 15:36:34');
INSERT INTO `sys_oper_log` VALUES (224, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2010', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 15:36:52');
INSERT INTO `sys_oper_log` VALUES (225, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2032\"],\"menuType\":[\"C\"],\"menuName\":[\"车间员工信息\"],\"url\":[\"/workshopmanage/worker\"],\"target\":[\"menuItem\"],\"perms\":[\"workshopmanage:worker:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 16:35:06');
INSERT INTO `sys_oper_log` VALUES (226, '【新增员工信息】', 1, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.addSave()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/add', '127.0.0.1', '内网IP', '{\"wname\":[\"李士成\"],\"wage\":[\"24\"],\"intype\":[\"男\"],\"whiredate\":[\"2020-12-01\"],\"wleavedate\":[\"2020-11-01\"],\"wsalary\":[\"10000\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.wms.workshopmanage.worker.mapper.TWorkerMapper.insertTWorker-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_worker          ( wname,             wage,                          whiredate,             wleavedate,             wsalary )           values ( ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\n; Field \'wsex\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'wsex\' doesn\'t have a default value', '2020-12-29 16:44:01');
INSERT INTO `sys_oper_log` VALUES (227, '【修改员工信息】', 2, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.editSave()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/edit', '127.0.0.1', '内网IP', '{\"wid\":[\"3\"],\"wname\":[\"小红\"],\"wage\":[\"33\"],\"intype\":[\"\"],\"whiredate\":[\"2020-12-01\"],\"wleavedate\":[\"\"],\"wsalary\":[\"12000.0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 16:44:17');
INSERT INTO `sys_oper_log` VALUES (228, '【删除员工信息】', 3, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.remove()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 16:44:22');
INSERT INTO `sys_oper_log` VALUES (229, '【导出员工信息】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"intype\":[\"\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 16:44:26');
INSERT INTO `sys_oper_log` VALUES (230, '【导出员工信息】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"intype\":[\"\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 16:44:29');
INSERT INTO `sys_oper_log` VALUES (231, '【导出员工信息】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"intype\":[\"\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 16:44:31');
INSERT INTO `sys_oper_log` VALUES (232, '【新增员工信息】', 1, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.addSave()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/add', '127.0.0.1', '内网IP', '{\"wname\":[\"李士成\"],\"wage\":[\"24\"],\"intype\":[\"男\"],\"whiredate\":[\"2020-01-01\"],\"wleavedate\":[\"2020-12-31\"],\"wsalary\":[\"1000\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.wms.workshopmanage.worker.mapper.TWorkerMapper.insertTWorker-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_worker          ( wname,             wage,                          whiredate,             wleavedate,             wsalary )           values ( ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\n; Field \'wsex\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'wsex\' doesn\'t have a default value', '2020-12-29 16:48:42');
INSERT INTO `sys_oper_log` VALUES (233, '【新增员工信息】', 1, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.addSave()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/add', '127.0.0.1', '内网IP', '{\"wname\":[\"李士成\"],\"wage\":[\"24\"],\"intype\":[\"1\"],\"whiredate\":[\"2020-01-01\"],\"wleavedate\":[\"2020-12-31\"],\"wsalary\":[\"1000\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.wms.workshopmanage.worker.mapper.TWorkerMapper.insertTWorker-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_worker          ( wname,             wage,                          whiredate,             wleavedate,             wsalary )           values ( ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\n; Field \'wsex\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'wsex\' doesn\'t have a default value', '2020-12-29 16:49:01');
INSERT INTO `sys_oper_log` VALUES (234, '【新增员工信息】', 1, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.addSave()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/add', '127.0.0.1', '内网IP', '{\"wname\":[\"李士成\"],\"wage\":[\"24\"],\"intype\":[\"男\"],\"whiredate\":[\"2019-10-01\"],\"wleavedate\":[\"2020-12-01\"],\"wsalary\":[\"1000\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.wms.workshopmanage.worker.mapper.TWorkerMapper.insertTWorker-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_worker          ( wname,             wage,                          whiredate,             wleavedate,             wsalary )           values ( ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\n; Field \'wsex\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'wsex\' doesn\'t have a default value', '2020-12-29 16:49:40');
INSERT INTO `sys_oper_log` VALUES (235, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.crm.customer.controller.TCustomerController.addSave()', 'POST', 1, 'admin', '研发部门', '/crm/customer/add', '127.0.0.1', '内网IP', '{\"cname\":[\"gao\"],\"ctype\":[\"大型\"],\"caddress\":[\"北京\"],\"cphone\":[\"18846114771\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 16:51:34');
INSERT INTO `sys_oper_log` VALUES (236, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.workshopmanage.workshop.controller.TWorkshopController.addSave()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/workshop/add', '127.0.0.1', '内网IP', '{\"wsname\":[\"车间4\"],\"wsaddress\":[\"北京\"],\"wsstate\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 16:52:36');
INSERT INTO `sys_oper_log` VALUES (237, '【新增员工信息】', 1, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.addSave()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/add', '127.0.0.1', '内网IP', '{\"wname\":[\"李士成\"],\"wage\":[\"24\"],\"intype\":[\"男\"],\"whiredate\":[\"2020-12-01\"],\"wleavedate\":[\"2020-12-01\"],\"wsalary\":[\"10000\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.wms.workshopmanage.worker.mapper.TWorkerMapper.insertTWorker-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_worker          ( wname,             wage,                          whiredate,             wleavedate,             wsalary )           values ( ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'wsex\' doesn\'t have a default value\n; Field \'wsex\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'wsex\' doesn\'t have a default value', '2020-12-29 17:00:04');
INSERT INTO `sys_oper_log` VALUES (238, '【请填写功能名称】', 1, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.addSave()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/add', '127.0.0.1', '内网IP', '{\"wname\":[\"李士成\"],\"wage\":[\"24\"],\"wsex\":[\"男\"],\"whiredate\":[\"2020-12-01\"],\"wleavedate\":[\"2020-12-01\"],\"wsalary\":[\"10000\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 17:03:23');
INSERT INTO `sys_oper_log` VALUES (239, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"intype\":[\"\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:03:35');
INSERT INTO `sys_oper_log` VALUES (240, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"intype\":[\"\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:03:49');
INSERT INTO `sys_oper_log` VALUES (241, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"intype\":[\"\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:03:54');
INSERT INTO `sys_oper_log` VALUES (242, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"intype\":[\"\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:03:59');
INSERT INTO `sys_oper_log` VALUES (243, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.crm.customer.controller.TCustomerController.export()', 'POST', 1, 'admin', '研发部门', '/crm/customer/export', '127.0.0.1', '内网IP', '{\"cname\":[\"\"],\"ctype\":[\"大型\"],\"caddress\":[\"\"],\"cphone\":[\"\"]}', '{\"msg\":\"b8ca3788-4a4d-4a42-a516-fd7d7d973d2e_customer.xlsx\",\"code\":0}', 0, NULL, '2020-12-29 17:04:24');
INSERT INTO `sys_oper_log` VALUES (244, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"wsex\":[\"男\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:07:10');
INSERT INTO `sys_oper_log` VALUES (245, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"wsex\":[\"男\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:07:20');
INSERT INTO `sys_oper_log` VALUES (246, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"wsex\":[\"男\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:07:23');
INSERT INTO `sys_oper_log` VALUES (247, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"wsex\":[\"男\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:07:26');
INSERT INTO `sys_oper_log` VALUES (248, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"wsex\":[\"男\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:07:35');
INSERT INTO `sys_oper_log` VALUES (249, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"wsex\":[\"男\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:07:55');
INSERT INTO `sys_oper_log` VALUES (250, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"wsex\":[\"男\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:09:07');
INSERT INTO `sys_oper_log` VALUES (251, '【请填写功能名称】', 5, 'com.ruoyi.project.wms.workshopmanage.worker.controller.TWorkerController.export()', 'POST', 1, 'admin', '研发部门', '/workshopmanage/worker/export', '127.0.0.1', '内网IP', '{\"wname\":[\"\"],\"wage\":[\"\"],\"wsex\":[\"男\"],\"params[beginWhiredate]\":[\"\"],\"params[endWhiredate]\":[\"\"],\"params[beginWleavedate]\":[\"\"],\"params[endWleavedate]\":[\"\"],\"wsalary\":[\"\"]}', 'null', 1, '导出Excel失败，请联系网站管理员！', '2020-12-29 17:09:36');
INSERT INTO `sys_oper_log` VALUES (252, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2023\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"订单信息\"],\"url\":[\"/crm/order\"],\"target\":[\"menuItem\"],\"perms\":[\"crm:order:view\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 18:49:46');
INSERT INTO `sys_oper_log` VALUES (253, '【新增用户订单信息】', 1, 'com.ruoyi.project.wms.crm.order.controller.TOrderController.addSave()', 'POST', 1, 'admin', '研发部门', '/crm/order/add', '127.0.0.1', '内网IP', '{\"oname\":[\"牛仔裤\"],\"otype\":[\"所有\"],\"onum\":[\"12\"],\"ocaddress\":[\"深圳总部\"],\"oaddress\":[\"北京总部\"],\"otime\":[\"2020-12-01\"],\"cid\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 19:08:22');
INSERT INTO `sys_oper_log` VALUES (254, '【修改用户订单信息】', 2, 'com.ruoyi.project.wms.crm.order.controller.TOrderController.editSave()', 'POST', 1, 'admin', '研发部门', '/crm/order/edit', '127.0.0.1', '内网IP', '{\"oid\":[\"3\"],\"oname\":[\"衬衫\"],\"otype\":[\"所有\"],\"onum\":[\"12\"],\"ocaddress\":[\"深圳总部\"],\"oaddress\":[\"北京总部\"],\"otime\":[\"2020-12-01\"],\"cid\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 19:08:32');
INSERT INTO `sys_oper_log` VALUES (255, '【删除用户订单信息】', 3, 'com.ruoyi.project.wms.crm.order.controller.TOrderController.remove()', 'POST', 1, 'admin', '研发部门', '/crm/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-12-29 19:08:36');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-12-29 20:23:01', 'admin', '2018-03-16 11:33:00', 'ry', '2020-12-29 20:22:49', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(0) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('6bf97839-53be-47ea-a527-9d1b713829a0', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2020-12-29 20:20:16', '2020-12-29 20:20:20', 1800000);
INSERT INTO `sys_user_online` VALUES ('f979c5f2-6010-4bc6-bba2-bf9c2f25edc9', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2020-12-29 20:22:54', '2020-12-29 20:23:02', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer`  (
  `cid` int(0) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户名称',
  `ctype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户类型',
  `caddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户地址',
  `cphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户电话',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES (1, '玛莎拉蒂集团', '大型客户', '上海总部', '13366779988');
INSERT INTO `t_customer` VALUES (2, '刘强东', '中型客户', '北京总部', '19634697582');
INSERT INTO `t_customer` VALUES (3, 'xiaoxia', '大型', '北京', '18846114771');
INSERT INTO `t_customer` VALUES (4, '玛莎拉蒂集团', '大型', '上海', '19987679876');
INSERT INTO `t_customer` VALUES (5, 'gao', '大型', '北京', '18846114771');

-- ----------------------------
-- Table structure for t_demand
-- ----------------------------
DROP TABLE IF EXISTS `t_demand`;
CREATE TABLE `t_demand`  (
  `did` int(0) NOT NULL AUTO_INCREMENT COMMENT '需求编号',
  `dname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需求名称',
  `dnum` int(0) NOT NULL COMMENT '需求数量',
  `dtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需求类型',
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_demand
-- ----------------------------
INSERT INTO `t_demand` VALUES (1, '玛莎拉蒂', 100, '车');
INSERT INTO `t_demand` VALUES (2, '玻璃', 100, '汽车玻璃');

-- ----------------------------
-- Table structure for t_in_store
-- ----------------------------
DROP TABLE IF EXISTS `t_in_store`;
CREATE TABLE `t_in_store`  (
  `inid` int(0) NOT NULL AUTO_INCREMENT COMMENT '入库编号',
  `inname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物名称',
  `intype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物类型',
  `innum` int(0) NOT NULL COMMENT '货物数量',
  `intime` datetime(0) NOT NULL COMMENT '入库时间',
  `oid` int(0) NOT NULL COMMENT '订单编号',
  PRIMARY KEY (`inid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_in_store
-- ----------------------------
INSERT INTO `t_in_store` VALUES (1, '玛莎拉蒂', '车', 200, '2020-12-19 00:00:00', 1);
INSERT INTO `t_in_store` VALUES (2, '电脑', '电器', 50, '2020-12-24 15:29:58', 2);

-- ----------------------------
-- Table structure for t_materials
-- ----------------------------
DROP TABLE IF EXISTS `t_materials`;
CREATE TABLE `t_materials`  (
  `mid` int(0) NOT NULL AUTO_INCREMENT COMMENT '材料编号',
  `mname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '材料名称',
  `mtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '材料类型',
  `mnum` int(0) NOT NULL COMMENT '材料数量',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_materials
-- ----------------------------
INSERT INTO `t_materials` VALUES (1, '轮胎', '汽车零件', 200);

-- ----------------------------
-- Table structure for t_minstore
-- ----------------------------
DROP TABLE IF EXISTS `t_minstore`;
CREATE TABLE `t_minstore`  (
  `minid` int(0) NOT NULL AUTO_INCREMENT COMMENT '材料入库编号',
  `minname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '材料名称',
  `mintype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '材料类型',
  `minnum` int(0) NOT NULL COMMENT '材料数量',
  `mintime` datetime(0) NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`minid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_minstore
-- ----------------------------
INSERT INTO `t_minstore` VALUES (1, '轮胎', '汽车零件', 100, '2020-12-23 10:57:51');
INSERT INTO `t_minstore` VALUES (2, '芯片', '电子零件', 1000, '2020-12-29 00:00:00');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `oid` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `oname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物名称',
  `otype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物类型',
  `onum` int(0) NOT NULL COMMENT '货物数量',
  `ocaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货源地址',
  `oaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目的地地址',
  `otime` datetime(0) NOT NULL COMMENT '下单时间',
  `cid` int(0) NOT NULL COMMENT '客户编号',
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, '玛莎拉蒂', '车', 100, '上海总部', '南京', '2020-12-18 15:26:01', 1);
INSERT INTO `t_order` VALUES (2, '电脑', '电器', 50, '北京总部', '哈尔滨', '2020-12-20 15:27:39', 2);

-- ----------------------------
-- Table structure for t_out_store
-- ----------------------------
DROP TABLE IF EXISTS `t_out_store`;
CREATE TABLE `t_out_store`  (
  `outid` int(0) NOT NULL AUTO_INCREMENT COMMENT '出库编号',
  `outname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物名称',
  `outtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物类型',
  `outnum` int(0) NOT NULL COMMENT '货物数量',
  `outtime` datetime(0) NOT NULL COMMENT '出库时间',
  `sid` int(0) NOT NULL COMMENT '库存货物编号',
  PRIMARY KEY (`outid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_out_store
-- ----------------------------
INSERT INTO `t_out_store` VALUES (1, '玛莎拉蒂', '车', 100, '2020-12-20 15:35:57', 1);
INSERT INTO `t_out_store` VALUES (2, '电脑', '电器', 50, '2020-12-22 15:36:05', 2);

-- ----------------------------
-- Table structure for t_purchase
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase`;
CREATE TABLE `t_purchase`  (
  `pid` int(0) NOT NULL AUTO_INCREMENT COMMENT '进货编号',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '进货名称',
  `ptype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '进货类型',
  `pnum` int(0) NOT NULL COMMENT '进货数量',
  `ptime` datetime(0) NOT NULL COMMENT '进货时间',
  `paddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '进货地址',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_purchase
-- ----------------------------
INSERT INTO `t_purchase` VALUES (1, '轮胎', '汽车零件', 100, '2020-12-17 10:58:23', '上海');
INSERT INTO `t_purchase` VALUES (2, 'java工程师', '222', 222, '2020-12-09 00:00:00', '2222');

-- ----------------------------
-- Table structure for t_store
-- ----------------------------
DROP TABLE IF EXISTS `t_store`;
CREATE TABLE `t_store`  (
  `sid` int(0) NOT NULL AUTO_INCREMENT COMMENT '库存货物编号',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物名称',
  `snum` int(0) NOT NULL COMMENT '货物数量',
  `stype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物类型',
  `sstate` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '库存货物状态(1:存在,0:不存在)',
  `lid` int(0) NOT NULL COMMENT '储位编号',
  `inid` int(0) NOT NULL COMMENT '入库编号',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_store
-- ----------------------------
INSERT INTO `t_store` VALUES (1, '玛莎拉蒂', 200, '车', '1', 1, 1);
INSERT INTO `t_store` VALUES (2, '电脑', 50, '电器', '1', 2, 2);

-- ----------------------------
-- Table structure for t_trans
-- ----------------------------
DROP TABLE IF EXISTS `t_trans`;
CREATE TABLE `t_trans`  (
  `tid` int(0) NOT NULL AUTO_INCREMENT COMMENT '运输单编号',
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物名称',
  `tnum` int(0) NOT NULL COMMENT '货物数量',
  `ttype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货物类型',
  `taddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目的地地址',
  `ttime` datetime(0) NOT NULL COMMENT '运输时间',
  `oid` int(0) NOT NULL COMMENT '订单编号',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_trans
-- ----------------------------
INSERT INTO `t_trans` VALUES (1, '玛莎拉蒂', 100, '车', '上海总部', '2020-12-24 15:37:44', 1);

-- ----------------------------
-- Table structure for t_worker
-- ----------------------------
DROP TABLE IF EXISTS `t_worker`;
CREATE TABLE `t_worker`  (
  `wid` int(0) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `wname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工姓名',
  `wage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工年龄',
  `wsex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工性别',
  `whiredate` datetime(0) NOT NULL COMMENT '入职日期',
  `wleavedate` datetime(0) NULL DEFAULT NULL COMMENT '离职日期',
  `wsalary` double(10, 2) NOT NULL COMMENT '员工薪资',
  PRIMARY KEY (`wid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_worker
-- ----------------------------
INSERT INTO `t_worker` VALUES (1, '李四', '35', '男', '2020-12-08 10:58:56', NULL, 15000.00);
INSERT INTO `t_worker` VALUES (2, '张三', '36', '男', '2020-12-16 10:59:17', NULL, 10000.00);
INSERT INTO `t_worker` VALUES (4, '李士成', '24', '男', '2020-12-01 00:00:00', '2020-12-01 00:00:00', 10000.00);

-- ----------------------------
-- Table structure for t_workshop
-- ----------------------------
DROP TABLE IF EXISTS `t_workshop`;
CREATE TABLE `t_workshop`  (
  `wsid` int(0) NOT NULL AUTO_INCREMENT COMMENT '车间编号',
  `wsname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车间名称',
  `wsaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车间地址',
  `wsstate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车间状态(1:空闲,2:繁忙)',
  PRIMARY KEY (`wsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_workshop
-- ----------------------------
INSERT INTO `t_workshop` VALUES (1, '车间1', '北京', '1');
INSERT INTO `t_workshop` VALUES (2, '车间2', '上海', '0');
INSERT INTO `t_workshop` VALUES (3, '车间3', '山西', '1');
INSERT INTO `t_workshop` VALUES (4, '车间4', '北京', '1');

SET FOREIGN_KEY_CHECKS = 1;
