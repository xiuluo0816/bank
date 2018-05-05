-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `certificate_info`
--

DROP TABLE IF EXISTS `certificate_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificate_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `use_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '领用时间',
  `certificate_type_id` bigint(20) unsigned NOT NULL COMMENT '凭证种类ID',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '领用人ID',
  `print_num` bigint(20) DEFAULT '0' COMMENT '印刷编号',
  `business_num` varchar(100) DEFAULT '' COMMENT '业务编号',
  `mark` tinyint(4) NOT NULL DEFAULT '0' COMMENT '凭证标志（0：领入 1：使用 2：换折 3：作废 4：丢失 5：上缴）',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '凭证状态（0：经办 1：待复核 2：待审批 3：审批完成）',
  `created_by` varchar(150) NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_by` varchar(150) NOT NULL DEFAULT '' COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已经删除,0：未删除，1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='凭证资料基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate_info`
--

LOCK TABLES `certificate_info` WRITE;
/*!40000 ALTER TABLE `certificate_info` DISABLE KEYS */;
INSERT INTO `certificate_info` VALUES (33,'2018-05-01 05:29:49',1,1,1,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 06:21:13',1),(34,'2018-05-01 05:29:50',1,1,2,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 06:21:13',1),(35,'2018-05-01 05:29:51',1,1,3,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 06:21:13',1),(36,'2018-05-01 05:29:51',1,1,4,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 06:21:13',1),(37,'2018-05-01 05:29:52',1,1,5,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 05:31:13',0),(38,'2018-05-01 05:29:52',1,1,6,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 05:31:14',0),(39,'2018-05-01 05:29:53',1,1,7,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 05:31:15',0),(40,'2018-05-01 05:29:53',1,1,8,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 05:31:16',0),(41,'2018-05-01 05:29:53',1,1,9,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 05:31:17',0),(42,'2018-05-01 05:29:53',1,1,10,'',0,0,'张三','2018-05-01 05:33:38','','2018-05-01 05:31:19',0),(43,'2018-05-01 06:19:39',1,1,11,'CTYRPY',0,0,'张三','2018-05-01 06:19:39','','2018-05-01 06:19:39',0),(44,'2018-05-01 06:20:19',1,2,12,'0987',2,0,'张三','2018-05-01 06:20:19','','2018-05-01 06:20:19',0),(45,'2018-05-01 06:20:48',1,1,13,'53454',3,0,'张三','2018-05-01 06:24:40','','2018-05-01 06:20:48',0),(46,'2018-05-01 06:20:48',1,1,14,'53454',3,0,'张三','2018-05-01 06:24:40','','2018-05-01 06:20:48',0),(47,'2018-05-01 06:20:48',1,1,15,'53454',3,0,'张三','2018-05-01 06:24:40','','2018-05-01 06:20:48',0),(48,'2018-05-01 06:20:49',1,1,16,'53454',3,0,'张三','2018-05-01 06:24:40','','2018-05-01 06:20:49',0);
/*!40000 ALTER TABLE `certificate_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate_type`
--

DROP TABLE IF EXISTS `certificate_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificate_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `code` varchar(100) DEFAULT '' COMMENT '凭证类别代码',
  `name` varchar(100) DEFAULT '' COMMENT '凭证类别名称',
  `created_by` varchar(150) NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_by` varchar(150) NOT NULL DEFAULT '' COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已经删除,0：未删除，1：删除',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='凭证类型基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate_type`
--

LOCK TABLES `certificate_type` WRITE;
/*!40000 ALTER TABLE `certificate_type` DISABLE KEYS */;
INSERT INTO `certificate_type` VALUES (1,'0000','活期存折','张三','2018-05-01 03:51:27','','2018-05-01 03:47:35',0),(2,'0002','定活两便存单','张三','2018-05-01 03:52:06','','2018-05-01 03:48:13',0);
/*!40000 ALTER TABLE `certificate_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `currency_code` varchar(100) DEFAULT '' COMMENT '币种代码',
  `currency_name` varchar(100) DEFAULT '' COMMENT '币种名称',
  `created_by` varchar(150) NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_by` varchar(150) NOT NULL DEFAULT '' COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已经删除,0：未删除，1：删除',
  PRIMARY KEY (`id`),
  KEY `idx_currency_code` (`currency_code`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='存款币种基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (3,'asdas','asdsad','张三','2018-04-30 10:10:15','','2018-04-30 10:44:45',0),(4,'43563','sdfgsdfg','张三','2018-04-30 10:13:27','','2018-04-30 10:57:58',1),(5,'','','张三','2018-04-30 10:19:36','','2018-04-30 10:57:50',1),(6,'','','张三','2018-04-30 10:21:39','','2018-04-30 10:57:50',1),(7,'','','张三','2018-04-30 10:24:44','','2018-04-30 10:57:50',1),(8,'12646789','sdfswer','张三','2018-04-30 10:33:35','','2018-04-30 10:57:58',1),(9,'asdad','asdasd','张三','2018-04-30 10:35:06','','2018-04-30 10:31:18',0),(10,'desAD','asdfadfs','张三','2018-04-30 10:35:54','','2018-04-30 10:32:06',0),(11,'123','123','张三','2018-05-01 03:25:55','','2018-05-01 03:22:02',0);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_agreement_info`
--

DROP TABLE IF EXISTS `mp_agreement_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_agreement_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `act_key` varchar(50) NOT NULL DEFAULT '' COMMENT '活动类型key',
  `agreement_content` varchar(1000) NOT NULL DEFAULT '' COMMENT '同意书内容',
  `create_by` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_by` varchar(50) NOT NULL DEFAULT '' COMMENT '最后修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除（0：未删除，1：已删除）',
  PRIMARY KEY (`id`),
  KEY `idx_act_key` (`act_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='促销同意书表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_agreement_info`
--

LOCK TABLES `mp_agreement_info` WRITE;
/*!40000 ALTER TABLE `mp_agreement_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_agreement_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `rate_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '利率种类,0：活期，1：定期',
  `terminable` varchar(20) NOT NULL DEFAULT '0' COMMENT '利率期限(活期，1-year, 6-month)',
  `annual_interestRate` varchar(100) DEFAULT '' COMMENT '年利率',
  `created_by` varchar(150) NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_by` varchar(150) NOT NULL DEFAULT '' COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已经删除,0：未删除，1：删除',
  PRIMARY KEY (`id`),
  KEY `idx_update_time` (`update_time`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='存款利率基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` VALUES (1,1,'2-year','0.1','孙瑞','2018-04-16 09:50:35','孙瑞','2018-04-21 07:09:38',1),(2,0,'6-month','0.2488','孙瑞','2018-04-11 04:29:29','孙瑞','2018-04-21 07:09:38',1),(3,1,'1-year','124.548','张三','2018-04-17 05:02:24','','2018-04-21 07:09:46',1),(4,1,'3-month','12334.0000','张三','2018-04-17 12:24:13','','2018-04-21 07:09:46',1),(5,1,'1-year','0.001','张三','2018-04-21 06:30:31','','2018-04-21 06:27:05',0),(6,1,'3-year','0.1','张三','2018-04-21 06:30:53','','2018-04-21 06:27:26',0),(7,0,'活期','1234','张三','2018-05-01 03:25:23','','2018-05-01 03:21:31',0);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permissions`
--

DROP TABLE IF EXISTS `sys_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permissions`
--

LOCK TABLES `sys_permissions` WRITE;
/*!40000 ALTER TABLE `sys_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles`
--

LOCK TABLES `sys_roles` WRITE;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` VALUES (3,'staff','普通员工权限',0),(4,'audit','审批权限',0);
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles_permissions`
--

DROP TABLE IF EXISTS `sys_roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles_permissions` (
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  `permission_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles_permissions`
--

LOCK TABLES `sys_roles_permissions` WRITE;
/*!40000 ALTER TABLE `sys_roles_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `organization_code` varchar(100) DEFAULT '' COMMENT '机构号',
  `organization_name` varchar(100) DEFAULT '' COMMENT '机构名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'manager','manager',NULL,0,'123456789','内蒙古进出口银行'),(2,'staff','staff',NULL,0,'67890123','华夏银行');
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users_roles`
--

DROP TABLE IF EXISTS `sys_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users_roles` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users_roles`
--

LOCK TABLES `sys_users_roles` WRITE;
/*!40000 ALTER TABLE `sys_users_roles` DISABLE KEYS */;
INSERT INTO `sys_users_roles` VALUES (1,3),(1,4),(2,3);
/*!40000 ALTER TABLE `sys_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-05 12:56:51
