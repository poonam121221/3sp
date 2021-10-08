-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: epco_new_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.37-MariaDB

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
-- Table structure for table `comm_admin`
--

DROP TABLE IF EXISTS `comm_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'sha256',
  `admin_fname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_lname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_mobile` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_upm_id` int(11) DEFAULT '0',
  `admin_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_last_login` datetime NOT NULL,
  `admin_add_date` datetime NOT NULL,
  `admin_added_by` int(11) DEFAULT NULL,
  `admin_edit_date` datetime NOT NULL,
  `admin_edit_by` int(11) DEFAULT NULL,
  `admin_failed_login_attempts` int(11) DEFAULT '0',
  `admin_last_failed_login` datetime NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT '1' COMMENT '1=Active',
  `admin_pass_verify_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exp_verify_date` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_admin`
--

LOCK TABLES `comm_admin` WRITE;
/*!40000 ALTER TABLE `comm_admin` DISABLE KEYS */;
INSERT INTO `comm_admin` VALUES (1,'admined','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f','anoop','daipuriya','super admin','anoop.daipuriya@mapit.gov.in','9893892291',1,NULL,'2021-09-27 12:36:38','2017-05-30 00:00:00',1,'2018-04-12 02:47:43',1,0,'0000-00-00 00:00:00',1,'5518656834','2018-10-03 11:39:28'),(2,'admin','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f','keshav','raghuvanshi','editor','k.raghuvanshi@mapit.gov.in','9993609950',2,NULL,'2020-03-04 03:30:52','2018-05-09 12:17:58',1,'2018-07-28 03:02:28',1,1,'2020-09-11 11:10:08',1,'','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_admin_activity_log`
--

DROP TABLE IF EXISTS `comm_admin_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_admin_activity_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_uid` int(11) NOT NULL,
  `log_page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_activity` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_query` text COLLATE utf8_unicode_ci NOT NULL,
  `log_user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_remote_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_date_time` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_admin_activity_log`
--

LOCK TABLES `comm_admin_activity_log` WRITE;
/*!40000 ALTER TABLE `comm_admin_activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_admin_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_admin_role`
--

DROP TABLE IF EXISTS `comm_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_admin_role` (
  `admin_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_role_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_admin_role`
--

LOCK TABLES `comm_admin_role` WRITE;
/*!40000 ALTER TABLE `comm_admin_role` DISABLE KEYS */;
INSERT INTO `comm_admin_role` VALUES (1,'Super Admin'),(2,'Admin'),(3,'Sub Admin 1 Dept. Level'),(4,'Sub Admin 2 Dist. Level'),(5,'Sub Admin 3 CMS'),(6,'Sub Admin 4 Company and Partner');
/*!40000 ALTER TABLE `comm_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_auth_acl`
--

DROP TABLE IF EXISTS `comm_auth_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_auth_acl` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `priviledge_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `auth_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`auth_id`),
  UNIQUE KEY `priviledge_id` (`priviledge_id`,`menu_id`),
  KEY `menu_id_idx` (`menu_id`),
  CONSTRAINT `fk_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `comm_auth_controller_function` (`menu_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_auth_acl`
--

LOCK TABLES `comm_auth_acl` WRITE;
/*!40000 ALTER TABLE `comm_auth_acl` DISABLE KEYS */;
INSERT INTO `comm_auth_acl` VALUES (3,2,22,'index,add,edit','2017-08-22 05:19:23',1,'0000-00-00 00:00:00',0,1),(13,2,68,'index','2017-08-26 12:38:08',1,'2017-10-09 04:40:47',1,1),(15,2,15,'index,updateRecord','2017-08-26 12:40:19',1,'0000-00-00 00:00:00',0,1),(16,2,24,'index,add,edit,delete','2017-08-26 12:42:33',1,'0000-00-00 00:00:00',0,1),(19,2,94,'index,add,edit,delete','2017-08-29 12:07:55',1,'0000-00-00 00:00:00',0,1),(20,2,93,'index,add,edit,delete','2017-08-29 12:08:03',1,'0000-00-00 00:00:00',0,1),(36,2,112,'index,add,edit,delete','2017-08-29 12:11:50',1,'0000-00-00 00:00:00',0,1),(38,2,98,'index,add,edit,delete','2017-08-29 12:12:12',1,'0000-00-00 00:00:00',0,1),(39,2,97,'index,add,edit,delete','2017-08-29 12:12:33',1,'0000-00-00 00:00:00',0,1),(40,2,95,'index,add,edit,delete','2017-08-29 12:12:47',1,'0000-00-00 00:00:00',0,1),(41,2,104,'index,add,edit,delete','2017-08-29 12:12:55',1,'0000-00-00 00:00:00',0,1),(42,2,101,'index,add,edit,delete','2017-08-29 12:13:15',1,'0000-00-00 00:00:00',0,1),(43,2,102,'index,add,edit,delete','2017-08-29 12:13:28',1,'0000-00-00 00:00:00',0,1),(44,2,100,'index,add,edit,delete','2017-08-29 12:13:34',1,'0000-00-00 00:00:00',0,1),(46,2,114,'index','2017-08-29 12:13:49',1,'0000-00-00 00:00:00',0,1),(47,2,19,'index,add,delete','2017-08-29 12:14:02',1,'0000-00-00 00:00:00',0,1),(48,2,108,'index,add,edit,delete','2017-08-29 12:14:23',1,'0000-00-00 00:00:00',0,1),(49,2,106,'index,add,edit,delete','2017-08-29 12:14:36',1,'0000-00-00 00:00:00',0,1),(50,2,105,'index,bottomMenu,add,edit,delete,updateAll','2017-08-29 12:14:45',1,'0000-00-00 00:00:00',0,1),(51,2,4,'index,add,edit','2017-08-29 12:14:53',1,'0000-00-00 00:00:00',0,1),(52,3,24,'index,add,edit','2017-08-29 12:30:58',1,'0000-00-00 00:00:00',0,1),(55,3,94,'index,add,edit,delete','2017-08-29 12:31:46',1,'0000-00-00 00:00:00',0,1),(56,3,93,'index,add,edit,delete','2017-08-29 12:32:05',1,'0000-00-00 00:00:00',0,1),(72,3,112,'index,add,edit,delete','2017-08-29 12:36:40',1,'0000-00-00 00:00:00',0,1),(74,3,98,'index,add,edit,delete','2017-08-29 12:37:46',1,'0000-00-00 00:00:00',0,1),(75,3,97,'index,add,edit,delete','2017-08-29 12:38:02',1,'0000-00-00 00:00:00',0,1),(76,3,95,'index,add,edit,delete','2017-08-29 12:38:25',1,'0000-00-00 00:00:00',0,1),(77,3,104,'index,add,edit,delete','2017-08-29 12:38:32',1,'0000-00-00 00:00:00',0,1),(78,3,101,'index,add,edit,delete','2017-08-29 12:38:47',1,'0000-00-00 00:00:00',0,1),(79,3,102,'index,add,edit,delete','2017-08-29 12:38:56',1,'0000-00-00 00:00:00',0,1),(80,3,100,'index,add,edit,delete','2017-08-29 12:39:07',1,'0000-00-00 00:00:00',0,1),(82,3,19,'index,add','2017-08-29 12:39:59',1,'0000-00-00 00:00:00',0,1),(83,3,108,'index,add,edit','2017-08-29 12:40:08',1,'0000-00-00 00:00:00',0,1);
/*!40000 ALTER TABLE `comm_auth_acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_auth_controller_function`
--

DROP TABLE IF EXISTS `comm_auth_controller_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_auth_controller_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `auth_function_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_auth_controller_function`
--

LOCK TABLES `comm_auth_controller_function` WRITE;
/*!40000 ALTER TABLE `comm_auth_controller_function` DISABLE KEYS */;
INSERT INTO `comm_auth_controller_function` VALUES (5,88,'index,add_update,updateAll,delete','Admin Menu','2017-08-18 10:49:58',1,'2017-08-26 11:54:55',1,1),(6,129,'index,add,edit,delete','Create Access List','2017-08-22 03:56:11',1,'2017-08-26 11:55:32',1,1),(7,130,'index,add,edit,delete','Assign User Access','2017-08-22 03:56:30',1,'2017-08-26 11:56:13',1,1),(8,68,'index,add,edit','User Menu Previlege','2017-08-22 03:57:49',1,'2017-08-26 11:56:37',1,1),(9,22,'index,add,edit','Manage User','2017-08-22 03:59:29',1,'2017-08-26 11:56:47',1,1),(10,15,'index,updateRecord','Social Link','2017-08-22 04:02:14',1,'2017-08-26 12:44:22',1,1),(11,24,'index,add,edit,delete,page_default','Page','2017-08-22 04:04:13',1,'2017-08-26 11:57:28',1,1),(14,94,'index,add,edit,delete','Photo Gallery Category','2017-08-22 04:08:44',1,'2017-08-26 12:43:48',1,1),(15,93,'index,add,edit,delete','Photo Gallery','2017-08-22 04:09:29',1,'2017-08-26 12:43:58',1,1),(29,112,'index,add,edit,delete','Events','2017-08-22 04:24:25',1,'2017-08-26 12:03:12',1,1),(31,98,'index,add,edit,delete','Notice Board','2017-08-22 04:25:56',1,'2017-08-26 12:03:38',1,1),(32,97,'index,add,edit,delete','Whats New','2017-08-22 04:26:21',1,'2017-08-26 12:03:54',1,1),(33,95,'index,add,edit,delete,recycle','Important Link','2017-08-22 04:27:21',1,'2018-07-30 12:52:34',1,1),(34,104,'index,add,edit,delete,recycle','Important Website','2017-08-22 04:27:26',1,'2018-07-30 12:52:48',1,1),(35,101,'index,add,edit,delete','News','2017-08-22 04:28:44',1,'2018-07-30 12:57:05',1,1),(36,100,'index,add,edit,delete','RTI','2017-08-22 04:30:03',1,'2017-08-26 12:05:15',1,1),(38,102,'index,add,edit,delete','Services','2017-08-22 04:30:30',1,'2017-08-26 12:06:00',1,1),(39,114,'index','Feedback','2017-08-22 04:31:13',1,'2017-08-26 12:05:40',1,1),(40,19,'index,add,delete','Media','2017-08-22 04:32:47',1,'2017-08-26 12:06:21',1,1),(41,108,'index,add,edit,delete','Slider','2017-08-22 04:34:24',1,'2017-08-26 12:06:10',1,1),(43,4,'index,add,edit','Website Settings','2017-08-22 04:58:15',1,'2017-08-26 12:16:41',1,1),(45,105,'index,bottomMenu,add,edit,delete,updateAll','Front Menu','2017-08-26 12:15:02',1,'0000-00-00 00:00:00',0,1),(48,106,'index,add,edit,delete','Menu Module','2017-08-29 12:00:16',1,'0000-00-00 00:00:00',0,1),(50,147,'index,add,edit,delete,recycle','Video Gallery Category','2018-07-30 12:42:05',1,'2018-07-30 12:43:28',1,1),(51,146,'index,add,edit,delete,recycle','Video Gallery','2018-07-30 12:43:50',1,'0000-00-00 00:00:00',0,1),(52,152,'index,add,edit,delete,recycle','Download','2018-07-30 12:51:07',1,'0000-00-00 00:00:00',0,1),(53,149,'index,add,edit,delete,recycle','Contact Category','2018-07-30 12:57:57',1,'2018-07-30 12:58:21',1,1),(54,150,'index,add,edit,delete,recycle','Contact Designation','2018-07-30 12:59:29',1,'0000-00-00 00:00:00',0,1),(55,151,'index,add,edit,delete,recycle','Contactboard','2018-07-30 12:59:52',1,'0000-00-00 00:00:00',0,1),(56,143,'index,add,edit,delete,recycle','Messageboard','2018-07-30 01:00:20',1,'0000-00-00 00:00:00',0,1),(57,153,'index,add,edit,delete,recycle','Hospital Category','2018-07-30 01:05:24',1,'0000-00-00 00:00:00',0,1),(58,154,'index,add,edit,delete,recycle','Hospital','2018-07-30 01:05:43',1,'0000-00-00 00:00:00',0,1),(59,156,'index,add,edit,delete,recycle','Entitlement','2018-07-30 01:05:59',1,'0000-00-00 00:00:00',0,1);
/*!40000 ALTER TABLE `comm_auth_controller_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_career`
--

DROP TABLE IF EXISTS `comm_career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_career` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `issue_date` datetime NOT NULL,
  `last_date` datetime NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_career`
--

LOCK TABLES `comm_career` WRITE;
/*!40000 ALTER TABLE `comm_career` DISABLE KEYS */;
INSERT INTO `comm_career` VALUES (1,'test','test','<p>\r\n	test</p>','<p>\r\n	test</p>','water2-min5.jpg','2019-11-28 00:00:00','2019-11-12 00:00:00','2019-11-16 10:16:57',1,'2019-11-16 02:12:05',1,1,1,'2019-11-19 00:00:00'),(2,'test','test','<p>\r\n	test</p>','<p>\r\n	test</p>','water2-min6.jpg','2019-11-20 00:00:00','2019-11-26 00:00:00','2019-11-16 11:49:00',1,'2019-11-16 02:12:08',1,1,1,'2019-11-13 00:00:00'),(3,'Tender for Supply &amp; Installation of Architectural Design Software','Tender for Supply and Installation of Architectural Design Software','','','tender-staadpro.pdf','2020-09-16 00:00:00','2020-11-07 00:00:00','2020-09-18 12:35:25',1,'2020-10-09 05:23:59',1,1,1,'2020-10-10 00:00:00');
/*!40000 ALTER TABLE `comm_career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_circular_category`
--

DROP TABLE IF EXISTS `comm_circular_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_circular_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_title_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime DEFAULT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `cat_status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_circular_category`
--

LOCK TABLES `comm_circular_category` WRITE;
/*!40000 ALTER TABLE `comm_circular_category` DISABLE KEYS */;
INSERT INTO `comm_circular_category` VALUES (1,'General','सामान्य','2017-06-24 04:23:11',1,'2018-01-08 03:39:51',1,1,0);
/*!40000 ALTER TABLE `comm_circular_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_circulars`
--

DROP TABLE IF EXISTS `comm_circulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_circulars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `is_alert` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_circulars`
--

LOCK TABLES `comm_circulars` WRITE;
/*!40000 ALTER TABLE `comm_circulars` DISABLE KEYS */;
INSERT INTO `comm_circulars` VALUES (1,1,'O&amp;M','GoMP Notification of O&amp;M 2014','GoMP_Notification_of_OM_2014.pdf','2019-11-29 01:56:44',2,'2020-09-26 11:59:30',1,1,0,1,'2019-12-31 00:00:00',1,'2020-01-02 10:56:21',1),(2,1,'वन भूमि सम्बंधित मार्ग दर्शिका २०१९','FOREST HANDBOOK GUIDELINES 2019','FOREST_HANDBOOK_GUIDELINES_2019.pdf','2019-12-11 12:00:10',2,'2020-09-26 11:59:32',1,1,0,1,'2019-12-11 00:00:00',2,'0000-00-00 00:00:00',0),(3,1,'रास्ट्रीय राज्य मार्ग सम्बंधित प्रपत्र  २२-१० -२०१६','NHAI Circular Dt.22-10-2016','1_NHEAI_Circulare_Dt__22_10_2016.pdf','2019-12-11 12:04:34',2,'2020-09-26 11:59:34',1,1,0,1,'2019-12-11 00:00:00',3,'0000-00-00 00:00:00',0),(4,1,'म प्र जल निगम मर्यादित सभी प्रकार के अनुमतियाँ','MPJNM All Permission Procedures Guide','MPJNM_All_Permission_Procedures.pdf','2019-12-11 12:16:22',2,'2020-09-26 11:59:36',1,1,0,1,'2019-12-11 00:00:00',4,'0000-00-00 00:00:00',0),(5,1,'Upcoming Project','Upcoming Project','Ongoing_Projects.pdf','2020-09-26 12:00:38',1,'0000-00-00 00:00:00',0,1,0,0,'2022-04-02 00:00:00',5,'0000-00-00 00:00:00',1),(6,1,'Empanelled_Architects','Empanelled_Architects','List_of_Empanelled_Architects.pdf','2020-09-26 01:24:41',1,'0000-00-00 00:00:00',0,1,0,0,'2021-02-27 00:00:00',6,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `comm_circulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_consultancy_firms`
--

DROP TABLE IF EXISTS `comm_consultancy_firms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_consultancy_firms` (
  `consultancy_name` varchar(200) NOT NULL,
  `contact_name` varchar(200) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `exp_year` varchar(60) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `tournover_year` float NOT NULL,
  `no_of_core_staff` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `pincode` int(11) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `mobile` int(11) NOT NULL,
  `landline` int(11) NOT NULL,
  `profile_attachment` varchar(200) NOT NULL,
  `work_attachment` varchar(200) NOT NULL,
  `taxcertificate_attachment` varchar(200) NOT NULL,
  `staff_attachment` varchar(200) NOT NULL,
  `balencesheet_attachment` varchar(200) NOT NULL,
  `article_attachment` varchar(200) NOT NULL,
  `terms_condition` tinyint(4) NOT NULL,
  `added_date` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_status` tinyint(4) NOT NULL,
  `application_status` int(4) NOT NULL DEFAULT '0',
  `reject_region` varchar(250) NOT NULL,
  `tnx_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_consultancy_firms`
--

LOCK TABLES `comm_consultancy_firms` WRITE;
/*!40000 ALTER TABLE `comm_consultancy_firms` DISABLE KEYS */;
INSERT INTO `comm_consultancy_firms` VALUES ('Xcvxcvxcv','Xcvxcv','Xcvxcv','','',0,0,'','','',0,'Xcvxcv@dsrg.cb',1234567890,0,'','','','','','',0,'2021-05-03 17:09:44',1,0,0,'',0),('SDSDSDSD','SDSDD','2345676548','3','SDFSDF',2,4,'FGHFHGFGHFGH','GWALIOR','20',567890,'testepco@mailinator.com',2147483647,1234567890,'','','','','','',0,'2021-05-21 16:44:26',2,0,1,'',0),('Xfdgdfgdf','Gdfgdfgdfgdfg','2343456789','4','Dfsdfsdf',5,5,'Fgbfbf','Gdfgdfg','18',567890,'testepco@mailinator.com',2147483647,2147483647,'','','','','','',0,'2021-05-21 16:48:29',3,0,2,'zsdfsdfsdfsdf',0),('SDFSDFSDF','Dfg Fgh','3456789027','5','Xcvcx',4,4,'Dfgdfgdfg','GWALIOR','20',567890,'Rth@ert.fgh',2147483647,1234567890,'','','','','','',0,'2021-05-21 16:55:08',4,0,1,'',0),('Sdsdsd','Dfg Fgh','1234567890','5','Dfgdfgfd',5,5,'Dfgdfgdfg','GWALIOR','20',567890,'testepco@mailinator.com',1234567890,2147483647,'','','','','','',0,'2021-05-21 16:57:31',5,0,1,'',0),('Sshunh Vghj','Vbnvbnv','1234567890','3','Sdfsfd',2,4,'Sdfsfsdfsdf','Sdfsdf','13',345678,'Dfdfd@ewr.sdg',1234567890,1234567890,'','','','','','',0,'2021-05-24 11:22:48',6,0,2,'ghjghjghj',0),('Zsdsda','Asdasd','1234567890','4','Sdfsdfs',33,5,'Zx1234567890','Sefdsf','17',345678,'Test@gmail.com',1234567890,1234567890,'','','','','','',0,'2021-05-24 11:24:24',7,0,0,'',0),('Sdfsfsdf','Sdfsdf','1234567890','3','Xvcv',3,3,'SZGzg','Xdsdfsdf','8',456789,'Sdfdf@wet.fh',1234567890,1234567890,'','','','','','',0,'2021-05-24 11:27:47',8,0,2,'test rejected ',0),('Test','Test','1234567890','34','Sdfjjh',34,2,'Sjdjsdjsdfhsdfsfdh','Sdsdfdf','18',456789,'Sdfsdf@wr.dg',1234567890,1234567890,'','','','','','',0,'2021-05-24 11:46:38',9,0,0,'',0),('Cvbcv','Cvbcvb','1234567890','E','Sdfsfsd',3,3,'Sdfsdf','Sdf','6',456789,'Sdfsd@wet.dfg',1234567890,1234567890,'','','','','','',0,'2021-05-24 11:48:22',10,0,0,'',0),('Xfgdfg','Dfgdfg','1234567890','4','Sdfdsf',4,4,'Zsdzsdsdsa','Zsdsds','18',456789,'Sdsdsd@gmail.com',1234567890,1234567890,'','','','','','',0,'2021-05-24 14:51:46',11,0,0,'',0),('Cvbcvbcvb','Cvbcvbvcbcvb','1234567890','4','Dfsdfsdf',5,5,'Cbvcvbcvbcvb','Xvccvxcv','16',456789,'Fgfgf@ser.fgh',1234567890,1234567890,'','','','','','',0,'2021-05-24 15:09:38',12,0,0,'',0),('Asdasdasdasdasdasdasdasdasdds','Asdasd','1234567890','4','Sdasd',3,3,'Sadsadasd','Asdas','5',456789,'Sdfsdf@qwr.sdf',1234567890,1234567890,'','','','','','',0,'2021-05-24 15:47:51',13,0,0,'',0),('Dfgdfg','Dfgdfg','1234567890','4','Sdfsdf',4,4,'Vdfvdsjkfskdjkj','Dfggd','9',456789,'Sdfsd@ert.saer',1234567890,1234567890,'','','','','','',0,'2021-05-24 15:55:03',14,0,0,'',0),('Asdasd','Asdasd','1234567890','4','Dfsdfsdf',3,3,'SZDFSDF','ASHOKNAGAR','15',123456,'Sdfsfd@rey.sdf',1234567890,1234567890,'Untitled-11.pdf','Untitled-12.pdf','Untitled-121.pdf','Untitled-111.pdf','Untitled-112.pdf','Untitled-122.pdf',1,'2021-05-24 16:23:44',15,0,0,'',0),('Sdfsfsdf','Sdfsfdsdf','1234567890','4','Dfgdgf',4,4,'Dfsfsfs','Sewrewre','6',567890,'Rwerwe@wer.ret',1234567890,1234567890,'Untitled-113.pdf','Untitled-123.pdf','Untitled-114.pdf','Untitled-124.pdf','Untitled-125.pdf','Untitled-115.pdf',0,'2021-05-28 13:30:42',16,0,0,'',0),('Sdfsdf','Sdf','1234567890','5','Dfdf',56,3,'Xcvxcvcxv','Xxcv','14',123321,'Xcvxcvv@wet.dfg',1234567890,1234567890,'Untitled-116.pdf','Untitled-117.pdf','Untitled-118.pdf','Untitled-119.pdf','Untitled-1110.pdf','Untitled-1111.pdf',0,'2021-05-28 15:13:16',17,0,0,'',0),('Zxczc','Sdfsdfsdf','1234567890','4','Fgh Fgh',4,4,'Fghfgh','KHANDWA','20',678905,'Dfg@ery.df',1234567890,1234567890,'Untitled-1112.pdf','Untitled-1113.pdf','Untitled-1114.pdf','Untitled-1115.pdf','Untitled-1116.pdf','Untitled-126.pdf',0,'2021-05-28 15:20:00',18,0,0,'',0),('Cfghasesdfsdf','Asdsd','1233456789','4','Fggf',5,56,'Dfgdfgdfgdfgdfg','Assdasdas','20',567890,'Shubha.pachouri@mapit.gov.in',1234567890,1234567890,'SoW_MP_Social_Justice_WebPortal_V1_0.pdf','SoW_MP_Social_Justice_WebPortal_V1_01.pdf','SoW_MP_Social_Justice_WebPortal_V1_02.pdf','SoW_MP_Social_Justice_WebPortal_V1_03.pdf','SoW_MP_Social_Justice_WebPortal_V1_04.pdf','SoW_MP_Social_Justice_WebPortal_V1_05.pdf',0,'2021-06-01 15:56:40',19,0,0,'',0),('Fhfh','Fgh','4546565656','54','Dg',4,45,'Df','Dhg','16',456789,'Testepco@mailiantor.com',2147483647,0,'NPS_14_percent.pdf','NPS_14_percent1.pdf','NPS_14_percent2.pdf','NPS_14_percent3.pdf','NPS_14_percent4.pdf','NPS_14_percent5.pdf',0,'2021-07-19 16:52:20',20,0,0,'',34343434),('GHJ','GHJGHJ','1234567890','56','FG',45,456,'DFGDFG','DFGDF','14',456789,'Testepco@mailinator.comasd',1234567890,0,'NPS_14_percent6.pdf','NPS_14_percent7.pdf','NPS_14_percent8.pdf','NPS_14_percent9.pdf','NPS_14_percent10.pdf','NPS_14_percent11.pdf',0,'2021-07-19 17:41:35',21,0,0,'',123456789),('Fghfgh','Fghfgh','123','45','Dfgdfg',45,56,'Dfg','Dfg','17',456789,'Dfg@ry.dfg',2147483647,2147483647,'COI.pdf','COI1.pdf','COI2.pdf','COI3.pdf','COI4.pdf','COI5.pdf',0,'2021-08-12 17:23:38',22,0,0,'',454545),('Cfghbcv','Bcvbcvb','1234564567','45','Dfgdfgd',45,45,'Dfgdfg','Dfgdfg','18',456789,'Dfgdfg@qwre.fgh',2147483647,2147483647,'2021-08-12_173015.pdf','2021-08-12_1730151.pdf','2021-08-12_1730152.pdf','2021-08-12_1730153.pdf','2021-08-12_1730154.pdf','2021-08-12_1730155.pdf',0,'2021-08-12 17:30:15',23,0,0,'',454545),('Fghfgh','Fghfgh','5656432678','5','Fghfgh',5,5,'Fghfgh','Fghfgh','20',567890,'Fhfgh@w35r.ghj',2147483647,2147483647,'SOW_MRCL_CMSWebsite_V1_0_(1).pdf','SOW_MRCL_CMSWebsite_V1_0_(1)1.pdf','SOW_MRCL_CMSWebsite_V1_0_(1)2.pdf','MOA.pdf','RTI-Letter.pdf','COI6.pdf',0,'2021-08-12 17:32:37',24,0,0,'',5646456),('Fghfg','Hfghfghfgh','2345678904','5','Fghfgh',456,56,'Dfdf','Dfg','16',456789,'Efgd@wet.lfgh',2147483647,1234567890,'2021-08-12_173452profile_attachment.pdf','2021-08-12_173452work_attachment.pdf','2021-08-12_173452taxcertificate_attachment.pdf','2021-08-12_173452staff_attachment.pdf','2021-08-12_173452balencesheet_attachment.pdf','2021-08-12_173452article_attachment.pdf',0,'2021-08-12 17:34:52',25,0,0,'',454545),('ZSDF','SDF','1234567890','5','FGHFGH',5656,5,'DFGHFGHFG','FGHFGH','18',462039,'TEST@MAIL.COM',1234325678,2147483647,'2021-09-02_174139_profile_attachment.pdf','2021-09-02_174139_work_attachment.pdf','2021-09-02_174139_taxcertificate_attachment.pdf','2021-09-02_174139_staff_attachment.pdf','2021-09-02_174139_balencesheet_attachment.pdf','2021-09-02_174139_article_attachment.pdf',0,'2021-09-02 05:41:39',26,0,0,'',454545),('DF','DFG','345','4','DFG',4,4,'DFG','DFG','18',456789,'SDFG@ERY.FGH',1234567890,1234567890,'2021-09-02_175858_profile_attachment.pdf','2021-09-02_175858_work_attachment.pdf','2021-09-02_175858_taxcertificate_attachment.pdf','2021-09-02_175858_staff_attachment.pdf','2021-09-02_175858_balencesheet_attachment.pdf','2021-09-02_175858_article_attachment.pdf',0,'2021-09-02 05:58:58',27,0,0,'',23323),('Fgdfgdfg','Dfgd','1234567890','4','Dfgdfg',4,4,'Dfgdfgdg','Dfg','17',456789,'Fghfh@sry.gh',1234567890,1234567890,'2021-09-09_151105_profile_attachment.pdf','2021-09-09_151105_work_attachment.pdf','2021-09-09_151105_taxcertificate_attachment.pdf','2021-09-09_151105_staff_attachment.pdf','2021-09-09_151105_balencesheet_attachment.pdf','2021-09-09_151106_article_attachment.pdf',0,'2021-09-09 03:11:06',28,0,0,'',454545);
/*!40000 ALTER TABLE `comm_consultancy_firms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_consultancy_project`
--

DROP TABLE IF EXISTS `comm_consultancy_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_consultancy_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consultancy_id` int(11) NOT NULL,
  `project_title` varchar(250) NOT NULL,
  `area_of_project` varchar(250) NOT NULL,
  `assignment_details` varchar(250) NOT NULL,
  `name_of_client` varchar(250) NOT NULL,
  `project_cost` float NOT NULL,
  `year_of_execution` varchar(11) NOT NULL,
  `duration_of_project` decimal(10,0) NOT NULL,
  `completion_status` varchar(250) NOT NULL,
  `project_added_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_consultancy_project`
--

LOCK TABLES `comm_consultancy_project` WRITE;
/*!40000 ALTER TABLE `comm_consultancy_project` DISABLE KEYS */;
INSERT INTO `comm_consultancy_project` VALUES (1,10,'zxcxzc','0','zsczxc','zxczxc',4,'2021',3,'zxczxc','2021-05-24 11:48:22'),(2,11,'dsfdfsdf','0','zsdsd','asdasd',4,'2021',3,'sdfsf','2021-05-24 14:51:46'),(3,12,'zsdsds','0','fgf','dfgfg',4,'2021',5,'gfgfg','2021-05-24 15:09:38'),(4,13,'zcxczx','0','sdfs','sdfsd',3,'2021',3,'sdsad','2021-05-24 15:47:51'),(5,14,'sdfdsfsdf','0','asdasdas','asdasda',3,'2021',3,'sdfdsf','2021-05-24 15:55:03'),(6,15,'dffdf','0','sdf','sdf',3,'2021',5,'sdf','2021-05-24 16:23:44'),(7,16,'wererwerwer','0','sdff','sfg',45,'2021',5,'vcbcvb','2021-05-28 13:30:42'),(8,17,'sdf','0','sdf','sdf',3,'2021',4,'sdf','2021-05-28 15:13:16'),(9,18,'sdfsdf','0','xdfdf','dfd',3,'2021',5,'fdgh','2021-05-28 15:20:00'),(10,19,'vbvbvcb','0','fgff','gfgfg',45,'2021',5,'ddfdf','2021-06-01 15:56:40'),(11,20,'','0','','',0,'',0,'','2021-07-19 16:52:20'),(12,21,'DFG','3','DFG','DFG',45,'2021',45,'FG','2021-07-19 17:41:35'),(13,22,'cv','2','56','56',56,'1956',5,'fgh','2021-08-12 17:23:38'),(14,23,'sdf','3','dfg','DFG DFG',45,'2021',4,'dfgdfgdfg','2021-08-12 17:30:15'),(15,24,'fgh','2','fgh','fgh',56,'2021',4,'ghfgh','2021-08-12 17:32:37'),(16,25,'dfgdfg','0','56','fg',56,'2021',4,'dfgdfg','2021-08-12 17:34:52'),(17,26,'FGHF','2','45','DFG',4,'2021',4,'DCFGDFG','2021-09-02 05:41:39'),(18,27,'CVBCB','0','DFGF','DFG',4,'2021',4,'DFG','2021-09-02 05:58:58'),(19,28,'sdfsdf','0','asdf','DFG DFG',2,'2021',4,'dfg','2021-09-09 03:11:06');
/*!40000 ALTER TABLE `comm_consultancy_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_consultancy_reg_department1`
--

DROP TABLE IF EXISTS `comm_consultancy_reg_department1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_consultancy_reg_department1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consultancy_id` int(11) NOT NULL,
  `department_name` varchar(64) NOT NULL,
  `no_of_project_reg` varchar(100) NOT NULL,
  `registration_year` year(4) NOT NULL,
  `department_added_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_consultancy_reg_department1`
--

LOCK TABLES `comm_consultancy_reg_department1` WRITE;
/*!40000 ALTER TABLE `comm_consultancy_reg_department1` DISABLE KEYS */;
INSERT INTO `comm_consultancy_reg_department1` VALUES (8,17,'GH','3',2021,'2021-05-28 15:13:16'),(9,18,'dfdfdfd','6',2021,'2021-05-28 15:20:00'),(10,19,'cffdfdfd','56',2021,'2021-06-01 15:56:40'),(11,20,'','',0000,'2021-07-19 16:52:20'),(12,21,'FGH','4',2021,'2021-07-19 17:41:35'),(13,22,'gh','5',2021,'2021-08-12 17:23:38'),(14,23,'FG','4',2021,'2021-08-12 17:30:15'),(15,24,'fghfgh','4',2021,'2021-08-12 17:32:37'),(16,25,'dfgdfg','45',2021,'2021-08-12 17:34:52'),(17,27,'DFG','4',2021,'2021-09-02 05:58:58'),(18,28,'FG','4',2021,'2021-09-09 03:11:06');
/*!40000 ALTER TABLE `comm_consultancy_reg_department1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_contact`
--

DROP TABLE IF EXISTS `comm_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `work_allocation_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `work_allocation_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `d_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `res_phone_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `location` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_contact`
--

LOCK TABLES `comm_contact` WRITE;
/*!40000 ALTER TABLE `comm_contact` DISABLE KEYS */;
INSERT INTO `comm_contact` VALUES (1,'Anoop','Anoop','anoop@gmail.com','','','','',1,'2018-11-15 04:04:49',1,'2021-03-04 12:39:59',0,1,0,2,1,'1236547890','',11,'0000-00-00 00:00:00',0),(2,'Shubham','Shubhan','test@dsfds.com','09098303738','water2-min7.jpg','test','tewt',1,'2019-11-16 12:50:45',1,'2021-03-04 12:40:01',0,1,0,2,1,'12341234567','09098303738',12,'0000-00-00 00:00:00',0),(3,'Shubham','Shubham','test@test.com','09098303738','','','',1,'2019-11-16 12:53:14',1,'2019-11-16 02:14:00',1,1,1,2,1,'08103053046','09098303738',13,'0000-00-00 00:00:00',0),(4,'Manish Singh','Manish SIngh','manish.singh@test.com','','31.png','','',1,'2019-12-07 11:25:04',1,'2021-03-04 12:40:04',0,1,0,1,1,'','',14,'0000-00-00 00:00:00',0),(5,'Dr. Ajit Sharma','Dr. Ajit Sharma','','','','','',1,'2019-12-07 04:41:12',2,'2020-09-26 04:04:41',1,1,0,6,1,'0755-2708598','',1,'2019-12-07 17:02:28',1),(6,'श्री बाल मुकुंद सोनी','Sri Bal Mukund Soni','pd.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 04:47:01',2,'2021-03-04 12:39:52',0,1,0,3,1,'0755-2579874','',2,'2019-12-07 17:02:36',0),(7,'श्री प्रकाश चन्द्र जैन','Sri Prakash Chandra Jain','cgm.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 04:52:47',2,'2021-03-04 12:39:54',0,1,0,2,1,'0755 -2579874','',3,'2019-12-07 17:02:46',0),(8,'श्री आशीष श्रीवास्तव','Sri Ashish Srivastava','cgm2.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 04:54:42',2,'2021-03-04 12:39:56',0,1,0,2,1,'0755 -2579874','',4,'2019-12-07 17:02:55',0),(9,'श्री पी के रघुवंशी','Sri P K Raghuwanshi','gmproc.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 04:56:46',2,'2021-03-04 12:39:57',0,1,0,4,1,'0755 -2579874','',5,'2019-12-07 17:03:08',0),(10,'श्री आलोक कुमार जैन','Sri Alok Kumar Jain','gmdnm.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 04:58:07',2,'2021-03-04 12:40:07',0,1,0,4,1,'0755 -2579874','',7,'2019-12-07 17:03:36',0),(11,'श्री दिलीप कुमार जैन','Sri Dilip Kumar Jain','gmgen.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 04:59:18',2,'2021-03-04 12:40:05',0,1,0,4,1,'0755 -2579874','',6,'2019-12-07 17:03:26',0),(12,'श्री प्रवीण कुमार गुरु','Sri Praveen Kumar Guru','gmplan.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 05:00:28',2,'2021-03-04 12:40:08',0,1,0,4,1,'0755 -2579874','',8,'2019-12-07 17:03:54',0),(13,'श्री विजय जादोन','Sri Vijay Jadon','gmcp.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 05:02:07',2,'2020-09-26 04:03:08',1,1,1,4,1,'0755 -2579874','',9,'2019-12-07 17:04:01',0),(14,'श्री सुबोध शर्मा','Sri Subodh Sharma','cfo.mpjalnigam@mp.gov.in','','','','',1,'2019-12-07 05:16:41',2,'2020-09-26 04:03:05',1,1,1,5,1,'0755 -2579874','',10,'2019-12-07 17:17:24',0),(15,'Mr. Alok Nayak','Mr. Alok Nayak','nayakalok@mp.gov.in','','','','',1,'2020-09-26 04:06:17',1,'2021-03-04 12:33:43',1,1,0,6,1,'1234567890','',1,'0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `comm_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_contact_category`
--

DROP TABLE IF EXISTS `comm_contact_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_contact_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime DEFAULT NULL,
  `edit_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0',
  `cat_status` tinyint(2) DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`,`added_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_contact_category`
--

LOCK TABLES `comm_contact_category` WRITE;
/*!40000 ALTER TABLE `comm_contact_category` DISABLE KEYS */;
INSERT INTO `comm_contact_category` VALUES (1,'प्रधान कार्यालय','Head Office','2018-01-06 03:30:39',1,'2018-07-25 03:30:41','1',1,0);
/*!40000 ALTER TABLE `comm_contact_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_contact_designation`
--

DROP TABLE IF EXISTS `comm_contact_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_contact_designation` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `designation_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `designation_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `cat_id` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_contact_designation`
--

LOCK TABLES `comm_contact_designation` WRITE;
/*!40000 ALTER TABLE `comm_contact_designation` DISABLE KEYS */;
INSERT INTO `comm_contact_designation` VALUES (1,'प्रबंध संचालक','Managing Director','1',1,'2018-07-25 00:00:00',1,'2018-08-14 03:49:41',3,1),(2,'मुख्य महा प्रबंधक','Chief General Manager','1',1,'2018-08-08 00:00:00',3,'2019-12-07 00:00:00',2,0),(3,'परियोजना निर्देशक','Project Director','1',1,'2018-08-08 00:00:00',3,'2019-12-07 00:00:00',2,0),(4,'महा प्रबंधक','General Manager','1',1,'2018-08-08 00:00:00',3,'2019-12-07 00:00:00',2,0),(5,'मुख्य वित्त्त अधिकारी','Chief Finance Officer','1',1,'2018-08-23 00:00:00',3,'2019-12-11 00:00:00',2,0),(6,'Project Fellow','Project Fellow','1',1,'2020-09-26 00:00:00',1,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `comm_contact_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_courses`
--

DROP TABLE IF EXISTS `comm_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(250) NOT NULL,
  `title_en` varchar(250) NOT NULL,
  `description_hi` varchar(250) NOT NULL,
  `description_en` varchar(250) NOT NULL,
  `attachment` varchar(250) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `archive_exp_date` datetime NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_courses`
--

LOCK TABLES `comm_courses` WRITE;
/*!40000 ALTER TABLE `comm_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_department`
--

DROP TABLE IF EXISTS `comm_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_hi` varchar(100) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `description_hi` varchar(250) NOT NULL,
  `description_en` varchar(250) NOT NULL,
  `attachment` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_department`
--

LOCK TABLES `comm_department` WRITE;
/*!40000 ALTER TABLE `comm_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_departments`
--

DROP TABLE IF EXISTS `comm_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_departments`
--

LOCK TABLES `comm_departments` WRITE;
/*!40000 ALTER TABLE `comm_departments` DISABLE KEYS */;
INSERT INTO `comm_departments` VALUES (1,'20-Point Implementation',1),(2,'Animal Husbandry',1),(3,'Aviation',1),(4,'Backward Classes & Minorities Welfare',1),(5,'Bhopal Gas Tragedy Relief & Rehabilitation',1),(6,'Bio Diversity & Bio Technology',1),(7,'Commerce & Industry',1),(8,'Commercial Taxes',1),(9,'Co-operation',1),(10,'Culture',1),(11,'Energy',1),(12,'Farmer Welfare & Agriculture Development',1),(13,'Finance',1),(14,'Fisheries',1),(15,'Food, Civil Supplies & Consumer Protection',1),(16,'Forest',1),(17,'General Administration',1),(18,'Higher Education',1),(19,'Home',1),(20,'Horticulture & Food Processing',1),(21,'Housing & Environment',1),(22,'Indian Systems of Medicine & Homeopathy (Ayush)',1),(23,'Information Technology',1),(24,'Jail',1),(25,'Labour',1),(26,'Law & Legislative Affairs',1),(27,'MAPIT',1),(28,'Medical Education',1),(29,'Mineral Resources',1),(30,'MP Logistics Ware House Corporation',1),(31,'MP Mandiboard',1),(32,'MP Treasury',1),(33,'MPSEDC',1),(34,'MPSWAN',1),(35,'Narmada Valley Development',1),(36,'Others',1),(37,'Panchayat & Rural Development',1),(38,'Parliamentary Affairs',1),(39,'Planning, Economics & Statistics',1),(40,'Public Enterprises',1),(41,'Public Grievances Redressal',1),(42,'Public Health & Family Welfare',1),(43,'Public Health Engineering',1),(44,'Public Relations',1),(45,'Public Service Management System',1),(46,'Public Works',1),(47,'Rehabilitation',1),(48,'Religious Trusts and Endowments',1),(49,'Revenue',1),(50,'Rural Industries',1),(51,'Scheduled Caste & Scheduled Tribe Welfare',1),(52,'School Education',1),(53,'Science & Technology',1),(54,'Social Welfare',1),(55,'Sports & Youth Welfare',1),(56,'Technical Education and Man Power Planning',1),(57,'Tourism',1),(58,'Transport',1),(59,'Urban Administration & Development',1),(60,'VYAPAM',1),(61,'Water Resources',1),(62,'Women & Child Development',1),(63,'Excise Department',1);
/*!40000 ALTER TABLE `comm_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_district`
--

DROP TABLE IF EXISTS `comm_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `district_code` int(11) NOT NULL,
  `district_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `district_name_h` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DistrictCensusCode` int(11) NOT NULL,
  `division_code` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_district`
--

LOCK TABLES `comm_district` WRITE;
/*!40000 ALTER TABLE `comm_district` DISABLE KEYS */;
INSERT INTO `comm_district` VALUES (1,390,'ANUPPUR','अनूपपुर',461,4,20,1),(2,391,'ASHOKNAGAR','अशोकनगर',459,2,20,1),(3,392,'BALAGHAT','बालाघाट',457,10,20,1),(4,393,'BARWANI','बडवानी',441,7,20,1),(5,394,'BETUL','बैतूल',447,9,20,1),(6,395,'BHIND','भिण्ड',420,1,20,1),(7,396,'BHOPAL','भोपाल',444,8,20,1),(8,397,'BURHANPUR','बुरहानपुर',467,7,20,1),(9,398,'CHHATARPUR','छतरपुर',425,3,20,1),(10,399,'CHHINDWARA','छिंदवाडा',455,10,20,1),(11,400,'DAMOH','दमोह',428,3,20,1),(12,401,'DATIA','दतिया',422,2,20,1),(13,402,'DEWAS','देवास',437,6,20,1),(14,403,'DHAR','धार',438,7,20,1),(15,404,'DINDORI','डिण्डौरी',453,4,20,1),(16,405,'KHANDWA','खण्डवा',466,7,20,1),(17,406,'GUNA','गुना',458,2,20,1),(18,407,'GWALIOR','ग्वालियर',421,2,20,1),(19,408,'HARDA','हरदा',448,9,20,1),(20,409,'HOSHANGABAD','होशंगाबाद',449,9,20,1),(21,410,'INDORE','इन्दौर',439,7,20,1),(22,411,'JABALPUR','जबलपुर',451,10,20,1),(23,412,'JHABUA','झाबुआ',464,7,20,1),(24,413,'KATNI','कटनी',450,10,20,1),(25,414,'KHARGONE','खरगौन',440,7,20,1),(26,415,'MANDLA','मण्डला',454,10,20,1),(27,416,'MANDSAUR','मंदसौर',433,6,20,1),(28,417,'MORENA','मुरैना',419,1,20,1),(29,418,'NARSINGHPUR','नरसिंहपुर',452,10,20,1),(30,419,'NEEMUCH','नीमच',432,6,20,1),(31,420,'PANNA','पन्ना',426,3,20,1),(32,421,'RAISEN','रायसेन',446,8,20,1),(33,422,'RAJGARH','राजगढ',442,8,20,1),(34,423,'RATLAM','रतलाम',434,6,20,1),(35,424,'REWA','रीवा',430,5,20,1),(36,425,'SAGAR','सागर',427,3,20,1),(37,426,'SATNA','सतना',429,5,20,1),(38,427,'SEHORE','सीहोर',445,8,20,1),(39,428,'SEONI','सिवनी',456,10,20,1),(40,429,'SHAHDOL','शहडोल',460,4,20,1),(41,430,'SHAJAPUR','शाजापुर',436,6,20,1),(42,431,'SHEOPUR','श्योपुर',418,1,20,1),(43,432,'SHIVPURI','शिवपुरी',423,2,20,1),(44,433,'SIDHI','सीधी',462,5,20,1),(45,434,'TIKAMGARH','टीकमगढ',424,3,20,1),(46,435,'UJJAIN','उज्जैन',435,6,20,1),(47,436,'UMARIA','उमरिया',431,4,20,1),(48,437,'VIDISHA','विदिशा',443,8,20,1),(49,638,'SINGROULI','सिंगरौली',463,5,20,1),(50,639,'ALIRAJPUR','अलीराजपुर',465,7,20,1),(51,667,'AGAR MALWA','आगर मालवा',0,7,20,1);
/*!40000 ALTER TABLE `comm_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_division`
--

DROP TABLE IF EXISTS `comm_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_division` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `divisionCode` int(11) NOT NULL,
  `divisionNameEn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `divisionNameHi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stateId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_division`
--

LOCK TABLES `comm_division` WRITE;
/*!40000 ALTER TABLE `comm_division` DISABLE KEYS */;
INSERT INTO `comm_division` VALUES (1,1,'CHAMBAL','चबंल',20),(2,2,'GWALIOR','ग्वालियर',20),(3,3,'SAGAR','सागर',20),(4,4,'SHAHDOL','शहडोल',20),(5,5,'REWA','रीवा',20),(6,6,'UJJAIN','उज्जैन',20),(7,7,'INDORE','इंदौर',20),(8,8,'BHOPAL','भोपाल',20),(9,9,'NARMADAPURAM','नर्मदापुरम्',20),(10,10,'JABALPUR','जबलपुर',20);
/*!40000 ALTER TABLE `comm_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_emergency_contact`
--

DROP TABLE IF EXISTS `comm_emergency_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_emergency_contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_district` varchar(100) NOT NULL,
  `contact_designation` varchar(100) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_office_number` varchar(100) NOT NULL,
  `contact_mobile_number` varchar(100) NOT NULL,
  `contact_fax_number` varchar(100) NOT NULL,
  `contact_emailid` varchar(100) NOT NULL,
  `contact_add_date` date NOT NULL,
  `contact_added_by` int(11) NOT NULL,
  `contact_edit_date` date NOT NULL,
  `contact_edited_by` int(11) NOT NULL,
  `contact_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_emergency_contact`
--

LOCK TABLES `comm_emergency_contact` WRITE;
/*!40000 ALTER TABLE `comm_emergency_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_emergency_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_entitlement`
--

DROP TABLE IF EXISTS `comm_entitlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_entitlement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_entitlement`
--

LOCK TABLES `comm_entitlement` WRITE;
/*!40000 ALTER TABLE `comm_entitlement` DISABLE KEYS */;
INSERT INTO `comm_entitlement` VALUES (1,'एसईसीसी','SECC','<p>\r\n	सामाजिक, आर्थिक जाति जनगणना (SECC) में अपनी पात्रता जानने हेतु <a href=\"https://mera.pmjay.gov.in/search/login\">यहाँ क्लिक करें</a>.</p>','<p>\r\n	To know your eligibility in Socio Economic Caste Consensus (SECC) <a href=\"https://mera.pmjay.gov.in/search/login\">Please Click Here.</a></p>','2018-07-27 04:34:31',1,'2018-09-22 06:51:11',3,1,0,1,'0000-00-00 00:00:00'),(2,'असंगठित श्रम','Unorganized Labour','<p>\r\n	सामग्री की प्रतीक्षा है।</p>','<p>\r\n	Content Awaited.</p>','2018-07-27 04:35:42',1,'0000-00-00 00:00:00',0,1,0,3,'2018-07-27 16:36:52'),(3,'एनएफएसए','NFSA','<p>\r\n	सामग्री की प्रतीक्षा है।</p>','<p>\r\n	Content Awaited.</p>','2018-07-27 04:36:41',1,'0000-00-00 00:00:00',0,1,0,2,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_entitlement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_events`
--

DROP TABLE IF EXISTS `comm_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_events`
--

LOCK TABLES `comm_events` WRITE;
/*!40000 ALTER TABLE `comm_events` DISABLE KEYS */;
INSERT INTO `comm_events` VALUES (1,0,'पुंजापुरा समूह जल प्रदाय योजना','Punjapura MVRWSS*','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:293px;\" width=\"294\">\r\n	<colgroup>\r\n		<col style=\"text-align: center;\" />\r\n		<col style=\"text-align: center;\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"30\">\r\n			<td colspan=\"2\" height=\"30\" style=\"height: 30px; width: 293px; text-align: center;\">\r\n				<span style=\"font-size:16px;\"><strong>परियोजना एक नज़र मे&nbsp;</strong></span></td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:155px;\">\r\n				<strong>परियोजना का नाम&nbsp;</strong></td>\r\n			<td style=\"width:139px;\">\r\n				<strong>पुंजापुरा समूह जल प्रदाय योजना&nbsp;</strong></td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				जिला</td>\r\n			<td style=\"width:139px;\">\r\n				देवास&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				गाँवों की संख्या&nbsp;</td>\r\n			<td style=\"width:139px;\">\r\n				25</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				कनेक्शनों&nbsp; की संख्या&nbsp;</td>\r\n			<td style=\"width:139px;\">\r\n				3770</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				लाभान्वित जनसँख्या&nbsp;</td>\r\n			<td style=\"width:139px;\">\r\n				23825</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				प्रारंभ दिनांक&nbsp;</td>\r\n			<td style=\"width:139px;\">\r\n				07.08.2014</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				पूर्ण दिनांक&nbsp;</td>\r\n			<td style=\"width:139px;\">\r\n				01.09.2017</td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:155px;\">\r\n				परियोजना की लागत (रु. करोड़ में )</td>\r\n			<td style=\"width:139px;\">\r\n				25.04</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				संचालन संधारण अवधि&nbsp;</td>\r\n			<td align=\"left\">\r\n				10 वर्ष&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:293px;\" width=\"294\">\r\n	<colgroup>\r\n		<col />\r\n		<col />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"42\">\r\n			<td colspan=\"2\" height=\"42\" style=\"height: 42px; width: 293px; text-align: center;\">\r\n				<strong><span style=\"font-size:16px;\">Project At A Glance</span></strong></td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:155px;\">\r\n				<strong>Project Name</strong></td>\r\n			<td style=\"width:139px;\">\r\n				<strong>Punjapura MVRWSS</strong></td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				District</td>\r\n			<td style=\"width:139px;\">\r\n				Dewas</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				No. of Villages Covered</td>\r\n			<td style=\"width:139px;\">\r\n				25</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				No. of Connections&nbsp;</td>\r\n			<td style=\"width:139px;\">\r\n				3770</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td height=\"20\" style=\"height:20px;width:155px;\">\r\n				Population&nbsp;Benefited</td>\r\n			<td style=\"width:139px;\">\r\n				23825</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				Start Date</td>\r\n			<td style=\"width:139px;\">\r\n				07.08.2014</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				Completion Date</td>\r\n			<td style=\"width:139px;\">\r\n				01.09.2017</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:155px;\">\r\n				Project Cost (Rs. In Cr.)</td>\r\n			<td style=\"width:139px;\">\r\n				25.04</td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:155px;\">\r\n				Operation &amp; Maintanance Duration&nbsp;</td>\r\n			<td align=\"left\">\r\n				10 years&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>','','2019-11-20 02:10:00','2019-11-27 06:30:00','2019-11-16 10:44:01',1,'2019-12-10 10:45:33',1,1,1,0,4,'2019-12-09 11:02:41'),(2,0,'मरदानपुर  समूह जल प्रदाय योजना','Mardanpur MVRWSS*','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 365px;\" width=\"365\">\r\n	<tbody>\r\n	</tbody>\r\n</table>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:303px;\" width=\"303\">\r\n	<colgroup>\r\n		<col style=\"text-align: center;\" />\r\n		<col style=\"text-align: center;\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"30\">\r\n			<td colspan=\"2\" height=\"30\" style=\"height: 30px; width: 303px; text-align: center;\">\r\n				<strong><span style=\"font-size:16px;\">परियोजना एक नज़र मे&nbsp;</span></strong></td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:179px;\">\r\n				परियोजना का नाम&nbsp;</td>\r\n			<td align=\"left\" style=\"width:124px;\">\r\n				<strong>मरदानपुर&nbsp; समूह जल प्रदाय योजना&nbsp;</strong></td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				जिला</td>\r\n			<td align=\"left\" style=\"width:124px;\">\r\n				सीहोर&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				गाँवों की संख्या&nbsp;</td>\r\n			<td style=\"width:124px;\">\r\n				187</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				कनेक्शनों&nbsp; की संख्या&nbsp;</td>\r\n			<td style=\"width:124px;\">\r\n				24787</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				लाभान्वित जनसँख्या&nbsp;</td>\r\n			<td style=\"width:124px;\">\r\n				224542</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				प्रारंभ दिनांक&nbsp;</td>\r\n			<td style=\"width:124px;\">\r\n				23.01.2014</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				पूर्ण दिनांक&nbsp;</td>\r\n			<td style=\"width:124px;\">\r\n				01.01.2018</td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:179px;\">\r\n				परियोजना की लागत (रु. करोड़ में )</td>\r\n			<td style=\"width:124px;\">\r\n				274.65</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				संचालन संधारण अवधि&nbsp;</td>\r\n			<td align=\"left\">\r\n				10 वर्ष&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:303px;\" width=\"303\">\r\n	<colgroup>\r\n		<col style=\"text-align: center;\" />\r\n		<col style=\"text-align: center;\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"42\">\r\n			<td colspan=\"2\" height=\"42\" style=\"height: 42px; width: 303px; text-align: center;\">\r\n				<span style=\"font-size:16px;\"><strong>Project At A Glance</strong></span></td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:179px;\">\r\n				Project Name</td>\r\n			<td align=\"left\" style=\"width:124px;\">\r\n				Mardanpur MVRWSS</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				District</td>\r\n			<td align=\"left\" style=\"width:124px;\">\r\n				Sehore</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				No. of Villages Covered</td>\r\n			<td style=\"width:124px;\">\r\n				187</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				No. of Connections&nbsp;</td>\r\n			<td style=\"width:124px;\">\r\n				25787</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				Population&nbsp;Benefited</td>\r\n			<td style=\"width:124px;\">\r\n				224542</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				Start Date</td>\r\n			<td style=\"width:124px;\">\r\n				23.01.2014</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				Completion Date</td>\r\n			<td style=\"width:124px;\">\r\n				01.01.2018</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:179px;\">\r\n				Project Cost (Rs. In Cr.)</td>\r\n			<td style=\"width:124px;\">\r\n				274.65</td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:179px;\">\r\n				Operation &amp; Maintanance Duration&nbsp;</td>\r\n			<td align=\"left\">\r\n				10 years&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>','Mardanpur.jpg','2019-11-19 01:05:00','2019-11-27 05:25:00','2019-11-16 10:45:09',1,'2019-12-10 10:45:11',1,1,1,0,3,'0000-00-00 00:00:00'),(3,0,'झुरकी समूह जल प्रदाय योजना','Jhurki MVRWSS','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:279px;\" width=\"279\">\r\n	<colgroup>\r\n		<col style=\"text-align: center;\" />\r\n		<col style=\"text-align: center;\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"30\">\r\n			<td colspan=\"2\" height=\"30\" style=\"height: 30px; width: 279px; text-align: center;\">\r\n				<span style=\"font-size:16px;\"><strong>परियोजना एक नज़र मे&nbsp;</strong></span></td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:172px;\">\r\n				<strong>परियोजना का नाम&nbsp;</strong></td>\r\n			<td align=\"left\" style=\"width:107px;\">\r\n				<strong>झुरकी समूह ज</strong>ल प्रदाय योजना&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				जिला</td>\r\n			<td align=\"left\" style=\"width:107px;\">\r\n				सिवनी&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				गाँवों की संख्या&nbsp;</td>\r\n			<td style=\"width:107px;\">\r\n				15</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				कनेक्शनों&nbsp; की संख्या&nbsp;</td>\r\n			<td style=\"width:107px;\">\r\n				1116</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				लाभान्वित जनसँख्या&nbsp;</td>\r\n			<td style=\"width:107px;\">\r\n				9518</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				प्रारंभ दिनांक&nbsp;</td>\r\n			<td style=\"width:107px;\">\r\n				07.08.2014</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				पूर्ण दिनांक&nbsp;</td>\r\n			<td style=\"width:107px;\">\r\n				01.11.2017</td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:172px;\">\r\n				परियोजना की लागत (रु. करोड़ में )</td>\r\n			<td style=\"width:107px;\">\r\n				13.17</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				संचालन संधारण अवधि&nbsp;</td>\r\n			<td align=\"left\">\r\n				10 वर्ष&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:279px;\" width=\"279\">\r\n	<colgroup>\r\n		<col style=\"text-align: center;\" />\r\n		<col style=\"text-align: center;\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"42\">\r\n			<td colspan=\"2\" height=\"42\" style=\"height: 42px; width: 279px; text-align: center;\">\r\n				<span style=\"font-size:16px;\"><strong>Project At A Glance</strong></span></td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:172px;\">\r\n				<strong>Project Name</strong></td>\r\n			<td align=\"left\" style=\"width:107px;\">\r\n				<strong>Jhurki MVRWSS</strong></td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				District</td>\r\n			<td align=\"left\" style=\"width:107px;\">\r\n				Seoni</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td height=\"20\" style=\"height:20px;width:172px;\">\r\n				No. of Villages Covered</td>\r\n			<td style=\"width:107px;\">\r\n				15</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				No. of Connections&nbsp;</td>\r\n			<td style=\"width:107px;\">\r\n				1116</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td height=\"20\" style=\"height:20px;width:172px;\">\r\n				Population&nbsp;Benefited</td>\r\n			<td style=\"width:107px;\">\r\n				9518</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				Start Date</td>\r\n			<td style=\"width:107px;\">\r\n				07.08.2014</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				Completion Date</td>\r\n			<td style=\"width:107px;\">\r\n				01.11.2017</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:172px;\">\r\n				Project Cost (Rs. In Cr.)</td>\r\n			<td style=\"width:107px;\">\r\n				13.17</td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:172px;\">\r\n				Operation &amp; Maintanance Duration&nbsp;</td>\r\n			<td align=\"left\">\r\n				10 years&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>','Jhurki.jpg','2019-11-26 05:25:00','2019-12-04 10:50:00','2019-11-16 10:46:37',1,'2019-12-10 10:44:52',1,1,1,0,2,'2019-12-09 18:10:21'),(4,0,'उदयपूरा समूह जल प्रदाय योजना','Udaipura MVRWSS','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:288px;\" width=\"287\">\r\n	<colgroup>\r\n		<col style=\"text-align: center;\" />\r\n		<col style=\"text-align: center;\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"30\">\r\n			<td colspan=\"2\" height=\"30\" style=\"height: 30px; width: 288px; text-align: center;\">\r\n				<strong><span style=\"font-size:16px;\">परियोजना एक नज़र मे&nbsp;</span></strong></td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:177px;\">\r\n				<strong>परियोजना का नाम&nbsp;</strong></td>\r\n			<td align=\"left\" style=\"width:111px;\">\r\n				<strong>उदयपूरा समूह जल प्रदाय योजना&nbsp;</strong></td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				जिला</td>\r\n			<td align=\"left\" style=\"width:111px;\">\r\n				रायसेन&nbsp;</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				गाँवों की संख्या&nbsp;</td>\r\n			<td style=\"width:111px;\">\r\n				107</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				कनेक्शनों&nbsp; की संख्या&nbsp;</td>\r\n			<td style=\"width:111px;\">\r\n				14897</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				लाभान्वित जनसँख्या&nbsp;</td>\r\n			<td style=\"width:111px;\">\r\n				149980</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				प्रारंभ दिनांक&nbsp;</td>\r\n			<td style=\"width:111px;\">\r\n				24.01.2014</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				पूर्ण दिनांक&nbsp;</td>\r\n			<td style=\"width:111px;\">\r\n				01.11.2018</td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:177px;\">\r\n				परियोजना की लागत (रु. करोड़ में )</td>\r\n			<td style=\"width:111px;\">\r\n				155.73</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				संचालन संधारण अवधि&nbsp;</td>\r\n			<td align=\"left\">\r\n				10 वर्ष&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:288px;\" width=\"287\">\r\n	<colgroup>\r\n		<col style=\"text-align: center;\" />\r\n		<col style=\"text-align: center;\" />\r\n	</colgroup>\r\n	<tbody>\r\n		<tr height=\"42\">\r\n			<td colspan=\"2\" height=\"42\" style=\"height: 42px; width: 288px; text-align: center;\">\r\n				<span style=\"font-size:16px;\"><strong>Project At A Glance</strong></span></td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:177px;\">\r\n				<strong>Project Name</strong></td>\r\n			<td align=\"left\" style=\"width:111px;\">\r\n				<strong>Udaipura MVRWSS</strong></td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				District</td>\r\n			<td align=\"left\" style=\"width:111px;\">\r\n				Raisen</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td height=\"20\" style=\"height:20px;width:177px;\">\r\n				No. of Villages Covered</td>\r\n			<td style=\"width:111px;\">\r\n				107</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				No. of Connections&nbsp;</td>\r\n			<td style=\"width:111px;\">\r\n				14897</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td height=\"20\" style=\"height:20px;width:177px;\">\r\n				Population&nbsp;Benefited</td>\r\n			<td style=\"width:111px;\">\r\n				149980</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				Start Date</td>\r\n			<td style=\"width:111px;\">\r\n				24.01.2014</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				Completion Date</td>\r\n			<td style=\"width:111px;\">\r\n				01.11.2018</td>\r\n		</tr>\r\n		<tr height=\"20\">\r\n			<td align=\"left\" height=\"20\" style=\"height:20px;width:177px;\">\r\n				Project Cost (Rs. In Cr.)</td>\r\n			<td style=\"width:111px;\">\r\n				155.73</td>\r\n		</tr>\r\n		<tr height=\"32\">\r\n			<td align=\"left\" height=\"32\" style=\"height:32px;width:177px;\">\r\n				Operation &amp; Maintanance Duration&nbsp;</td>\r\n			<td align=\"left\">\r\n				10 years&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>','Udaipura.JPG','2019-11-13 10:25:00','2019-12-04 09:45:00','2019-11-16 10:46:58',1,'2019-12-10 10:44:24',1,1,1,0,1,'2019-12-09 18:10:13'),(5,1,'Biosphere Reserve Projects','Biosphere Reserve Projects','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span><span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span><span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span><span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span><span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span></p>','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span><span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span><span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span><span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span><span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Biosphere Reserve Projects </span></p>','vcr.jpg','2020-09-14 03:15:00','2020-10-03 07:35:00','2020-09-14 03:57:46',1,'0000-00-00 00:00:00',1,1,1,0,1,'0000-00-00 00:00:00'),(6,1,'Climate Change Action Projects','Climate Change Action Projects','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been </span></p>','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been </span></p>','vcr-2.jpg','2020-09-08 04:35:00','2020-10-10 11:55:00','2020-09-14 04:40:56',1,'0000-00-00 00:00:00',1,1,1,0,1,'0000-00-00 00:00:00'),(7,1,'Event name','Event name','<p>\r\n	Event name&nbsp;</p>','<p>\r\n	Event name&nbsp;</p>','event4.jpg','2020-09-28 05:25:00','2020-10-10 11:55:00','2020-09-17 03:11:33',1,'0000-00-00 00:00:00',0,1,0,0,1,'0000-00-00 00:00:00'),(8,1,'Event name','Event name','<p>\r\n	Event name&nbsp;</p>','<p>\r\n	Event name&nbsp;</p>','event3.jpg','2020-09-07 07:35:00','2020-10-10 11:55:00','2020-09-17 03:11:52',1,'0000-00-00 00:00:00',0,1,0,0,1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_events_media`
--

DROP TABLE IF EXISTS `comm_events_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_events_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_events_media`
--

LOCK TABLES `comm_events_media` WRITE;
/*!40000 ALTER TABLE `comm_events_media` DISABLE KEYS */;
INSERT INTO `comm_events_media` VALUES (13,7,'DSC100339491.jpg','2021-01-23 16:35:21',1,'0000-00-00 00:00:00',0,0),(14,7,'img_(3).jpg','2021-01-23 16:35:27',1,'0000-00-00 00:00:00',0,0),(15,7,'nature-3082832__340.jpg','2021-01-23 16:35:27',1,'0000-00-00 00:00:00',0,0),(16,8,'img_(4).jpg','2021-01-23 16:35:38',1,'0000-00-00 00:00:00',0,0),(17,7,'Screenshot_(2).png','2021-08-17 13:05:00',1,'0000-00-00 00:00:00',0,0),(18,7,'Screenshot_(13).png','2021-08-17 13:56:44',1,'0000-00-00 00:00:00',0,0),(19,7,'Screenshot_(8).png','2021-08-17 13:57:09',1,'0000-00-00 00:00:00',0,0),(20,7,'Screenshot_(7).png','2021-08-17 14:54:29',1,'0000-00-00 00:00:00',0,0),(21,7,'Screenshot_(7)1.png','2021-08-17 14:57:44',1,'0000-00-00 00:00:00',0,0),(22,7,'Screenshot_(13)1.png','2021-08-17 15:01:09',1,'0000-00-00 00:00:00',0,0),(23,7,'Screenshot_(7)2.png','2021-08-17 15:05:57',1,'0000-00-00 00:00:00',0,0),(24,7,'Screenshot_(13)2.png','2021-08-17 15:06:01',1,'0000-00-00 00:00:00',0,0),(25,7,'screencapture-localhost-8080-MP-Aadhyatm-manage-MandirPujari-add-a3BHUnpXUHY1YmlFbW9xOHAvSm9WQT09-20','2021-08-26 11:03:22',1,'0000-00-00 00:00:00',0,0),(26,7,'screencapture-localhost-8080-MP-Aadhyatm-manage-MandirPujari-add-a3BHUnpXUHY1YmlFbW9xOHAvSm9WQT09-20','2021-08-26 11:03:22',1,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `comm_events_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_faq`
--

DROP TABLE IF EXISTS `comm_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_faq`
--

LOCK TABLES `comm_faq` WRITE;
/*!40000 ALTER TABLE `comm_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_faq_category`
--

DROP TABLE IF EXISTS `comm_faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_faq_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_hi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_title_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime DEFAULT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `cat_status` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_faq_category`
--

LOCK TABLES `comm_faq_category` WRITE;
/*!40000 ALTER TABLE `comm_faq_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_faq_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_feedback`
--

DROP TABLE IF EXISTS `comm_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `feedback_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `feedback_mobile` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `feedback_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feedback_message` text COLLATE utf8_unicode_ci NOT NULL,
  `feedback_type` tinyint(2) NOT NULL DEFAULT '1',
  `feedback_date` datetime NOT NULL,
  `feedback_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_feedback`
--

LOCK TABLES `comm_feedback` WRITE;
/*!40000 ALTER TABLE `comm_feedback` DISABLE KEYS */;
INSERT INTO `comm_feedback` VALUES (1,'Anoop','anoop.daipuriya@mapit.gov.in','9893892291','query','test message',2,'2018-11-15 02:38:57',1),(2,'Anoop','anoop.daipuriya@mapit.gov.in','9893892291','test','test message',1,'2018-11-15 02:46:00',1),(3,'Tets','shubham.magre@mapit.gov.in','8878177177','Test feedback','test message',1,'2018-11-22 04:21:00',1),(4,'Tes','anoop.daipuriya@mapit.gov.in','1234567890','test','test message',1,'2018-11-26 03:11:47',1),(5,'Test','shubham.magre@mapit.gov.in','8878177177','Test','Test',1,'2018-11-27 04:33:05',1),(6,'Shubham','shubham.sss05@gmail.com','8103053046','test','test',1,'2019-11-16 01:59:10',1),(7,'Dfgdfg','dg@wy.ftg','4565644467','dh','dhdfhdh',2,'2020-09-25 01:04:02',1),(8,'Shubha','shubha.pachori@mapit.gov.in','9807654378','test','test',1,'2020-09-26 04:54:18',1),(9,'Cvb','fgh@fhj.fcg','1234567890','fgh','cfgbfgdfg',1,'2020-10-01 02:26:51',1),(10,'FGHFGH','RR@GMAIL.COM','1234567890','CVB','RR@GMAIL.COMRR@GMAIL.COMRR@GMAIL.COM',1,'2020-10-01 02:29:37',1);
/*!40000 ALTER TABLE `comm_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_financereport`
--

DROP TABLE IF EXISTS `comm_financereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_financereport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_financereport`
--

LOCK TABLES `comm_financereport` WRITE;
/*!40000 ALTER TABLE `comm_financereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_financereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_forms_download`
--

DROP TABLE IF EXISTS `comm_forms_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_forms_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_forms_download`
--

LOCK TABLES `comm_forms_download` WRITE;
/*!40000 ALTER TABLE `comm_forms_download` DISABLE KEYS */;
INSERT INTO `comm_forms_download` VALUES (1,'test','tes','20160428_110524.jpg','2018-11-22 10:59:21',1,'2018-11-22 11:09:51',1,1,0,1,'2018-11-19 00:00:00',1,'0000-00-00 00:00:00'),(2,'नई टेस्ट डाउनलिंक लिंक -१','New Test Downlink Link-1','566123729_b9e8d3eabf_b.jpg','2018-11-26 01:05:18',7,'0000-00-00 00:00:00',0,1,0,0,'2018-11-26 00:00:00',1,'0000-00-00 00:00:00'),(3,'नई टेस्ट डाउनलिंक लिंक -२','New Test Downlink Link-2','college_building_front_angle.jpg','2018-11-26 01:06:14',7,'0000-00-00 00:00:00',0,1,0,0,'2018-11-27 00:00:00',1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_forms_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_hospital`
--

DROP TABLE IF EXISTS `comm_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `web_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_hospital`
--

LOCK TABLES `comm_hospital` WRITE;
/*!40000 ALTER TABLE `comm_hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_hospital_category`
--

DROP TABLE IF EXISTS `comm_hospital_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_hospital_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_title_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime DEFAULT NULL,
  `edit_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0',
  `cat_status` tinyint(2) DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_hospital_category`
--

LOCK TABLES `comm_hospital_category` WRITE;
/*!40000 ALTER TABLE `comm_hospital_category` DISABLE KEYS */;
INSERT INTO `comm_hospital_category` VALUES (1,'test','test','2020-01-02 10:57:28',1,NULL,'0',1,0),(2,'testtt','testtt','2020-01-02 10:57:34',1,NULL,'0',1,0);
/*!40000 ALTER TABLE `comm_hospital_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_important_links`
--

DROP TABLE IF EXISTS `comm_important_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_important_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_important_links`
--

LOCK TABLES `comm_important_links` WRITE;
/*!40000 ALTER TABLE `comm_important_links` DISABLE KEYS */;
INSERT INTO `comm_important_links` VALUES (1,'MPSEIAA','MPSEIAA','http://mpseiaa.nic.in/','2018-11-14 03:21:12',1,'2020-09-25 11:26:57',1,1,0,1,'0000-00-00 00:00:00'),(2,'नई टेस्ट लिंक -१','New test link -1','https://www.javatpoint.com/','2018-11-26 12:49:18',3,'2019-11-16 11:16:44',1,1,1,12,'0000-00-00 00:00:00'),(3,'MPCDMA','MPCDMA','https://mpcdmagency.org/','2019-11-25 05:05:12',2,'2020-09-25 11:28:01',1,1,0,2,'2019-12-07 13:54:50'),(4,'MP Govt. Portal','MP Govt. Portal','https://mp.gov.in/','2019-12-07 01:29:18',2,'2020-09-25 11:30:37',1,1,0,5,'2019-12-07 14:12:15'),(5,'वन विभाग','FOREST DEPARTMENT PORTAL','https://mpforest.gov.in/','2019-12-07 01:31:32',2,'2020-09-25 11:31:55',1,1,1,13,'0000-00-00 00:00:00'),(6,'जल संसदन विभाग','WATER RESOURCES DEPARTMENT','www.mpwrd.gov.in/','2019-12-07 01:33:10',2,'2020-09-25 11:31:58',1,1,1,14,'0000-00-00 00:00:00'),(7,'लोक निर्माण विभाग','PWD DEPARTMENT','http://mppwd.gov.in/','2019-12-07 01:35:19',2,'2020-09-25 11:31:44',1,1,1,9,'2019-12-07 14:25:55'),(8,'म प्र प्रदूषण नियंत्रण बोर्ड','MP Pollution Control Board','http://www.mppcb.nic.in/','2019-12-07 01:43:04',2,'2020-09-25 11:31:41',1,1,1,11,'2019-12-07 13:55:49'),(9,'नगरीय विकास एवं आवास विभाग','Dept. of Urban Development & Environment, MP','http://www.mpurban.gov.in/','2019-12-07 01:53:54',2,'2020-09-25 11:29:38',1,1,0,3,'2019-12-07 13:55:18'),(10,'Ministry of Environment & Forest','Ministry of Environment & Forest','http://envfor.nic.in/','2019-12-07 02:09:19',2,'2020-09-25 11:30:06',1,1,0,4,'2019-12-07 14:11:14'),(11,'सिंहस्थ कुम्भ महापर्व','सिंहस्थ कुम्भ महापर्व','http://www.simhasthujjain.in/','2019-12-07 02:17:49',2,'2020-09-25 11:31:31',1,1,0,7,'2019-12-07 14:25:08'),(12,'मध्य प्रदेश ग्रामीण सड़क विकास प्राधिकरण  पोर्टल','MP RRDA PORTAL','http://mprrda.com/','2019-12-07 02:20:20',2,'2020-09-25 11:31:52',1,1,1,8,'2019-12-07 14:25:18'),(13,'SKMCCC Portal','SKMCCC Portal','http://www.skmcccepco.mp.gov.in/','2019-12-07 02:24:13',2,'2020-09-25 11:31:03',1,1,0,6,'2019-12-07 14:24:55'),(14,'भारतीय रेलवे सिविल इंजीनियरिंग पोर्टल','INDIAN RAILWAYS CIVIL ENGINEERING PORTAL','https://ircep.gov.in/','2019-12-07 02:35:59',2,'2020-09-25 11:31:36',1,1,1,10,'2019-12-07 14:36:54');
/*!40000 ALTER TABLE `comm_important_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_important_website`
--

DROP TABLE IF EXISTS `comm_important_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_important_website` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `is_slide` tinyint(4) NOT NULL DEFAULT '0',
  `order_preference` int(1) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_important_website`
--

LOCK TABLES `comm_important_website` WRITE;
/*!40000 ALTER TABLE `comm_important_website` DISABLE KEYS */;
INSERT INTO `comm_important_website` VALUES (1,'My Gov MP','My Gov MP','https://mp.mygov.in/','mygov.jpg','2018-05-03 03:20:55',1,'2018-05-03 03:26:15',1,1,0,1,2,'0000-00-00 00:00:00'),(2,'भारत का राष्ट्रीय पोर्टल','National Portal of India','https://india.gov.in/','national-portal-of-india.jpg','2018-05-03 03:25:38',1,'2019-10-18 07:09:14',10,1,0,1,3,'0000-00-00 00:00:00'),(3,'मप्र शासन','Govt of MP','http://www.mp.gov.in/','mpgov.jpg','2019-10-18 06:48:32',10,'0000-00-00 00:00:00',0,1,0,1,8,'0000-00-00 00:00:00'),(4,'राजभवन म.प्र','Rajbhavan MP','http://governor.mp.gov.in/','rajbhavan.jpg','2019-10-18 06:51:54',10,'0000-00-00 00:00:00',0,1,0,1,9,'0000-00-00 00:00:00'),(5,'जन संपर्क',' Public Relation','https://www.mpinfo.org/','mpinfo.jpg','2019-10-18 06:55:54',10,'0000-00-00 00:00:00',0,1,0,1,10,'0000-00-00 00:00:00'),(6,' MAP_IT',' MAP_IT','http://www.mapit.gov.in/','mapit.jpg','2019-10-18 06:56:56',10,'0000-00-00 00:00:00',0,1,0,1,11,'0000-00-00 00:00:00'),(7,'एमपी कोड','MP Code','http://code.mp.gov.in/','mpcode.jpg','2019-10-18 06:57:43',10,'0000-00-00 00:00:00',0,1,0,1,12,'0000-00-00 00:00:00'),(8,'Invest MP','Invest MP','https://invest.mp.gov.in/','mpdc.jpg','2019-10-18 07:00:16',10,'0000-00-00 00:00:00',0,1,0,1,13,'0000-00-00 00:00:00'),(9,'एमपी पर्यटन',' MP Tourism','http://tourism.mp.gov.in/','mptourism.jpg','2019-10-18 07:01:33',10,'0000-00-00 00:00:00',0,1,0,1,14,'0000-00-00 00:00:00'),(10,'सांसद लोक सेवा',' MP Lok Seva','http://mpedistrict.gov.in/Public/index.aspx','lokseva.jpg','2019-10-18 07:03:54',10,'0000-00-00 00:00:00',0,1,0,1,15,'0000-00-00 00:00:00'),(11,'एमपी डैशबोर्ड','MP Dashboard','http://cmdashboard.mp.gov.in/','mpdashboard.jpg','2019-10-18 07:04:49',10,'0000-00-00 00:00:00',0,1,0,1,16,'0000-00-00 00:00:00'),(12,'सीएम हेल्पलाइन','CM Helpline','http://cmhelpline.mp.gov.in/','cmhelpline.jpg','2019-10-18 07:05:46',10,'0000-00-00 00:00:00',0,1,0,1,17,'0000-00-00 00:00:00'),(13,'फ्रेंड्स ऑफ एमपी',' Friends of MP','http://www.friendsofmp.gov.in/','fomp.jpg','2019-10-18 07:11:37',10,'0000-00-00 00:00:00',0,1,0,1,18,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_important_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_int_experience`
--

DROP TABLE IF EXISTS `comm_int_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_int_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `int_id` int(11) NOT NULL,
  `post_name` int(100) NOT NULL,
  `organization` varchar(200) NOT NULL,
  `responsbility` varchar(255) NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_int_experience`
--

LOCK TABLES `comm_int_experience` WRITE;
/*!40000 ALTER TABLE `comm_int_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_int_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_int_project_monitoring`
--

DROP TABLE IF EXISTS `comm_int_project_monitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_int_project_monitoring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `father_name` varchar(64) NOT NULL,
  `mother_name` varchar(64) NOT NULL,
  `dob` date NOT NULL,
  `present_address` varchar(200) NOT NULL,
  `permanant_address` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `computer_proficiency` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_int_project_monitoring`
--

LOCK TABLES `comm_int_project_monitoring` WRITE;
/*!40000 ALTER TABLE `comm_int_project_monitoring` DISABLE KEYS */;
INSERT INTO `comm_int_project_monitoring` VALUES (1,'Dgdfgdfgf','','','0000-00-00','','','1234567890','dfg@erhy.drfh','2021-04-27 16:49:16',''),(2,'Vbhggjhj','','','0000-00-00','','','1234567890','hfhfgh@dry.dh','2021-04-27 16:57:37',''),(3,'Shubh','','','0000-00-00','','','1234567890','shubha@gmail.com','2021-04-27 17:00:23','');
/*!40000 ALTER TABLE `comm_int_project_monitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_landing_page`
--

DROP TABLE IF EXISTS `comm_landing_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_landing_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_landing_page`
--

LOCK TABLES `comm_landing_page` WRITE;
/*!40000 ALTER TABLE `comm_landing_page` DISABLE KEYS */;
INSERT INTO `comm_landing_page` VALUES (1,'आपका स्वागत है','Your most Welcome','<p>\r\n	हमारी वेबसाइट पर स्वागत है</p>','<p>\r\n	Welcome to our website</p>','2018-01-04 02:54:41',1,'2018-01-30 01:20:22',1,0);
/*!40000 ALTER TABLE `comm_landing_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_location`
--

DROP TABLE IF EXISTS `comm_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name_hi` varchar(45) CHARACTER SET utf8 NOT NULL,
  `location_name_en` varchar(45) CHARACTER SET utf8 NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` date NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_location`
--

LOCK TABLES `comm_location` WRITE;
/*!40000 ALTER TABLE `comm_location` DISABLE KEYS */;
INSERT INTO `comm_location` VALUES (1,'भोपाल','Bhopal',0,'0000-00-00',0,'0000-00-00',1),(2,'इंदौर','Indore',0,'0000-00-00',0,'0000-00-00',1),(3,'जबलपुर','Jabalpur',0,'0000-00-00',0,'0000-00-00',1),(4,'ग्वालियर','Gwalior',0,'0000-00-00',0,'0000-00-00',1),(5,'सागर','Sagar',0,'0000-00-00',0,'0000-00-00',1),(6,'रीवा','Rewa',0,'0000-00-00',0,'0000-00-00',1),(7,'सतना','Satna',0,'0000-00-00',0,'0000-00-00',1);
/*!40000 ALTER TABLE `comm_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_media`
--

DROP TABLE IF EXISTS `comm_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_media`
--

LOCK TABLES `comm_media` WRITE;
/*!40000 ALTER TABLE `comm_media` DISABLE KEYS */;
INSERT INTO `comm_media` VALUES (1,'','','Proforma.docx','2019-02-08 16:03:50',1,'0000-00-00 00:00:00',0,0),(2,'','','OC.jpg','2019-12-10 12:42:50',1,'0000-00-00 00:00:00',0,0),(3,'','','BOD1.jpg','2019-12-10 12:42:50',1,'0000-00-00 00:00:00',0,0),(4,'','','PIU.jpg','2019-12-10 12:42:51',1,'0000-00-00 00:00:00',0,0),(5,'','','2_MPJNM_MOM.pdf','2019-12-10 12:59:39',1,'0000-00-00 00:00:00',0,0),(6,'','','1_MPJNM_Co_Reg_Certs.pdf','2019-12-10 12:59:39',1,'0000-00-00 00:00:00',0,0),(7,'','','3_MPJNM_AOA.pdf','2019-12-10 12:59:40',1,'0000-00-00 00:00:00',0,0),(8,'','','epco_2.png','2021-01-06 16:31:39',1,'0000-00-00 00:00:00',0,0),(9,'','','vision.jpg','2021-01-06 16:31:39',1,'0000-00-00 00:00:00',0,0),(10,'','','epco_4_(1).jpg','2021-01-06 16:31:39',1,'0000-00-00 00:00:00',0,0),(11,'','','img1.jpg','2021-01-06 16:31:39',1,'0000-00-00 00:00:00',0,0),(12,'','','epco_4_(1)1.jpg','2021-01-07 11:19:31',1,'0000-00-00 00:00:00',0,0),(13,'','','img11.jpg','2021-01-07 11:19:32',1,'0000-00-00 00:00:00',0,0),(14,'','','vcr-3.jpg','2021-01-07 12:15:10',1,'0000-00-00 00:00:00',0,0),(15,'','','vcr-4.jpg','2021-01-07 12:15:10',1,'0000-00-00 00:00:00',0,0),(16,'','','vcr-2.jpg','2021-01-07 12:15:10',1,'0000-00-00 00:00:00',0,0),(17,'','','epco_21.png','2021-01-07 12:15:32',1,'0000-00-00 00:00:00',0,0),(18,'','','epco_8.jpg','2021-04-22 14:10:00',1,'0000-00-00 00:00:00',0,0),(19,'','','epco_81.jpg','2021-04-22 17:10:11',1,'0000-00-00 00:00:00',0,0),(20,'','','Bug_10457.mp4','2021-08-03 12:49:44',1,'0000-00-00 00:00:00',0,0),(21,'','','Screenshot_(7).png','2021-08-17 13:04:29',1,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `comm_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_menu`
--

DROP TABLE IF EXISTS `comm_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `page_module_link` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL DEFAULT '0',
  `custom_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html_block` text COLLATE utf8_unicode_ci NOT NULL,
  `icon_class` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title_hi` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `mega_menu` tinyint(2) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `tab_same_new` int(11) NOT NULL DEFAULT '0' COMMENT '1=Same, 2=Newew',
  `menu_order` int(11) NOT NULL DEFAULT '1',
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_menu`
--

LOCK TABLES `comm_menu` WRITE;
/*!40000 ALTER TABLE `comm_menu` DISABLE KEYS */;
INSERT INTO `comm_menu` VALUES (1,1,3,0,0,'http://localhost:8080/epco','','las la-home','मुख्य पृष्ठ','Home',0,0,1,1,'2017-06-20 11:44:25',1,'2020-09-17 11:48:38',1),(14,2,2,0,21,'','','','साइटमैप','Site Map',0,0,1,6,'2017-06-23 12:14:02',1,'2017-07-18 01:31:01',1),(166,1,2,0,26,'','','fa fa-envelope-o','संपर्क करें','Contact Us',0,0,1,29,'2018-11-14 05:16:57',1,'2020-09-18 12:57:01',1),(168,2,2,0,25,'','','','सुझाव','Feedback',0,0,1,1,'2018-11-15 02:54:40',1,'2018-11-15 02:55:39',1),(169,2,1,9,0,'','','','अस्वीकरण','Disclaimer',0,0,1,5,'2018-11-15 04:42:09',1,'0000-00-00 00:00:00',0),(170,2,1,6,0,'','','','हाइपरलिंक नीति','Hyperlink Policy',0,0,1,2,'2018-11-15 04:42:48',1,'0000-00-00 00:00:00',0),(171,2,1,7,0,'','','','उपयोग की शर्तें','Terms of Use',0,0,1,3,'2018-11-15 04:43:28',1,'0000-00-00 00:00:00',0),(188,1,3,0,0,'#','','fa fa-picture-o','मीडिया','Media',0,0,1,19,'2019-11-28 06:00:58',1,'2020-09-17 12:29:10',1),(192,1,2,0,15,'','','','फोटोज','Photos',0,188,1,20,'2019-12-05 02:55:28',1,'0000-00-00 00:00:00',0),(193,1,2,0,20,'','','','वीडियो','Videos',0,188,1,21,'2019-12-05 02:56:22',1,'2019-12-05 02:59:45',1),(195,1,1,1,0,'','','fa fa-user','About Us','About Us',0,0,1,2,'2020-09-14 02:02:31',1,'2020-09-17 11:54:47',1),(196,1,1,28,0,'','','','Vision & Mission','Vision & Mission',0,195,1,5,'2020-09-14 02:06:32',1,'2020-09-17 12:30:31',1),(197,1,1,27,0,'','','','History','History',0,195,1,4,'2020-09-14 02:07:16',1,'2020-09-17 12:30:25',1),(198,1,1,26,0,'','','','INTRODUCTION','INTRODUCTION',0,195,1,3,'2020-09-14 02:07:58',1,'2020-09-17 12:30:16',1),(199,1,1,29,0,'','','fa fa-tasks','administration','Administration',0,0,1,6,'2020-09-14 02:20:01',1,'2020-09-17 11:55:16',1),(200,1,2,0,25,'','','fa fa-comments','Feedback','Feedback',0,0,1,27,'2020-09-14 02:21:39',1,'0000-00-00 00:00:00',0),(201,1,2,0,2,'','','fa fa-bullhorn','Announcement','Announcement',0,0,1,28,'2020-09-14 02:31:06',1,'2020-09-15 03:50:32',1),(202,1,2,0,14,'','','fa fa-newspaper-o','news','News',0,0,1,22,'2020-09-14 02:33:48',1,'2020-09-17 12:31:24',1),(203,1,2,0,17,'','','fa fa-book','Publication','Publication',0,0,1,12,'2020-09-14 02:36:51',1,'2020-09-17 12:31:03',1),(206,3,2,0,33,'','','projects','Projects','Projects',0,0,1,2,'2020-09-14 05:01:51',1,'2020-09-18 03:28:29',1),(208,1,2,0,27,'','','fa fa-archive','Archive','Archive',0,203,1,14,'2020-09-15 12:18:33',1,'2020-09-18 12:37:16',1),(209,1,2,0,14,'','','','in the News','in the News',0,202,1,23,'2020-09-15 12:32:53',1,'2020-09-17 12:34:27',1),(210,1,2,0,36,'','','','Press release','Press release',0,202,1,26,'2020-09-15 12:33:30',1,'2020-09-21 05:04:47',1),(211,3,1,35,0,'','','fa fa-planning','Planning','Planning',0,0,1,3,'2020-09-15 02:43:15',1,'0000-00-00 00:00:00',0),(212,3,1,44,0,'','','fa fa-education','Education','Education',0,0,1,18,'2020-09-15 02:43:45',1,'2020-09-18 04:15:14',1),(217,1,3,0,0,'https://mail.gov.in/iwc_static/c11n/allDomain/layout/login_gov2.jsp?lang=en-GB&3.0.1.2.0_15121607&svcs=abs,mail,smime,calendar,c11n','','','एप्को कर्मी','Employee',0,199,2,11,'2020-09-18 12:22:19',1,'2020-09-18 12:22:53',1),(218,1,3,0,0,'#','','','ADMIN','ADMIN',0,199,1,8,'2020-09-18 12:24:17',1,'0000-00-00 00:00:00',0),(219,1,3,0,0,'#','','','Accounts','Accounts',0,199,1,9,'2020-09-18 12:24:42',1,'0000-00-00 00:00:00',0),(220,1,1,40,0,'','','','पुस्‍तकालय','library',0,219,1,10,'2020-09-18 12:27:12',1,'0000-00-00 00:00:00',0),(222,1,2,0,38,'','','','Books & Periodicals','Books & Periodicals',0,203,1,15,'2020-09-18 01:39:27',1,'2020-09-22 12:00:56',1),(223,1,2,0,37,'','','','Policy Briefs','Policy Briefs',0,203,1,16,'2020-09-18 01:40:03',1,'2020-09-22 12:53:37',1),(224,1,2,0,35,'','','','Research papers','Research papers',0,203,1,17,'2020-09-18 01:40:37',1,'2020-09-22 12:01:39',1),(225,1,2,0,39,'','','','Reports & articles','Reports & articles',0,203,1,18,'2020-09-18 01:42:03',1,'2020-09-22 12:01:07',1),(227,3,1,42,0,'','','','Research','Research',0,0,1,31,'2020-09-18 03:49:38',1,'2020-09-18 04:17:53',1),(228,3,3,0,0,'http://climatechange.mp.gov.in/','','','Climate Change','Climate Change',0,276,2,29,'2020-09-18 03:50:11',1,'2020-10-03 12:59:55',1),(230,2,1,45,0,'','','','Privacy Policy','Privacy Policy',0,0,1,4,'2020-09-18 04:35:29',1,'2020-09-18 04:40:21',1),(234,3,3,0,0,'#','','','Campaign & Programmers','Campaign & Programmers',0,212,1,20,'2020-09-23 04:41:35',1,'0000-00-00 00:00:00',0),(235,3,1,49,0,'','','','Environmental Policy','Environmental Policy',0,234,1,24,'2020-09-23 04:46:01',1,'0000-00-00 00:00:00',0),(236,3,1,48,0,'','','','About NEAC','About NEAC',0,234,1,21,'2020-09-23 04:46:35',1,'0000-00-00 00:00:00',0),(238,3,1,51,0,'','','','Pachmarhi Biosphere Reserve(Camp)','Pachmarhi Biosphere Reserve(Camp)',0,234,1,25,'2020-09-24 12:08:43',1,'0000-00-00 00:00:00',0),(239,3,1,50,0,'','','','National Green Corps','National Green Corps',0,212,1,27,'2020-09-24 12:09:07',1,'2020-09-24 12:22:27',1),(240,3,1,52,0,'','','','General Awareness','General Awareness',0,234,1,23,'2020-09-24 12:09:56',1,'0000-00-00 00:00:00',0),(241,3,1,53,0,'','','','Important Environmental Days','Important Environmental Days',0,234,1,22,'2020-09-24 12:10:21',1,'0000-00-00 00:00:00',0),(242,3,1,54,0,'','','','Training','Training',0,212,1,19,'2020-09-24 12:16:36',1,'2020-09-24 12:19:18',1),(243,3,1,55,0,'','','','Fellowship & Awards','Fellowship & Awards',0,212,1,26,'2020-09-24 12:20:08',1,'0000-00-00 00:00:00',0),(244,3,1,56,0,'','','','Conservation & Management Of Water Bodies','Conservation & Management Of Water Bodies',0,227,1,32,'2020-09-24 12:46:36',1,'0000-00-00 00:00:00',0),(245,3,1,57,0,'','','','Biosphere Reserves','Biosphere Reserves',0,251,1,34,'2020-09-24 12:46:52',1,'0000-00-00 00:00:00',0),(246,3,1,58,0,'','','','Management Aspects','Management Aspects',0,251,1,35,'2020-09-24 12:47:24',1,'0000-00-00 00:00:00',0),(247,3,1,59,0,'','','','Pachmarhi Bio Reserves','Pachmarhi Bio Reserves',0,251,1,37,'2020-09-24 12:47:38',1,'0000-00-00 00:00:00',0),(248,3,1,60,0,'','','','Panna Bio Reserves','Panna Bio Reserves',0,251,1,36,'2020-09-24 12:47:50',1,'2020-09-24 12:48:14',1),(249,3,1,61,0,'','','','Achanakmar – Amarkantak Bio Reserves','Achanakmar – Amarkantak Bio Reserves',0,251,1,38,'2020-09-24 12:48:00',1,'2020-09-24 12:48:08',1),(250,3,2,0,40,'','','','Gallery','Gallery',0,251,1,39,'2020-09-24 12:51:19',1,'2020-09-24 12:51:47',1),(251,3,3,0,0,'#','','','Conservation and Management of Biosphere System','Conservation and Management of Biosphere System',0,227,1,33,'2020-09-24 01:06:42',1,'0000-00-00 00:00:00',0),(252,3,2,0,40,'','','','Gallery','Gallery',0,253,1,42,'2020-09-24 01:08:57',1,'2020-09-25 11:16:39',1),(253,3,3,0,0,'#','','','Environmental Research Laboratory','Environmental Research Laboratory',0,227,1,40,'2020-09-24 01:09:04',1,'2020-09-25 11:17:01',1),(254,3,3,0,0,'#','','','Architecture & Green Building Services','Architecture & Green Building Services',0,211,1,4,'2020-09-24 01:14:13',1,'2020-09-25 11:20:24',1),(255,3,1,62,0,'','','','Environmental Research Laboratory','Environmental Research Laboratory',0,253,1,41,'2020-09-25 11:17:14',1,'0000-00-00 00:00:00',0),(256,3,1,46,0,'','','','Project Management & Structural Services','Project Management & Structural Services',0,211,1,17,'2020-09-25 11:20:49',1,'2020-09-25 11:43:28',1),(257,3,1,63,0,'','','','Projects Outcomes','Projects Outcomes',0,254,1,16,'2020-09-25 11:45:55',1,'0000-00-00 00:00:00',0),(261,3,1,69,0,'','','','Ongoing Projects','Ongoing Projects',0,268,1,10,'2020-09-25 05:01:23',1,'0000-00-00 00:00:00',0),(262,3,1,70,0,'','','','Architectural','Architectural',0,268,1,12,'2020-09-25 05:01:38',1,'0000-00-00 00:00:00',0),(263,3,1,71,0,'','','','Eco City','Eco City',0,268,1,15,'2020-09-25 05:02:02',1,'0000-00-00 00:00:00',0),(264,3,1,57,0,'','','','Biosphere Reserve','Biosphere Reserve',0,268,1,13,'2020-09-25 05:02:14',1,'2020-09-25 05:03:01',1),(265,3,1,72,0,'','','','NLCP','NLCP',0,268,1,11,'2020-09-25 05:02:26',1,'2020-09-25 05:02:54',1),(266,3,1,73,0,'','','','Special Consultancy Assign','Special Consultancy Assign',0,268,1,14,'2020-09-25 05:02:46',1,'0000-00-00 00:00:00',0),(267,3,3,0,0,'#','','','International','International',0,254,1,5,'2020-09-25 05:04:41',1,'0000-00-00 00:00:00',0),(268,3,3,0,0,'#','','','Domestic','Domestic',0,254,1,9,'2020-09-25 05:07:38',1,'0000-00-00 00:00:00',0),(269,3,1,68,0,'','','','DFID','DFID',0,267,1,7,'2020-09-25 05:12:15',1,'2020-09-25 05:14:46',1),(270,3,1,67,0,'','','','DPIP','DPIP',0,267,1,8,'2020-09-25 05:12:58',1,'2020-09-25 05:13:15',1),(271,3,1,66,0,'','','','International Assistance','International Assistance',0,267,2,6,'2020-09-25 05:13:29',1,'2021-03-03 12:31:32',1),(272,1,2,0,16,'','','','Whos\'s Who','Whos\\\'s Who',0,199,1,7,'2020-09-26 04:00:31',1,'0000-00-00 00:00:00',0),(274,3,1,41,0,'','','','Policy','Policy',0,0,1,1,'2020-10-03 02:26:50',1,'0000-00-00 00:00:00',0),(275,3,1,1,0,'','','','COurese','course',0,0,1,30,'2020-11-06 06:35:28',1,'0000-00-00 00:00:00',0),(276,3,3,0,0,'#','','','XFG','DFGDFG',0,0,1,28,'2021-02-26 03:57:55',1,'0000-00-00 00:00:00',0),(277,1,2,0,42,'','','fa fa-registered','प्रवेश','Admission',0,203,1,13,'2021-03-24 03:38:46',1,'2021-03-26 04:54:27',1),(278,1,2,0,43,'','','','Registration status','Registration status',0,202,1,25,'2021-07-16 05:02:50',1,'0000-00-00 00:00:00',0),(279,1,2,0,44,'','','','Consultancy Registration','Consultancy Registration',0,202,1,24,'2021-07-16 05:03:13',1,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `comm_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_menu_modules`
--

DROP TABLE IF EXISTS `comm_menu_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_menu_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_menu_modules`
--

LOCK TABLES `comm_menu_modules` WRITE;
/*!40000 ALTER TABLE `comm_menu_modules` DISABLE KEYS */;
INSERT INTO `comm_menu_modules` VALUES (1,'What\'s New','whatsnew','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(2,'Circulars','circular','2017-06-01 00:00:00',1,'2017-07-14 02:23:37',1),(3,'Notice Board','noticeboard','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(4,'Events','events','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(5,'Schemes','schemes','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(6,'Services','services','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(7,'Forms & Download','download','2017-06-01 00:00:00',1,'2017-07-05 05:52:31',1),(8,'Rules & Acts','rulesacts','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(9,'Right to Information','rti','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(10,'Important Links','implinks','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(11,'Important Websites','impwebsites','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(14,'News','news-details','2017-06-01 00:00:00',1,'2018-05-08 05:15:19',1),(15,'Photo Gallery','photo-gallery','2017-06-01 00:00:00',1,'2017-06-01 00:00:00',1),(16,'Who\\\'s Who','whos-who','2017-06-01 00:00:00',1,'2017-07-04 04:45:29',1),(17,'Publication','publication','2017-06-01 00:00:00',1,'2017-07-05 05:31:57',1),(18,'head office','head-office','2017-07-04 05:03:48',1,'0000-00-00 00:00:00',0),(19,'policies','policies','2017-07-06 04:09:27',1,'0000-00-00 00:00:00',0),(20,'video gallery','video-gallery','2017-07-07 04:02:43',1,'0000-00-00 00:00:00',0),(21,'sitemap','sitemap','2017-07-18 01:30:48',1,'0000-00-00 00:00:00',0),(22,'Rules','rules','2017-07-28 05:48:32',1,'0000-00-00 00:00:00',0),(23,'Acts','acts','2017-07-28 05:50:13',1,'0000-00-00 00:00:00',0),(24,'Laws','laws','2017-07-28 05:50:20',1,'0000-00-00 00:00:00',0),(25,'Feedback','feedback','2017-08-24 04:44:37',1,'0000-00-00 00:00:00',0),(26,'Contact Us','contact-us','2018-01-04 03:43:47',1,'2018-01-04 03:44:03',1),(27,'Career','career','2019-11-15 05:29:16',1,'0000-00-00 00:00:00',0),(28,'Tender','tender','2019-11-15 05:29:22',1,'0000-00-00 00:00:00',0),(29,'Archive','publication/archieve_publication','2020-09-15 12:10:32',1,'0000-00-00 00:00:00',0),(30,'Announcement','announcement','2020-09-15 03:49:57',1,'0000-00-00 00:00:00',0),(32,'policy','policy','2020-09-18 03:23:31',1,'0000-00-00 00:00:00',0),(33,'project','project','2020-09-18 03:28:17',1,'2020-09-18 03:29:07',1),(34,'Consultancy','Consultancy','2020-09-18 04:04:48',1,'0000-00-00 00:00:00',0),(35,'research papers','publication/view/2','2020-09-21 02:31:04',1,'2020-10-01 02:23:42',1),(36,'Press release','news-details/pressrelease','2020-09-21 05:04:25',1,'0000-00-00 00:00:00',0),(37,'Policy Briefs','publication/view/4','2020-09-22 12:00:03',1,'2020-10-01 02:24:16',1),(38,'Books & Periodicals','publication/view/1','2020-09-22 12:00:19',1,'2020-10-01 02:23:00',1),(39,'Reports & articles','publication/view/resports','2020-09-22 12:00:40',1,'2021-08-12 12:59:47',1),(40,'Research Gallery','photo-gallery-view/UFpqN1UvTGpzSFdSK0RxcHlLT24vdz09','2020-09-24 12:50:41',1,'2020-09-24 12:51:31',1),(41,'International','project-view/a3BHUnpXUHY1YmlFbW9xOHAvSm9WQT09','2020-09-25 04:51:05',1,'0000-00-00 00:00:00',0),(42,'Admission','register','2021-03-24 03:37:54',1,'2021-03-26 04:30:42',1),(43,'registration status','login','2021-07-16 04:59:33',1,'0000-00-00 00:00:00',0),(44,'pgbdm','empanelment-consultancy','2021-07-16 05:02:27',1,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `comm_menu_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_menu_type`
--

DROP TABLE IF EXISTS `comm_menu_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_menu_type` (
  `menu_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_type_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`menu_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_menu_type`
--

LOCK TABLES `comm_menu_type` WRITE;
/*!40000 ALTER TABLE `comm_menu_type` DISABLE KEYS */;
INSERT INTO `comm_menu_type` VALUES (1,'Top Menu'),(2,'Footer Menu'),(3,'Middle Menu');
/*!40000 ALTER TABLE `comm_menu_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_messages`
--

DROP TABLE IF EXISTS `comm_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `heading_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `heading_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `message_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `flag` tinyint(2) NOT NULL COMMENT '1 for left and 0 for right',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL,
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_messages`
--

LOCK TABLES `comm_messages` WRITE;
/*!40000 ALTER TABLE `comm_messages` DISABLE KEYS */;
INSERT INTO `comm_messages` VALUES (1,'Shivraj Singh Chouhan','Shivraj Singh Chouhan','माननीय मुख्यमंत्री,  मध्य प्रदेश शासन','Hon.Chief Minister, MP','माननीय मुख्यमंत्रीजी का संदेश','Hon. Chief Minister\\\'s Message','मध्यप्रदेश, अविश्वसनीय भारत का दिल, देश में सबसे तेजी से बढ़ती अर्थव्यवस्थाओं में से एक है। हमारे व्यापार अनुकूल नीतियों और कुशल श्रम शक्ति के साथ, हम मेक इन इंडिया के विकास का आधार बनने की अपेक्षा करते हैं |','Madhya Pradesh, the heart of incredible India, is one of the fastest growing economies in the country. With our business friendly policies and skilled labour force, we aspire to become the growth pillar of Make in India.','shivraj-singh-chouhan.png','2018-05-04 03:56:16',1,'2020-09-14 03:07:50',1,1,1,0,0,'0000-00-00 00:00:00'),(2,'Shri Hardeep Singh','Shri Hardeep Singh','माननीय मंत्री, मध्य प्रदेश शासन','Minister of Public Works Department and Environment','Minister of Public Works Department and Environment','Minister of Public Works Department and Environment','मध्यप्रदेश, अविश्वसनीय भारत का दिल, देश में सबसे तेजी से बढ़ती अर्थव्यवस्थाओं में से एक है। हमारे व्यापार अनुकूल नीतियों और कुशल श्रम शक्ति के साथ, हम मेक इन इंडिया के विकास का आधार बनने की अपेक्षा करते हैं |','Madhya Pradesh, the heart of incredible India, is one of the fastest growing economies in the country. With our business friendly policies and skilled labour force, we aspire to become the growth pillar of Make in India.','shreehardeepsingh.png','2019-02-22 11:03:52',1,'2020-09-14 03:08:58',1,1,1,0,0,'0000-00-00 00:00:00'),(3,'Shri Malay Shrivastava','Shri Malay Shrivastava','Principal Secretary & Director General, EPCO','Principal Secretary & Director General, EPCO','Shri Malay Shrivastava','Shri Malay Shrivastava','Shri Malay Shrivastava','Shri Malay Shrivastava','shrimalay.png','2020-09-14 03:09:44',1,'2020-09-14 03:10:21',1,1,1,0,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_milestone`
--

DROP TABLE IF EXISTS `comm_milestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_milestone` (
  `milestone_id` int(11) NOT NULL AUTO_INCREMENT,
  `milestone_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `milestone_start_date` date NOT NULL,
  `milestone_end_date` date NOT NULL,
  `milestone_payment` bigint(20) NOT NULL,
  `milestone_percentage` int(11) NOT NULL,
  `milestone_planned` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `milestone_achieved` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `milestone_scope` text COLLATE utf8_unicode_ci NOT NULL,
  `milestone_status` tinyint(2) NOT NULL COMMENT '0=Not Started Yet, 1=Started, 2=Completed, 3= Reject, 4=Completed and Approved',
  `milestone_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_panel_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=Admin Panel,2=User Panel',
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  PRIMARY KEY (`milestone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_milestone`
--

LOCK TABLES `comm_milestone` WRITE;
/*!40000 ALTER TABLE `comm_milestone` DISABLE KEYS */;
INSERT INTO `comm_milestone` VALUES (1,'milestone 1',4,'2018-05-01','2018-06-12',50,10,'','','test',3,'test',1,'2018-06-12 05:11:47',1,'2018-06-30 12:12:58',1),(2,'milestone 2',4,'2018-05-04','2018-06-15',60,20,'','','trewr',1,'sdf',1,'2018-06-12 05:14:24',1,'2018-06-30 04:39:19',3),(3,'milesotne 1',4,'2018-05-03','2018-06-13',10,10,'','','dfs',0,'',1,'2018-06-12 05:37:39',1,'2018-06-30 04:36:05',3),(4,'milestone 3',4,'2018-05-01','2018-06-13',10,10,'','','sdf',0,NULL,1,'2018-06-12 05:44:52',1,'0000-00-00 00:00:00',0),(5,'milestone 1',5,'2018-05-01','2018-06-12',10,10,'','','sdf',0,NULL,1,'2018-06-12 05:46:29',1,'0000-00-00 00:00:00',0),(6,'milestone 1',2,'2018-06-02','2018-06-12',2000,10,'','','test',3,'test',2,'2018-07-06 12:29:00',1,'2018-07-07 12:19:38',1),(7,'milestone 2',2,'2018-05-18','2018-05-30',2000,10,'','','test data',0,NULL,1,'2018-07-06 06:51:06',1,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `comm_milestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_news`
--

DROP TABLE IF EXISTS `comm_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `is_alert` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_news`
--

LOCK TABLES `comm_news` WRITE;
/*!40000 ALTER TABLE `comm_news` DISABLE KEYS */;
INSERT INTO `comm_news` VALUES (1,'म. प्र . जल निगम अधिक्रित वेब साइट की सीदी प्रसरन !','MP Jal Nigam Maryadit Website is going On  LIVE !','<p style=\"text-align: justify; \">\r\n	<span style=\"color:#0000ff;\"><span style=\"font-size:14px;\"><strong><font face=\"Calibri, Mangal\"><span style=\"background-color: rgba(255, 255, 255, 0.4);\">म. प्र . जल निगम अधिक्रित वेब साइट की सीदी प्रसरन !</span></font></strong></span></span></p>','<p>\r\n	<span style=\"color:#0000ff;\"><span style=\"font-size:14px;\"><strong>MP Jal Nigam Maryadit&#39;s Website is Going On &nbsp;LIVE !</strong></span></span></p>','','2018-11-13 04:51:54',1,'2021-08-10 04:46:21',1,1,0,0,'2022-01-29 00:00:00',1,'0000-00-00 00:00:00',1,0),(2,'Empanelment of Consultancy firms and consultants in EPCO','Empanelment of Consultancy firms and consultants in EPCO','<p>\r\n	Environmental Planning &amp; Coordination Organization Paryavaran Parisar, E-5 Arera Colony, Bhopal Notice EPCO invites applications for Empanelment of reputed Conservation Architects. The minimum criteria for empanelment is B. Arch with 10 years work experience in conservation project or P. G. Course in Conservation Architecture with 05 years work experience in Conservation Projects &amp; Experience of handling or executing at least 10 conservation projects. For details, visit our website www.epco.in Ph. 2466970, 2464318 Executive Director</p>','<p>\r\n	Environmental Planning &amp; Coordination Organization Paryavaran Parisar, E-5 Arera Colony, Bhopal Notice EPCO invites applications for Empanelment of reputed Conservation Architects. The minimum criteria for empanelment is B. Arch with 10 years work experience in conservation project or P. G. Course in Conservation Architecture with 05 years work experience in Conservation Projects &amp; Experience of handling or executing at least 10 conservation projects. For details, visit our website www.epco.in Ph. 2466970, 2464318 Executive Director</p>','','2020-09-21 04:48:26',1,'2021-08-10 04:46:29',1,1,0,0,'2022-01-01 00:00:00',1,'0000-00-00 00:00:00',1,1),(3,'News','News','<p>\r\n	Environmental Planning &amp; Coordination Organization Paryavaran Parisar, E-5 Arera Colony, Bhopal Notice EPCO invites applications for Empanelment of reputed Conservation Architects. The minimum criteria for empanelment is B. Arch with 10 years work experience in conservation project or P. G. Course in Conservation Architecture with 05 years work experience in Conservation Projects &amp; Experience of handling or executing at least 10 conservation projects. For details, visit our website www.epco.in Ph. 2466970, 2464318 Executive Director</p>','<p>\r\n	Environmental Planning &amp; Coordination Organization Paryavaran Parisar, E-5 Arera Colony, Bhopal Notice EPCO invites applications for Empanelment of reputed Conservation Architects. The minimum criteria for empanelment is B. Arch with 10 years work experience in conservation project or P. G. Course in Conservation Architecture with 05 years work experience in Conservation Projects &amp; Experience of handling or executing at least 10 conservation projects. For details, visit our website www.epco.in Ph. 2466970, 2464318 Executive Director</p>','','2020-09-21 04:49:11',1,'2021-03-04 12:43:48',1,1,0,0,'2021-04-03 00:00:00',1,'0000-00-00 00:00:00',0,0),(4,'dfg','dfg','<p>\r\n	dfgdfg</p>','<p>\r\n	dfg</p>','','2020-09-21 04:50:02',1,'2021-03-04 12:43:35',1,1,0,0,'2021-04-03 00:00:00',1,'0000-00-00 00:00:00',0,0),(5,'fh','fh','<p>\r\n	fhgfgh</p>','<p>\r\n	fgh</p>','','2020-09-21 04:50:36',1,'2021-03-04 12:43:37',1,1,0,0,'2021-04-03 00:00:00',1,'0000-00-00 00:00:00',0,1),(6,'World health issue','World health issue','<p>\r\n	test</p>','<p>\r\n	test</p>','img_(3).jpg','2021-01-25 12:04:55',1,'0000-00-00 00:00:00',0,1,0,0,'2021-04-03 00:00:00',1,'0000-00-00 00:00:00',1,1),(7,'TEST NEWS2','SDF','<p>\r\n	SDG</p>','<p>\r\n	SDF</p>','','2021-01-29 01:15:56',1,'2021-08-10 04:46:41',1,1,0,0,'2021-12-04 00:00:00',1,'0000-00-00 00:00:00',1,0),(8,'FH','FGH','<p>\r\n	FTG</p>','<p>\r\n	FGH</p>','','2021-01-29 01:16:14',1,'0000-00-00 00:00:00',0,1,0,0,'2021-04-03 00:00:00',1,'0000-00-00 00:00:00',1,1),(9,'FTYH','FGH','<p>\r\n	FHG</p>','<p>\r\n	FGH</p>','','2021-01-29 01:16:22',1,'2021-03-04 12:44:09',1,1,0,0,'2021-04-03 00:00:00',1,'0000-00-00 00:00:00',1,1),(10,'CHECK NEWS','DFGDFG','<p>\r\n	DFGDFG</p>','<p>\r\n	DFGDFG</p>','','2021-01-29 01:17:22',1,'2021-03-04 12:44:03',1,1,0,0,'2021-04-03 00:00:00',1,'0000-00-00 00:00:00',1,1);
/*!40000 ALTER TABLE `comm_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_noticeboard`
--

DROP TABLE IF EXISTS `comm_noticeboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_noticeboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_noticeboard`
--

LOCK TABLES `comm_noticeboard` WRITE;
/*!40000 ALTER TABLE `comm_noticeboard` DISABLE KEYS */;
INSERT INTO `comm_noticeboard` VALUES (1,'टेस्ट नोटिस बोर्ड','Test notice board','GalleryExhibitPhotos001.jpg','2018-11-26 10:48:58',3,'0000-00-00 00:00:00',0,1,0,0,'2018-11-26 00:00:00',1,'0000-00-00 00:00:00'),(2,'223213','23213213','03.jpg','2018-11-26 10:49:37',3,'0000-00-00 00:00:00',0,1,0,0,'2018-11-26 00:00:00',1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_noticeboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_notification`
--

DROP TABLE IF EXISTS `comm_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_user_panel` tinyint(2) NOT NULL COMMENT '1=Admin Panel,2=User Panel',
  `recipent_user_panel` tinyint(2) NOT NULL COMMENT '1=Admin Panel,2=User Panel',
  `notification_key` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipent_id` int(11) NOT NULL,
  `notification_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_unread` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0=unread,1=read',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `read_date` datetime DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  UNIQUE KEY `notification_id` (`notification_id`,`notification_key`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_notification`
--

LOCK TABLES `comm_notification` WRITE;
/*!40000 ALTER TABLE `comm_notification` DISABLE KEYS */;
INSERT INTO `comm_notification` VALUES (1,2,1,1854740560,3,4,'pavan sihore has changed the status of project project 1 from Started to Not Started Yet.',0,0,'2018-07-06 00:00:00',NULL),(2,2,1,1854740560,3,5,'pavan sihore has changed the status of project project 1 from Started to Not Started Yet.',1,0,'2018-07-06 00:00:00','2018-07-07 00:00:00'),(3,2,2,1854740560,3,6,'pavan sihore has changed the status of project project 1 from Started to Not Started Yet.',1,0,'2018-07-06 00:00:00','2018-07-07 00:00:00'),(4,1,1,1594576105,5,4,'district user has added documrnt/report for project  and waiting for approval.',0,0,'2018-07-06 04:51:45',NULL),(5,1,1,1594576105,5,5,'district user has added documrnt/report for project  and waiting for approval.',1,0,'2018-07-06 04:51:45','2018-07-07 00:00:00'),(6,1,2,1594576105,5,3,'Administrator has added documrnt/report for project Electric Generator .',1,0,'2018-07-06 04:51:45','2018-07-09 00:00:00'),(7,1,2,1594576105,5,6,'Administrator has added documrnt/report for project Electric Generator .',1,0,'2018-07-06 04:51:45','2018-07-07 00:00:00'),(8,1,1,1692637046,5,4,'department user (animal husbandry) has added documrnt/report for project project 1 and waiting for approval.',0,0,'2018-07-06 05:07:26',NULL),(9,1,1,1692637046,5,5,'department user (animal husbandry) has added documrnt/report for project project 1 and waiting for approval.',1,0,'2018-07-06 05:07:26','2018-07-07 00:00:00'),(10,1,2,1692637046,5,3,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 05:07:26','2018-07-09 00:00:00'),(11,1,2,1692637046,5,6,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 05:07:26','2018-07-07 00:00:00'),(12,1,1,1673367112,5,4,'Department User (Animal Husbandry) has added documrnt/report for project project 1 and waiting for approval.',0,0,'2018-07-06 05:08:32',NULL),(13,1,1,1673367112,5,5,'Department User (Animal Husbandry) has added documrnt/report for project project 1 and waiting for approval.',1,0,'2018-07-06 05:08:32','2018-07-07 00:00:00'),(14,1,2,1673367112,5,3,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 05:08:32','2018-07-09 00:00:00'),(15,1,2,1673367112,5,6,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 05:08:32','2018-07-07 00:00:00'),(16,1,1,1620339739,1,4,'Administrator has changed the document status of project project 1 from  to .',0,0,'2018-07-06 05:52:19',NULL),(17,1,1,1620339739,1,5,'Administrator has changed the document status of project project 1 from  to .',1,0,'2018-07-06 05:52:19','2018-07-07 00:00:00'),(18,1,2,1620339739,1,3,'Administrator has changed the document status of project project 1 from  to .',1,0,'2018-07-06 05:52:19','2018-07-09 00:00:00'),(19,1,2,1620339739,1,6,'Administrator has changed the document status of project project 1 from  to .',1,0,'2018-07-06 05:52:19','2018-07-07 00:00:00'),(20,1,1,1728670027,1,4,'Administrator has changed the document status of project project 1 from  to .',0,0,'2018-07-06 05:57:07',NULL),(21,1,1,1728670027,1,5,'Administrator has changed the document status of project project 1 from  to .',1,0,'2018-07-06 05:57:07','2018-07-07 00:00:00'),(22,1,2,1728670027,1,3,'Administrator has changed the document status of project project 1 from  to .',1,0,'2018-07-06 05:57:07','2018-07-09 00:00:00'),(23,1,2,1728670027,1,6,'Administrator has changed the document status of project project 1 from  to .',1,0,'2018-07-06 05:57:07','2018-07-07 00:00:00'),(24,1,1,1857920145,1,4,'Administrator has changed the document status of project project 1 from Approved to Reject.',0,0,'2018-07-06 05:59:05',NULL),(25,1,1,1857920145,1,5,'Administrator has changed the document status of project project 1 from Approved to Reject.',1,0,'2018-07-06 05:59:05','2018-07-07 00:00:00'),(26,1,2,1857920145,1,3,'Administrator has changed the document status of project project 1 from Approved to Reject.',1,0,'2018-07-06 05:59:05','2018-07-09 00:00:00'),(27,1,2,1857920145,1,6,'Administrator has changed the document status of project project 1 from Approved to Reject.',1,0,'2018-07-06 05:59:05','2018-07-07 00:00:00'),(28,1,1,1584571174,5,4,'Department User (Animal Husbandry) has added documrnt/report for project project 1 and waiting for approval.',0,0,'2018-07-06 06:16:14',NULL),(29,1,1,1584571174,5,5,'',1,0,'2018-07-06 06:16:14','2018-07-07 00:00:00'),(30,1,2,1584571174,5,3,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 06:16:14','2018-07-09 00:00:00'),(31,1,2,1584571174,5,6,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 06:16:14','2018-07-07 00:00:00'),(32,1,1,1848941412,1,4,'Administrator has added documrnt/report for project project 1 and waiting for approval.',0,0,'2018-07-06 06:20:12',NULL),(33,1,1,1848941412,1,5,'Administrator has added documrnt/report for project project 1 and waiting for approval.',1,0,'2018-07-06 06:20:12','2018-07-07 00:00:00'),(34,1,2,1848941412,1,3,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 06:20:12','2018-07-09 00:00:00'),(35,1,2,1848941412,1,6,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 06:20:12','2018-07-07 00:00:00'),(36,1,1,1844791518,1,4,'Administrator has added documrnt/report for project project 1 and waiting for approval.',0,0,'2018-07-06 06:21:58',NULL),(37,1,1,1844791518,1,5,'Administrator has added documrnt/report for project project 1 and waiting for approval.',1,0,'2018-07-06 06:21:58','2018-07-07 00:00:00'),(38,1,2,1844791518,1,3,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 06:21:58','2018-07-09 00:00:00'),(39,1,2,1844791518,1,6,'Administrator has added documrnt/report for project Electric Generator project 1.',1,0,'2018-07-06 06:21:58','2018-07-07 00:00:00'),(40,1,1,1858231527,1,4,'test 3 document of projectproject 1 is deleted by Administrator.',0,0,'2018-07-06 06:22:07',NULL),(41,1,1,1858231527,1,5,'test 3 document of projectproject 1 is deleted by Administrator.',1,0,'2018-07-06 06:22:07','2018-07-07 00:00:00'),(42,1,2,1858231527,1,3,'test 3 document of projectproject 1 is deleted by Administrator.',1,0,'2018-07-06 06:22:07','2018-07-09 00:00:00'),(43,1,2,1858231527,1,6,'test 3 document of projectproject 1 is deleted by Administrator.',1,0,'2018-07-06 06:22:07','2018-07-07 00:00:00'),(44,1,1,1755963266,1,4,'Milestone has been added for project project 1.',0,0,'2018-07-06 06:51:06',NULL),(45,1,1,1755963266,1,5,'Milestone has been added for project project 1.',1,0,'2018-07-06 06:51:06','2018-07-07 00:00:00'),(46,1,2,1755963266,1,3,'Milestone has been added for project project 1.',1,0,'2018-07-06 06:51:06','2018-07-09 00:00:00'),(47,1,2,1755963266,1,6,'Milestone has been added for project project 1.',1,0,'2018-07-06 06:51:06','2018-07-07 00:00:00'),(48,1,1,1843636178,1,4,'Administrator has changed the milestone status of project project 1 from Started to Reject.',0,0,'2018-07-07 12:19:38',NULL),(49,1,1,1843636178,1,5,'Administrator has changed the milestone status of project project 1 from Started to Reject.',1,0,'2018-07-07 12:19:38','2018-07-07 00:00:00'),(50,1,2,1843636178,1,3,'Administrator has changed the milestone status of project project 1 from Started to Reject.',1,0,'2018-07-07 12:19:38','2018-07-09 00:00:00'),(51,1,2,1843636178,1,6,'Administrator has changed the milestone status of project project 1 from Started to Reject.',1,0,'2018-07-07 12:19:38','2018-07-07 00:00:00'),(52,1,1,1602197545,1,4,'Administrator has changed the document status of project abc project from Pending to Approved.',0,0,'2018-07-07 03:29:05',NULL),(53,1,1,1705777600,1,4,'Administrator has changed the document status of project abc project from Approved to Pending.',0,0,'2018-07-07 03:30:00',NULL),(54,1,1,1680029890,1,4,'Project abc project has been assigned to .',0,0,'2018-07-10 01:34:50',NULL);
/*!40000 ALTER TABLE `comm_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_pages`
--

DROP TABLE IF EXISTS `comm_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `page_title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `pre_url` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page/content/',
  `page_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page_added_date` datetime NOT NULL,
  `page_added_by` int(11) NOT NULL DEFAULT '0',
  `page_edit_date` datetime NOT NULL,
  `page_edit_by` int(11) NOT NULL DEFAULT '0',
  `page_status` tinyint(2) NOT NULL DEFAULT '1',
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `attachment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_url` (`page_url`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_pages`
--

LOCK TABLES `comm_pages` WRITE;
/*!40000 ALTER TABLE `comm_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_photo_gallery`
--

DROP TABLE IF EXISTS `comm_photo_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_photo_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_photo_gallery`
--

LOCK TABLES `comm_photo_gallery` WRITE;
/*!40000 ALTER TABLE `comm_photo_gallery` DISABLE KEYS */;
INSERT INTO `comm_photo_gallery` VALUES (1,1,'test','test','event1.jpg','2018-11-13 04:22:11',1,'2019-02-08 03:56:16',3,1,3,'0000-00-00 00:00:00',1),(2,1,'गैलरी परीक्षण -1','Gallery test -1','12.jpg','2018-11-24 04:35:37',3,'2018-11-26 11:42:46',3,1,4,'0000-00-00 00:00:00',1),(3,1,'उदयपूरा समूह जल प्रदाय योजना','Udaipura Project','Udaipura.JPG','2018-11-26 11:35:38',3,'2020-09-18 03:06:48',1,1,1,'2019-12-09 18:19:35',1),(4,1,'झुरकी समूह जल प्रदाय योजना','Jhurki MVRWSS','Jhurki.jpg','2018-11-26 11:41:11',3,'2020-09-18 03:06:50',1,1,2,'2019-12-09 18:24:38',1),(5,1,'बड़े नाम की जांच करें बड़े नाम की जांच करें बड़े नाम की जांच करें बड़े नाम की जांच करें','Check for the big name Check for the big name','football10.jpg','2018-11-27 04:46:34',3,'2019-12-09 06:24:31',2,1,5,'0000-00-00 00:00:00',1),(6,1,'test','test','pgImage1.jpg','2020-09-18 03:07:11',1,'0000-00-00 00:00:00',0,1,6,'0000-00-00 00:00:00',0),(7,1,'test','test','pgImage2.jpg','2020-09-18 03:07:20',1,'0000-00-00 00:00:00',0,1,7,'0000-00-00 00:00:00',0),(8,1,'test','test','pgImage3.jpg','2020-09-18 03:07:27',1,'0000-00-00 00:00:00',0,1,8,'0000-00-00 00:00:00',0),(9,1,'test','test','pgImage4.jpg','2020-09-18 03:07:38',1,'0000-00-00 00:00:00',0,1,9,'0000-00-00 00:00:00',0),(10,1,'test','test','pgImage6.jpg','2020-09-18 03:07:47',1,'0000-00-00 00:00:00',0,1,10,'0000-00-00 00:00:00',0),(11,7,'NEAC','NEAC','education_1.jpg','2020-09-24 12:05:54',1,'0000-00-00 00:00:00',0,1,11,'0000-00-00 00:00:00',0),(12,7,'NEAC','NEAC','education_2.jpg','2020-09-24 12:06:02',1,'0000-00-00 00:00:00',0,1,12,'0000-00-00 00:00:00',0),(13,7,'NEAC','NEAC','education_3.jpg','2020-09-24 12:06:08',1,'0000-00-00 00:00:00',0,1,13,'0000-00-00 00:00:00',0),(14,7,'NEAC','NEAC','education_4.jpg','2020-09-24 12:06:16',1,'0000-00-00 00:00:00',0,1,14,'0000-00-00 00:00:00',0),(15,7,'NEAC','NEAC','education_41.jpg','2020-09-24 12:06:23',1,'0000-00-00 00:00:00',0,1,15,'0000-00-00 00:00:00',0),(16,7,'NEAC','NEAC','education_5.jpg','2020-09-24 12:06:31',1,'0000-00-00 00:00:00',0,1,16,'0000-00-00 00:00:00',0),(17,8,'Biosphere Reserves','Biosphere Reserves','epco_gallery1o.jpg','2020-09-24 12:44:53',1,'0000-00-00 00:00:00',0,1,17,'0000-00-00 00:00:00',0),(18,8,'Biosphere Reserves','Biosphere Reserves','epco_gallery2o.jpg','2020-09-24 12:45:03',1,'0000-00-00 00:00:00',0,1,18,'0000-00-00 00:00:00',0),(19,8,'Biosphere Reserves','Biosphere Reserves','epco_gallery3o.jpg','2020-09-24 12:45:11',1,'0000-00-00 00:00:00',0,1,19,'0000-00-00 00:00:00',0),(20,8,'Biosphere Reserves','Biosphere Reserves','epco_gallery3o1.jpg','2020-09-24 12:45:19',1,'0000-00-00 00:00:00',0,1,20,'0000-00-00 00:00:00',0),(21,8,'Biosphere Reserves','Biosphere Reserves','epco_gallery4o.jpg','2020-09-24 12:45:29',1,'0000-00-00 00:00:00',0,1,21,'0000-00-00 00:00:00',0),(22,8,'Biosphere Reserves','Biosphere Reserves','epco_gallery6o.jpg','2020-09-24 12:45:37',1,'0000-00-00 00:00:00',0,1,22,'0000-00-00 00:00:00',0),(23,8,'Biosphere Reserves','Biosphere Reserves','epco_gallery6o1.jpg','2020-09-24 12:45:43',1,'0000-00-00 00:00:00',0,1,23,'0000-00-00 00:00:00',0),(24,9,'Environmental Research Laboratory','Environmental Research Laboratory','environmental_1.jpg','2020-09-24 01:04:26',1,'0000-00-00 00:00:00',0,1,24,'0000-00-00 00:00:00',0),(25,9,'Environmental Research Laboratory','Environmental Research Laboratory','environmental_2.jpg','2020-09-24 01:04:33',1,'0000-00-00 00:00:00',0,1,25,'0000-00-00 00:00:00',0),(26,9,'Environmental Research Laboratory','Environmental Research Laboratory','environmental_3.jpg','2020-09-24 01:04:39',1,'0000-00-00 00:00:00',0,1,26,'0000-00-00 00:00:00',0),(27,1,'General','General','epco_2.jpg','2020-09-25 02:47:06',1,'0000-00-00 00:00:00',0,1,27,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `comm_photo_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_photo_gallery_category`
--

DROP TABLE IF EXISTS `comm_photo_gallery_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_photo_gallery_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime DEFAULT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `cat_status` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_photo_gallery_category`
--

LOCK TABLES `comm_photo_gallery_category` WRITE;
/*!40000 ALTER TABLE `comm_photo_gallery_category` DISABLE KEYS */;
INSERT INTO `comm_photo_gallery_category` VALUES (1,'सामान्य','general',NULL,0,'2017-06-03 03:44:08',1,1,0),(2,'कार्यालय','Office','2017-06-24 05:22:21',1,'2020-09-25 02:48:08',1,1,1),(3,'प्रशिक्षण','Trainings','2018-09-22 11:48:07',3,'2020-09-25 02:48:11',1,1,1),(4,'टेस्ट फंक्शनलिटी  टेस्ट फंक्शनलिटी  टेस्ट फंक्शनलिटी  -1','Test Functionality Test FunctionalityTest Functionality -1','2018-11-26 10:52:08',3,'2020-09-25 02:47:47',1,1,1),(5,'टेस्ट गल्लेरी फंक्शनलिटी','Test Gallery Functionality','2018-11-26 10:52:57',3,'2020-09-25 02:47:50',1,1,1),(6,'बड़े नाम की जांच करें बड़े नाम की जांच करेंबड़े नाम की जांच करें बड़े नाम की जांच करें','Check for the big name Check for the big name Check for the big name Check for the big name','2018-11-27 04:47:47',3,'2020-09-25 02:48:05',1,1,1),(7,'NEAC','NEAC','2020-09-24 12:05:16',1,NULL,0,1,0),(8,'Biosphere Reserves','Biosphere Reserves','2020-09-24 12:43:30',1,NULL,0,1,0),(9,'Environmental Research Laboratory','Environmental Research Laboratory','2020-09-24 01:03:33',1,NULL,0,1,0);
/*!40000 ALTER TABLE `comm_photo_gallery_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_policies`
--

DROP TABLE IF EXISTS `comm_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL COMMENT '1=Industrial, 2=Other Department',
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  `order_preference` int(11) NOT NULL,
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_policies`
--

LOCK TABLES `comm_policies` WRITE;
/*!40000 ALTER TABLE `comm_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_policies_category`
--

DROP TABLE IF EXISTS `comm_policies_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_policies_category` (
  `policies_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `policies_category_title_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `policies_category_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `cat_status` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`policies_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_policies_category`
--

LOCK TABLES `comm_policies_category` WRITE;
/*!40000 ALTER TABLE `comm_policies_category` DISABLE KEYS */;
INSERT INTO `comm_policies_category` VALUES (1,'व्यावसायिक','Industrial','0000-00-00 00:00:00',0,'2017-07-06 12:43:46',1,1,0),(2,'अन्य विभाग','Other Department','0000-00-00 00:00:00',0,'2017-07-06 12:43:50',1,1,0),(3,'test','test','2020-01-02 10:58:01',1,'0000-00-00 00:00:00',0,0,0);
/*!40000 ALTER TABLE `comm_policies_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_project`
--

DROP TABLE IF EXISTS `comm_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `project_status` int(11) NOT NULL COMMENT '1 =Completed,2 = In Progress',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_project`
--

LOCK TABLES `comm_project` WRITE;
/*!40000 ALTER TABLE `comm_project` DISABLE KEYS */;
INSERT INTO `comm_project` VALUES (1,1,'Implementation of Kushalpura multi village rural water supply scheme*','Implementation of Kushalpura multi village rural water supply scheme*','<p>\r\n	test</p>','<p>\r\n	test</p>','vcr-3.jpg','2019-11-20 02:10:00','2019-11-27 06:30:00','2019-11-16 10:44:01',1,'2020-09-17 03:43:21',1,1,0,0,1,'0000-00-00 00:00:00',1),(2,2,'Implementation of 14.8 MLD Banakpura-Kushalpura multi village rural water supply scheme*','Implementation of 14.8 MLD Banakpura-Kushalpura multi village rural water supply scheme*','<p>\r\n	test</p>','<p>\r\n	test</p>','vcr-2.jpg','2019-11-19 01:05:00','2019-11-27 05:25:00','2019-11-16 10:45:09',1,'2020-09-17 03:44:52',1,1,0,0,1,'0000-00-00 00:00:00',1),(3,1,'Implementation of 21.7 MLD Bansujara (Bada Malhera) multi villages rural water supply scheme','Implementation of 21.7 MLD Bansujara (Bada Malhera) multi villages rural water supply scheme','<p>\r\n	test</p>','<p>\r\n	test</p>','vcr-4.jpg','2019-11-26 05:25:00','2019-12-04 10:50:00','2019-11-16 10:46:37',1,'2020-09-17 03:42:56',1,1,0,0,1,'0000-00-00 00:00:00',1),(4,1,'Implementation of 19.5 MLD Sagad-Hinotiya Mali rural water supply scheme','Implementation of 19.5 MLD Sagad-Hinotiya Mali rural water supply scheme','<p>\r\n	test</p>','<p>\r\n	test</p>','vcr-31.jpg','2019-11-13 10:25:00','2019-12-04 09:45:00','2019-11-16 10:46:58',1,'2020-09-17 03:45:07',1,1,0,0,1,'0000-00-00 00:00:00',1),(5,1,'test','test','<p>\r\n	test</p>','<p>\r\n	test</p>','vcr.jpg','2019-12-17 01:40:00','2019-12-25 06:30:00','2019-12-17 01:43:07',1,'2020-09-17 03:45:22',1,1,0,0,1,'0000-00-00 00:00:00',1),(6,1,'test','test','<p>\r\n	test</p>','<p>\r\n	test</p>','vcr-21.jpg','2019-12-17 01:40:00','2019-12-24 05:25:00','2019-12-17 01:49:02',1,'2020-09-17 03:45:38',1,1,0,0,1,'0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `comm_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_project_category`
--

DROP TABLE IF EXISTS `comm_project_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_project_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime DEFAULT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `cat_status` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order_preference` tinyint(2) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_project_category`
--

LOCK TABLES `comm_project_category` WRITE;
/*!40000 ALTER TABLE `comm_project_category` DISABLE KEYS */;
INSERT INTO `comm_project_category` VALUES (1,'International','International',NULL,0,'2020-09-18 03:57:58',1,1,0,'epco_6.jpg',0),(2,'Domestic','Domestic',NULL,0,'2020-09-18 03:58:23',1,1,0,'epco_3.jpg',0);
/*!40000 ALTER TABLE `comm_project_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_project_document`
--

DROP TABLE IF EXISTS `comm_project_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_project_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_project_document`
--

LOCK TABLES `comm_project_document` WRITE;
/*!40000 ALTER TABLE `comm_project_document` DISABLE KEYS */;
INSERT INTO `comm_project_document` VALUES (2,1,'img_(4).jpg','2021-01-23 16:38:31',1,'0000-00-00 00:00:00',0,0),(3,3,'imgbunde-1l.jpg','2021-01-23 16:38:38',1,'0000-00-00 00:00:00',0,0),(5,2,'img_(3).jpg','2021-01-23 16:44:08',1,'0000-00-00 00:00:00',0,0),(6,2,'img_(3)1.jpg','2021-01-23 16:44:10',1,'0000-00-00 00:00:00',0,0),(7,1,'img_(3)2.jpg','2021-01-23 16:44:35',1,'0000-00-00 00:00:00',0,0),(8,1,'img_(2)1.jpg','2021-01-23 16:44:37',1,'0000-00-00 00:00:00',0,0),(9,2,'img_(2)2.jpg','2021-01-23 16:45:47',1,'0000-00-00 00:00:00',0,0),(10,1,'img_(3)3.jpg','2021-01-23 16:46:16',1,'0000-00-00 00:00:00',0,0),(11,3,'img_(3)4.jpg','2021-01-23 16:46:47',1,'0000-00-00 00:00:00',0,0),(12,3,'img_(4)1.jpg','2021-01-23 16:46:51',1,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `comm_project_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_project_media`
--

DROP TABLE IF EXISTS `comm_project_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_project_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_project_media`
--

LOCK TABLES `comm_project_media` WRITE;
/*!40000 ALTER TABLE `comm_project_media` DISABLE KEYS */;
INSERT INTO `comm_project_media` VALUES (8,1,'img_(2)1.jpg','2021-01-23 16:44:37',1,'0000-00-00 00:00:00',0,0),(9,2,'img_(2)2.jpg','2021-01-23 16:45:47',1,'0000-00-00 00:00:00',0,0),(10,1,'img_(3)3.jpg','2021-01-23 16:46:16',1,'0000-00-00 00:00:00',0,0),(11,3,'img_(3)4.jpg','2021-01-23 16:46:47',1,'0000-00-00 00:00:00',0,0),(12,3,'img_(4)1.jpg','2021-01-23 16:46:51',1,'0000-00-00 00:00:00',0,0),(14,3,'covid3rdwave1.png','2021-08-10 15:08:16',1,'0000-00-00 00:00:00',0,0),(15,2,'covid3rdwave2.png','2021-08-10 15:08:23',1,'0000-00-00 00:00:00',0,0),(16,1,'covid3rdwave3.png','2021-08-10 15:08:50',1,'0000-00-00 00:00:00',0,0),(17,3,'chart.jpg','2021-08-10 15:09:48',1,'0000-00-00 00:00:00',0,0),(19,4,'chart-hindi.jpg','2021-08-10 15:11:33',1,'0000-00-00 00:00:00',0,0),(20,1,'chart2.jpg','2021-08-10 15:11:39',1,'0000-00-00 00:00:00',0,0),(21,1,'chart3.jpg','2021-08-10 15:11:42',1,'0000-00-00 00:00:00',0,0),(22,3,'chart4.jpg','2021-08-10 15:11:46',1,'0000-00-00 00:00:00',0,0),(23,3,'chart5.jpg','2021-08-10 15:12:39',1,'0000-00-00 00:00:00',0,0),(24,4,'chart6.jpg','2021-08-10 15:12:47',1,'0000-00-00 00:00:00',0,0),(25,3,'chart1.jpg','2021-08-10 15:14:40',1,'0000-00-00 00:00:00',0,0),(26,6,'chart7.jpg','2021-08-10 15:14:50',1,'0000-00-00 00:00:00',0,0),(27,6,'chart-hindi1.jpg','2021-08-10 15:18:14',1,'0000-00-00 00:00:00',0,0),(28,3,'chart8.jpg','2021-08-10 15:18:20',1,'0000-00-00 00:00:00',0,0),(29,1,'Screenshot_(9).png','2021-08-17 14:17:45',1,'0000-00-00 00:00:00',0,0),(30,1,'Screenshot_(9)1.png','2021-08-17 14:17:48',1,'0000-00-00 00:00:00',0,0),(31,2,'Screenshot_(9)2.png','2021-08-17 14:17:51',1,'0000-00-00 00:00:00',0,0),(32,1,'screencapture-localhost-8080-MP-Aadhyatm-manage-MandirPujari-add-a3BHUnpXUHY1YmlFbW9xOHAvSm9WQT09-20','2021-08-26 11:05:18',1,'0000-00-00 00:00:00',0,0),(33,1,'screencapture-localhost-8080-MP-Aadhyatm-manage-MandirPropertyDetail-add-a3BHUnpXUHY1YmlFbW9xOHAvSm9','2021-08-26 11:05:22',1,'0000-00-00 00:00:00',0,0),(34,4,'screencapture-localhost-8080-MP-Aadhyatm-manage-MandirProperty-add-a3BHUnpXUHY1YmlFbW9xOHAvSm9WQT09-','2021-08-26 11:05:32',1,'0000-00-00 00:00:00',0,0),(35,1,'Admin_Panel_(5).png','2021-08-26 11:36:47',1,'0000-00-00 00:00:00',0,0),(36,1,'screencapture-localhost-8080-MP-Aadhyatm-manage-Mandir-2021-08-17-11_55_21.png','2021-08-26 12:36:44',1,'0000-00-00 00:00:00',0,0),(37,1,'screencapture-localhost-8080-MP-Aadhyatm-manage-MandirPujari-add-a3BHUnpXUHY1YmlFbW9xOHAvSm9WQT09-20','2021-08-26 12:38:06',1,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `comm_project_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_publications`
--

DROP TABLE IF EXISTS `comm_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `archive_exp_date` datetime NOT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `order_modified_date` datetime NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_publications`
--

LOCK TABLES `comm_publications` WRITE;
/*!40000 ALTER TABLE `comm_publications` DISABLE KEYS */;
INSERT INTO `comm_publications` VALUES (1,'test','test 3','slide1.jpg','2020-09-15 12:05:50',1,'2020-09-18 02:51:06',1,1,1,'2020-09-26 00:00:00',0,'0000-00-00 00:00:00',3),(2,'test','test 2','tender-staadpro1.pdf','2020-09-18 02:39:49',1,'2020-09-18 02:45:34',1,1,1,'2020-09-23 00:00:00',0,'0000-00-00 00:00:00',2),(3,'test','test 3','tender-staadpro2.pdf','2020-09-18 02:51:23',1,'0000-00-00 00:00:00',0,1,1,'2020-09-30 00:00:00',1,'0000-00-00 00:00:00',3);
/*!40000 ALTER TABLE `comm_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_publications_category`
--

DROP TABLE IF EXISTS `comm_publications_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_publications_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_hi` varchar(100) NOT NULL,
  `cat_title_en` varchar(100) NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `cat_status` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `added_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_publications_category`
--

LOCK TABLES `comm_publications_category` WRITE;
/*!40000 ALTER TABLE `comm_publications_category` DISABLE KEYS */;
INSERT INTO `comm_publications_category` VALUES (1,'Books & Periodicals','Books & Periodicals','2020-09-18 02:25:22',NULL,0,1,0,1),(2,'Research papers','Research papers','2020-09-18 02:25:40','2020-09-22 12:02:15',1,1,0,1),(3,'Reports & articles','Reports & articles','2020-09-18 02:26:28',NULL,0,1,0,1),(4,'Policy Briefs','Policy Briefs','2020-09-18 02:26:57',NULL,0,1,0,1);
/*!40000 ALTER TABLE `comm_publications_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_query_type`
--

DROP TABLE IF EXISTS `comm_query_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_query_type` (
  `query_id` int(11) NOT NULL AUTO_INCREMENT,
  `query_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isdelete` tinyint(2) NOT NULL,
  PRIMARY KEY (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_query_type`
--

LOCK TABLES `comm_query_type` WRITE;
/*!40000 ALTER TABLE `comm_query_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_query_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_rti`
--

DROP TABLE IF EXISTS `comm_rti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_rti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `archive_exp_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_rti`
--

LOCK TABLES `comm_rti` WRITE;
/*!40000 ALTER TABLE `comm_rti` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_rti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_rules_acts`
--

DROP TABLE IF EXISTS `comm_rules_acts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_rules_acts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  `order_preference` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_rules_acts`
--

LOCK TABLES `comm_rules_acts` WRITE;
/*!40000 ALTER TABLE `comm_rules_acts` DISABLE KEYS */;
INSERT INTO `comm_rules_acts` VALUES (1,1,'test','test','20160428_1105241.jpg',0,'2018-11-22 11:06:29',1,'2018-11-22 11:10:06',1,1,1,'2018-11-23 00:00:00',1);
/*!40000 ALTER TABLE `comm_rules_acts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_rules_acts_category`
--

DROP TABLE IF EXISTS `comm_rules_acts_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_rules_acts_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_title_hi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime DEFAULT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `cat_status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` int(11) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_rules_acts_category`
--

LOCK TABLES `comm_rules_acts_category` WRITE;
/*!40000 ALTER TABLE `comm_rules_acts_category` DISABLE KEYS */;
INSERT INTO `comm_rules_acts_category` VALUES (1,'Rules','नियम','2017-07-28 05:16:40',1,NULL,0,1,0),(2,'Acts','अधिनियम','2017-07-28 05:16:54',1,NULL,0,1,0),(3,'Laws','कानून','2017-07-28 05:17:05',1,NULL,0,1,0);
/*!40000 ALTER TABLE `comm_rules_acts_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_schemes`
--

DROP TABLE IF EXISTS `comm_schemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_schemes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_schemes`
--

LOCK TABLES `comm_schemes` WRITE;
/*!40000 ALTER TABLE `comm_schemes` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_schemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_services`
--

DROP TABLE IF EXISTS `comm_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `archive_exp_date` datetime NOT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_services`
--

LOCK TABLES `comm_services` WRITE;
/*!40000 ALTER TABLE `comm_services` DISABLE KEYS */;
INSERT INTO `comm_services` VALUES (1,'Project Management Consultancy','Project Management Consultancy','<p class=\"quotes\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 600; font-size: 18px; font-style: italic; color: rgb(57, 57, 57); font-family: Lato, sans-serif;\">\r\n	<span style=\"box-sizing: border-box; font-weight: bolder;\">&quot;</span>Our consultancy services are bespoke, combining our exeperience of best practice with an understanding of our client&#39;s strategic aims and organizational context.<span style=\"box-sizing: border-box; font-weight: bolder;\">&quot;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: Lato, sans-serif; font-size: 16px;\">\r\n	The Environmental Planning &amp; Coordination Organisation (EPCO) was established by the Housing and Environment Department of the Government of Madhya Pradesh in 1981 and presently under the Urban Development and Environment Department of the Government of Madhya Pradesh, its foundation stone was laid by Smt. Indira Gandhi, in the 50 acre &quot;Paryavaran Parisar&quot;.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: Lato, sans-serif; font-size: 16px;\">\r\n	The Environmental Planning &amp; Coordination Organisation (EPCO) was established by the Housing and Environment Department of the Government of Madhya Pradesh in 1981 and presently under the Urban Development and Environment Department of the Government of Madhya Pradesh, its foundation stone was laid by Smt. Indira Gandhi, in the 50 acre &quot;Paryavaran Parisar&quot;.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: Lato, sans-serif; font-size: 16px;\">\r\n	<br style=\"box-sizing: border-box;\" />\r\n	Some of the major projects completed in recent past are as follows:</p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 0px 20px; padding-right: 0px; padding-left: 0px; list-style: none; color: rgb(57, 57, 57); font-family: Lato, sans-serif; font-size: 16px;\">\r\n	<li style=\"box-sizing: border-box; padding-left: 20px; position: relative;\">\r\n		Extention of Mantralaya Bhawan</li>\r\n	<li style=\"box-sizing: border-box; padding-left: 20px; position: relative;\">\r\n		Global Skill Park, Bhopal</li>\r\n	<li style=\"box-sizing: border-box; padding-left: 20px; position: relative;\">\r\n		Supervision &amp; Quality Control Consultancy for various building pf MPPWD across the state</li>\r\n</ul>','<p class=\"quotes\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 600; font-size: 18px; font-style: italic; color: rgb(57, 57, 57); font-family: Lato, sans-serif;\">\r\n	<span style=\"box-sizing: border-box; font-weight: bolder;\">&quot;</span>Our consultancy services are bespoke, combining our exeperience of best practice with an understanding of our client&#39;s strategic aims and organizational context.<span style=\"box-sizing: border-box; font-weight: bolder;\">&quot;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: Lato, sans-serif; font-size: 16px;\">\r\n	The Environmental Planning &amp; Coordination Organisation (EPCO) was established by the Housing and Environment Department of the Government of Madhya Pradesh in 1981 and presently under the Urban Development and Environment Department of the Government of Madhya Pradesh, its foundation stone was laid by Smt. Indira Gandhi, in the 50 acre &quot;Paryavaran Parisar&quot;.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: Lato, sans-serif; font-size: 16px;\">\r\n	The Environmental Planning &amp; Coordination Organisation (EPCO) was established by the Housing and Environment Department of the Government of Madhya Pradesh in 1981 and presently under the Urban Development and Environment Department of the Government of Madhya Pradesh, its foundation stone was laid by Smt. Indira Gandhi, in the 50 acre &quot;Paryavaran Parisar&quot;.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(57, 57, 57); font-family: Lato, sans-serif; font-size: 16px;\">\r\n	<br style=\"box-sizing: border-box;\" />\r\n	Some of the major projects completed in recent past are as follows:</p>\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 0px 20px; padding-right: 0px; padding-left: 0px; list-style: none; color: rgb(57, 57, 57); font-family: Lato, sans-serif; font-size: 16px;\">\r\n	<li style=\"box-sizing: border-box; padding-left: 20px; position: relative;\">\r\n		Extention of Mantralaya Bhawan</li>\r\n	<li style=\"box-sizing: border-box; padding-left: 20px; position: relative;\">\r\n		Global Skill Park, Bhopal</li>\r\n	<li style=\"box-sizing: border-box; padding-left: 20px; position: relative;\">\r\n		Supervision &amp; Quality Control Consultancy for various building pf MPPWD across the state</li>\r\n</ul>','tender-staadpro3.pdf','2020-09-23 12:33:56',1,'2020-09-23 12:48:44',1,1,'2020-09-30 00:00:00',0,1,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `comm_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_services_category`
--

DROP TABLE IF EXISTS `comm_services_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_services_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_hi` varchar(100) NOT NULL,
  `cat_title_en` varchar(100) NOT NULL,
  `cat_description_hi` varchar(250) NOT NULL,
  `cat_description_en` varchar(250) NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `cat_status` int(11) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_services_category`
--

LOCK TABLES `comm_services_category` WRITE;
/*!40000 ALTER TABLE `comm_services_category` DISABLE KEYS */;
INSERT INTO `comm_services_category` VALUES (1,'Climate Change','Climate Change','<p>\r\n	<span courier=\"\" lucida=\"\" style=\"font-family: Consolas, \" white-space:=\"\">Climate hjhjkhjk</span></p>','<p>\r\n	vbnvbn</p>',0,1,'2020-09-22 04:58:04','2020-09-23 11:34:13',1,0,1),(2,'Planning','Planning','<p>\r\n	Planning</p>','',0,1,'2020-09-22 04:59:55','2020-09-23 11:18:47',1,0,1),(3,'Education','Education','<p>\r\n	Education</p>','<p>\r\n	Education</p>',0,1,'2020-09-22 05:30:28','2020-09-23 11:17:57',1,0,1),(4,'Policy','Policy','<p>\r\n	test content</p>','<p>\r\n	test content</p>',0,1,'2020-09-22 05:36:28','2020-09-23 11:17:42',1,0,1),(5,'Research','Research','<p>\r\n	<span courier=\"\" lucida=\"\" style=\"font-family: Consolas, \" white-space:=\"\">Research</span></p>','<p>\r\n	<span courier=\"\" lucida=\"\" style=\"font-family: Consolas, \" white-space:=\"\">Research</span></p>',0,1,'2020-09-23 11:41:53','2020-09-23 12:42:28',1,0,1),(6,'Consultancy','Consultancy','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Consultancy</span></p>','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Consultancy</span></p>',0,1,'2020-09-23 12:42:20','0000-00-00 00:00:00',0,0,1),(7,'Environment Engineering','Environment Engineering','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Environment Engineering</span></p>','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Environment Engineering</span></p>',1,1,'2020-09-23 12:46:01','2020-09-23 12:47:56',1,0,1),(8,'Modules','Modules','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Modules</span></p>','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Modules</span></p>',1,1,'2020-09-23 12:48:18','0000-00-00 00:00:00',0,0,1),(9,'Account','Account','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Account</span></p>','<p>\r\n	<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">Account</span></p>',1,1,'2020-09-23 12:48:35','0000-00-00 00:00:00',0,0,1);
/*!40000 ALTER TABLE `comm_services_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_settings`
--

DROP TABLE IF EXISTS `comm_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_updated_on` date NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `website_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tag_line_hi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fav_icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tag_line_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_details` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_settings`
--

LOCK TABLES `comm_settings` WRITE;
/*!40000 ALTER TABLE `comm_settings` DISABLE KEYS */;
INSERT INTO `comm_settings` VALUES (1,'2017-06-16','2021-09-15 12:54:10',1,'EPCO','पर्यावरण नियोजन एवं समन्वय संगठन','epco-logo.png','a3BHUnpXUHY1YmlFbW9xOHAvSm9WQT09','The Environmental Planning & Coordination Organisation','<p>\r\n	One time Registration fees for&nbsp;Consultancy firms - 10,000/-&nbsp;&nbsp;Individual Consultants- 5000/-</p>\r\n<p>\r\n	You can make Payemnt by RTGS or NEFT on following Account Details:</p>\r\n<p>\r\n	Account Name : Executive Director EPCO BHOPAL</p>\r\n<p>\r\n	Acount Number : 3229010100005551</p>\r\n<div>\r\n	Bank Name : PUNJAB&nbsp; NATIONAL BANK&nbsp;</div>\r\n<div>\r\n	Branch : EPCO PARYAVARAN PARISAR ARERACOLONY , BHOPAL<span style=\"white-space: pre;\"> </span></div>\r\n<div>\r\n	Bank code : 024</div>\r\n<div>\r\n	IFSC CODE : punb0631000</div>');
/*!40000 ALTER TABLE `comm_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_slider_category`
--

DROP TABLE IF EXISTS `comm_slider_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_slider_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_slider_category`
--

LOCK TABLES `comm_slider_category` WRITE;
/*!40000 ALTER TABLE `comm_slider_category` DISABLE KEYS */;
INSERT INTO `comm_slider_category` VALUES (1,'Top Slider'),(2,'Bottom Slider');
/*!40000 ALTER TABLE `comm_slider_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_sliders`
--

DROP TABLE IF EXISTS `comm_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL COMMENT '1=Top, 2=Bottom',
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `desc_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_sliders`
--

LOCK TABLES `comm_sliders` WRITE;
/*!40000 ALTER TABLE `comm_sliders` DISABLE KEYS */;
INSERT INTO `comm_sliders` VALUES (6,2,'test','test','event4.jpg','','2018-11-13 05:03:15',1,'2018-11-16 12:56:56',1,1,0,1),(21,1,'Slide1','Slide1','1.jpg','http://www.xyz.com','2020-09-14 02:42:55',1,'2021-08-03 03:04:17',1,1,0,1),(22,1,'slide2','slide2','DSC_0009.jpg','','2020-09-14 02:43:35',1,'2021-08-03 03:04:30',1,1,0,1);
/*!40000 ALTER TABLE `comm_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_social`
--

DROP TABLE IF EXISTS `comm_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `location` varchar(200) CHARACTER SET latin1 NOT NULL,
  `link` varchar(350) CHARACTER SET latin1 DEFAULT NULL,
  `li_class` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_social`
--

LOCK TABLES `comm_social` WRITE;
/*!40000 ALTER TABLE `comm_social` DISABLE KEYS */;
INSERT INTO `comm_social` VALUES (1,'Facebook','fa fa-facebook','https://www.facebook.com/','btn-facebook'),(2,'Twitter','fa fa-twitter','https://twitter.com/','btn-twitter'),(3,'Google Plus','icon-google','',NULL),(4,'Youtube','fa fa-youtube','https://www.youtube.com/','btn-youtube'),(5,'Linkedin','ld fa fa-linkedin','',NULL),(6,'Dribbble','dr fa-dribbble','',NULL),(7,'Vimeo Square','fa fa-vimeo','',NULL),(8,'RSS','fa fa-rss','',NULL),(9,'Pinterrest','fa fa-pinterest','',NULL),(10,'Android','fa fa-android','',NULL),(11,'Flickr','fa fa-flickr','',NULL);
/*!40000 ALTER TABLE `comm_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_state`
--

DROP TABLE IF EXISTS `comm_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name_h` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_state`
--

LOCK TABLES `comm_state` WRITE;
/*!40000 ALTER TABLE `comm_state` DISABLE KEYS */;
INSERT INTO `comm_state` VALUES (1,'Andaman & Nicobar','अंडमान एवं निकोबार',1),(2,'Andhra Pradesh ','आंध्र प्रदेश',1),(3,'Arunachal Pradesh ','अरुणाचल प्रदेश',1),(4,'Assam','असम',1),(5,'Bihar','बिहार',1),(6,'Chandigarh','चंडीगढ़',1),(7,'Chhattisgarh','छत्तीसगढ़',1),(8,'Dadra and Nagar Haveli','दादरा और नगर हवेली',1),(9,'Daman and Diu','दमन और दीव',1),(10,'Delhi','दिल्ली',1),(11,'Goa','गोवा',1),(12,'Gujrat','गुजरात',1),(13,'Haryana','हरियाणा',1),(14,'Himachal Pradesh','हिमाचल प्रदेश',1),(15,'Jammu and Kashmir','जम्मू और कश्मीर',1),(16,'Jharkhand','झारखंड',1),(17,'Karnataka','कर्नाटक',1),(18,'Kerala','केरल',1),(19,'Lakshadweep','लक्षद्वीप',1),(20,'Madhya Pradesh','मध्य प्रदेश',1),(21,'Maharashtra','महाराष्ट्र',1),(22,'Manipur','मणिपुर',1),(23,'Meghalaya','मेघालय',1),(24,'Mizoram','मिजोरम',1),(25,'Nagaland','नागालैंड',1),(26,'Odisha','ओडिशा',1),(27,'Puducherry','पुडुचेरी',1),(28,'Punjab','पंजाब',1),(29,'Rajasthan','राजस्थान',1),(30,'Sikkim','सिक्किम',1),(31,'Tamil Nadu','तमिलनाडु',1),(32,'Telangana','तेलंगाना',1),(33,'Tripura','त्रिपुरा',1),(34,'Uttar Pradesh','उत्तर प्रदेश',1),(35,'Uttarakhand','उत्तराखंड',1),(36,'West Bengal','पश्चिम बंगाल',1);
/*!40000 ALTER TABLE `comm_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_story`
--

DROP TABLE IF EXISTS `comm_story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `archive_exp_date` datetime NOT NULL,
  `is_delete` tinyint(2) NOT NULL,
  `order_preference` int(11) NOT NULL,
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_story`
--

LOCK TABLES `comm_story` WRITE;
/*!40000 ALTER TABLE `comm_story` DISABLE KEYS */;
INSERT INTO `comm_story` VALUES (1,'कहानी 1','Story 1','<p>\r\n	परीक्षण 1</p>','<p>\r\n	test 1</p>','bg2.jpg','2018-05-05 01:11:00',1,'2018-05-05 02:31:43',1,1,'2018-05-18 00:00:00',0,1,'2018-05-05 14:34:58'),(2,'कहानी 2','Story 2','<p>\r\n	<span background-color:=\"\" font-size:=\"\" open=\"\" style=\"color: rgb(102, 102, 153); font-family: \">परीक्षण 2</span></p>','<p>\r\n	test 2</p>','g3.jpg','2018-05-05 02:30:28',1,'2018-05-05 02:31:14',1,1,'2018-08-23 00:00:00',0,2,'2018-05-05 14:35:09'),(3,'कहानी 3','Story 3','<p>\r\n	test 3</p>','<p>\r\n	test 3</p>','g1.jpg','2018-05-05 02:32:43',1,'0000-00-00 00:00:00',0,1,'2018-05-31 00:00:00',0,3,'0000-00-00 00:00:00'),(4,'कहानी 4','Story 4','<p>\r\n	test 4</p>','<p>\r\n	test 4</p>','g5.jpg','2018-05-05 02:33:26',1,'0000-00-00 00:00:00',0,1,'2018-05-30 00:00:00',0,4,'0000-00-00 00:00:00'),(5,'कहानी 5','Story 5','<p>\r\n	test 5</p>','<p>\r\n	test 5</p>','g4.jpg','2018-05-05 02:36:01',1,'0000-00-00 00:00:00',0,1,'2018-05-30 00:00:00',0,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_tender`
--

DROP TABLE IF EXISTS `comm_tender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_tender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit_no` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment1` varchar(100) CHARACTER SET utf8 NOT NULL,
  `attachment2` varchar(100) CHARACTER SET utf8 NOT NULL,
  `attachment3` varchar(100) CHARACTER SET utf8 NOT NULL,
  `attachment4` varchar(100) CHARACTER SET utf8 NOT NULL,
  `attachment5` varchar(100) CHARACTER SET utf8 NOT NULL,
  `corrigendum1` varchar(100) CHARACTER SET utf8 NOT NULL,
  `corrigendum2` varchar(100) CHARACTER SET utf8 NOT NULL,
  `corrigendum3` varchar(100) CHARACTER SET utf8 NOT NULL,
  `corrigendum4` varchar(100) CHARACTER SET utf8 NOT NULL,
  `corrigendum5` varchar(100) CHARACTER SET utf8 NOT NULL,
  `issue_date` datetime NOT NULL,
  `last_date` datetime NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `applylink` varchar(500) CHARACTER SET utf8 NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  `remark_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `remark_en` text COLLATE utf8_unicode_ci NOT NULL,
  `is_alert` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_tender`
--

LOCK TABLES `comm_tender` WRITE;
/*!40000 ALTER TABLE `comm_tender` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_tender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_testimonials`
--

DROP TABLE IF EXISTS `comm_testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_hi` text COLLATE utf8_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `order_preference` int(11) NOT NULL,
  `order_modified_date` int(11) NOT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_testimonials`
--

LOCK TABLES `comm_testimonials` WRITE;
/*!40000 ALTER TABLE `comm_testimonials` DISABLE KEYS */;
INSERT INTO `comm_testimonials` VALUES (1,'What is MoEFCC Scheme ?','What is MoEFCC Scheme ?','The ministry is responsible for planning, promoting, coordinating, and overseeing the implementation of environmental and forestry programmes in the country. The main activities undertaken by the ministry include  conservation and survey of the flora of India and fauna of India, forests and other wilderness areas; prevention and control of pollution; afforestation, and land degradation mitigation. It is responsible for the administration of the national parks of India\r\nhjkhkhkjk','The ministry is responsible for planning, promoting, coordinating, and overseeing the implementation of environmental and forestry programmes in the country. The main activities undertaken by the ministry include  conservation and survey of the flora of India and fauna of India, forests and other wilderness areas; prevention and control of pollution; afforestation, and land degradation mitigation. It is responsible for the administration of the national parks of India','img1.jpg','2020-09-17 02:44:22',1,'2021-08-03 11:29:35',1,1,1,0,0),(2,'Swachta Action Plan','Swachta Action Plan','Swachhta Action Plan is a milestone initiative in mainstreaming Swachhta elements across all sectors of the Government in an elaborate, accountable, and sustained manner to realize the Swachh Bharat of Prime Minister&amp;amp;#039;s  vision and Gandhiji&amp;amp;#039;s dream.','Swachhta Action Plan is a milestone initiative in mainstreaming Swachhta elements across all sectors of the Government in an elaborate, accountable, and sustained manner to realize the Swachh Bharat of Prime Minister&amp;amp;#039;s vision and Gandhiji&amp;amp;#039;s dream.sdasdasdasda','img11.jpg','2020-09-17 02:47:29',1,'2021-08-03 11:30:53',1,1,2,0,0),(3,'National Nature Camping Programme','National Nature Camping Programme','The National Nature Camps Programme is an initiative of the Ministry of Environment and Forests in Environment Education, which is aimed at creating greater awareness, understanding and empathy of children with\r\n                                    and for the environment. Through this initiative it is hoped that every child who goes through middle school (classes VI to VIII) will get at least one opportunity for a 2-3 day camping experience during these\r\n                                    years. The ‘Nature experience’ for children and teachers has huge potential to trigger their sensitivity towards.','The National Nature Camps Programme is an initiative of the Ministry of Environment and Forests in Environment Education, which is aimed at creating greater awareness, understanding and empathy of children with\r\n                                    and for the environment. Through this initiative it is hoped that every child who goes through middle school (classes VI to VIII) will get at least one opportunity for a 2-3 day camping experience during these\r\n                                    years. The ‘Nature experience’ for children and teachers has huge potential to trigger their sensitivity towards.','img12.jpg','2020-09-17 02:49:25',1,'0000-00-00 00:00:00',0,1,3,0,0),(4,'National Green Corps (NGC)','National Green Corps (NGC)','National Green Corps is a programme','National Green Corps is a programme','img13.jpg','2020-09-17 02:49:51',1,'2021-01-27 03:28:02',1,1,4,0,0);
/*!40000 ALTER TABLE `comm_testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_user_activity_log`
--

DROP TABLE IF EXISTS `comm_user_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_user_activity_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_uid` int(11) NOT NULL,
  `log_page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_activity` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_query` text COLLATE utf8_unicode_ci NOT NULL,
  `log_user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_remote_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_date_time` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_user_activity_log`
--

LOCK TABLES `comm_user_activity_log` WRITE;
/*!40000 ALTER TABLE `comm_user_activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_user_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_user_detail`
--

DROP TABLE IF EXISTS `comm_user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_user_detail` (
  `user_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) NOT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `user_photo_id` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `gender` tinyint(2) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `correspond_address` varchar(150) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `landline` varchar(50) DEFAULT NULL,
  `enrolment_number` varchar(150) DEFAULT NULL,
  `name_of_organization` varchar(250) DEFAULT NULL,
  `contact_detail_employer` varchar(200) DEFAULT NULL,
  `desig_of_candidate` varchar(150) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `agree_check` int(11) DEFAULT '0',
  `user_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_user_detail`
--

LOCK TABLES `comm_user_detail` WRITE;
/*!40000 ALTER TABLE `comm_user_detail` DISABLE KEYS */;
INSERT INTO `comm_user_detail` VALUES (1,29,'2021-02-12','98764','123456','hsdghsagh',1,1,'sadasd',459,20,554454,'4154544','654321','test2525','test','sdsad','2020-12-12',1,'epco_8.jpg'),(2,30,'07-04-2003','234324234234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'234324234234','234324234234','234324234234','0000-00-00',0,NULL),(3,31,'07-04-2003','123456789',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123456789','123456789','123456789','0000-00-00',0,NULL),(4,32,'06-04-2003','123asdft56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123asdft56','123asdft56','123asdft56','0000-00-00',0,NULL),(5,33,'07-04-2003','234fg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'234fg','234fg','234fg','0000-00-00',0,NULL),(6,34,'01-04-2003','dfgdfg3454',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dfgdfg3454','dfgdfg3454','dfgdfg3454','0000-00-00',0,NULL),(7,35,'02-04-2003','343bhfg','ghjg','ghjgj',1,1,'ghj',441,20,678906,'3456789076','ghj56565',NULL,NULL,NULL,NULL,1,'epco_86.jpg'),(8,36,'01-04-2003','45rthgfghfgh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45rthgfghfgh','45rthgfghfgh','45rthgfghfgh','0000-00-00',0,NULL),(9,37,'06-04-2003','5fghgfh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5fghgfh','5fghgfh','5fghgfh','0000-00-00',0,NULL),(10,38,'07-04-2003','324ergdfg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'324ergdfg','324ergdfg','324ergdfg','0000-00-00',0,NULL),(11,39,'06-04-2003','DFGJDFJGDJFGJ39458',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DFGJDFJGDJFGJ39458','DFGJDFJGDJFGJ39458','DFGJDFJGDJFGJ39458','0000-00-00',0,NULL),(12,40,'07-04-2003','dfg345345345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dfg345345345','dfg345345345','dfg345345345','0000-00-00',0,NULL),(13,41,'08-04-2003','234234dfgdfg','dfghdf','gdfg',1,2,'dfgdfgdfg',421,20,567890,'1234567890','dfg4545','dfg','dfg','fgh','2021-04-25',1,'epco_88.jpg'),(14,42,'09-04-2003','45456fghfgh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45456fghfgh','45456fghfgh','45456fghfgh','0000-00-00',0,NULL),(15,43,'14-04-2003','7236wmhfbhs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7236wmhfbhs','7236wmhfbhs','7236wmhfbhs','0000-00-00',0,NULL),(16,44,'07-04-2003','dfge4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dfge4','dfge4','dfge4','0000-00-00',0,NULL),(17,45,'01-06-2003','3443','SDFSDF','FSDFSDFSDF',2,2,'SDFSDFSDFSDF',438,20,462039,'2345678909','12345','ZXCZXC','ZXC','ZXC','2021-06-11',1,''),(18,46,'01-06-2003','df45','sdfsdfsdf','sdfsdfsdf',2,2,'sdfsdfsdf',437,20,234567,'1232343456','3434434343','sdf','S','sdf','0000-00-00',1,''),(19,47,'03-06-2003','sdfsdf45','SDFSDF','SDFSDF',1,1,'XCVXCV',466,20,456464,'4567893216','234SDFSDFSDF','DFSDF','SDFSDFSDF','SDFSDF','2021-06-09',1,''),(20,48,'03-06-2003','xfgfdg','dfg','dfg',2,1,'dfgdfg',466,20,567890,'4567890','454545','sdf','sdf','SDFSDF','2021-06-03',1,''),(21,49,'01-06-2003','sdf4545',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sdf4545','sdf4545','sdf4545','0000-00-00',0,NULL),(22,50,'07-06-2003','1234tfy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1234tfy','1234tfy','1234tfy','0000-00-00',0,NULL),(23,51,'02-06-2003','dfgdfgdfg45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dfgdfgdfg45','dfgdfgdfg45','dfgdfgdfg45','0000-00-00',0,NULL),(24,52,'02-06-2003','45fg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45fg','45fg','45fg','0000-00-00',0,NULL),(25,53,'05-06-2003','4545dfd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4545dfd','4545dfd','4545dfd','0000-00-00',0,NULL),(26,54,'04-06-2003','sdfsdfsdfsdfs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sdfsdfsdfsdfs','sdfsdfsdfsdfs','sdfsdfsdfsdfs','0000-00-00',0,NULL),(27,55,'04-06-2003','sefdfs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sefdfs','sefdfs','sefdfs','0000-00-00',0,NULL),(28,1,'04-06-2003','SDFSDF','dfgdfgdfgdfg','dfgdfgd',2,1,'dfgdfgdfg',441,20,456789,'dfgdfgdfg','cfgdfgdfgdfgdfg','FG','DFG','DFG','0000-00-00',1,'2021-08-12_175958_UserProfile1.jpg'),(29,2,'07-07-2003','dfg','DFGDG','DFGDG',1,2,'DFGDFG',457,20,456789,'35353535345','34535','FG','DFG','DFG','2021-07-15',1,'');
/*!40000 ALTER TABLE `comm_user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_users`
--

DROP TABLE IF EXISTS `comm_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_lname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` tinyint(2) NOT NULL COMMENT '1=Company,2=Individual User,3=Implementation Partner',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_mobile` bigint(12) NOT NULL,
  `user_phone_no` bigint(12) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `add_date` datetime NOT NULL,
  `added_by` int(11) DEFAULT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) DEFAULT NULL,
  `user_last_login` datetime NOT NULL,
  `user_failed_login_attempts` int(11) NOT NULL,
  `user_last_failed_login` datetime NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Inactive,1=Active',
  `user_pass_verify_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exp_verify_date` datetime NOT NULL,
  `email_verify_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email_verify_status` tinyint(2) NOT NULL DEFAULT '0',
  `email_verification_date` date NOT NULL,
  `user_mobile_otp` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_mobile_otp_status` tinyint(2) NOT NULL DEFAULT '0',
  `user_mobile_otp_date` datetime DEFAULT NULL,
  `user_step` tinyint(2) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `user_photo_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_status` int(11) NOT NULL,
  `reject_region` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`),
  UNIQUE KEY `user_mobile` (`user_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_users`
--

LOCK TABLES `comm_users` WRITE;
/*!40000 ALTER TABLE `comm_users` DISABLE KEYS */;
INSERT INTO `comm_users` VALUES (1,'SDFSDF','','epco0111@mailinator.com',0,'epco0111@mailinator.com','bc219ced16181e938d08e1a5adf7bfb1f1883b20267c99b84320e2d1140d82f7',3456789034,NULL,'',NULL,'0000-00-00 00:00:00','2021-06-07 03:15:19',NULL,'0000-00-00 00:00:00',NULL,'2021-08-12 05:51:36',0,'0000-00-00 00:00:00',1,NULL,'0000-00-00 00:00:00','',1,'2021-06-07',NULL,0,NULL,1,NULL,NULL,0,''),(2,'sdfsdfs','','testepco@mailinator.com',0,'testepco@mailinator.com','bc219ced16181e938d08e1a5adf7bfb1f1883b20267c99b84320e2d1140d82f7',1234325678,NULL,'',NULL,'0000-00-00 00:00:00','2021-07-19 03:57:18',NULL,'0000-00-00 00:00:00',NULL,'2021-07-27 16:50:45',0,'0000-00-00 00:00:00',1,NULL,'0000-00-00 00:00:00','',1,'2021-07-19',NULL,0,NULL,0,NULL,NULL,0,'fghj');
/*!40000 ALTER TABLE `comm_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_video_gallery`
--

DROP TABLE IF EXISTS `comm_video_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_video_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `is_default` tinyint(2) NOT NULL DEFAULT '0',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_video_gallery`
--

LOCK TABLES `comm_video_gallery` WRITE;
/*!40000 ALTER TABLE `comm_video_gallery` DISABLE KEYS */;
INSERT INTO `comm_video_gallery` VALUES (1,'test 1','test 2','https://www.youtube.com/watch?v=OqxpKNeJzls',1,'2018-05-05 06:05:01',1,'0000-00-00 00:00:00',0,1,0,1,1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comm_video_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_video_gallery_category`
--

DROP TABLE IF EXISTS `comm_video_gallery_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_video_gallery_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title_hi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_title_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime DEFAULT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `cat_status` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_video_gallery_category`
--

LOCK TABLES `comm_video_gallery_category` WRITE;
/*!40000 ALTER TABLE `comm_video_gallery_category` DISABLE KEYS */;
INSERT INTO `comm_video_gallery_category` VALUES (1,'सामान्य','General','2017-07-07 01:35:15',1,NULL,0,1,0),(2,'आधिकारिक','Official','2017-07-07 01:35:55',1,NULL,0,1,0);
/*!40000 ALTER TABLE `comm_video_gallery_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_web_visitor`
--

DROP TABLE IF EXISTS `comm_web_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_web_visitor` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1=website visitor, 2=page visitor',
  `v_menu_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `v_ip_address` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `v_created_date` datetime NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1846 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_web_visitor`
--

LOCK TABLES `comm_web_visitor` WRITE;
/*!40000 ALTER TABLE `comm_web_visitor` DISABLE KEYS */;
INSERT INTO `comm_web_visitor` VALUES (0,2,'about-us','::1','2021-03-23 02:39:56'),(1,2,'sitemap','::1','2018-11-14 04:58:07'),(2,2,'circular','::1','2018-11-14 05:10:07'),(3,2,'contact-us','::1','2018-11-14 05:13:06'),(4,2,'contact','::1','2018-11-14 05:17:03'),(5,1,'home','::1','2018-11-14 05:41:22'),(6,2,'search','::1','2018-11-14 05:47:52'),(7,2,'search-details','::1','2018-11-14 05:51:02'),(8,1,'home','::1','2018-11-15 11:19:20'),(9,2,'photo-gallery','::1','2018-11-15 11:19:28'),(10,2,'photo-gallery-view','::1','2018-11-15 11:26:57'),(11,2,'news-details','::1','2018-11-15 11:35:29'),(12,2,'about-us','::1','2018-11-15 11:35:41'),(13,2,'contact-us','::1','2018-11-15 11:43:34'),(14,2,'sitemap','::1','2018-11-15 11:47:38'),(15,2,'search','::1','2018-11-15 11:47:51'),(16,2,'circular','::1','2018-11-15 12:53:46'),(17,2,'ImportantLinks','::1','2018-11-15 01:03:49'),(18,2,'rti','::1','2018-11-15 02:23:45'),(19,2,'screen-reader','::1','2018-11-15 02:36:21'),(20,2,'feedback','::1','2018-11-15 02:41:04'),(21,2,'NoticeBoard','::1','2018-11-15 03:04:38'),(22,2,'notice-board','::1','2018-11-15 03:14:37'),(23,2,'Whoswho','::1','2018-11-15 04:03:17'),(24,2,'copyright-policy','::1','2018-11-15 04:44:56'),(25,2,'whos-who','::1','2018-11-15 04:56:09'),(26,2,'disclaimer','::1','2018-11-15 04:58:17'),(27,2,'terms-of-use','::1','2018-11-15 04:58:27'),(28,1,'home','::1','2018-11-16 10:36:49'),(29,2,'rti','::1','2018-11-16 10:38:25'),(30,2,'about-us','::1','2018-11-16 10:47:05'),(31,2,'search','::1','2018-11-16 10:55:37'),(32,2,'copyright-policy','::1','2018-11-16 10:56:58'),(33,2,'RulesActs','::1','2018-11-16 11:01:47'),(34,2,'acts','::1','2018-11-16 12:02:44'),(35,2,'whos-who','::1','2018-11-16 12:04:27'),(36,2,'news-details','::1','2018-11-16 12:09:00'),(37,2,'search-details','::1','2018-11-16 12:11:31'),(38,2,'photo-gallery','::1','2018-11-16 12:17:12'),(39,2,'photo-gallery-view','::1','2018-11-16 12:17:16'),(40,2,'important-links','::1','2018-11-16 12:23:01'),(41,2,'important-websites','::1','2018-11-16 12:23:33'),(42,2,'contact-us','::1','2018-11-16 01:11:39'),(43,2,'feedback','::1','2018-11-16 01:21:25'),(44,2,'screen-reader','::1','2018-11-16 04:13:44'),(45,1,'home','::1','2018-11-19 10:40:00'),(46,2,'search','::1','2018-11-19 10:40:18'),(47,2,'whos-who','::1','2018-11-19 10:40:30'),(48,2,'acts','::1','2018-11-19 10:40:34'),(49,2,'photo-gallery','::1','2018-11-19 10:40:36'),(50,2,'contact-us','::1','2018-11-19 10:40:39'),(51,2,'about-us','::1','2018-11-19 10:40:42'),(52,2,'photo-gallery-view','::1','2018-11-19 11:32:06'),(53,2,'download','::1','2018-11-19 12:05:07'),(54,2,'rti','::1','2018-11-19 12:15:03'),(55,2,'news-details','::1','2018-11-19 12:25:15'),(56,2,'notice-board','::1','2018-11-19 12:53:15'),(57,2,'important-links','::1','2018-11-19 01:00:18'),(58,2,'screen-reader','::1','2018-11-19 03:31:57'),(59,2,'sitemap','::1','2018-11-19 03:47:35'),(60,2,'about-us','::1','2018-11-20 02:35:41'),(61,2,'acts','::1','2018-11-20 02:35:47'),(62,2,'rti','::1','2018-11-20 02:35:50'),(63,2,'download','::1','2018-11-20 02:35:53'),(64,2,'whos-who','::1','2018-11-20 02:35:57'),(65,2,'photo-gallery','::1','2018-11-20 02:36:02'),(66,2,'photo-gallery-view','::1','2018-11-20 02:36:07'),(67,1,'home','::1','2018-11-20 02:49:31'),(68,2,'news-details','::1','2018-11-20 03:19:51'),(69,2,'contact-us','::1','2018-11-20 04:04:43'),(70,2,'search','::1','2018-11-20 04:04:50'),(71,1,'home','::1','2018-11-22 10:45:50'),(72,2,'news-details','::1','2018-11-22 10:45:55'),(73,2,'rti','::1','2018-11-22 10:46:09'),(74,2,'download','::1','2018-11-22 10:46:16'),(75,2,'acts','::1','2018-11-22 10:46:21'),(76,2,'whos-who','::1','2018-11-22 10:46:28'),(77,1,'home','164.100.146.66','2018-11-22 04:01:15'),(78,2,'feedback','164.100.146.66','2018-11-22 04:20:17'),(79,2,'copyright-policy','164.100.146.66','2018-11-22 05:26:05'),(80,2,'hyperlink-policy','164.100.146.66','2018-11-22 05:26:08'),(81,2,'rti','164.100.146.66','2018-11-22 05:26:12'),(82,2,'feedback','164.100.146.66','2018-11-24 10:31:13'),(83,1,'home','164.100.146.66','2018-11-24 12:09:01'),(84,1,'home','47.247.131.152','2018-11-24 02:40:46'),(85,2,'acts','47.247.131.152','2018-11-24 02:42:27'),(86,2,'rti','47.247.131.152','2018-11-24 02:42:30'),(87,2,'download','47.247.131.152','2018-11-24 02:42:37'),(88,2,'whos-who','47.247.131.152','2018-11-24 02:42:42'),(89,2,'photo-gallery','47.247.131.152','2018-11-24 02:42:46'),(90,2,'contact-us','47.247.131.152','2018-11-24 02:42:51'),(91,2,'photo-gallery-view','47.247.131.152','2018-11-24 04:36:37'),(92,2,'photo-gallery','164.100.146.66','2018-11-24 05:24:32'),(93,2,'photo-gallery-view','164.100.146.66','2018-11-24 05:24:35'),(94,1,'home','164.100.146.66','2018-11-26 10:46:22'),(95,2,'photo-gallery','164.100.146.66','2018-11-26 11:32:45'),(96,2,'photo-gallery-view','164.100.146.66','2018-11-26 11:34:32'),(97,2,'screen-reader','164.100.146.66','2018-11-26 12:10:26'),(98,2,'contact-us','164.100.146.66','2018-11-26 12:16:24'),(99,2,'search','164.100.146.66','2018-11-26 12:38:48'),(100,2,'search-details','164.100.146.66','2018-11-26 12:38:53'),(101,2,'whos-who','164.100.146.66','2018-11-26 12:42:46'),(102,2,'download','164.100.146.66','2018-11-26 12:43:00'),(103,2,'about-us','164.100.146.66','2018-11-26 12:46:03'),(104,2,'feedback','164.100.146.66','2018-11-26 03:10:46'),(105,1,'home','164.100.146.66','2018-11-27 11:28:40'),(106,2,'photo-gallery','164.100.146.66','2018-11-27 11:28:55'),(107,2,'photo-gallery-view','164.100.146.66','2018-11-27 11:29:05'),(108,2,'feedback','164.100.146.66','2018-11-27 04:32:23'),(109,1,'home','164.100.146.66','2018-11-29 10:55:09'),(110,2,'disclaimer','164.100.146.66','2018-11-29 10:55:31'),(111,2,'photo-gallery','164.100.146.66','2018-11-29 10:55:38'),(112,2,'privacy-policy','164.100.146.66','2018-11-29 11:04:51'),(113,2,'whos-who','164.100.146.66','2018-11-29 11:05:08'),(114,2,'download','164.100.146.66','2018-11-29 11:05:23'),(115,2,'rti','164.100.146.66','2018-11-29 11:05:26'),(116,2,'contact-us','164.100.146.66','2018-11-29 11:09:22'),(117,2,'circular','164.100.146.66','2018-11-29 11:09:25'),(118,2,'EmergencyContact','164.100.146.66','2018-11-29 11:09:45'),(119,2,'photo-gallery-view','164.100.146.66','2018-11-29 11:53:52'),(120,2,'about-us','164.100.146.66','2018-11-29 04:28:56'),(121,2,'rulesacts','164.100.146.66','2018-11-29 04:55:14'),(122,2,'hyperlink-policy','164.100.146.66','2018-11-29 04:56:21'),(123,2,'terms-of-use','164.100.146.66','2018-11-29 04:56:23'),(124,2,'feedback','164.100.146.66','2018-11-29 04:56:26'),(125,2,'sitemap','164.100.146.66','2018-11-29 04:56:32'),(126,2,'search','164.100.146.66','2018-11-29 04:57:09'),(127,2,'screen-reader','164.100.146.66','2018-11-29 04:58:26'),(128,1,'home','47.247.237.182','2018-11-29 05:51:08'),(129,1,'home','164.100.146.66','2018-11-30 11:09:36'),(130,1,'home','27.62.226.47','2018-12-03 12:47:14'),(131,2,'rti','27.62.226.47','2018-12-03 12:47:54'),(132,2,'screen-reader','27.62.226.47','2018-12-03 12:48:08'),(133,2,'whos-who','27.62.226.47','2018-12-03 12:48:54'),(134,2,'rulesacts','27.62.226.47','2018-12-03 12:49:44'),(135,2,'photo-gallery','27.62.226.47','2018-12-03 12:49:58'),(136,2,'photo-gallery-view','27.62.226.47','2018-12-03 12:50:43'),(137,2,'contact-us','27.62.226.47','2018-12-03 12:51:55'),(138,2,'about-us','27.62.226.47','2018-12-03 12:52:08'),(139,2,'download','27.62.226.47','2018-12-03 12:57:11'),(140,2,'disclaimer','27.62.226.47','2018-12-03 12:58:01'),(141,2,'sitemap','27.62.226.47','2018-12-03 12:58:07'),(142,2,'hyperlink-policy','27.62.226.47','2018-12-03 12:58:30'),(143,2,'terms-of-use','27.62.226.47','2018-12-03 12:58:33'),(144,2,'copyright-policy','27.62.226.47','2018-12-03 12:58:36'),(145,2,'privacy-policy','27.62.226.47','2018-12-03 12:58:40'),(146,2,'feedback','27.62.226.47','2018-12-03 12:58:43'),(147,1,'home','27.62.247.166','2018-12-04 07:49:20'),(148,1,'home','164.100.146.66','2018-12-04 01:56:25'),(149,2,'about-us','164.100.146.66','2018-12-04 01:56:40'),(150,2,'rti','164.100.146.66','2018-12-04 01:56:45'),(151,2,'rulesacts','164.100.146.66','2018-12-04 01:56:48'),(152,2,'download','164.100.146.66','2018-12-04 01:56:51'),(153,2,'whos-who','164.100.146.66','2018-12-04 01:56:56'),(154,2,'photo-gallery','164.100.146.66','2018-12-04 01:57:06'),(155,2,'photo-gallery-view','164.100.146.66','2018-12-04 01:57:20'),(156,2,'screen-reader','164.100.146.66','2018-12-04 01:57:44'),(157,2,'hyperlink-policy','164.100.146.66','2018-12-04 01:57:49'),(158,2,'copyright-policy','164.100.146.66','2018-12-04 01:57:51'),(159,2,'sitemap','164.100.146.66','2018-12-04 01:57:55'),(160,1,'home','27.57.234.182','2018-12-04 06:22:30'),(161,1,'home','27.62.165.59','2018-12-06 10:18:45'),(162,2,'important-links','27.62.165.59','2018-12-06 10:19:34'),(163,2,'rti','27.62.165.59','2018-12-06 10:19:57'),(164,2,'whos-who','27.62.165.59','2018-12-06 10:20:12'),(165,2,'photo-gallery','27.62.165.59','2018-12-06 10:20:35'),(166,2,'photo-gallery-view','27.62.165.59','2018-12-06 10:20:53'),(167,2,'rulesacts','27.62.165.59','2018-12-06 10:21:02'),(168,2,'contact-us','27.62.165.59','2018-12-06 10:21:07'),(169,2,'download','27.62.165.59','2018-12-06 10:21:26'),(170,2,'screen-reader','27.62.165.59','2018-12-06 10:23:23'),(171,1,'home','164.100.146.66','2018-12-11 01:37:45'),(172,2,'contact-us','164.100.146.66','2018-12-11 01:37:52'),(173,2,'download','164.100.146.66','2018-12-11 01:37:56'),(174,2,'about-us','164.100.146.66','2018-12-11 01:38:00'),(175,2,'rti','164.100.146.66','2018-12-11 01:38:09'),(176,2,'photo-gallery','164.100.146.66','2018-12-11 01:38:14'),(177,2,'photo-gallery-view','164.100.146.66','2018-12-11 01:38:26'),(178,2,'rulesacts','164.100.146.66','2018-12-11 01:38:44'),(179,1,'home','164.100.146.66','2018-12-12 06:25:02'),(180,2,'rulesacts','164.100.146.66','2018-12-12 06:25:06'),(181,2,'rti','164.100.146.66','2018-12-12 06:25:09'),(182,2,'whos-who','164.100.146.66','2018-12-12 06:25:11'),(183,1,'home','164.100.146.66','2018-12-13 11:42:03'),(184,1,'home','164.100.146.66','2018-12-14 02:10:47'),(185,2,'about-us','164.100.146.66','2018-12-14 02:11:11'),(186,2,'rti','164.100.146.66','2018-12-14 02:11:17'),(187,2,'rulesacts','164.100.146.66','2018-12-14 02:11:22'),(188,2,'download','164.100.146.66','2018-12-14 02:11:24'),(189,2,'whos-who','164.100.146.66','2018-12-14 02:11:27'),(190,2,'photo-gallery','164.100.146.66','2018-12-14 02:11:40'),(191,2,'photo-gallery-view','164.100.146.66','2018-12-14 02:11:45'),(192,2,'contact-us','164.100.146.66','2018-12-14 02:11:49'),(193,2,'sitemap','164.100.146.66','2018-12-14 02:11:58'),(194,2,'disclaimer','164.100.146.66','2018-12-14 02:12:06'),(195,2,'copyright-policy','164.100.146.66','2018-12-14 02:12:16'),(196,2,'hyperlink-policy','164.100.146.66','2018-12-14 02:12:18'),(197,2,'screen-reader','164.100.146.66','2018-12-14 02:12:27'),(198,2,'news-details','164.100.146.66','2018-12-14 02:13:41'),(199,1,'home','164.100.146.66','2018-12-19 02:55:59'),(200,2,'rulesacts','164.100.146.66','2018-12-19 02:56:02'),(201,2,'whos-who','164.100.146.66','2018-12-19 04:03:06'),(202,2,'photo-gallery','164.100.146.66','2018-12-19 04:03:08'),(203,2,'contact-us','164.100.146.66','2018-12-19 04:03:12'),(204,2,'rti','164.100.146.66','2018-12-19 04:03:17'),(205,2,'about-us','164.100.146.66','2018-12-19 04:03:19'),(206,2,'download','164.100.146.66','2018-12-19 04:03:31'),(207,1,'home','164.100.146.66','2018-12-27 11:07:09'),(208,2,'photo-gallery','164.100.146.66','2018-12-27 11:07:47'),(209,2,'photo-gallery-view','164.100.146.66','2018-12-27 11:08:48'),(210,1,'home','27.57.249.249','2019-01-01 07:20:30'),(211,2,'notice-board','27.57.249.249','2019-01-01 07:21:54'),(212,2,'disclaimer','27.57.249.249','2019-01-01 07:22:20'),(213,2,'about-us','27.57.249.249','2019-01-01 07:22:40'),(214,2,'rulesacts','27.57.249.249','2019-01-01 07:22:47'),(215,2,'photo-gallery','27.57.249.249','2019-01-01 07:22:55'),(216,2,'photo-gallery-view','27.57.249.249','2019-01-01 07:23:04'),(217,2,'sitemap','27.57.249.249','2019-01-01 07:23:31'),(218,2,'whos-who','27.57.249.249','2019-01-01 07:23:47'),(219,2,'screen-reader','27.57.249.249','2019-01-01 07:24:26'),(220,1,'home','164.100.146.66','2019-01-03 12:19:38'),(221,1,'home','164.100.146.66','2019-01-05 11:06:38'),(222,2,'rti','164.100.146.66','2019-01-05 06:47:02'),(223,2,'rulesacts','164.100.146.66','2019-01-05 06:47:07'),(224,2,'download','164.100.146.66','2019-01-05 06:47:10'),(225,2,'whos-who','164.100.146.66','2019-01-05 06:47:15'),(226,2,'photo-gallery','164.100.146.66','2019-01-05 06:47:19'),(227,2,'contact-us','164.100.146.66','2019-01-05 06:47:27'),(228,2,'about-us','164.100.146.66','2019-01-05 06:47:36'),(229,1,'home','164.100.146.66','2019-01-07 10:51:35'),(230,1,'home','164.100.146.66','2019-01-09 03:52:43'),(231,1,'home','182.70.146.210','2019-01-09 04:35:53'),(232,2,'photo-gallery','182.70.146.210','2019-01-09 04:39:40'),(233,1,'home','171.60.141.246','2019-01-10 10:36:25'),(234,1,'home','164.100.146.66','2019-01-16 01:09:09'),(235,2,'rti','164.100.146.66','2019-01-16 02:27:07'),(236,2,'rulesacts','164.100.146.66','2019-01-16 02:27:21'),(237,2,'download','164.100.146.66','2019-01-16 02:27:23'),(238,2,'whos-who','164.100.146.66','2019-01-16 02:27:25'),(239,2,'photo-gallery','164.100.146.66','2019-01-16 02:27:27'),(240,2,'contact-us','164.100.146.66','2019-01-16 02:27:29'),(241,1,'home','164.100.146.66','2019-01-24 04:58:14'),(242,1,'home','164.100.146.66','2019-01-28 03:42:22'),(243,2,'contact-us','164.100.146.66','2019-01-28 03:42:37'),(244,2,'photo-gallery','164.100.146.66','2019-01-28 03:42:42'),(245,2,'whos-who','164.100.146.66','2019-01-28 03:43:14'),(246,2,'download','164.100.146.66','2019-01-28 03:43:24'),(247,2,'rulesacts','164.100.146.66','2019-01-28 03:43:59'),(248,2,'rti','164.100.146.66','2019-01-28 03:44:02'),(249,2,'privacy-policy','164.100.146.66','2019-01-28 03:44:07'),(250,2,'sitemap','164.100.146.66','2019-01-28 03:44:11'),(251,1,'home','164.100.146.66','2019-02-01 11:19:31'),(252,2,'photo-gallery','164.100.146.66','2019-02-01 11:19:34'),(253,1,'home','122.168.27.254','2019-02-08 11:15:27'),(254,2,'whos-who','122.168.27.254','2019-02-08 11:15:46'),(255,2,'photo-gallery','122.168.27.254','2019-02-08 11:15:54'),(256,2,'download','122.168.27.254','2019-02-08 11:15:57'),(257,2,'about-us','122.168.27.254','2019-02-08 11:16:09'),(258,2,'rulesacts','122.168.27.254','2019-02-08 11:16:16'),(259,2,'privacy-policy','122.168.27.254','2019-02-08 11:16:22'),(260,2,'disclaimer','122.168.27.254','2019-02-08 11:16:26'),(261,2,'copyright-policy','122.168.27.254','2019-02-08 11:16:29'),(262,2,'hyperlink-policy','122.168.27.254','2019-02-08 11:16:32'),(263,2,'terms-of-use','122.168.27.254','2019-02-08 11:16:35'),(264,1,'home','164.100.146.66','2019-02-08 03:35:40'),(265,2,'about-us','164.100.146.66','2019-02-08 03:40:27'),(266,2,'pds','164.100.146.66','2019-02-08 03:46:54'),(267,2,'whos-who','164.100.146.66','2019-02-08 03:58:10'),(268,2,'photo-gallery','164.100.146.66','2019-02-08 03:58:50'),(269,2,'download','164.100.146.66','2019-02-08 03:58:54'),(270,2,'rti','164.100.146.66','2019-02-08 03:59:27'),(271,2,'contact-us','164.100.146.66','2019-02-08 03:59:39'),(272,2,'photo-gallery-view','164.100.146.66','2019-02-08 04:00:24'),(273,2,'important-links','164.100.146.66','2019-02-08 04:08:35'),(274,1,'home','182.70.192.201','2019-02-11 05:48:00'),(275,1,'home','164.100.146.66','2019-02-12 12:38:19'),(276,2,'rulesacts','164.100.146.66','2019-02-12 12:38:21'),(277,2,'download','164.100.146.66','2019-02-12 12:38:24'),(278,2,'whos-who','164.100.146.66','2019-02-12 12:38:26'),(279,2,'photo-gallery','164.100.146.66','2019-02-12 12:38:27'),(280,2,'contact-us','164.100.146.66','2019-02-12 12:38:29'),(281,2,'rti','164.100.146.66','2019-02-12 12:38:32'),(282,1,'home','47.247.242.44','2019-02-12 09:22:38'),(283,2,'search','47.247.242.44','2019-02-12 09:23:13'),(284,2,'pds','47.247.242.44','2019-02-12 09:41:07'),(285,1,'home','182.70.144.189','2019-02-13 12:55:52'),(286,2,'pr','182.70.144.189','2019-02-13 01:07:30'),(287,2,'pds','182.70.144.189','2019-02-13 01:15:41'),(288,2,'about-us','182.70.144.189','2019-02-13 01:15:45'),(289,1,'home','47.247.249.161','2019-02-13 09:42:48'),(290,2,'pds','47.247.249.161','2019-02-13 09:49:54'),(291,2,'pr','47.247.249.161','2019-02-13 09:50:42'),(292,1,'home','182.70.144.189','2019-02-14 01:43:37'),(293,2,'pds','182.70.144.189','2019-02-14 01:44:41'),(294,2,'pr','182.70.144.189','2019-02-14 01:55:36'),(295,2,'ml','182.70.144.189','2019-02-14 02:04:57'),(296,2,'tp','182.70.144.189','2019-02-14 02:08:39'),(297,2,'download','182.70.144.189','2019-02-14 02:12:26'),(298,2,'fn','182.70.144.189','2019-02-14 02:12:55'),(299,2,'contact-us','182.70.144.189','2019-02-14 03:08:28'),(300,2,'whos-who','182.70.144.189','2019-02-14 03:08:40'),(301,2,'photo-gallery','182.70.144.189','2019-02-14 03:08:44'),(302,2,'rulesacts','182.70.144.189','2019-02-14 03:11:07'),(303,2,'about-us','182.70.144.189','2019-02-14 03:12:46'),(304,2,'rti','182.70.144.189','2019-02-14 03:29:17'),(305,1,'home','171.61.36.128','2019-02-15 11:52:03'),(306,2,'pds','171.61.36.128','2019-02-15 11:52:39'),(307,2,'about-us','171.61.36.128','2019-02-15 11:52:47'),(308,2,'pr','171.61.36.128','2019-02-15 11:53:25'),(309,2,'ml','171.61.36.128','2019-02-15 11:53:29'),(310,2,'fn','171.61.36.128','2019-02-15 11:53:33'),(311,2,'screen-reader','171.61.36.128','2019-02-15 12:15:51'),(312,2,'whos-who','171.61.36.128','2019-02-15 12:17:42'),(313,1,'home','122.168.212.180','2019-02-15 04:58:49'),(314,1,'home','164.100.146.66','2019-02-15 04:59:17'),(315,2,'pr','122.168.212.180','2019-02-15 04:59:23'),(316,2,'tp','122.168.212.180','2019-02-15 04:59:26'),(317,2,'fn','122.168.212.180','2019-02-15 04:59:38'),(318,2,'whos-who','122.168.212.180','2019-02-15 04:59:41'),(319,2,'photo-gallery','122.168.212.180','2019-02-15 04:59:50'),(320,2,'pds','164.100.146.66','2019-02-15 05:00:03'),(321,2,'pr','164.100.146.66','2019-02-15 05:00:08'),(322,2,'ml','122.168.212.180','2019-02-15 05:00:10'),(323,2,'ml','164.100.146.66','2019-02-15 05:00:15'),(324,2,'rti','122.168.212.180','2019-02-15 05:00:16'),(325,2,'about-us','164.100.146.66','2019-02-15 05:00:20'),(326,2,'contact-us','122.168.212.180','2019-02-15 05:00:20'),(327,2,'about-us','122.168.212.180','2019-02-15 05:00:26'),(328,2,'screen-reader','122.168.212.180','2019-02-15 05:01:12'),(329,2,'download','122.168.212.180','2019-02-15 05:02:23'),(330,1,'home','122.168.48.209','2019-02-21 11:22:19'),(331,1,'home','164.100.146.66','2019-02-21 11:23:53'),(332,1,'home','171.61.53.216','2019-02-21 12:06:22'),(333,2,'contact-us','171.61.53.216','2019-02-21 12:12:33'),(334,2,'photo-gallery','171.61.53.216','2019-02-21 12:12:47'),(335,2,'fn','171.61.53.216','2019-02-21 12:12:50'),(336,2,'ml','171.61.53.216','2019-02-21 12:12:53'),(337,2,'tp','171.61.53.216','2019-02-21 12:12:56'),(338,2,'pds','171.61.53.216','2019-02-21 12:12:59'),(339,2,'about-us','171.61.53.216','2019-02-21 12:13:05'),(340,2,'contact-us','164.100.146.66','2019-02-21 12:18:16'),(341,2,'feedback','164.100.146.66','2019-02-21 12:18:20'),(342,1,'home','164.100.146.66','2019-02-22 10:44:45'),(343,2,'screen-reader','164.100.146.66','2019-02-22 10:47:08'),(344,2,'ml','164.100.146.66','2019-02-22 10:47:13'),(345,2,'tp','164.100.146.66','2019-02-22 10:47:14'),(346,2,'about-us','164.100.146.66','2019-02-22 11:01:20'),(347,2,'pds','164.100.146.66','2019-02-22 11:01:34'),(348,2,'pr','164.100.146.66','2019-02-22 11:01:58'),(349,2,'photo-gallery','164.100.146.66','2019-02-22 11:02:11'),(350,2,'photo-gallery-view','164.100.146.66','2019-02-22 11:02:19'),(351,2,'fn','164.100.146.66','2019-02-22 11:03:08'),(352,2,'contact-us','164.100.146.66','2019-02-22 11:03:11'),(353,2,'news-details','164.100.146.66','2019-02-22 11:27:25'),(354,2,'notice-board','164.100.146.66','2019-02-22 11:46:21'),(355,2,'search','164.100.146.66','2019-02-22 11:47:19'),(356,1,'home','59.88.157.36','2019-02-22 04:32:34'),(357,1,'home','27.57.164.37','2019-02-26 01:08:59'),(358,2,'pr','27.57.164.37','2019-02-26 01:12:46'),(359,2,'whos-who','27.57.164.37','2019-02-26 01:13:57'),(360,2,'download','27.57.164.37','2019-02-26 01:15:42'),(361,1,'home','27.57.145.162','2019-02-28 03:15:30'),(362,2,'pds','27.57.145.162','2019-02-28 03:16:35'),(363,2,'pr','27.57.145.162','2019-02-28 03:16:45'),(364,2,'ml','27.57.145.162','2019-02-28 03:17:04'),(365,2,'tp','27.57.145.162','2019-02-28 03:17:05'),(366,2,'fn','27.57.145.162','2019-02-28 03:17:08'),(367,2,'about-us','27.57.145.162','2019-02-28 03:17:36'),(368,2,'whos-who','27.57.145.162','2019-02-28 03:31:23'),(369,2,'photo-gallery','27.57.145.162','2019-02-28 03:31:36'),(370,2,'contact-us','27.57.145.162','2019-02-28 03:31:57'),(371,1,'home','164.100.146.66','2019-03-02 02:23:50'),(372,1,'home','164.100.146.66','2019-03-06 02:57:14'),(373,2,'pds','164.100.146.66','2019-03-06 02:57:40'),(374,2,'pr','164.100.146.66','2019-03-06 02:57:41'),(375,1,'home','164.100.146.66','2019-03-11 11:42:42'),(376,1,'home','164.100.146.66','2019-03-28 01:08:53'),(377,2,'about-us','164.100.146.66','2019-03-28 01:09:50'),(378,2,'pds','164.100.146.66','2019-03-28 01:10:02'),(379,2,'search','164.100.146.66','2019-03-28 01:10:04'),(380,2,'search-details','164.100.146.66','2019-03-28 01:10:16'),(381,2,'contact-us','164.100.146.66','2019-03-28 01:10:32'),(382,2,'photo-gallery','164.100.146.66','2019-03-28 01:10:36'),(383,2,'photo-gallery-view','164.100.146.66','2019-03-28 01:10:41'),(384,2,'whos-who','164.100.146.66','2019-03-28 01:10:53'),(385,2,'fn','164.100.146.66','2019-03-28 01:11:05'),(386,2,'tp','164.100.146.66','2019-03-28 01:11:43'),(387,2,'pr','164.100.146.66','2019-03-28 01:12:12'),(388,2,'download','164.100.146.66','2019-03-28 01:12:22'),(389,2,'rulesacts','164.100.146.66','2019-03-28 01:12:45'),(390,2,'copyright-policy','164.100.146.66','2019-03-28 01:12:47'),(391,2,'news-details','164.100.146.66','2019-03-28 01:13:19'),(392,2,'notice-board','164.100.146.66','2019-03-28 01:14:26'),(393,1,'home','66.249.84.237','2019-03-28 01:15:09'),(394,1,'home','66.249.84.234','2019-03-28 01:15:09'),(395,1,'home','66.102.9.137','2019-03-28 02:16:00'),(396,1,'home','66.102.6.234','2019-03-28 02:16:07'),(397,1,'home','66.102.6.230','2019-03-28 02:16:18'),(398,1,'home','66.102.6.232','2019-03-28 02:16:25'),(399,1,'home','66.102.9.135','2019-03-28 02:16:25'),(400,1,'home','164.100.146.66','2019-03-30 11:16:01'),(401,1,'home','164.100.146.66','2019-04-04 03:11:56'),(402,2,'whos-who','164.100.146.66','2019-04-04 03:12:00'),(403,1,'home','164.100.146.66','2019-04-08 01:08:39'),(404,1,'home','164.100.146.66','2019-04-10 03:19:57'),(405,1,'home','64.233.172.7','2019-04-10 03:32:14'),(406,2,'fn','164.100.146.66','2019-04-10 03:39:08'),(407,2,'photo-gallery','164.100.146.66','2019-04-10 03:39:17'),(408,2,'contact-us','164.100.146.66','2019-04-10 03:39:18'),(409,2,'about-us','164.100.146.66','2019-04-10 03:39:20'),(410,2,'pds','164.100.146.66','2019-04-10 03:39:21'),(411,2,'pr','164.100.146.66','2019-04-10 03:39:24'),(412,2,'tp','164.100.146.66','2019-04-10 03:39:25'),(413,2,'ml','164.100.146.66','2019-04-10 03:39:26'),(414,2,'whos-who','164.100.146.66','2019-04-10 03:39:43'),(415,2,'terms-of-use','164.100.146.66','2019-04-10 03:39:52'),(416,2,'hyperlink-policy','164.100.146.66','2019-04-10 03:39:54'),(417,2,'privacy-policy','164.100.146.66','2019-04-10 03:39:55'),(418,1,'home','164.100.146.66','2019-04-26 01:44:53'),(419,2,'ml','164.100.146.66','2019-04-26 01:45:09'),(420,2,'contact-us','164.100.146.66','2019-04-26 01:45:12'),(421,2,'whos-who','164.100.146.66','2019-04-26 01:45:15'),(422,2,'pr','164.100.146.66','2019-04-26 01:45:21'),(423,2,'pds','164.100.146.66','2019-04-26 01:45:22'),(424,2,'about-us','164.100.146.66','2019-04-26 01:45:30'),(425,2,'fn','164.100.146.66','2019-04-26 01:45:45'),(426,2,'photo-gallery','164.100.146.66','2019-04-26 01:45:49'),(427,2,'photo-gallery-view','164.100.146.66','2019-04-26 01:45:53'),(428,2,'rulesacts','164.100.146.66','2019-04-26 01:45:58'),(429,2,'rti','164.100.146.66','2019-04-26 01:45:59'),(430,2,'copyright-policy','164.100.146.66','2019-04-26 01:46:02'),(431,2,'hyperlink-policy','164.100.146.66','2019-04-26 01:46:03'),(432,2,'terms-of-use','164.100.146.66','2019-04-26 01:46:04'),(433,2,'privacy-policy','164.100.146.66','2019-04-26 01:46:05'),(434,2,'disclaimer','164.100.146.66','2019-04-26 01:46:06'),(435,2,'sitemap','164.100.146.66','2019-04-26 01:46:07'),(436,2,'download','164.100.146.66','2019-04-26 01:46:10'),(437,2,'notice-board','164.100.146.66','2019-04-26 02:20:10'),(438,1,'home','182.70.139.59','2019-04-27 11:02:24'),(439,2,'about-us','182.70.139.59','2019-04-27 11:02:56'),(440,2,'pds','182.70.139.59','2019-04-27 11:03:08'),(441,2,'pr','182.70.139.59','2019-04-27 11:03:10'),(442,2,'tp','182.70.139.59','2019-04-27 11:03:14'),(443,2,'ml','182.70.139.59','2019-04-27 11:03:17'),(444,2,'fn','182.70.139.59','2019-04-27 11:03:19'),(445,2,'whos-who','182.70.139.59','2019-04-27 11:03:40'),(446,1,'home','164.100.146.66','2019-04-30 05:17:55'),(447,2,'pds','164.100.146.66','2019-04-30 05:18:32'),(448,2,'pr','164.100.146.66','2019-04-30 05:18:34'),(449,2,'tp','164.100.146.66','2019-04-30 05:18:37'),(450,2,'ml','164.100.146.66','2019-04-30 05:18:39'),(451,2,'fn','164.100.146.66','2019-04-30 05:18:41'),(452,2,'whos-who','164.100.146.66','2019-04-30 05:19:25'),(453,2,'contact-us','164.100.146.66','2019-04-30 05:20:24'),(454,1,'home','164.100.146.66','2019-05-09 01:37:13'),(455,2,'about-us','164.100.146.66','2019-05-09 01:37:46'),(456,2,'pds','164.100.146.66','2019-05-09 01:37:49'),(457,2,'tp','164.100.146.66','2019-05-09 01:37:53'),(458,2,'ml','164.100.146.66','2019-05-09 01:37:54'),(459,2,'contact-us','164.100.146.66','2019-05-09 01:46:01'),(460,2,'whos-who','164.100.146.66','2019-05-09 02:13:48'),(461,1,'home','164.100.146.66','2019-05-10 11:02:27'),(462,2,'pds','164.100.146.66','2019-05-10 11:02:29'),(463,2,'pr','164.100.146.66','2019-05-10 11:02:36'),(464,2,'tp','164.100.146.66','2019-05-10 11:02:38'),(465,2,'fn','164.100.146.66','2019-05-10 11:02:52'),(466,2,'about-us','164.100.146.66','2019-05-10 01:20:07'),(467,2,'whos-who','164.100.146.66','2019-05-10 03:15:36'),(468,2,'photo-gallery','164.100.146.66','2019-05-10 03:15:56'),(469,1,'home','164.100.146.66','2019-05-13 10:51:24'),(470,1,'home','164.100.146.66','2019-05-14 10:31:25'),(471,1,'home','164.100.146.66','2019-05-21 02:53:17'),(472,1,'home','164.100.146.66','2019-05-24 03:51:24'),(473,2,'photo-gallery','164.100.146.66','2019-05-24 03:51:26'),(474,2,'photo-gallery-view','164.100.146.66','2019-05-24 03:51:28'),(475,1,'home','164.100.146.66','2019-05-30 11:43:16'),(476,2,'ml','164.100.146.66','2019-05-30 11:43:19'),(477,2,'contact-us','164.100.146.66','2019-05-30 12:29:58'),(478,2,'whos-who','164.100.146.66','2019-05-30 01:29:09'),(479,2,'photo-gallery','164.100.146.66','2019-05-30 01:29:11'),(480,2,'photo-gallery-view','164.100.146.66','2019-05-30 01:29:14'),(481,1,'home','27.57.202.255','2019-06-11 07:49:40'),(482,2,'about-us','27.57.202.255','2019-06-11 07:50:36'),(483,2,'about-us','27.57.202.255','2019-06-12 10:18:58'),(484,1,'home','164.100.146.66','2019-06-13 01:53:27'),(485,2,'pds','164.100.146.66','2019-06-13 01:53:33'),(486,2,'about-us','164.100.146.66','2019-06-13 03:02:03'),(487,2,'ml','164.100.146.66','2019-06-13 03:04:38'),(488,2,'tp','164.100.146.66','2019-06-13 03:04:41'),(489,2,'pr','164.100.146.66','2019-06-13 03:04:44'),(490,1,'home','164.100.146.66','2019-06-29 01:41:39'),(491,2,'about-us','164.100.146.66','2019-06-29 01:41:46'),(492,2,'tp','164.100.146.66','2019-06-29 01:41:49'),(493,2,'fn','164.100.146.66','2019-06-29 01:41:53'),(494,2,'photo-gallery','164.100.146.66','2019-06-29 01:41:57'),(495,2,'contact-us','164.100.146.66','2019-06-29 01:41:58'),(496,2,'pds','164.100.146.66','2019-06-29 01:42:00'),(497,2,'pr','164.100.146.66','2019-06-29 01:42:03'),(498,1,'home','164.100.146.66','2019-07-01 03:40:29'),(499,1,'home','27.57.136.158','2019-07-19 12:40:09'),(500,2,'pds','27.57.136.158','2019-07-19 12:40:32'),(501,2,'pr','27.57.136.158','2019-07-19 12:40:35'),(502,2,'tp','27.57.136.158','2019-07-19 12:40:42'),(503,2,'ml','27.57.136.158','2019-07-19 12:40:48'),(504,2,'fn','27.57.136.158','2019-07-19 12:40:51'),(505,2,'whos-who','27.57.136.158','2019-07-19 12:40:54'),(506,2,'photo-gallery','27.57.136.158','2019-07-19 12:40:58'),(507,2,'about-us','27.57.136.158','2019-07-19 12:41:13'),(508,2,'contact-us','27.57.136.158','2019-07-19 12:49:01'),(509,2,'download','27.57.136.158','2019-07-19 12:52:53'),(510,1,'home','164.100.146.66','2019-07-19 12:53:59'),(511,2,'pds','164.100.146.66','2019-07-19 12:54:24'),(512,1,'home','122.168.16.109','2019-07-19 02:07:54'),(513,2,'pds','122.168.16.109','2019-07-19 02:08:45'),(514,2,'tp','122.168.16.109','2019-07-19 02:08:46'),(515,2,'pr','122.168.16.109','2019-07-19 02:08:48'),(516,2,'ml','122.168.16.109','2019-07-19 02:09:18'),(517,2,'contact-us','122.168.16.109','2019-07-19 02:09:36'),(518,2,'about-us','122.168.16.109','2019-07-19 02:09:45'),(519,2,'pr','164.100.146.66','2019-07-19 02:40:24'),(520,2,'tp','164.100.146.66','2019-07-19 02:40:27'),(521,2,'ml','164.100.146.66','2019-07-19 02:40:29'),(522,2,'fn','164.100.146.66','2019-07-19 02:40:30'),(523,2,'whos-who','164.100.146.66','2019-07-19 02:40:31'),(524,2,'photo-gallery','164.100.146.66','2019-07-19 02:40:35'),(525,2,'contact-us','164.100.146.66','2019-07-19 02:40:38'),(526,2,'about-us','164.100.146.66','2019-07-19 02:40:39'),(527,1,'home','164.100.146.66','2019-07-22 11:02:57'),(528,1,'home','47.247.191.90','2019-07-22 09:38:16'),(529,2,'about-us','47.247.191.90','2019-07-22 09:40:11'),(530,2,'about-us','47.247.164.111','2019-07-23 08:17:04'),(531,2,'about-us','47.247.167.18','2019-07-24 08:07:28'),(532,1,'home','164.100.146.66','2019-07-26 05:38:55'),(533,2,'pr','164.100.146.66','2019-07-26 05:39:28'),(534,1,'home','164.100.146.66','2019-07-30 02:26:53'),(535,2,'download','164.100.146.66','2019-07-30 02:47:32'),(536,1,'home','182.70.194.203','2019-07-30 02:47:44'),(537,2,'about-us','164.100.146.66','2019-07-30 02:47:49'),(538,2,'pds','164.100.146.66','2019-07-30 02:47:50'),(539,2,'pr','164.100.146.66','2019-07-30 02:47:51'),(540,2,'download','182.70.194.203','2019-07-30 02:48:17'),(541,2,'ml','164.100.146.66','2019-07-30 02:49:08'),(542,2,'pr','182.70.194.203','2019-07-30 05:38:27'),(543,2,'fn','182.70.194.203','2019-07-30 05:38:54'),(544,2,'contact-us','182.70.194.203','2019-07-30 05:39:00'),(545,1,'home','164.100.146.66','2019-07-31 10:46:18'),(546,1,'home','164.100.146.66','2019-08-01 09:07:56'),(547,2,'pr','164.100.146.66','2019-08-01 09:08:07'),(548,2,'pds','164.100.146.66','2019-08-01 09:08:09'),(549,2,'ml','164.100.146.66','2019-08-01 09:08:11'),(550,2,'whos-who','164.100.146.66','2019-08-01 09:08:14'),(551,2,'photo-gallery','164.100.146.66','2019-08-01 09:08:17'),(552,2,'contact-us','164.100.146.66','2019-08-01 09:08:18'),(553,2,'about-us','164.100.146.66','2019-08-01 09:08:29'),(554,1,'home','164.100.146.66','2019-08-02 12:02:01'),(555,1,'home','10.125.242.221','2019-08-02 12:02:09'),(556,2,'pds','10.125.242.221','2019-08-02 12:05:10'),(557,2,'pr','10.125.242.221','2019-08-02 12:09:27'),(558,2,'about-us','10.125.242.221','2019-08-02 12:14:47'),(559,1,'home','164.100.146.67','2019-08-31 10:51:06'),(560,2,'about-us','164.100.146.67','2019-08-31 10:51:28'),(561,2,'pds','164.100.146.67','2019-08-31 10:51:31'),(562,2,'pr','164.100.146.67','2019-08-31 10:51:37'),(563,2,'tp','164.100.146.67','2019-08-31 10:51:39'),(564,2,'whos-who','164.100.146.67','2019-08-31 10:51:43'),(565,2,'photo-gallery','164.100.146.67','2019-08-31 10:51:46'),(566,2,'contact-us','164.100.146.67','2019-08-31 10:51:49'),(567,2,'screen-reader','164.100.146.67','2019-08-31 10:51:58'),(568,2,'notice-board','164.100.146.67','2019-08-31 10:52:05'),(569,2,'fn','164.100.146.67','2019-08-31 10:52:15'),(570,1,'home','66.102.6.230','2019-09-05 05:47:43'),(571,1,'home','164.100.146.67','2019-09-16 04:54:08'),(572,1,'home','164.100.146.67','2019-09-30 05:26:53'),(573,2,'fn','164.100.146.67','2019-09-30 05:27:26'),(574,2,'whos-who','164.100.146.67','2019-09-30 05:27:28'),(575,2,'tp','164.100.146.67','2019-09-30 05:27:34'),(576,2,'pr','164.100.146.67','2019-09-30 05:27:36'),(577,2,'about-us','164.100.146.67','2019-09-30 05:27:43'),(578,2,'pds','164.100.146.67','2019-09-30 05:27:44'),(579,2,'ml','164.100.146.67','2019-09-30 05:27:46'),(580,2,'photo-gallery','164.100.146.67','2019-09-30 05:27:49'),(581,2,'photo-gallery-view','164.100.146.67','2019-09-30 05:27:52'),(582,1,'home','164.100.146.66','2019-11-02 06:16:31'),(583,1,'home','10.115.96.66','2019-11-02 06:36:12'),(584,2,'pr','10.115.96.66','2019-11-02 06:36:21'),(585,1,'home','10.115.96.66','2019-11-04 02:41:54'),(586,2,'about-us','10.115.96.66','2019-11-04 03:39:25'),(587,2,'whos-who','10.115.96.66','2019-11-04 03:54:16'),(588,2,'notice-board','10.115.96.66','2019-11-04 04:07:31'),(589,2,'feedback','10.115.96.66','2019-11-04 04:07:44'),(590,2,'sitemap','10.115.96.66','2019-11-04 04:07:57'),(591,2,'hyperlink-policy','10.115.96.66','2019-11-04 04:08:00'),(592,2,'terms-of-use','10.115.96.66','2019-11-04 04:08:02'),(593,2,'career','10.115.96.66','2019-11-04 04:20:18'),(594,2,'rti','10.115.96.66','2019-11-04 04:20:19'),(595,2,'tender','10.115.96.66','2019-11-04 04:20:20'),(596,1,'home','10.115.96.66','2019-11-13 11:30:21'),(597,1,'home','10.115.96.66','2019-11-15 09:37:38'),(598,2,'about-us','10.115.96.66','2019-11-15 09:37:46'),(599,2,'career','10.115.96.66','2019-11-15 05:31:18'),(600,2,'rti','10.115.96.66','2019-11-15 05:53:04'),(601,2,'contact-us','10.115.96.66','2019-11-15 06:25:14'),(602,2,'tender','10.115.96.66','2019-11-15 06:27:06'),(603,1,'home','10.115.96.66','2019-11-16 09:43:11'),(604,2,'tender','10.115.96.66','2019-11-16 09:46:28'),(605,2,'career','10.115.96.66','2019-11-16 09:46:30'),(606,2,'whos-who','10.115.96.66','2019-11-16 09:46:32'),(607,2,'feedback','10.115.96.66','2019-11-16 10:30:32'),(608,2,'events','10.115.96.66','2019-11-16 11:03:35'),(609,2,'about-us','10.115.96.66','2019-11-16 11:14:05'),(610,2,'notice-board','10.115.96.66','2019-11-16 11:16:54'),(611,2,'news-details','10.115.96.66','2019-11-16 11:17:03'),(612,2,'important-links','10.115.96.66','2019-11-16 11:17:07'),(613,2,'circular','10.115.96.66','2019-11-16 11:40:49'),(614,2,'search','10.115.96.66','2019-11-16 12:21:17'),(615,2,'rti','10.115.96.66','2019-11-16 12:21:30'),(616,2,'contact-us','10.115.96.66','2019-11-16 12:55:17'),(617,2,'contact','10.115.96.66','2019-11-16 12:56:10'),(618,2,'terms-of-use','10.115.96.66','2019-11-16 01:35:46'),(619,1,'home','164.100.146.66','2019-11-16 02:37:55'),(620,1,'home','47.247.131.71','2019-11-17 01:48:52'),(621,1,'home','47.247.25.232','2019-11-17 02:23:18'),(622,2,'tender','47.247.25.232','2019-11-17 02:23:32'),(623,2,'rti','47.247.25.232','2019-11-17 02:23:45'),(624,2,'career','47.247.25.232','2019-11-17 02:23:48'),(625,2,'whos-who','47.247.25.232','2019-11-17 02:23:51'),(626,2,'contact','47.247.25.232','2019-11-17 02:23:53'),(627,1,'home','117.232.234.91','2019-11-17 05:30:09'),(628,2,'tender','117.232.234.91','2019-11-17 05:32:56'),(629,2,'rti','117.232.234.91','2019-11-17 05:33:17'),(630,2,'career','117.232.234.91','2019-11-17 05:33:23'),(631,2,'whos-who','117.232.234.91','2019-11-17 05:33:28'),(632,2,'contact','117.232.234.91','2019-11-17 05:33:36'),(633,1,'home','164.100.146.66','2019-11-18 10:05:08'),(634,2,'contact','164.100.146.66','2019-11-18 10:05:26'),(635,2,'whos-who','164.100.146.66','2019-11-18 10:05:32'),(636,2,'career','164.100.146.66','2019-11-18 10:05:33'),(637,1,'home','66.102.6.223','2019-11-18 05:30:18'),(638,1,'home','66.102.6.221','2019-11-20 10:39:21'),(639,1,'home','117.232.254.182','2019-11-20 11:15:15'),(640,1,'home','66.102.6.223','2019-11-21 11:02:34'),(641,1,'home','117.232.229.137','2019-11-21 11:47:26'),(642,1,'home','117.232.217.87','2019-11-21 07:21:21'),(643,1,'home','66.102.6.221','2019-11-25 10:47:43'),(644,1,'home','164.100.146.66','2019-11-25 11:11:50'),(645,1,'home','164.100.151.232','2019-11-25 12:24:40'),(646,1,'home','66.102.8.205','2019-11-25 12:24:45'),(647,2,'contact','164.100.151.232','2019-11-25 12:24:59'),(648,2,'whos-who','164.100.151.230','2019-11-25 12:25:04'),(649,2,'tender','164.100.151.232','2019-11-25 12:25:15'),(650,1,'home','164.100.151.234','2019-11-25 12:27:55'),(651,1,'home','164.100.151.230','2019-11-25 12:30:54'),(652,1,'home','66.102.8.199','2019-11-25 12:31:43'),(653,2,'about-us','164.100.151.232','2019-11-25 12:31:48'),(654,2,'screen-reader','164.100.151.230','2019-11-25 12:32:23'),(655,2,'tender','164.100.146.66','2019-11-25 12:44:15'),(656,2,'career','164.100.146.66','2019-11-25 12:44:18'),(657,2,'contact','164.100.146.66','2019-11-25 12:44:21'),(658,2,'news-details','164.100.146.66','2019-11-25 05:08:36'),(659,1,'home','164.100.151.232','2019-11-26 10:51:22'),(660,2,'tender','164.100.151.230','2019-11-26 10:58:28'),(661,2,'screen-reader','164.100.151.232','2019-11-26 10:58:51'),(662,2,'career','164.100.151.232','2019-11-26 10:59:02'),(663,2,'whos-who','164.100.151.232','2019-11-26 10:59:04'),(664,2,'contact','164.100.151.232','2019-11-26 10:59:05'),(665,1,'home','164.100.151.234','2019-11-26 11:00:35'),(666,2,'tender','164.100.151.234','2019-11-26 12:21:41'),(667,2,'contact','164.100.151.234','2019-11-26 12:22:37'),(668,2,'whos-who','164.100.151.230','2019-11-26 12:25:04'),(669,2,'contact','164.100.151.230','2019-11-26 12:25:17'),(670,2,'events','164.100.151.230','2019-11-26 12:26:17'),(671,2,'tender','164.100.151.232','2019-11-26 12:28:56'),(672,2,'rti','164.100.151.230','2019-11-26 12:29:01'),(673,2,'events','164.100.151.234','2019-11-26 12:31:02'),(674,1,'home','164.100.146.66','2019-11-26 12:44:01'),(675,1,'home','10.115.250.244','2019-11-26 12:52:10'),(676,1,'home','47.247.128.172','2019-11-26 12:53:06'),(677,2,'about-us','164.100.151.232','2019-11-26 01:16:49'),(678,2,'contact','164.100.146.66','2019-11-26 03:22:45'),(679,2,'whos-who','164.100.146.66','2019-11-26 03:22:48'),(680,2,'career','164.100.146.66','2019-11-26 03:22:49'),(681,2,'rti','164.100.146.66','2019-11-26 03:22:51'),(682,1,'home','164.100.146.66','2019-11-27 10:41:02'),(683,2,'about-us','164.100.146.66','2019-11-27 10:45:22'),(684,1,'home','66.102.6.193','2019-11-27 11:18:16'),(685,2,'contact','157.34.174.84','2019-11-28 12:12:25'),(686,1,'home','157.34.174.84','2019-11-28 12:12:32'),(687,1,'home','164.100.146.66','2019-11-28 10:40:39'),(688,1,'home','66.102.6.223','2019-11-28 11:01:38'),(689,2,'tender','164.100.146.66','2019-11-28 11:51:57'),(690,1,'home','128.30.52.96','2019-11-28 12:11:14'),(691,1,'home','205.211.169.31','2019-11-28 12:11:25'),(692,2,'privacy-policy','164.100.146.66','2019-11-28 12:14:04'),(693,1,'home','164.100.151.234','2019-11-28 12:30:47'),(694,1,'home','66.102.8.209','2019-11-28 12:30:58'),(695,2,'tender','164.100.151.230','2019-11-28 12:31:14'),(696,2,'rti','164.100.151.230','2019-11-28 12:31:29'),(697,2,'contact','164.100.151.234','2019-11-28 12:31:36'),(698,1,'home','164.100.151.232','2019-11-28 12:34:41'),(699,2,'tender','164.100.151.232','2019-11-28 12:35:42'),(700,2,'about-us','164.100.151.232','2019-11-28 12:35:46'),(701,1,'home','117.228.173.92','2019-11-28 12:39:14'),(702,1,'home','164.100.151.230','2019-11-28 12:40:06'),(703,2,'about-us','164.100.151.230','2019-11-28 12:44:20'),(704,2,'rti','164.100.151.232','2019-11-28 12:44:56'),(705,2,'career','164.100.151.232','2019-11-28 12:45:03'),(706,2,'whos-who','164.100.151.232','2019-11-28 12:45:24'),(707,2,'contact','164.100.151.232','2019-11-28 12:45:29'),(708,2,'contact','164.100.151.230','2019-11-28 12:45:47'),(709,2,'news-details','164.100.146.66','2019-11-28 12:55:00'),(710,2,'contact','164.100.146.66','2019-11-28 01:05:22'),(711,2,'about-us','164.100.146.66','2019-11-28 03:15:41'),(712,2,'events','164.100.151.234','2019-11-28 04:48:59'),(713,2,'tender','164.100.151.234','2019-11-28 04:49:30'),(714,2,'events','164.100.151.232','2019-11-28 05:11:46'),(715,2,'events','164.100.151.230','2019-11-28 05:13:21'),(716,2,'events','164.100.146.66','2019-11-28 05:51:08'),(717,2,'about-us','164.100.151.234','2019-11-28 05:57:11'),(718,2,'whos-who','164.100.151.234','2019-11-28 05:57:34'),(719,2,'whos-who','164.100.151.230','2019-11-28 06:16:02'),(720,1,'home','157.34.114.4','2019-11-28 11:08:09'),(721,2,'about-us','157.34.114.4','2019-11-28 11:09:59'),(722,2,'whos-who','157.34.114.4','2019-11-28 11:10:06'),(723,2,'events','157.34.114.4','2019-11-28 11:10:15'),(724,2,'tender','157.34.114.4','2019-11-28 11:10:44'),(725,2,'career','157.34.114.4','2019-11-28 11:10:48'),(726,2,'contact','157.34.114.4','2019-11-28 11:10:54'),(727,1,'home','66.102.6.193','2019-11-29 10:37:19'),(728,1,'home','164.100.146.66','2019-11-29 11:11:54'),(729,1,'home','164.100.151.234','2019-11-29 11:51:39'),(730,1,'home','164.100.151.232','2019-11-29 12:12:20'),(731,2,'about-us','164.100.151.230','2019-11-29 12:14:00'),(732,1,'home','164.100.151.230','2019-11-29 12:14:34'),(733,2,'whos-who','164.100.151.234','2019-11-29 12:15:26'),(734,2,'events','164.100.151.234','2019-11-29 12:15:29'),(735,2,'tender','164.100.151.234','2019-11-29 12:15:38'),(736,2,'about-us','164.100.151.234','2019-11-29 12:15:42'),(737,2,'events','164.100.151.230','2019-11-29 12:16:35'),(738,2,'tender','164.100.151.230','2019-11-29 01:49:05'),(739,2,'contact','164.100.151.232','2019-11-29 01:49:32'),(740,2,'career','164.100.151.232','2019-11-29 01:49:36'),(741,2,'events','164.100.151.232','2019-11-29 01:49:38'),(742,2,'whos-who','164.100.151.232','2019-11-29 01:50:44'),(743,2,'about-us','164.100.151.232','2019-11-29 01:51:40'),(744,2,'about-us','164.100.146.66','2019-11-29 04:05:24'),(745,2,'tender','164.100.146.66','2019-11-29 05:07:34'),(746,2,'whos-who','164.100.146.66','2019-11-29 05:07:55'),(747,1,'home','66.102.6.193','2019-11-30 12:07:58'),(748,1,'home','164.100.146.66','2019-11-30 12:23:51'),(749,2,'about-us','164.100.146.66','2019-11-30 01:17:19'),(750,1,'home','164.100.151.232','2019-11-30 03:13:19'),(751,2,'about-us','164.100.151.233','2019-11-30 03:13:31'),(752,1,'home','164.100.151.233','2019-11-30 03:13:45'),(753,2,'whos-who','164.100.151.233','2019-11-30 03:13:57'),(754,2,'tender','164.100.151.233','2019-11-30 03:14:11'),(755,2,'events','164.100.151.233','2019-11-30 03:14:17'),(756,1,'home','59.88.157.230','2019-12-01 02:14:40'),(757,1,'home','164.100.146.66','2019-12-02 11:09:00'),(758,2,'events','164.100.146.66','2019-12-02 11:09:40'),(759,2,'contact','164.100.146.66','2019-12-02 11:11:34'),(760,2,'tender','164.100.146.66','2019-12-02 11:29:16'),(761,1,'home','47.247.202.207','2019-12-02 12:57:43'),(762,2,'contact','47.247.202.207','2019-12-02 01:07:04'),(763,2,'events','47.247.202.207','2019-12-02 01:09:07'),(764,2,'terms-of-use','47.247.202.207','2019-12-02 01:24:55'),(765,2,'tender','47.247.202.207','2019-12-02 01:26:25'),(766,1,'home','66.102.6.223','2019-12-02 02:12:40'),(767,1,'home','164.100.151.232','2019-12-02 02:40:24'),(768,2,'about-us','164.100.151.230','2019-12-02 02:41:59'),(769,1,'home','164.100.151.230','2019-12-02 02:42:07'),(770,2,'whos-who','164.100.151.230','2019-12-02 02:42:11'),(771,2,'events','164.100.151.232','2019-12-02 02:42:14'),(772,2,'tender','164.100.151.230','2019-12-02 02:42:18'),(773,2,'career','164.100.151.230','2019-12-02 02:42:20'),(774,2,'contact','164.100.151.230','2019-12-02 02:42:22'),(775,2,'contact','164.100.151.232','2019-12-02 02:42:53'),(776,2,'whos-who','164.100.151.232','2019-12-02 02:55:20'),(777,1,'home','164.100.151.231','2019-12-02 02:55:48'),(778,1,'home','47.247.194.211','2019-12-02 02:59:49'),(779,2,'feedback','47.247.194.211','2019-12-02 03:28:28'),(780,2,'hyperlink-policy','47.247.194.211','2019-12-02 03:28:32'),(781,2,'privacy-policy','47.247.194.211','2019-12-02 03:29:21'),(782,2,'terms-of-use','47.247.194.211','2019-12-02 03:29:36'),(783,2,'disclaimer','47.247.194.211','2019-12-02 03:29:39'),(784,2,'sitemap','47.247.194.211','2019-12-02 03:29:49'),(785,2,'tender','47.247.194.211','2019-12-02 03:33:57'),(786,1,'home','47.247.240.32','2019-12-02 05:20:52'),(787,1,'home','49.36.30.192','2019-12-03 09:23:04'),(788,1,'home','66.102.6.221','2019-12-04 10:46:20'),(789,1,'home','47.247.207.203','2019-12-04 11:42:31'),(790,2,'feedback','47.247.207.203','2019-12-04 11:43:49'),(791,2,'hyperlink-policy','47.247.207.203','2019-12-04 11:47:01'),(792,2,'terms-of-use','47.247.207.203','2019-12-04 11:47:20'),(793,2,'privacy-policy','47.247.207.203','2019-12-04 11:56:05'),(794,2,'disclaimer','47.247.207.203','2019-12-04 12:02:23'),(795,1,'home','47.247.203.51','2019-12-04 01:11:13'),(796,2,'contact','47.247.203.51','2019-12-04 01:11:31'),(797,2,'whos-who','47.247.203.51','2019-12-04 01:12:03'),(798,2,'about-us','47.247.203.51','2019-12-04 01:26:48'),(799,2,'events','47.247.203.51','2019-12-04 01:43:44'),(800,1,'home','164.100.146.66','2019-12-04 04:44:51'),(801,2,'contact','164.100.146.66','2019-12-04 04:49:15'),(802,1,'home','64.233.172.171','2019-12-05 10:42:27'),(803,1,'home','164.100.151.232','2019-12-05 11:58:54'),(804,2,'whos-who','164.100.151.231','2019-12-05 11:59:37'),(805,2,'events','164.100.151.232','2019-12-05 11:59:40'),(806,1,'home','164.100.151.233','2019-12-05 11:59:58'),(807,2,'contact','164.100.151.233','2019-12-05 12:00:27'),(808,1,'home','164.100.151.231','2019-12-05 12:01:07'),(809,1,'home','164.100.146.66','2019-12-05 01:02:16'),(810,2,'about-us','164.100.146.66','2019-12-05 02:25:49'),(811,2,'privacy-policy','164.100.146.66','2019-12-05 02:43:09'),(812,2,'photo-gallery','164.100.146.66','2019-12-05 02:59:59'),(813,2,'photo-gallery-view','164.100.146.66','2019-12-05 03:00:06'),(814,2,'video-gallery','164.100.146.66','2019-12-05 03:00:22'),(815,2,'contact','164.100.146.66','2019-12-05 03:05:30'),(816,2,'notice-board','164.100.146.66','2019-12-05 07:17:29'),(817,2,'news-details','164.100.146.66','2019-12-05 07:17:40'),(818,1,'home','117.228.222.54','2019-12-05 07:55:55'),(819,1,'home','171.60.139.108','2019-12-05 08:30:04'),(820,2,'aim-object','171.60.139.108','2019-12-05 08:31:05'),(821,2,'company-register','171.60.139.108','2019-12-05 08:31:12'),(822,2,'organisation-chart','171.60.139.108','2019-12-05 08:31:14'),(823,2,'whos-who','171.60.139.108','2019-12-05 08:31:22'),(824,2,'events','171.60.139.108','2019-12-05 08:31:32'),(825,2,'tender','171.60.139.108','2019-12-05 08:31:36'),(826,2,'photo-gallery','171.60.139.108','2019-12-05 08:31:51'),(827,2,'video-gallery','171.60.139.108','2019-12-05 08:32:01'),(828,2,'contact','171.60.139.108','2019-12-05 08:32:07'),(829,2,'about-us','171.60.139.108','2019-12-05 08:34:05'),(830,1,'home','164.100.151.233','2019-12-06 09:57:28'),(831,1,'home','164.100.151.232','2019-12-06 09:58:32'),(832,2,'whos-who','164.100.151.232','2019-12-06 09:58:51'),(833,2,'company-register','164.100.151.232','2019-12-06 09:59:01'),(834,2,'events','164.100.151.232','2019-12-06 09:59:07'),(835,2,'tender','164.100.151.232','2019-12-06 09:59:19'),(836,2,'photo-gallery','164.100.151.231','2019-12-06 09:59:25'),(837,2,'photo-gallery-view','164.100.151.232','2019-12-06 09:59:37'),(838,1,'home','164.100.151.231','2019-12-06 11:19:40'),(839,1,'home','164.100.146.66','2019-12-06 12:31:37'),(840,1,'home','66.102.6.221','2019-12-06 12:46:58'),(841,2,'organisation-chart','164.100.151.233','2019-12-06 02:11:36'),(842,2,'aim-object','164.100.151.233','2019-12-06 02:11:40'),(843,2,'whos-who','164.100.151.231','2019-12-06 02:11:43'),(844,2,'contact','164.100.151.231','2019-12-06 02:11:55'),(845,2,'events','164.100.151.233','2019-12-06 02:13:21'),(846,2,'tender','164.100.151.233','2019-12-06 02:13:27'),(847,2,'video-gallery','164.100.151.232','2019-12-06 02:14:44'),(848,2,'contact','164.100.151.232','2019-12-06 02:14:59'),(849,2,'events','164.100.146.66','2019-12-06 05:29:20'),(850,2,'whos-who','164.100.146.66','2019-12-06 06:14:03'),(851,2,'events','164.100.151.231','2019-12-06 06:14:26'),(852,2,'contact','164.100.146.66','2019-12-06 06:15:16'),(853,2,'about-us','164.100.151.232','2019-12-06 06:25:05'),(854,2,'aim-object','164.100.151.232','2019-12-06 06:30:02'),(855,2,'tender','164.100.151.231','2019-12-06 06:33:10'),(856,2,'aim-object','164.100.151.231','2019-12-06 06:35:38'),(857,2,'about-us','164.100.151.233','2019-12-06 06:36:01'),(858,2,'about-us','164.100.151.231','2019-12-06 06:36:22'),(859,1,'home','164.100.151.231','2019-12-07 10:18:05'),(860,1,'home','164.100.151.233','2019-12-07 10:50:22'),(861,1,'home','164.100.146.66','2019-12-07 11:17:00'),(862,2,'whos-who','164.100.146.66','2019-12-07 11:25:08'),(863,2,'events','164.100.146.66','2019-12-07 11:32:59'),(864,2,'tender','164.100.146.66','2019-12-07 11:33:00'),(865,2,'contact','164.100.146.66','2019-12-07 12:29:01'),(866,2,'video-gallery','164.100.146.66','2019-12-07 12:51:45'),(867,2,'important-links','164.100.151.231','2019-12-07 01:29:37'),(868,2,'important-links','164.100.151.232','2019-12-07 01:46:16'),(869,1,'home','164.100.151.232','2019-12-07 01:46:34'),(870,2,'about-us','164.100.151.233','2019-12-07 02:54:01'),(871,2,'aim-object','164.100.151.233','2019-12-07 03:00:32'),(872,2,'aim-object','164.100.151.231','2019-12-07 03:04:11'),(873,2,'contact','164.100.151.233','2019-12-07 03:08:51'),(874,2,'contact','164.100.151.232','2019-12-07 03:15:11'),(875,2,'aims-objectives','164.100.151.232','2019-12-07 03:15:26'),(876,2,'company-register','164.100.151.232','2019-12-07 03:15:33'),(877,2,'organisation-chart','164.100.151.231','2019-12-07 03:15:39'),(878,2,'aims-objectives','164.100.146.66','2019-12-07 03:20:12'),(879,2,'company-register','164.100.146.66','2019-12-07 03:20:18'),(880,2,'organisation-chart','164.100.146.66','2019-12-07 03:20:22'),(881,2,'about-us','164.100.151.231','2019-12-07 03:24:42'),(882,2,'aims-objectives','164.100.151.231','2019-12-07 03:25:20'),(883,2,'about-us','164.100.146.66','2019-12-07 03:25:24'),(884,2,'aims-objectives','164.100.151.233','2019-12-07 03:26:30'),(885,2,'about-us','164.100.151.232','2019-12-07 03:31:23'),(886,2,'company-register','164.100.151.231','2019-12-07 03:32:51'),(887,2,'events','164.100.151.231','2019-12-07 03:33:00'),(888,2,'tender','164.100.151.232','2019-12-07 03:33:02'),(889,2,'contact','164.100.151.231','2019-12-07 03:33:05'),(890,2,'organisation-chart','164.100.151.232','2019-12-07 04:08:45'),(891,2,'whos-who','164.100.151.232','2019-12-07 04:08:48'),(892,2,'events','164.100.151.232','2019-12-07 04:08:50'),(893,2,'whos-who','164.100.151.231','2019-12-07 04:28:01'),(894,2,'tender','164.100.151.233','2019-12-07 05:17:58'),(895,2,'whos-who','164.100.151.233','2019-12-07 05:20:37'),(896,2,'company-register','164.100.151.233','2019-12-07 05:33:44'),(897,2,'organisation-chart','164.100.151.233','2019-12-07 05:33:47'),(898,2,'photo-gallery','164.100.151.233','2019-12-07 05:35:30'),(899,2,'video-gallery','164.100.151.233','2019-12-07 05:35:37'),(900,2,'events','164.100.151.233','2019-12-07 05:37:28'),(901,1,'home','117.228.207.92','2019-12-07 09:50:33'),(902,1,'home','122.168.171.78','2019-12-08 08:25:39'),(903,2,'events','122.168.171.78','2019-12-08 08:56:13'),(904,2,'organisation-chart','122.168.171.78','2019-12-08 10:17:04'),(905,2,'aims-objectives','122.168.171.78','2019-12-08 10:19:42'),(906,1,'home','66.102.6.223','2019-12-09 10:52:30'),(907,1,'home','164.100.151.233','2019-12-09 10:53:24'),(908,1,'home','164.100.151.231','2019-12-09 10:53:33'),(909,2,'aims-objectives','164.100.151.231','2019-12-09 10:53:45'),(910,2,'company-register','164.100.151.233','2019-12-09 10:53:51'),(911,2,'organisation-chart','164.100.151.233','2019-12-09 10:53:55'),(912,2,'whos-who','164.100.151.233','2019-12-09 10:53:58'),(913,2,'events','164.100.151.231','2019-12-09 10:54:10'),(914,2,'events','164.100.151.232','2019-12-09 10:54:43'),(915,1,'home','164.100.151.232','2019-12-09 11:09:35'),(916,2,'contact','164.100.151.231','2019-12-09 11:25:01'),(917,2,'events','164.100.151.233','2019-12-09 11:50:34'),(918,1,'home','164.100.146.66','2019-12-09 01:09:02'),(919,2,'aims-objectives','164.100.146.66','2019-12-09 01:15:52'),(920,2,'about-us','164.100.146.66','2019-12-09 01:16:04'),(921,2,'whos-who','164.100.146.66','2019-12-09 01:19:24'),(922,2,'feedback','164.100.146.66','2019-12-09 01:26:21'),(923,2,'contact','164.100.146.66','2019-12-09 01:29:01'),(924,2,'company-register','164.100.146.66','2019-12-09 01:36:03'),(925,2,'events','164.100.146.66','2019-12-09 01:38:14'),(926,2,'video-gallery','164.100.146.66','2019-12-09 01:40:48'),(927,2,'photo-gallery','164.100.146.66','2019-12-09 01:41:19'),(928,2,'about-us','164.100.151.232','2019-12-09 03:30:56'),(929,2,'about-us','164.100.151.231','2019-12-09 03:31:10'),(930,2,'company-register','164.100.151.232','2019-12-09 03:31:17'),(931,2,'organisation-chart','164.100.151.232','2019-12-09 03:31:20'),(932,2,'whos-who','164.100.151.232','2019-12-09 03:31:24'),(933,2,'tender','164.100.151.231','2019-12-09 03:31:47'),(934,2,'contact','164.100.151.232','2019-12-09 03:31:55'),(935,2,'photo-gallery','164.100.151.231','2019-12-09 05:06:51'),(936,2,'photo-gallery','164.100.151.233','2019-12-09 06:26:19'),(937,1,'home','171.61.36.7','2019-12-09 08:07:49'),(938,2,'about-us','171.61.36.7','2019-12-09 08:09:48'),(939,2,'company-register','171.61.36.7','2019-12-09 08:09:55'),(940,2,'organisation-chart','171.61.36.7','2019-12-09 08:09:58'),(941,2,'whos-who','171.61.36.7','2019-12-09 08:10:04'),(942,2,'events','171.61.36.7','2019-12-09 08:10:58'),(943,2,'photo-gallery','171.61.36.7','2019-12-09 08:18:50'),(944,2,'video-gallery','171.61.36.7','2019-12-09 08:18:55'),(945,2,'contact','171.61.36.7','2019-12-09 08:18:58'),(946,1,'home','164.100.151.232','2019-12-10 10:37:38'),(947,2,'whos-who','164.100.151.232','2019-12-10 10:38:32'),(948,2,'events','164.100.151.232','2019-12-10 10:38:37'),(949,2,'contact','164.100.151.232','2019-12-10 10:38:48'),(950,2,'photo-gallery','164.100.151.232','2019-12-10 10:38:56'),(951,2,'about-us','164.100.151.232','2019-12-10 10:39:05'),(952,2,'events','164.100.151.233','2019-12-10 10:40:47'),(953,2,'events','164.100.151.231','2019-12-10 10:45:57'),(954,1,'home','164.100.146.66','2019-12-10 10:46:51'),(955,2,'contact','164.100.146.66','2019-12-10 10:47:13'),(956,2,'feedback','164.100.146.66','2019-12-10 10:49:43'),(957,2,'whos-who','164.100.146.66','2019-12-10 10:49:52'),(958,2,'about-us','164.100.151.233','2019-12-10 11:00:49'),(959,1,'home','27.62.232.178','2019-12-10 11:02:04'),(960,1,'home','164.100.151.231','2019-12-10 11:02:07'),(961,2,'contact','27.62.232.178','2019-12-10 11:04:30'),(962,2,'tender','27.62.232.178','2019-12-10 11:04:58'),(963,2,'company-register','164.100.151.232','2019-12-10 11:05:30'),(964,2,'organisation-chart','164.100.151.232','2019-12-10 11:05:35'),(965,2,'whos-who','164.100.151.233','2019-12-10 11:05:40'),(966,2,'tender','164.100.151.233','2019-12-10 11:05:54'),(967,2,'whos-who','27.62.232.178','2019-12-10 11:06:06'),(968,2,'photo-gallery','164.100.151.233','2019-12-10 11:06:13'),(969,2,'video-gallery','164.100.151.233','2019-12-10 11:06:21'),(970,2,'contact','164.100.151.233','2019-12-10 11:06:24'),(971,2,'contact','164.100.151.231','2019-12-10 11:06:51'),(972,2,'video-gallery','27.62.232.178','2019-12-10 11:07:38'),(973,2,'about-us','27.62.232.178','2019-12-10 11:11:54'),(974,1,'home','52.91.167.153','2019-12-10 11:28:12'),(975,2,'whos-who','164.100.151.231','2019-12-10 11:33:00'),(976,1,'home','27.56.204.25','2019-12-10 11:34:12'),(977,2,'events','27.56.204.25','2019-12-10 11:34:38'),(978,2,'tender','27.56.204.25','2019-12-10 11:47:02'),(979,1,'home','164.100.151.233','2019-12-10 11:48:52'),(980,2,'screen-reader','27.56.204.25','2019-12-10 11:56:10'),(981,2,'piu','164.100.146.66','2019-12-10 12:55:52'),(982,2,'organisation-chart','164.100.146.66','2019-12-10 12:55:59'),(983,2,'board-of-directors','164.100.151.233','2019-12-10 01:14:25'),(984,2,'organisation-chart','164.100.151.233','2019-12-10 01:14:41'),(985,2,'piu','164.100.151.232','2019-12-10 01:15:36'),(986,2,'tender','164.100.151.231','2019-12-10 01:16:31'),(987,2,'photo-gallery','164.100.151.231','2019-12-10 01:16:34'),(988,2,'about-us','164.100.151.231','2019-12-10 01:16:41'),(989,2,'piu','164.100.151.231','2019-12-10 01:20:40'),(990,2,'tender','164.100.151.232','2019-12-10 01:22:15'),(991,2,'disclaimer','27.56.204.25','2019-12-10 01:23:00'),(992,2,'contact','27.56.204.25','2019-12-10 01:23:47'),(993,2,'organisation-chart','164.100.151.231','2019-12-10 01:28:20'),(994,2,'piu','164.100.151.233','2019-12-10 01:28:33'),(995,2,'video-gallery','164.100.151.231','2019-12-10 01:29:19'),(996,2,'important-links','164.100.151.231','2019-12-10 01:30:01'),(997,2,'board-of-directors','164.100.151.231','2019-12-10 01:43:26'),(998,2,'board-of-directors','164.100.151.232','2019-12-10 03:16:19'),(999,2,'video-gallery','164.100.151.232','2019-12-10 05:00:35'),(1000,1,'home','117.228.183.126','2019-12-10 05:33:35'),(1001,1,'home','171.60.128.236','2019-12-10 06:09:09'),(1002,2,'news-details','171.60.128.236','2019-12-10 07:21:39'),(1003,2,'events','171.60.128.236','2019-12-10 07:28:25'),(1004,2,'whos-who','171.60.128.236','2019-12-10 07:37:06'),(1005,2,'tender','171.60.128.236','2019-12-10 07:37:35'),(1006,2,'contact','171.60.128.236','2019-12-10 07:37:42'),(1007,2,'about-us','171.60.128.236','2019-12-10 08:00:29'),(1008,2,'board-of-directors','171.60.128.236','2019-12-10 08:08:19'),(1009,2,'organisation-chart','171.60.128.236','2019-12-10 08:08:25'),(1010,2,'piu','171.60.128.236','2019-12-10 08:08:31'),(1011,1,'home','122.168.165.47','2019-12-11 08:06:58'),(1012,2,'news-details','122.168.165.47','2019-12-11 08:22:17'),(1013,2,'whos-who','122.168.165.47','2019-12-11 08:23:53'),(1014,1,'home','164.100.151.233','2019-12-11 10:33:03'),(1015,1,'home','164.100.151.232','2019-12-11 10:34:38'),(1016,2,'about-us','164.100.151.232','2019-12-11 10:35:46'),(1017,1,'home','66.102.6.223','2019-12-11 10:40:15'),(1018,1,'home','66.102.8.209','2019-12-11 11:31:19'),(1019,2,'board-of-directors','164.100.151.231','2019-12-11 11:31:59'),(1020,2,'whos-who','164.100.151.231','2019-12-11 11:32:06'),(1021,2,'events','164.100.151.231','2019-12-11 11:32:56'),(1022,2,'tender','164.100.151.231','2019-12-11 11:33:00'),(1023,2,'photo-gallery','164.100.151.231','2019-12-11 11:33:16'),(1024,2,'photo-gallery-view','164.100.151.231','2019-12-11 11:33:31'),(1025,2,'video-gallery','164.100.151.231','2019-12-11 11:33:42'),(1026,2,'contact','164.100.151.233','2019-12-11 11:35:03'),(1027,2,'about-us','164.100.151.233','2019-12-11 11:50:49'),(1028,2,'board-of-directors','164.100.151.232','2019-12-11 11:51:28'),(1029,2,'organisation-chart','164.100.151.233','2019-12-11 11:51:37'),(1030,2,'piu','164.100.151.232','2019-12-11 11:51:45'),(1031,2,'whos-who','164.100.151.232','2019-12-11 11:51:55'),(1032,2,'events','164.100.151.233','2019-12-11 11:52:15'),(1033,2,'events','164.100.151.232','2019-12-11 11:52:21'),(1034,2,'contact','164.100.151.231','2019-12-11 11:52:48'),(1035,1,'home','164.100.151.231','2019-12-11 11:54:09'),(1036,2,'about-us','164.100.151.231','2019-12-11 11:54:16'),(1037,2,'board-of-directors','164.100.151.233','2019-12-11 12:43:14'),(1038,2,'piu','164.100.151.233','2019-12-11 12:43:26'),(1039,2,'contact','164.100.151.232','2019-12-11 12:46:10'),(1040,2,'whos-who','164.100.151.233','2019-12-11 12:46:19'),(1041,2,'important-links','164.100.151.231','2019-12-11 05:40:13'),(1042,2,'organisation-chart','164.100.151.232','2019-12-11 05:42:33'),(1043,2,'tender','164.100.151.232','2019-12-11 05:44:00'),(1044,2,'photo-gallery','164.100.151.232','2019-12-11 05:44:25'),(1045,1,'home','164.100.146.66','2019-12-11 07:28:16'),(1046,1,'home','117.228.182.213','2019-12-11 08:36:52'),(1047,1,'home','117.228.208.31','2019-12-12 08:09:29'),(1048,1,'home','164.100.151.232','2019-12-12 11:05:03'),(1049,1,'home','164.100.151.233','2019-12-12 11:05:21'),(1050,2,'whos-who','164.100.151.232','2019-12-12 12:33:31'),(1051,2,'whos-who','52.90.235.182','2019-12-12 12:38:30'),(1052,2,'events','164.100.151.232','2019-12-12 12:39:31'),(1053,2,'events','164.100.151.231','2019-12-12 12:39:42'),(1054,2,'events','164.100.151.233','2019-12-12 12:41:01'),(1055,2,'events','164.100.146.66','2019-12-12 01:09:35'),(1056,1,'home','164.100.146.66','2019-12-12 01:09:38'),(1057,1,'home','49.36.24.250','2019-12-12 02:00:24'),(1058,2,'tender','49.36.24.250','2019-12-12 02:00:54'),(1059,2,'board-of-directors','49.36.24.250','2019-12-12 02:01:32'),(1060,2,'photo-gallery','164.100.151.233','2019-12-12 02:54:24'),(1061,2,'contact','49.36.24.250','2019-12-12 03:10:44'),(1062,1,'home','3.81.69.184','2019-12-12 04:16:05'),(1063,2,'contact','103.113.229.94','2019-12-12 05:59:00'),(1064,2,'photo-gallery','103.113.229.94','2019-12-12 05:59:11'),(1065,2,'video-gallery','103.113.229.94','2019-12-12 05:59:40'),(1066,1,'home','164.100.146.66','2019-12-13 09:22:04'),(1067,1,'home','164.100.151.232','2019-12-13 10:50:12'),(1068,2,'whos-who','164.100.151.232','2019-12-13 10:56:40'),(1069,2,'tender','164.100.151.233','2019-12-13 10:56:47'),(1070,2,'tender','164.100.151.232','2019-12-13 11:02:17'),(1071,2,'tender','164.100.151.231','2019-12-13 11:03:13'),(1072,2,'events','164.100.151.231','2019-12-13 11:03:16'),(1073,2,'events','164.100.151.233','2019-12-13 01:34:07'),(1074,1,'home','164.100.151.233','2019-12-13 01:34:16'),(1075,1,'home','164.100.151.231','2019-12-13 01:38:25'),(1076,2,'news-details','164.100.146.66','2019-12-13 04:34:32'),(1077,2,'events','164.100.151.232','2019-12-13 04:49:54'),(1078,2,'tender','164.100.146.66','2019-12-13 04:51:22'),(1079,2,'whos-who','164.100.151.233','2019-12-13 05:35:01'),(1080,2,'photo-gallery','164.100.151.231','2019-12-13 05:39:54'),(1081,2,'photo-gallery-view','164.100.151.232','2019-12-13 05:40:07'),(1082,1,'home','10.125.239.6','2019-12-16 12:12:07'),(1083,1,'home','164.100.151.232','2019-12-16 11:41:36'),(1084,2,'whos-who','164.100.151.232','2019-12-16 11:42:37'),(1085,2,'events','164.100.151.230','2019-12-16 11:42:48'),(1086,2,'tender','164.100.151.232','2019-12-16 11:42:54'),(1087,2,'tender','164.100.151.230','2019-12-16 11:42:57'),(1088,2,'photo-gallery','164.100.151.230','2019-12-16 11:43:04'),(1089,1,'home','164.100.151.230','2019-12-16 11:43:38'),(1090,2,'whos-who','164.100.151.230','2019-12-16 12:15:11'),(1091,1,'home','164.100.146.66','2019-12-16 02:11:30'),(1092,1,'home','164.100.151.234','2019-12-16 02:50:16'),(1093,1,'home','164.100.151.233','2019-12-16 03:46:37'),(1094,2,'events','49.36.28.218','2019-12-16 04:20:50'),(1095,2,'about-us','49.36.28.218','2019-12-16 04:21:41'),(1096,1,'home','49.36.28.218','2019-12-16 04:21:52'),(1097,2,'whos-who','49.36.28.218','2019-12-16 04:23:06'),(1098,2,'tender','49.36.28.218','2019-12-16 04:23:10'),(1099,2,'photo-gallery','49.36.28.218','2019-12-16 04:23:14'),(1100,2,'contact','49.36.28.218','2019-12-16 04:23:17'),(1101,1,'home','164.100.146.66','2019-12-17 02:47:09'),(1102,2,'tender','164.100.146.66','2019-12-17 02:47:15'),(1103,1,'home','164.100.146.66','2019-12-18 11:08:50'),(1104,1,'home','164.100.151.235','2019-12-18 11:18:54'),(1105,2,'whos-who','164.100.151.233','2019-12-18 11:19:02'),(1106,1,'home','164.100.151.234','2019-12-18 11:57:31'),(1107,2,'photo-gallery','164.100.146.66','2019-12-18 12:25:00'),(1108,2,'whos-who','164.100.146.66','2019-12-18 12:44:09'),(1109,2,'whos-who','164.100.151.235','2019-12-18 01:04:54'),(1110,2,'whos-who','164.100.151.234','2019-12-18 01:05:01'),(1111,1,'home','164.100.146.66','2019-12-19 10:38:59'),(1112,1,'home','164.100.146.66','2019-12-20 01:12:18'),(1113,1,'home','164.100.146.66','2019-12-24 10:37:55'),(1114,2,'events','164.100.146.66','2019-12-24 03:43:21'),(1115,2,'project','164.100.146.66','2019-12-24 06:08:25'),(1116,2,'project-view','164.100.146.66','2019-12-24 06:08:57'),(1117,1,'home','164.100.151.234','2019-12-26 10:25:28'),(1118,1,'home','164.100.151.235','2019-12-26 10:25:49'),(1119,2,'tender','164.100.151.234','2019-12-26 10:25:55'),(1120,2,'events','164.100.151.234','2019-12-26 10:25:58'),(1121,2,'photo-gallery','164.100.151.234','2019-12-26 10:26:02'),(1122,2,'photo-gallery-view','164.100.151.234','2019-12-26 10:26:12'),(1123,2,'video-gallery','164.100.151.234','2019-12-26 10:26:49'),(1124,1,'home','164.100.151.234','2019-12-27 02:14:09'),(1125,1,'home','64.233.172.47','2019-12-27 04:03:30'),(1126,1,'home','164.100.146.66','2019-12-27 04:25:56'),(1127,1,'home','164.100.146.66','2019-12-30 11:55:15'),(1128,2,'events','164.100.146.66','2019-12-30 11:55:18'),(1129,2,'project','164.100.146.66','2019-12-30 11:55:31'),(1130,2,'project-view','164.100.146.66','2019-12-30 11:55:35'),(1131,1,'home','164.100.146.66','2019-12-31 05:51:37'),(1132,2,'whos-who','164.100.146.66','2019-12-31 05:51:41'),(1133,1,'home','164.100.146.66','2020-01-02 10:55:16'),(1134,1,'home','164.100.146.66','2020-01-03 11:11:59'),(1135,1,'home','164.100.146.66','2020-01-04 06:39:28'),(1136,1,'home','164.100.146.66','2020-01-06 10:52:49'),(1137,2,'financereport','164.100.146.66','2020-01-06 06:06:30'),(1138,1,'home','164.100.146.66','2020-01-16 11:50:30'),(1139,1,'home','164.100.146.66','2020-02-10 11:02:13'),(1140,1,'home','164.100.146.66','2020-02-17 11:23:01'),(1141,1,'home','164.100.151.234','2020-02-24 05:03:46'),(1142,2,'events','164.100.151.233','2020-03-02 11:34:43'),(1143,1,'home','164.100.146.66','2020-03-04 03:28:46'),(1144,1,'home','::1','2020-09-08 12:49:42'),(1145,2,'contact','::1','2020-09-08 04:34:19'),(1146,2,'whos-who','::1','2020-09-08 04:35:09'),(1147,2,'about-us','::1','2020-09-08 04:36:59'),(1148,1,'home','::1','2020-09-09 11:15:07'),(1149,2,'board-of-directors','::1','2020-09-09 11:24:47'),(1150,2,'photo-gallery','::1','2020-09-09 11:58:46'),(1151,2,'project','::1','2020-09-09 12:26:20'),(1152,1,'home','::1','2020-09-11 12:08:56'),(1153,2,'privacy-policy','::1','2020-09-11 12:12:08'),(1154,2,'test','::1','2020-09-11 02:24:54'),(1155,1,'home','::1','2020-09-14 12:11:12'),(1156,2,'test','::1','2020-09-14 12:11:17'),(1157,2,'video-gallery','::1','2020-09-14 12:28:33'),(1158,2,'whos-who','::1','2020-09-14 02:03:16'),(1159,2,'tender','::1','2020-09-14 02:31:35'),(1160,2,'administration','::1','2020-09-14 02:31:36'),(1161,2,'feedback','::1','2020-09-14 02:31:37'),(1162,2,'introduction','::1','2020-09-14 02:50:55'),(1163,2,'welcome-home','::1','2020-09-14 02:50:58'),(1164,2,'about-us','::1','2020-09-14 02:52:18'),(1165,2,'contact','::1','2020-09-14 03:02:11'),(1166,2,'project','::1','2020-09-14 03:58:01'),(1167,2,'project-view','::1','2020-09-14 03:58:05'),(1168,1,'home','::1','2020-09-15 11:41:12'),(1169,2,'publication','::1','2020-09-15 11:45:28'),(1170,2,'news-details','::1','2020-09-15 12:24:39'),(1171,2,'feedback','::1','2020-09-15 12:24:41'),(1172,2,'contact','::1','2020-09-15 12:24:45'),(1173,2,'welcome-home','::1','2020-09-15 12:59:40'),(1174,2,'announcement','::1','2020-09-15 03:42:36'),(1175,2,'circular','::1','2020-09-15 03:50:37'),(1176,2,'introduction','::1','2020-09-15 04:33:17'),(1177,2,'visionmission','::1','2020-09-15 04:37:22'),(1178,2,'photo-gallery','::1','2020-09-15 04:42:58'),(1179,2,'administration','::1','2020-09-15 04:43:03'),(1180,1,'home','::1','2020-09-16 12:48:47'),(1181,2,'introduction','::1','2020-09-16 12:51:23'),(1182,2,'history','::1','2020-09-16 12:51:25'),(1183,2,'visionmission','::1','2020-09-16 12:51:26'),(1184,2,'project-view','::1','2020-09-16 04:57:11'),(1185,1,'home','::1','2020-09-17 11:13:41'),(1186,2,'screen-reader','::1','2020-09-17 11:25:46'),(1187,2,'about-us','::1','2020-09-17 11:46:14'),(1188,2,'news-details','::1','2020-09-17 11:49:29'),(1189,2,'feedback','::1','2020-09-17 11:49:31'),(1190,2,'administration','::1','2020-09-17 11:55:57'),(1191,2,'contact','::1','2020-09-17 12:59:28'),(1192,2,'events','::1','2020-09-17 03:18:12'),(1193,2,'project-view','::1','2020-09-17 03:28:15'),(1194,2,'project','::1','2020-09-17 03:28:27'),(1195,1,'home','::1','2020-09-18 11:43:34'),(1196,2,'events','::1','2020-09-18 11:48:13'),(1197,2,'project','::1','2020-09-18 11:48:52'),(1198,2,'circular','::1','2020-09-18 11:50:08'),(1199,2,'publication','::1','2020-09-18 11:50:20'),(1200,2,'introduction','::1','2020-09-18 12:07:23'),(1201,2,'history','::1','2020-09-18 12:13:07'),(1202,2,'visionmission','::1','2020-09-18 12:14:29'),(1203,2,'library','::1','2020-09-18 12:27:30'),(1204,2,'career','::1','2020-09-18 12:36:31'),(1205,2,'contact','::1','2020-09-18 12:38:32'),(1206,2,'contact-us','::1','2020-09-18 12:57:05'),(1207,2,'feedback','::1','2020-09-18 01:18:52'),(1208,2,'news-details','::1','2020-09-18 01:19:15'),(1209,2,'administration','::1','2020-09-18 01:38:24'),(1210,2,'video-gallery','::1','2020-09-18 02:56:06'),(1211,2,'photo-gallery','::1','2020-09-18 03:07:54'),(1212,2,'photo-gallery-view','::1','2020-09-18 03:08:00'),(1213,2,'policy','::1','2020-09-18 03:26:40'),(1214,2,'planning','::1','2020-09-18 03:29:31'),(1215,2,'research','::1','2020-09-18 03:50:37'),(1216,2,'project-view','::1','2020-09-18 03:53:23'),(1217,2,'consultancy','::1','2020-09-18 04:09:46'),(1218,2,'education','::1','2020-09-18 04:15:18'),(1219,2,'climate-change','::1','2020-09-18 04:18:41'),(1220,2,'terms-of-use','::1','2020-09-18 04:31:24'),(1221,2,'privacy-policy','::1','2020-09-18 04:40:23'),(1222,1,'home','::1','2020-09-21 11:10:39'),(1223,2,'publication','::1','2020-09-21 12:01:51'),(1224,2,'project','::1','2020-09-21 12:16:17'),(1225,2,'planning','::1','2020-09-21 12:16:21'),(1226,2,'research','::1','2020-09-21 12:36:00'),(1227,2,'about-us','::1','2020-09-21 12:39:39'),(1228,2,'introduction','::1','2020-09-21 12:39:41'),(1229,2,'video-gallery','::1','2020-09-21 12:39:55'),(1230,2,'photo-gallery','::1','2020-09-21 12:39:57'),(1231,2,'photo-gallery-view','::1','2020-09-21 12:40:02'),(1232,2,'education','::1','2020-09-21 04:01:18'),(1233,2,'feedback','::1','2020-09-21 04:32:37'),(1234,2,'contact-us','::1','2020-09-21 04:32:40'),(1235,2,'career','::1','2020-09-21 04:32:40'),(1236,2,'news-details','::1','2020-09-21 04:32:46'),(1237,2,'circular','::1','2020-09-21 05:14:36'),(1238,1,'home','::1','2020-09-22 11:16:22'),(1239,2,'circular','::1','2020-09-22 11:22:13'),(1240,2,'news-details','::1','2020-09-22 11:22:25'),(1241,2,'introduction','::1','2020-09-22 11:24:04'),(1242,2,'history','::1','2020-09-22 11:24:06'),(1243,2,'visionmission','::1','2020-09-22 11:24:07'),(1244,2,'library','::1','2020-09-22 11:26:46'),(1245,2,'publication','::1','2020-09-22 11:26:48'),(1246,2,'video-gallery','::1','2020-09-22 11:26:52'),(1247,2,'photo-gallery','::1','2020-09-22 11:26:54'),(1248,2,'contact-us','::1','2020-09-22 11:27:02'),(1249,2,'career','::1','2020-09-22 11:27:04'),(1250,2,'feedback','::1','2020-09-22 11:41:52'),(1251,2,'screen-reader','::1','2020-09-22 11:47:48'),(1252,2,'project','::1','2020-09-22 11:52:04'),(1253,2,'project-view','::1','2020-09-22 11:52:06'),(1254,2,'photo-gallery-view','::1','2020-09-22 12:15:56'),(1255,2,'policy','::1','2020-09-22 01:42:47'),(1256,2,'events','::1','2020-09-22 01:44:10'),(1257,2,'education','::1','2020-09-22 01:49:01'),(1258,2,'about-us','::1','2020-09-22 02:38:46'),(1259,1,'home','::1','2020-09-23 11:08:19'),(1260,2,'history','::1','2020-09-23 11:12:39'),(1261,2,'visionmission','::1','2020-09-23 11:12:41'),(1262,2,'introduction','::1','2020-09-23 11:12:44'),(1263,2,'policy','::1','2020-09-23 01:05:19'),(1264,2,'project','::1','2020-09-23 01:22:59'),(1265,2,'news-details','::1','2020-09-23 02:44:06'),(1266,2,'green-building','::1','2020-09-23 03:58:29'),(1267,2,'announcement','::1','2020-09-23 03:58:31'),(1268,2,'planning','::1','2020-09-23 04:02:00'),(1269,2,'education','::1','2020-09-23 04:02:01'),(1270,2,'climate-change','::1','2020-09-23 04:02:02'),(1271,2,'research','::1','2020-09-23 04:02:03'),(1272,2,'consultancy','::1','2020-09-23 04:02:03'),(1273,2,'publication','::1','2020-09-23 04:02:20'),(1274,2,'video-gallery','::1','2020-09-23 04:02:26'),(1275,2,'photo-gallery','::1','2020-09-23 04:02:28'),(1276,2,'feedback','::1','2020-09-23 04:03:08'),(1277,2,'career','::1','2020-09-23 04:03:11'),(1278,2,'administration','::1','2020-09-23 04:03:17'),(1279,2,'about-us','::1','2020-09-23 04:17:43'),(1280,2,'project-view','::1','2020-09-23 04:35:32'),(1281,2,'contact-us','::1','2020-09-23 04:37:31'),(1282,2,'environmental-policy','::1','2020-09-23 05:15:08'),(1283,2,'about-neac','::1','2020-09-23 05:15:08'),(1284,2,'circular','::1','2020-09-23 05:32:17'),(1285,1,'home','::1','2020-09-24 11:08:17'),(1286,2,'planning','::1','2020-09-24 11:16:23'),(1287,2,'introduction','::1','2020-09-24 11:16:32'),(1288,2,'about-us','::1','2020-09-24 11:16:33'),(1289,2,'publication','::1','2020-09-24 11:16:36'),(1290,2,'photo-gallery','::1','2020-09-24 11:16:37'),(1291,2,'news-details','::1','2020-09-24 11:16:39'),(1292,2,'project','::1','2020-09-24 11:16:43'),(1293,2,'project-view','::1','2020-09-24 11:16:47'),(1294,2,'circular','::1','2020-09-24 11:45:08'),(1295,2,'contact-us','::1','2020-09-24 11:45:09'),(1296,2,'career','::1','2020-09-24 11:45:09'),(1297,2,'screen-reader','::1','2020-09-24 11:45:44'),(1298,2,'history','::1','2020-09-24 11:46:09'),(1299,2,'feedback','::1','2020-09-24 11:46:15'),(1300,2,'visionmission','::1','2020-09-24 11:54:17'),(1301,2,'photo-gallery-view','::1','2020-09-24 12:07:06'),(1302,2,'policy','::1','2020-09-24 12:10:47'),(1303,2,'environmental-policy','::1','2020-09-24 12:10:55'),(1304,2,'about-neac','::1','2020-09-24 12:10:56'),(1305,2,'general-awareness-campaign','::1','2020-09-24 12:10:57'),(1306,2,'pachmarhi-biosphere-reservecamp','::1','2020-09-24 12:10:57'),(1307,2,'important-environmental-days','::1','2020-09-24 12:11:52'),(1308,2,'training-awareness-programmes','::1','2020-09-24 12:22:05'),(1309,2,'library','::1','2020-09-24 12:23:42'),(1310,2,'fellowship-awards','::1','2020-09-24 12:35:58'),(1311,2,'video-gallery','::1','2020-09-24 12:49:30'),(1312,2,'research','::1','2020-09-24 12:52:17'),(1313,2,'achanakmar-amarkantak-bio-reserves','::1','2020-09-24 12:52:22'),(1314,2,'conservation-management-of-water-bodies','::1','2020-09-24 12:52:23'),(1315,2,'biosphere-reserves','::1','2020-09-24 12:52:23'),(1316,2,'management-aspects','::1','2020-09-24 12:52:24'),(1317,2,'pachmarhi-bio-reserves','::1','2020-09-24 12:52:24'),(1318,2,'panna-bio-reserves','::1','2020-09-24 12:52:25'),(1319,1,'home','::1','2020-09-25 10:52:36'),(1320,2,'project','::1','2020-09-25 11:15:40'),(1321,2,'policy','::1','2020-09-25 11:32:02'),(1322,2,'circular','::1','2020-09-25 11:36:23'),(1323,2,'history','::1','2020-09-25 11:38:12'),(1324,2,'contact-us','::1','2020-09-25 11:39:17'),(1325,2,'career','::1','2020-09-25 11:39:27'),(1326,2,'news-details','::1','2020-09-25 11:39:33'),(1327,2,'visionmission','::1','2020-09-25 11:39:39'),(1328,2,'introduction','::1','2020-09-25 11:39:40'),(1329,2,'environmental-research-laboratory','::1','2020-09-25 11:40:36'),(1330,2,'photo-gallery','::1','2020-09-25 11:40:52'),(1331,2,'green-building','::1','2020-09-25 11:41:36'),(1332,2,'project-management-consultancy','::1','2020-09-25 11:43:54'),(1333,2,'projects-outcomes','::1','2020-09-25 11:46:22'),(1334,2,'privacy-policy','::1','2020-09-25 11:53:07'),(1335,2,'planning','::1','2020-09-25 12:02:26'),(1336,2,'education','::1','2020-09-25 12:02:40'),(1337,2,'about-neac','::1','2020-09-25 12:02:55'),(1338,2,'important-environmental-days','::1','2020-09-25 12:02:55'),(1339,2,'environmental-policy','::1','2020-09-25 12:02:56'),(1340,2,'library','::1','2020-09-25 12:10:03'),(1341,2,'about-us','::1','2020-09-25 12:15:23'),(1342,2,'administration','::1','2020-09-25 12:15:28'),(1343,2,'publication','::1','2020-09-25 12:16:28'),(1344,2,'video-gallery','::1','2020-09-25 12:17:22'),(1345,2,'achanakmar-amarkantak-bio-reserves','::1','2020-09-25 12:21:29'),(1346,2,'general-awareness-campaign','::1','2020-09-25 12:29:44'),(1347,2,'feedback','::1','2020-09-25 01:16:59'),(1348,2,'project-view','::1','2020-09-25 02:07:53'),(1349,2,'hyperlink-policy','::1','2020-09-25 02:09:42'),(1350,2,'training-awareness-programmes','::1','2020-09-25 02:16:13'),(1351,2,'fellowship-awards','::1','2020-09-25 02:16:41'),(1352,2,'national-green-corps','::1','2020-09-25 02:16:42'),(1353,2,'climate-change','::1','2020-09-25 02:16:51'),(1354,2,'consultancy','::1','2020-09-25 02:17:14'),(1355,2,'consultants-architectural','::1','2020-09-25 02:43:54'),(1356,2,'services','::1','2020-09-25 02:43:55'),(1357,2,'photo-gallery-view','::1','2020-09-25 02:47:16'),(1358,2,'terms-of-use','::1','2020-09-25 02:50:45'),(1359,2,'sitemap','::1','2020-09-25 02:50:50'),(1360,2,'conservation-management-of-water-bodies','::1','2020-09-25 04:03:19'),(1361,2,'pachmarhi-biosphere-reservecamp','::1','2020-09-25 04:05:22'),(1362,2,'biosphere-reserves','::1','2020-09-25 04:06:04'),(1363,2,'management-aspects','::1','2020-09-25 04:06:05'),(1364,2,'panna-bio-reserves','::1','2020-09-25 04:06:05'),(1365,2,'research','::1','2020-09-25 04:06:49'),(1366,2,'ongoing-projects','::1','2020-09-25 05:06:10'),(1367,2,'architectural','::1','2020-09-25 05:06:11'),(1368,2,'special-consultancy-assign-simhasta-2004','::1','2020-09-25 05:06:12'),(1369,2,'eco-city','::1','2020-09-25 05:06:14'),(1370,2,'national-lake-conservation-project-nlcp','::1','2020-09-25 05:09:14'),(1371,2,'department-for-international-development-dfid','::1','2020-09-25 05:14:57'),(1372,2,'district-poverty-initiatives-project-sponsored-by-','::1','2020-09-25 05:14:58'),(1373,1,'home','::1','2020-09-26 11:05:55'),(1374,2,'career','::1','2020-09-26 11:06:51'),(1375,2,'contact-us','::1','2020-09-26 11:23:13'),(1376,2,'administration','::1','2020-09-26 11:24:18'),(1377,2,'about-us','::1','2020-09-26 11:24:54'),(1378,2,'history','::1','2020-09-26 11:24:57'),(1379,2,'services','::1','2020-09-26 11:29:56'),(1380,2,'department-for-international-development-dfid','::1','2020-09-26 11:29:59'),(1381,2,'district-poverty-initiatives-project-sponsored-by-','::1','2020-09-26 11:29:59'),(1382,2,'ongoing-projects','::1','2020-09-26 11:30:02'),(1383,2,'environmental-research-laboratory','::1','2020-09-26 11:30:18'),(1384,2,'biosphere-reserves','::1','2020-09-26 11:30:20'),(1385,2,'architectural','::1','2020-09-26 11:30:21'),(1386,2,'national-lake-conservation-project-nlcp','::1','2020-09-26 11:30:21'),(1387,2,'district-poverty-initiatives-project-sponsored-by-','::1','2020-09-26 11:30:23'),(1388,2,'project','::1','2020-09-26 11:30:26'),(1389,2,'circular','::1','2020-09-26 11:58:48'),(1390,2,'consultancy','::1','2020-09-26 12:04:02'),(1391,2,'library','::1','2020-09-26 12:07:16'),(1392,2,'publication','::1','2020-09-26 12:07:20'),(1393,2,'photo-gallery','::1','2020-09-26 12:07:23'),(1394,2,'news-details','::1','2020-09-26 12:07:25'),(1395,2,'introduction','::1','2020-09-26 12:11:26'),(1396,2,'visionmission','::1','2020-09-26 12:23:20'),(1397,2,'feedback','::1','2020-09-26 03:27:50'),(1398,2,'whos-who','::1','2020-09-26 04:00:47'),(1399,1,'home','::1','2020-09-28 11:14:19'),(1400,2,'policy','::1','2020-09-28 01:02:43'),(1401,2,'consultants-architectural','::1','2020-09-28 01:02:46'),(1402,2,'services','::1','2020-09-28 01:02:52'),(1403,2,'pachmarhi-biosphere-reservecamp','::1','2020-09-28 01:05:29'),(1404,2,'feedback','::1','2020-09-28 01:07:26'),(1405,2,'national-green-corps','::1','2020-09-28 01:10:12'),(1406,2,'district-poverty-initiatives-project-sponsored-by-','::1','2020-09-28 01:10:15'),(1407,2,'department-for-international-development-dfid','::1','2020-09-28 01:10:16'),(1408,1,'home','::1','2020-09-30 11:30:34'),(1409,2,'circular','::1','2020-09-30 04:03:52'),(1410,2,'about-us','::1','2020-09-30 04:03:55'),(1411,2,'whos-who','::1','2020-09-30 04:03:58'),(1412,2,'introduction','::1','2020-09-30 04:04:10'),(1413,2,'feedback','::1','2020-09-30 04:04:20'),(1414,2,'library','::1','2020-09-30 04:13:41'),(1415,2,'project','::1','2020-09-30 05:01:04'),(1416,2,'consultancy','::1','2020-09-30 05:11:51'),(1417,2,'history','::1','2020-09-30 05:20:07'),(1418,2,'services','::1','2020-09-30 05:20:20'),(1419,2,'consultants-architectural','::1','2020-09-30 05:20:21'),(1420,2,'visionmission','::1','2020-09-30 05:20:35'),(1421,2,'administration','::1','2020-09-30 05:20:40'),(1422,2,'conservation-management-of-water-bodies','::1','2020-09-30 05:21:01'),(1423,1,'home','::1','2020-10-01 10:57:22'),(1424,2,'introduction','::1','2020-10-01 10:57:26'),(1425,2,'project','::1','2020-10-01 10:57:32'),(1426,2,'conservation-management-of-water-bodies','::1','2020-10-01 10:57:36'),(1427,2,'about-us','::1','2020-10-01 11:16:54'),(1428,2,'history','::1','2020-10-01 11:16:59'),(1429,2,'visionmission','::1','2020-10-01 11:17:02'),(1430,2,'whos-who','::1','2020-10-01 11:17:04'),(1431,2,'library','::1','2020-10-01 11:22:04'),(1432,2,'publication','::1','2020-10-01 11:22:12'),(1433,2,'video-gallery','::1','2020-10-01 11:25:43'),(1434,2,'photo-gallery','::1','2020-10-01 11:29:46'),(1435,2,'photo-gallery-view','::1','2020-10-01 11:33:56'),(1436,2,'project-management-consultancy','::1','2020-10-01 11:40:57'),(1437,2,'news-details','::1','2020-10-01 11:41:04'),(1438,2,'feedback','::1','2020-10-01 11:50:43'),(1439,2,'circular','::1','2020-10-01 12:13:10'),(1440,2,'contact-us','::1','2020-10-01 12:20:34'),(1441,2,'career','::1','2020-10-01 12:31:19'),(1442,2,'consultants-architectural','::1','2020-10-01 12:33:05'),(1443,2,'services','::1','2020-10-01 12:33:06'),(1444,2,'project-view','::1','2020-10-01 12:36:43'),(1445,2,'training-awareness-programmes','::1','2020-10-01 12:51:07'),(1446,2,'consultancy','::1','2020-10-01 12:51:11'),(1447,2,'fellowship-awards','::1','2020-10-01 12:51:21'),(1448,2,'terms-of-use','::1','2020-10-01 12:51:26'),(1449,2,'planning','::1','2020-10-01 12:53:22'),(1450,2,'sitemap','::1','2020-10-01 12:53:47'),(1451,2,'administration','::1','2020-10-01 02:35:33'),(1452,2,'policy','::1','2020-10-01 03:25:40'),(1453,2,'national-green-corps','::1','2020-10-01 03:50:52'),(1454,2,'about-neac','::1','2020-10-01 03:53:42'),(1455,2,'management-aspects','::1','2020-10-01 04:04:42'),(1456,2,'international','::1','2020-10-01 04:08:45'),(1457,2,'ongoing-projects','::1','2020-10-01 04:09:07'),(1458,2,'events','::1','2020-10-01 04:11:04'),(1459,2,'testimonial','::1','2020-10-01 04:20:12'),(1460,1,'home','::1','2020-10-03 11:46:01'),(1461,2,'testimonial','::1','2020-10-03 11:52:07'),(1462,2,'project','::1','2020-10-03 11:52:11'),(1463,2,'project-view','::1','2020-10-03 11:52:13'),(1464,2,'conservation-management-of-water-bodies','::1','2020-10-03 11:52:25'),(1465,2,'biosphere-reserves','::1','2020-10-03 11:52:28'),(1466,2,'photo-gallery-view','::1','2020-10-03 12:05:01'),(1467,2,'important-environmental-days','::1','2020-10-03 12:05:25'),(1468,2,'national-green-corps','::1','2020-10-03 12:05:35'),(1469,2,'fellowship-awards','::1','2020-10-03 12:05:36'),(1470,2,'environmental-research-laboratory','::1','2020-10-03 12:05:42'),(1471,2,'services','::1','2020-10-03 12:05:56'),(1472,2,'circular','::1','2020-10-03 12:09:14'),(1473,2,'career','::1','2020-10-03 12:09:17'),(1474,2,'history','::1','2020-10-03 12:09:18'),(1475,2,'administration','::1','2020-10-03 12:09:19'),(1476,2,'whos-who','::1','2020-10-03 12:09:21'),(1477,2,'general-awareness-campaign','::1','2020-10-03 12:09:29'),(1478,2,'publication','::1','2020-10-03 12:09:51'),(1479,2,'international','::1','2020-10-03 12:09:59'),(1480,2,'special-consultancy-assign-simhasta-2004','::1','2020-10-03 12:11:10'),(1481,2,'contact-us','::1','2020-10-03 12:11:23'),(1482,2,'feedback','::1','2020-10-03 12:11:26'),(1483,2,'news-details','::1','2020-10-03 12:11:27'),(1484,2,'research','::1','2020-10-03 12:19:48'),(1485,2,'consultancy','::1','2020-10-03 12:19:53'),(1486,2,'policy','::1','2020-10-03 12:20:01'),(1487,2,'planning','::1','2020-10-03 12:20:03'),(1488,2,'education','::1','2020-10-03 12:20:05'),(1489,2,'library','::1','2020-10-03 12:28:33'),(1490,2,'introduction','::1','2020-10-03 12:28:34'),(1491,2,'visionmission','::1','2020-10-03 12:28:37'),(1492,2,'photo-gallery','::1','2020-10-03 12:28:40'),(1493,2,'video-gallery','::1','2020-10-03 12:28:43'),(1494,2,'eco-city','::1','2020-10-03 12:30:04'),(1495,2,'ongoing-projects','::1','2020-10-03 12:30:05'),(1496,2,'training-awareness-programmes','::1','2020-10-03 12:47:13'),(1497,2,'about-neac','::1','2020-10-03 12:52:56'),(1498,2,'pachmarhi-bio-reserves','::1','2020-10-03 01:13:59'),(1499,2,'about-us','::1','2020-10-03 01:26:21'),(1500,2,'environmental-policy','::1','2020-10-03 01:42:41'),(1501,2,'pachmarhi-biosphere-reservecamp','::1','2020-10-03 01:42:43'),(1502,2,'hyperlink-policy','::1','2020-10-03 01:59:23'),(1503,2,'sitemap','::1','2020-10-03 01:59:31'),(1504,2,'events','::1','2020-10-03 02:08:37'),(1505,2,'national-lake-conservation-project-nlcp','::1','2020-10-03 02:17:06'),(1506,1,'home','::1','2020-10-09 05:16:48'),(1507,1,'home','::1','2020-11-03 11:59:58'),(1508,2,'contact-us','::1','2020-11-03 12:56:36'),(1509,1,'home','::1','2021-01-06 01:02:59'),(1510,1,'home','::1','2021-01-07 02:57:51'),(1511,2,'project','::1','2021-01-07 04:41:28'),(1512,2,'project-view','::1','2021-01-07 04:42:03'),(1513,2,'events','::1','2021-01-07 04:47:25'),(1514,2,'photo-gallery','::1','2021-01-07 05:21:47'),(1515,2,'photo-gallery-view','::1','2021-01-07 05:21:48'),(1516,2,'project','::1','2021-01-08 11:03:55'),(1517,1,'home','::1','2021-01-08 11:56:18'),(1518,2,'events','::1','2021-01-08 12:41:42'),(1519,2,'news-details','::1','2021-01-08 12:53:14'),(1520,2,'about-us','::1','2021-01-08 12:55:41'),(1521,2,'photo-gallery','::1','2021-01-08 01:03:55'),(1522,2,'photo-gallery-view','::1','2021-01-08 01:03:56'),(1523,2,'project-view','::1','2021-01-08 01:08:06'),(1524,1,'home','::1','2021-01-15 11:57:43'),(1525,1,'home','::1','2021-01-23 04:26:58'),(1526,1,'home','::1','2021-01-25 11:07:38'),(1527,2,'events','::1','2021-01-25 11:26:22'),(1528,2,'news-details','::1','2021-01-25 12:00:06'),(1529,2,'project','::1','2021-01-25 12:10:17'),(1530,2,'project-view','::1','2021-01-25 12:11:45'),(1531,2,'policy','::1','2021-01-25 02:49:26'),(1532,2,'introduction','::1','2021-01-25 03:07:02'),(1533,2,'history','::1','2021-01-25 03:07:05'),(1534,2,'visionmission','::1','2021-01-25 03:07:07'),(1535,2,'circular','::1','2021-01-25 03:12:17'),(1536,2,'policy','::1','2021-01-27 12:58:50'),(1537,2,'project','::1','2021-01-27 12:58:52'),(1538,1,'home','::1','2021-01-27 12:58:55'),(1539,2,'project-view','::1','2021-01-27 12:59:01'),(1540,2,'about-us','::1','2021-01-27 12:59:23'),(1541,2,'biosphere-reserves','::1','2021-01-27 12:59:27'),(1542,2,'publication','::1','2021-01-27 12:59:40'),(1543,1,'home','::1','2021-01-29 01:12:42'),(1544,1,'home','::1','2021-02-02 11:20:05'),(1545,2,'publication','::1','2021-02-02 11:20:08'),(1546,2,'policy','::1','2021-02-02 12:48:01'),(1547,2,'project','::1','2021-02-02 12:48:03'),(1548,2,'international','::1','2021-02-02 12:48:07'),(1549,2,'department-for-international-development-dfid','::1','2021-02-02 12:48:15'),(1550,2,'project-view','::1','2021-02-02 12:48:29'),(1551,1,'home','::1','2021-02-18 05:12:45'),(1552,1,'home','::1','2021-02-24 02:56:48'),(1553,1,'home','::1','2021-02-26 03:48:04'),(1554,2,'planning','::1','2021-02-26 03:51:16'),(1555,2,'project','::1','2021-02-26 03:51:31'),(1556,2,'policy','::1','2021-02-26 03:51:32'),(1557,2,'about-us','::1','2021-02-26 03:51:33'),(1558,2,'education','::1','2021-02-26 03:58:33'),(1559,1,'home','::1','2021-03-01 03:42:02'),(1560,2,'education','::1','2021-03-01 03:42:06'),(1561,2,'planning','::1','2021-03-01 05:08:16'),(1562,1,'home','::1','2021-03-02 04:21:55'),(1563,2,'education','::1','2021-03-02 04:21:59'),(1564,2,'training-awareness-programmes','::1','2021-03-02 04:22:01'),(1565,2,'about-neac','::1','2021-03-02 04:22:11'),(1566,2,'national-green-corps','::1','2021-03-02 04:22:22'),(1567,2,'fellowship-awards','::1','2021-03-02 04:23:17'),(1568,2,'project','::1','2021-03-02 04:24:34'),(1569,2,'planning','::1','2021-03-02 04:24:35'),(1570,2,'international','::1','2021-03-02 04:24:39'),(1571,2,'project-management-consultancy','::1','2021-03-02 04:25:28'),(1572,2,'important-environmental-days','::1','2021-03-02 04:26:13'),(1573,2,'general-awareness-campaign','::1','2021-03-02 04:26:14'),(1574,2,'environmental-policy','::1','2021-03-02 04:26:15'),(1575,2,'about-neac','::1','2021-03-03 11:00:42'),(1576,2,'environmental-policy','::1','2021-03-03 11:00:45'),(1577,1,'home','::1','2021-03-03 11:33:10'),(1578,2,'education','::1','2021-03-03 11:46:33'),(1579,2,'research','::1','2021-03-03 11:49:38'),(1580,2,'conservation-management-of-water-bodies','::1','2021-03-03 11:49:42'),(1581,2,'biosphere-reserves','::1','2021-03-03 11:50:18'),(1582,2,'panna-bio-reserves','::1','2021-03-03 11:50:50'),(1583,2,'management-aspects','::1','2021-03-03 11:51:36'),(1584,2,'photo-gallery-view','::1','2021-03-03 11:51:40'),(1585,2,'fellowship-awards','::1','2021-03-03 11:51:47'),(1586,1,'home','::1','2021-03-04 11:59:02'),(1587,2,'whos-who','::1','2021-03-04 11:59:36'),(1588,2,'project','::1','2021-03-04 12:42:18'),(1589,2,'policy','::1','2021-03-04 12:42:18'),(1590,2,'planning','::1','2021-03-04 12:42:20'),(1591,2,'about-us','::1','2021-03-04 12:42:23'),(1592,2,'publication','::1','2021-03-04 12:42:25'),(1593,2,'video-gallery','::1','2021-03-04 12:42:31'),(1594,2,'news-details','::1','2021-03-04 12:42:33'),(1595,2,'circular','::1','2021-03-04 12:42:34'),(1596,2,'feedback','::1','2021-03-04 12:42:35'),(1597,2,'introduction','::1','2021-03-04 12:42:40'),(1598,2,'library','::1','2021-03-04 12:42:43'),(1599,2,'contact-us','::1','2021-03-04 12:43:02'),(1600,2,'photo-gallery','::1','2021-03-04 12:45:24'),(1601,1,'home','::1','2021-03-23 02:15:49'),(1602,2,'contact-us','::1','2021-03-23 02:50:50'),(1603,2,'feedback','::1','2021-03-23 02:51:19'),(1604,2,'history','::1','2021-03-23 02:51:41'),(1605,2,'terms-of-use','::1','2021-03-23 02:53:05'),(1606,2,'sitemap','::1','2021-03-23 02:53:17'),(1607,2,'hyperlink-policy','::1','2021-03-23 02:53:30'),(1608,2,'department-for-international-development-dfid','::1','2021-03-23 02:53:43'),(1609,1,'home','::1','2021-03-24 11:38:19'),(1610,2,'feedback','::1','2021-03-24 12:34:22'),(1611,2,'circular','::1','2021-03-24 01:17:59'),(1612,2,'about-us','::1','2021-03-24 01:18:08'),(1613,2,'video-gallery','::1','2021-03-24 03:19:21'),(1614,2,'news-details','::1','2021-03-24 03:19:25'),(1615,2,'publication','::1','2021-03-24 03:19:36'),(1616,2,'project','::1','2021-03-24 03:19:53'),(1617,2,'project-view','::1','2021-03-24 03:19:55'),(1618,2,'library','::1','2021-03-24 03:20:39'),(1619,2,'terms-of-use','::1','2021-03-24 03:22:04'),(1620,2,'privacy-policy','::1','2021-03-24 03:22:07'),(1621,2,'search','::1','2021-03-24 03:22:54'),(1622,2,'contact-us','::1','2021-03-24 04:39:48'),(1623,2,'events','::1','2021-03-25 01:43:56'),(1624,1,'home','::1','2021-03-25 01:44:00'),(1625,2,'feedback','::1','2021-03-26 04:29:29'),(1626,1,'home','::1','2021-03-26 04:29:33'),(1627,2,'register','::1','2021-03-26 04:32:42'),(1628,2,'register','::1','2021-03-27 05:25:34'),(1629,1,'home','::1','2021-03-30 12:18:29'),(1630,2,'register','::1','2021-03-30 12:18:32'),(1631,2,'login','::1','2021-03-30 12:24:55'),(1632,2,'contact-us','::1','2021-03-30 12:46:33'),(1633,2,'register','::1','2021-03-31 11:55:41'),(1634,2,'register','::1','2021-04-01 11:34:18'),(1635,1,'home','::1','2021-04-05 12:07:26'),(1636,2,'register','::1','2021-04-05 12:07:34'),(1637,2,'login','::1','2021-04-05 12:44:05'),(1638,2,'register','::1','2021-04-06 11:11:59'),(1639,2,'login','::1','2021-04-06 11:15:29'),(1640,1,'home','::1','2021-04-06 03:44:03'),(1641,1,'home','::1','2021-04-07 11:23:57'),(1642,2,'register','::1','2021-04-07 11:24:00'),(1643,2,'login','::1','2021-04-07 11:24:02'),(1644,2,'user','::1','2021-04-07 01:45:18'),(1645,2,'registerview','::1','2021-04-07 05:54:29'),(1646,2,'register','::1','2021-04-08 11:05:19'),(1647,2,'login','::1','2021-04-08 11:05:21'),(1648,2,'registerview','::1','2021-04-08 11:22:41'),(1649,2,'about-us','::1','2021-04-08 04:08:01'),(1650,1,'home','::1','2021-04-08 04:16:12'),(1651,2,'user','::1','2021-04-08 04:29:56'),(1652,2,'contact-us','::1','2021-04-08 04:42:18'),(1653,2,'career','::1','2021-04-08 05:02:59'),(1654,2,'register','::1','2021-04-09 10:43:40'),(1655,2,'login','::1','2021-04-09 10:46:46'),(1656,1,'home','::1','2021-04-09 11:39:30'),(1657,2,'registerview','::1','2021-04-09 11:47:06'),(1658,2,'planning','::1','2021-04-09 01:34:47'),(1659,2,'education','::1','2021-04-09 02:04:13'),(1660,1,'home','::1','2021-04-12 03:39:09'),(1661,2,'register','::1','2021-04-12 04:41:20'),(1662,2,'login','::1','2021-04-12 04:41:52'),(1663,1,'home','::1','2021-04-15 10:18:57'),(1664,2,'register','::1','2021-04-15 10:21:41'),(1665,2,'login','::1','2021-04-15 10:22:10'),(1666,2,'register','::1','2021-04-16 11:12:08'),(1667,1,'home','::1','2021-04-20 04:40:37'),(1668,2,'login','::1','2021-04-20 04:40:42'),(1669,2,'register','::1','2021-04-20 04:44:02'),(1670,2,'registerview','::1','2021-04-20 05:50:50'),(1671,1,'home','::1','2021-04-22 12:20:55'),(1672,2,'registerview','::1','2021-04-22 12:26:58'),(1673,2,'login','::1','2021-04-22 12:27:11'),(1674,2,'register','::1','2021-04-27 12:41:17'),(1675,2,'intern','::1','2021-04-27 03:15:04'),(1676,2,'login','::1','2021-04-27 03:16:57'),(1677,2,'registerview','::1','2021-04-27 03:16:58'),(1678,2,'privacy-policy','::1','2021-04-27 05:34:54'),(1679,2,'feedback','::1','2021-04-27 05:35:11'),(1680,2,'intern','::1','2021-04-28 11:23:03'),(1681,1,'home','::1','2021-04-29 03:06:43'),(1682,2,'intern','::1','2021-04-29 03:37:25'),(1683,2,'intern','::1','2021-04-30 01:56:49'),(1684,2,'intern','::1','2021-05-03 11:42:07'),(1685,2,'intern','::1','2021-05-04 01:48:16'),(1686,1,'home','::1','2021-05-19 04:40:02'),(1687,1,'home','::1','2021-05-20 03:30:24'),(1688,1,'home','::1','2021-05-21 03:21:57'),(1689,2,'intern','::1','2021-05-21 03:24:42'),(1690,2,'ProjectMonitoring','::1','2021-05-21 04:46:24'),(1691,2,'ProjectMonitoring','::1','2021-05-24 11:02:21'),(1692,2,'intern','::1','2021-05-24 11:21:36'),(1693,1,'home','::1','2021-05-24 06:16:05'),(1694,2,'intern','::1','2021-05-25 11:02:00'),(1695,2,'hyperlink-policy','::1','2021-05-25 05:43:40'),(1696,2,'intern','::1','2021-05-27 10:12:50'),(1697,1,'home','::1','2021-05-28 11:48:11'),(1698,2,'intern','::1','2021-05-28 11:48:25'),(1699,2,'empanelment-consultancy','::1','2021-05-28 03:13:56'),(1700,1,'home','::1','2021-06-01 03:39:04'),(1701,2,'empanelment-consultancy','::1','2021-06-01 03:39:16'),(1702,2,'register','::1','2021-06-01 06:22:45'),(1703,2,'login','::1','2021-06-01 06:23:31'),(1704,2,'registerview','::1','2021-06-01 06:27:08'),(1705,1,'home','::1','2021-06-02 11:45:33'),(1706,2,'register','::1','2021-06-02 11:45:39'),(1707,2,'login','::1','2021-06-02 11:46:17'),(1708,2,'registerview','::1','2021-06-02 12:08:53'),(1709,1,'home','::1','2021-06-03 03:22:49'),(1710,2,'register','::1','2021-06-03 03:22:54'),(1711,2,'login','::1','2021-06-03 03:23:23'),(1712,2,'registerview','::1','2021-06-03 03:25:10'),(1713,2,'registerview','::1','2021-06-04 10:09:58'),(1714,2,'register','::1','2021-06-04 10:10:01'),(1715,2,'login','::1','2021-06-04 04:46:34'),(1716,1,'home','::1','2021-06-07 10:33:12'),(1717,2,'register','::1','2021-06-07 12:13:26'),(1718,2,'login','::1','2021-06-07 12:14:06'),(1719,1,'home','::1','2021-06-14 11:33:24'),(1720,2,'register','::1','2021-06-14 11:53:09'),(1721,2,'news-details','::1','2021-06-14 11:56:55'),(1722,1,'home','::1','2021-06-25 02:34:57'),(1723,1,'home','::1','2021-06-30 05:29:22'),(1724,2,'career','::1','2021-06-30 05:29:53'),(1725,1,'home','::1','2021-07-16 03:55:16'),(1726,2,'register','::1','2021-07-16 03:55:18'),(1727,2,'login','::1','2021-07-16 04:52:43'),(1728,2,'circular','::1','2021-07-16 04:53:49'),(1729,2,'feedback','::1','2021-07-16 04:53:50'),(1730,2,'empanelment-consultancy','::1','2021-07-16 05:03:26'),(1731,1,'home','::1','2021-07-19 10:23:36'),(1732,2,'register','::1','2021-07-19 10:50:17'),(1733,2,'empanelment-consultancy','::1','2021-07-19 01:10:18'),(1734,2,'login','::1','2021-07-19 03:57:25'),(1735,1,'home','::1','2021-07-22 10:58:22'),(1736,2,'register','::1','2021-07-22 11:02:39'),(1737,2,'empanelment-consultancy','::1','2021-07-22 11:20:40'),(1738,2,'login','::1','2021-07-22 11:20:40'),(1739,1,'home','::1','2021-07-27 11:18:19'),(1740,2,'feedback','::1','2021-07-27 11:18:30'),(1741,2,'register','::1','2021-07-27 11:38:44'),(1742,2,'login','::1','2021-07-27 11:38:47'),(1743,2,'empanelment-consultancy','::1','2021-07-27 11:43:02'),(1744,2,'contact-us','::1','2021-07-27 02:02:56'),(1745,2,'career','::1','2021-07-27 04:01:21'),(1746,2,'circular','::1','2021-07-27 04:54:20'),(1747,1,'home','::1','2021-07-28 10:58:04'),(1748,2,'register','::1','2021-07-28 10:58:26'),(1749,1,'home','::1','2021-07-29 11:33:33'),(1750,2,'search','::1','2021-07-29 11:33:39'),(1751,2,'search-details','::1','2021-07-29 11:34:45'),(1752,2,'news-details','::1','2021-07-29 12:14:37'),(1753,2,'circular','::1','2021-07-29 12:14:40'),(1754,2,'whos-who','::1','2021-07-29 12:14:42'),(1755,2,'publication','::1','2021-07-29 12:14:46'),(1756,2,'video-gallery','::1','2021-07-29 12:14:51'),(1757,2,'career','::1','2021-07-29 12:14:52'),(1758,2,'contact-us','::1','2021-07-29 12:14:53'),(1759,2,'feedback','::1','2021-07-29 12:14:56'),(1760,2,'policy','::1','2021-07-29 12:15:40'),(1761,2,'project','::1','2021-07-29 12:15:42'),(1762,2,'project-view','::1','2021-07-29 12:15:44'),(1763,2,'register','::1','2021-07-29 12:16:53'),(1764,2,'history','::1','2021-07-29 12:22:52'),(1765,2,'introduction','::1','2021-07-29 12:23:47'),(1766,2,'biosphere-reserves','::1','2021-07-29 12:25:34'),(1767,2,'management-aspects','::1','2021-07-29 12:25:37'),(1768,1,'home','::1','2021-08-02 10:56:06'),(1769,2,'contact-us','::1','2021-08-02 10:56:10'),(1770,2,'register','::1','2021-08-02 10:56:16'),(1771,2,'download','::1','2021-08-02 02:13:17'),(1772,2,'important-links','::1','2021-08-02 02:13:30'),(1773,1,'home','::1','2021-08-03 11:15:28'),(1774,2,'important-links','::1','2021-08-03 11:17:43'),(1775,2,'register','::1','2021-08-03 11:37:43'),(1776,2,'video-gallery','::1','2021-08-03 11:40:06'),(1777,2,'photo-gallery','::1','2021-08-03 12:30:58'),(1778,2,'whos-who','::1','2021-08-03 05:01:53'),(1779,2,'whos-who','::1','2021-08-04 11:12:25'),(1780,1,'home','::1','2021-08-04 12:03:18'),(1781,1,'home','::1','2021-08-10 02:14:15'),(1782,2,'news-details','::1','2021-08-10 04:08:39'),(1783,2,'career','::1','2021-08-10 04:09:08'),(1784,2,'circular','::1','2021-08-10 04:13:48'),(1785,2,'publication','::1','2021-08-10 04:25:55'),(1786,2,'video-gallery','::1','2021-08-10 05:02:56'),(1787,2,'photo-gallery','::1','2021-08-10 05:02:58'),(1788,2,'whos-who','::1','2021-08-10 05:03:04'),(1789,2,'photo-gallery-view','::1','2021-08-10 05:38:49'),(1790,1,'home','::1','2021-08-12 12:41:03'),(1791,2,'publication','::1','2021-08-12 12:45:14'),(1792,2,'project','::1','2021-08-12 01:59:30'),(1793,2,'about-us','::1','2021-08-12 01:59:40'),(1794,2,'conservation-management-of-water-bodies','::1','2021-08-12 01:59:45'),(1795,2,'video-gallery','::1','2021-08-12 02:09:36'),(1796,2,'whos-who','::1','2021-08-12 02:09:43'),(1797,2,'introduction','::1','2021-08-12 02:10:28'),(1798,2,'search','::1','2021-08-12 02:16:30'),(1799,2,'library','::1','2021-08-12 02:30:23'),(1800,2,'visionmission','::1','2021-08-12 02:30:28'),(1801,2,'photo-gallery','::1','2021-08-12 02:30:35'),(1802,2,'photo-gallery-view','::1','2021-08-12 02:30:36'),(1803,2,'feedback','::1','2021-08-12 02:30:39'),(1804,2,'news-details','::1','2021-08-12 02:30:44'),(1805,2,'circular','::1','2021-08-12 02:30:51'),(1806,2,'contact-us','::1','2021-08-12 02:30:53'),(1807,2,'career','::1','2021-08-12 02:30:55'),(1808,2,'register','::1','2021-08-12 02:31:08'),(1809,2,'login','::1','2021-08-12 02:31:09'),(1810,2,'empanelment-consultancy','::1','2021-08-12 05:10:22'),(1811,1,'home','::1','2021-08-17 12:02:40'),(1812,2,'news-details','::1','2021-08-17 12:38:14'),(1813,2,'library','::1','2021-08-17 12:38:17'),(1814,2,'feedback','::1','2021-08-17 12:38:20'),(1815,2,'circular','::1','2021-08-17 12:38:21'),(1816,2,'project','::1','2021-08-17 12:38:32'),(1817,2,'project-view','::1','2021-08-17 12:38:34'),(1818,2,'register','::1','2021-08-17 12:38:40'),(1819,2,'publication','::1','2021-08-17 12:38:41'),(1820,2,'login','::1','2021-08-17 12:41:25'),(1821,1,'home','::1','2021-08-25 04:56:04'),(1822,2,'visionmission','::1','2021-08-25 04:56:07'),(1823,2,'introduction','::1','2021-08-25 04:57:21'),(1824,2,'about-us','::1','2021-08-25 04:57:23'),(1825,2,'career','::1','2021-08-25 05:06:02'),(1826,2,'news-details','::1','2021-08-25 05:18:26'),(1827,1,'home','::1','2021-08-26 10:35:07'),(1828,2,'visionmission','::1','2021-08-26 11:34:37'),(1829,2,'introduction','::1','2021-08-26 11:34:45'),(1830,1,'home','::1','2021-09-02 05:39:05'),(1831,2,'empanelment-consultancy','::1','2021-09-02 05:39:49'),(1832,1,'home','::1','2021-09-03 03:29:33'),(1833,1,'home','::1','2021-09-08 04:37:39'),(1834,2,'circular','::1','2021-09-08 04:37:46'),(1835,2,'empanelment-consultancy','::1','2021-09-08 04:38:01'),(1836,1,'home','::1','2021-09-09 02:32:55'),(1837,2,'empanelment-consultancy','::1','2021-09-09 02:33:04'),(1838,2,'circular','::1','2021-09-09 02:45:46'),(1839,1,'home','::1','2021-09-15 12:40:59'),(1840,2,'circular','::1','2021-09-15 12:41:02'),(1841,2,'empanelment-consultancy','::1','2021-09-15 12:41:12'),(1842,1,'home','::1','2021-09-17 01:03:27'),(1843,1,'home','::1','2021-09-22 03:27:01'),(1844,2,'planning','::1','2021-09-22 03:29:26'),(1845,1,'home','::1','2021-09-27 12:36:27');
/*!40000 ALTER TABLE `comm_web_visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_whats_new`
--

DROP TABLE IF EXISTS `comm_whats_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comm_whats_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_hi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `order_preference` int(11) NOT NULL DEFAULT '1',
  `order_modified_date` datetime NOT NULL,
  `is_archive` tinyint(2) NOT NULL DEFAULT '0',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0',
  `archive_exp_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_whats_new`
--

LOCK TABLES `comm_whats_new` WRITE;
/*!40000 ALTER TABLE `comm_whats_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `comm_whats_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_qualification`
--

DROP TABLE IF EXISTS `m_qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `edit_date` datetime NOT NULL,
  `edit_by` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_qualification`
--

LOCK TABLES `m_qualification` WRITE;
/*!40000 ALTER TABLE `m_qualification` DISABLE KEYS */;
INSERT INTO `m_qualification` VALUES (1,'SSC','',0,'0000-00-00 00:00:00',0,1,0),(2,'HSSC','',0,'0000-00-00 00:00:00',0,1,0),(3,'PG','',0,'0000-00-00 00:00:00',0,1,0),(4,'UG','',0,'0000-00-00 00:00:00',0,1,0),(5,'M.Phil','',0,'0000-00-00 00:00:00',0,1,0),(6,'Ph.D','',0,'0000-00-00 00:00:00',0,1,0),(7,'Research Papers','',0,'0000-00-00 00:00:00',0,1,0);
/*!40000 ALTER TABLE `m_qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `menu_list`
--

DROP TABLE IF EXISTS `menu_list`;
/*!50001 DROP VIEW IF EXISTS `menu_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `menu_list` AS SELECT 
 1 AS `id`,
 1 AS `menu_name`,
 1 AS `controller_name`,
 1 AS `icon_class`,
 1 AS `p_menu_id`,
 1 AS `s_order`,
 1 AS `class_id`,
 1 AS `action`,
 1 AS `tab_same_new`,
 1 AS `is_active`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(40) DEFAULT NULL,
  `controller_name` varchar(50) NOT NULL DEFAULT '#',
  `icon_class` varchar(50) DEFAULT NULL,
  `p_menu_id` int(11) DEFAULT NULL,
  `s_order` int(11) DEFAULT NULL,
  `class_id` varchar(15) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `tab_same_new` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 for same, 2 for new',
  `is_active` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Dashboard','manage/Dashboard','glyphicon glyphicon-dashboard',0,1,'title','index',1,1),(2,'Master','#','fa fa-folder-o',131,3,'title',NULL,1,1),(3,'Settings','#','fa fa-cog',131,55,'title',NULL,1,1),(4,'Website Setting','manage/Settings','glyphicon glyphicon-folder-close',3,56,NULL,NULL,1,1),(11,' Media','#','fa fa-picture-o',131,44,'title',NULL,1,1),(15,'Social Link','manage/Social','fa fa-hand-o-right',2,9,NULL,'',1,1),(19,'Upload File','manage/Media','fa fa-cloud-upload',11,45,NULL,'add',1,1),(20,'View File','manage/Media','fa fa-hand-o-right',11,46,NULL,NULL,1,1),(22,'User Master','manage/User','fa fa-hand-o-right',2,4,NULL,'',1,1),(23,'Pages','#','fa fa-file',131,10,'title',NULL,1,1),(24,'Page Master','manage/Page','fa fa-hand-o-right',23,11,NULL,'',1,1),(68,'User Privileges','manage/Userprivilege','fa fa-hand-o-right',2,6,NULL,NULL,1,1),(88,'Admin Menu','manage/Adminmenu','fa fa-hand-o-right',2,5,NULL,'',1,1),(90,'Module','#','fa fa-folder-o',131,12,'title',NULL,1,1),(93,'Photo Gallery','manage/Gallerymaster','fa fa-hand-o-right',90,14,NULL,'',1,1),(94,'Photo Gallery Category','manage/Gallerycategorymaster','fa fa-hand-o-right',90,13,NULL,'',1,1),(95,'Important Links','manage/Importantlink','fa fa-hand-o-right',90,17,NULL,NULL,1,1),(98,'Important Information','manage/Noticeboard','fa fa-hand-o-right',90,24,NULL,NULL,1,1),(101,'News','manage/News','fa fa-hand-o-right',90,30,NULL,NULL,1,1),(102,'Services','manage/Services','fa fa-hand-o-right',90,34,NULL,NULL,1,1),(104,'Important Website','manage/Importantwebsite','fa fa-hand-o-right',90,18,NULL,NULL,1,1),(105,'Top Menu','manage/Frontmenu','fa fa-hand-o-right',110,52,NULL,NULL,1,1),(106,'Menu Modules','manage/Menumodule','fa fa-hand-o-right',110,51,NULL,NULL,1,1),(107,'Manage Slider','#','fa fa-picture-o',131,47,'title',NULL,1,1),(108,'Top Slider','manage/Slider','fa fa-hand-o-right',107,48,NULL,NULL,1,1),(110,'Front Menu','#','fa fa-folder-o',131,50,'title',NULL,1,1),(111,'Bottom Menu','manage/Frontmenu','fa fa-hand-o-right',110,54,NULL,'bottomMenu',1,1),(112,'Project','manage/Project','fa fa-hand-o-right',90,31,NULL,NULL,1,1),(114,'Manage Feedback','manage/Feedback','fa fa-hand-o-right',131,42,NULL,NULL,1,1),(129,'Access List','manage/Accesslist','fa fa-hand-o-right',2,7,NULL,NULL,1,1),(130,'Assign User Access','manage/Acl','fa fa-hand-o-right',2,8,NULL,NULL,1,1),(131,'CMS','#','fa fa-folder-o',0,2,'title',NULL,1,1),(143,'Messageboard','manage/Messageboard','fa fa-hand-o-right',90,25,NULL,NULL,1,1),(145,'End Menu','#','fa fa-cog',0,57,'title',NULL,1,1),(146,'Video Gallery','manage/Videogallery','fa fa-hand-o-right',90,16,NULL,NULL,1,1),(147,'Video Gallery Category','manage/Videocategory','fa fa-hand-o-right',90,15,NULL,NULL,1,1),(149,'Contact Category','manage/Contactcategory','fa fa-hand-o-right',90,20,NULL,NULL,1,1),(150,'Contact Designation','manage/Contactdesignation','fa fa-hand-o-right',90,21,NULL,NULL,1,1),(151,'Manage Contacts','manage/Contactboard','fa fa-hand-o-right',90,23,NULL,NULL,1,1),(152,'Download','manage/Formsdownload','fa fa-hand-o-right',90,19,NULL,NULL,1,1),(157,'Circulars & Notifications','manage/Circular','fa fa-hand-o-right',90,26,NULL,NULL,1,1),(158,'Emergency Contact','manage/EmergencyContact','fa fa-hand-o-right',90,29,NULL,NULL,1,1),(159,'FAQ','manage/Faq','fa fa-hand-o-right',90,41,NULL,NULL,1,1),(160,'Bottom Slider','/manage/Slider','fa fa-hand-o-right',107,49,NULL,'index/2',1,1),(161,'Archive','manage/Career','fa fa-hand-o-right',90,27,NULL,NULL,1,1),(162,'Tender','manage/Tender','fa fa-hand-o-right',90,28,NULL,NULL,1,1),(164,'Middle Menu','manage/Frontmenu','fa fa-hand-o-right',110,53,NULL,'middleMenu',1,1),(165,'Publication','manage/publication','fa fa-hand-o-right',90,39,NULL,NULL,1,1),(166,'Events','manage/events','fa fa-hand-o-right',90,36,NULL,NULL,1,1),(167,'Notification','manage/Notification','fa fa-hand-o-right',90,40,NULL,NULL,1,1),(168,'Testimonial','manage/Testimonial','fa fa-hand-o-right',131,43,NULL,NULL,1,1),(171,'Publications Category','manage/publicationcategory','fa fa-hand-o-right',90,38,NULL,NULL,1,1),(172,'Project Category','manage/Projectcategorymaster','fa fa-hand-o-right',90,33,NULL,NULL,1,1),(174,'Services Category','manage/Servicescategory','fa fa-hand-o-right',90,35,NULL,NULL,1,1),(175,'Contact','manage/Contactboard','fa fa-hand-o-right',90,22,NULL,NULL,1,1),(176,'Project Media','manage/ProjectMedia','fa fa-hand-o-right',90,32,NULL,NULL,1,1),(177,'Event Media','/manage/EventMedia','fa fa-hand-o-right',90,37,NULL,NULL,1,1),(178,'Admission','manage/Admission','fa fa-hand-o-right',0,58,'title',NULL,1,1),(179,'Consultancy','manage/Consultancy','fa fa-hand-o-right',0,59,'title',NULL,1,1);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_order`
--

DROP TABLE IF EXISTS `temp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_order` (
  `Ident_col` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `order_prefer` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ident_col`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_order`
--

LOCK TABLES `temp_order` WRITE;
/*!40000 ALTER TABLE `temp_order` DISABLE KEYS */;
INSERT INTO `temp_order` VALUES (1,1,1),(2,3,1),(3,2,3);
/*!40000 ALTER TABLE `temp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_acl`
--

DROP TABLE IF EXISTS `user_acl`;
/*!50001 DROP VIEW IF EXISTS `user_acl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_acl` AS SELECT 
 1 AS `auth_id`,
 1 AS `priviledge_id`,
 1 AS `menu_id`,
 1 AS `auth_function`,
 1 AS `added_date`,
 1 AS `added_by`,
 1 AS `edit_date`,
 1 AS `edit_by`,
 1 AS `status`,
 1 AS `admin_name`,
 1 AS `controller_name`,
 1 AS `upm_id`,
 1 AS `upm_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_previlege_master`
--

DROP TABLE IF EXISTS `user_previlege_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_previlege_master` (
  `upm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '1=Supper Admin,2=Administrator,3=Editor,4=Author',
  `upm_name` varchar(50) NOT NULL,
  `upm_description` varchar(350) NOT NULL,
  `upm_range` varchar(500) NOT NULL,
  `isdelete` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_previlege_master`
--

LOCK TABLES `user_previlege_master` WRITE;
/*!40000 ALTER TABLE `user_previlege_master` DISABLE KEYS */;
INSERT INTO `user_previlege_master` VALUES (1,'Supper Admin','Allow all menu','1,131,2,22,88,68,129,130,15,23,24,90,94,93,147,146,95,149,150,175,143,157,158,101,112,176,172,102,166,177,171,165,167,159,114,168,11,19,20,107,108,160,110,106,105,164,111,3,4,145,178,179',0),(2,'Administrator','Allow main menu','1,131,2,22,23,24,90,94,93,147,146,95,149,150,151,157,161,162,101,112,176,166,177,114,168,107,108,160,3,4,145,179',0);
/*!40000 ALTER TABLE `user_previlege_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_qualification`
--

DROP TABLE IF EXISTS `user_qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) DEFAULT NULL,
  `qualification_id` int(11) DEFAULT NULL,
  `passing_year` date DEFAULT NULL,
  `board` varchar(150) DEFAULT NULL,
  `total_mark` varchar(150) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `out_of_total_mark` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_qualification`
--

LOCK TABLES `user_qualification` WRITE;
/*!40000 ALTER TABLE `user_qualification` DISABLE KEYS */;
INSERT INTO `user_qualification` VALUES (1,29,1,'2021-02-20','asdf','250',25,'test,test',NULL,0),(2,29,2,'0000-00-00','','',0,'',NULL,0),(3,29,2,'0000-00-00','','',0,'',NULL,0),(4,29,2,'0000-00-00','','',0,'',NULL,0),(5,29,2,'0000-00-00','','',0,'',NULL,0),(6,29,2,'0000-00-00','','',0,'',NULL,0),(7,29,2,'0000-00-00','','',0,'',NULL,0),(33,35,2,'0000-00-00','','',0,'',NULL,0),(34,35,2,'0000-00-00','','',0,'',NULL,0),(35,35,2,'0000-00-00','','',0,'',NULL,0),(36,35,1,'2021-04-16','TESTY','434',44,'SDFGSDF',NULL,0),(37,35,2,'0000-00-00','','',0,'',NULL,0),(38,35,2,'0000-00-00','','',0,'',NULL,0),(39,35,2,'0000-00-00','','',0,'',NULL,0),(40,35,2,'0000-00-00','','',0,'',NULL,0),(41,35,2,'0000-00-00','','',0,'',NULL,0),(42,35,2,'0000-00-00','','',0,'',NULL,0),(43,35,1,'2021-04-18','mp','12',23,'maths',NULL,0),(44,35,2,'2021-04-18','sdf','23',23,'sdf',NULL,0),(45,35,3,'0000-00-00','','',0,'',NULL,0),(46,35,4,'0000-00-00','','',0,'',NULL,0),(47,35,5,'0000-00-00','','',0,'',NULL,0),(48,35,6,'0000-00-00','','',0,'',NULL,0),(49,35,7,'0000-00-00','','',0,'',NULL,0),(50,35,1,'2021-04-10','dfg','dfg',0,'dfg',NULL,0),(51,35,2,'0000-00-00','','',0,'',NULL,0),(52,35,3,'0000-00-00','','',0,'',NULL,0),(53,35,4,'0000-00-00','','',0,'',NULL,0),(54,35,5,'0000-00-00','','',0,'',NULL,0),(55,35,6,'0000-00-00','','',0,'',NULL,0),(56,35,7,'0000-00-00','','',0,'',NULL,0),(57,35,1,'2021-04-18','FGHJ','67',67,'GHJGH',NULL,0),(58,35,2,'0000-00-00','','',0,'',NULL,0),(59,35,3,'0000-00-00','','',0,'',NULL,0),(60,35,4,'0000-00-00','','',0,'',NULL,0),(61,35,5,'0000-00-00','','',0,'',NULL,0),(62,35,6,'0000-00-00','','',0,'',NULL,0),(63,35,7,'0000-00-00','','',0,'',NULL,0),(64,35,1,'2021-04-10','DGHF','56',56,'DGDFG',NULL,0),(65,35,2,'0000-00-00','','',0,'',NULL,0),(66,35,3,'0000-00-00','','',0,'',NULL,0),(67,35,4,'0000-00-00','','',0,'',NULL,0),(68,35,5,'0000-00-00','','',0,'',NULL,0),(69,35,6,'0000-00-00','','',0,'',NULL,0),(70,35,7,'0000-00-00','','',0,'',NULL,0),(71,35,1,'2021-04-11','FG','56',56,'HFGH',NULL,0),(72,35,2,'0000-00-00','','',0,'',NULL,0),(73,35,3,'0000-00-00','','',0,'',NULL,0),(74,35,4,'0000-00-00','','',0,'',NULL,0),(75,35,5,'0000-00-00','','',0,'',NULL,0),(76,35,6,'0000-00-00','','',0,'',NULL,0),(77,35,7,'0000-00-00','','',0,'',NULL,0),(78,35,1,'2021-04-18','fghj','65',5,'fghfgh',NULL,0),(79,35,2,'0000-00-00','','',0,'',NULL,0),(80,35,3,'0000-00-00','','',0,'',NULL,0),(81,35,4,'0000-00-00','','',0,'',NULL,0),(82,35,5,'0000-00-00','','',0,'',NULL,0),(83,35,6,'0000-00-00','','',0,'',NULL,0),(84,35,7,'0000-00-00','','',0,'',NULL,0),(85,35,1,'2021-04-23','fgh','67',67,'fghf',NULL,0),(86,35,2,'0000-00-00','','',0,'',NULL,0),(87,35,3,'0000-00-00','','',0,'',NULL,0),(88,35,4,'0000-00-00','','',0,'',NULL,0),(89,35,5,'0000-00-00','','',0,'',NULL,0),(90,35,6,'0000-00-00','','',0,'',NULL,0),(91,35,7,'0000-00-00','','',0,'',NULL,0),(92,41,1,'2021-04-18','FGH','34',34,'FGHFGH',NULL,0),(93,41,2,'0000-00-00','','',0,'',NULL,0),(94,41,3,'0000-00-00','','',0,'',NULL,0),(95,41,4,'0000-00-00','','',0,'',NULL,0),(96,41,5,'0000-00-00','','',0,'',NULL,0),(97,41,6,'0000-00-00','','',0,'',NULL,0),(98,41,7,'0000-00-00','','',0,'',NULL,0),(99,41,1,'2021-04-30','FGH','56',56,'FGH',NULL,0),(100,41,2,'0000-00-00','','',0,'',NULL,0),(101,41,3,'0000-00-00','','',0,'',NULL,0),(102,41,4,'0000-00-00','','',0,'',NULL,0),(103,41,5,'0000-00-00','','',0,'',NULL,0),(104,41,6,'0000-00-00','','',0,'',NULL,0),(105,41,7,'0000-00-00','','',0,'',NULL,0),(106,41,1,'2021-04-18','dfgd','56',45,'dfg',NULL,0),(107,41,12,'0000-00-00','','',0,'',NULL,0),(108,41,0,'0000-00-00','','',0,'',NULL,0),(109,41,0,'0000-00-00','','',0,'',NULL,0),(110,41,0,'0000-00-00','','',0,'',NULL,0),(111,41,0,'0000-00-00','','',0,'',NULL,0),(112,41,0,'0000-00-00','','',0,'',NULL,0),(113,45,1,'2021-06-10','shunbga','56/90',56,'DFDF',NULL,0),(114,45,2,'2021-06-02','SDFS','56/90',67,'SDF',NULL,0),(115,45,3,'2021-06-10','SDSDF','56/90',67,'SDF',NULL,0),(116,45,4,'2021-06-04','DFGDFGDF','56/90',67,'XFGX',NULL,0),(117,45,5,'2021-06-19','GDFGDFGDF','56/90',67,'DFGDFG',NULL,0),(118,45,6,'2021-06-11','GDFGDFG','56/90',67,'DFGDFGD',NULL,0),(119,45,7,'2021-06-13','DFGDG','56/90',67,'FGDFGDF',NULL,0),(120,46,1,'0000-00-00','fgdfg','23/89',45,'dfgdfgdfg',NULL,0),(121,46,2,'0000-00-00','sddfs','23/89',67,'dfsdf',NULL,0),(122,46,3,'0000-00-00','sdf','23/89',56,'sdf',NULL,0),(123,46,4,'0000-00-00','sdf','23/89',56,'sdfs',NULL,0),(124,46,5,'0000-00-00','sdf','23/89',56,'dfsdf',NULL,0),(125,46,6,'0000-00-00','sdf','23/89',56,'sdf',NULL,0),(126,46,7,'0000-00-00','sdf','23/89',57,'sdf',NULL,0),(127,47,1,'0000-00-00','XCV','56/90',78,'XCV',NULL,0),(128,47,2,'0000-00-00','','',0,'',NULL,0),(129,47,3,'0000-00-00','','',0,'',NULL,0),(130,47,4,'0000-00-00','','',0,'',NULL,0),(131,47,5,'0000-00-00','','',0,'',NULL,0),(132,47,6,'0000-00-00','','',0,'',NULL,0),(133,47,7,'0000-00-00','','',0,'',NULL,0),(134,NULL,1,'0000-00-00','xcv','5/906',67,'xcv',NULL,0),(135,NULL,2,'0000-00-00','xcvdfgdfgdf','56/90',56,'xcvgdfgdfgdfg',NULL,0),(136,NULL,3,'0000-00-00','dfg','67/90',67,'dfg',NULL,0),(137,NULL,4,'0000-00-00','xcv','56/90',45,'xcv',NULL,0),(138,NULL,5,'0000-00-00','xcv','56/90',45,'xcv',NULL,0),(139,NULL,6,'0000-00-00','xcv','56/90',45,'xcv',NULL,0),(140,NULL,7,'0000-00-00','xcv','56/90',45,'xcv',NULL,0),(141,NULL,1,'0000-00-00','sdf','56/90',45,'dsf',NULL,0),(142,NULL,2,'0000-00-00','sdf','56/90',45,'sdf',NULL,0),(143,NULL,3,'0000-00-00','sdf','56/90',45,'sdf',NULL,0),(144,NULL,4,'0000-00-00','sdf','56/90',45,'sdf',NULL,0),(145,NULL,5,'0000-00-00','sdf','56/90',45,'sdf',NULL,0),(146,NULL,6,'0000-00-00','sdf','56/90',45,'sdf',NULL,0),(147,NULL,7,'0000-00-00','sdf','56/90',45,'sdf',NULL,0),(148,48,1,'2019-01-01','SDF','56/90',67,'SDF',NULL,0),(149,48,2,'0000-00-00','SDF','56/90',67,'SDF',NULL,0),(150,48,3,'0000-00-00','ZXC','56/90',56,'ZXC',NULL,0),(151,48,4,'0000-00-00','SD','56/90',67,'SDF',NULL,0),(152,48,5,'0000-00-00','SDF','67/90',67,'SDF',NULL,0),(153,48,6,'0000-00-00','SDF','67/90',67,'SDF',NULL,0),(154,48,7,'0000-00-00','SDF','67/90',67,'SDF',NULL,0),(155,48,1,'0000-00-00','sdf','56/90',67,'sdf',NULL,0),(156,48,2,'0000-00-00','sdf','67/90',676,'sdf',NULL,0),(157,48,3,'0000-00-00','sdf','67/90',7,'sdf',NULL,0),(158,48,4,'0000-00-00','sdf','67/90',67,'dsf',NULL,0),(159,48,5,'0000-00-00','sdf','67/90',67,'sdf',NULL,0),(160,48,6,'0000-00-00','sdf','67/90',67,'sdf',NULL,0),(161,48,7,'0000-00-00','nil','67/90',67,'dsf',NULL,0),(162,48,1,'0000-00-00','dfxgd','56/90',56,'gdfg',NULL,0),(163,48,2,'0000-00-00','xdfds','56/90',56,'df',NULL,0),(164,48,3,'0000-00-00','fsdf','56/90',56,'dfd',NULL,0),(165,48,4,'0000-00-00','dfd','56/90',56,'f',NULL,0),(166,48,5,'0000-00-00','fdf','56/90',56,'df',NULL,0),(167,48,6,'0000-00-00','df','56/90',56,'df',NULL,0),(168,48,7,'0000-00-00','dfd','56/90',56,'df',NULL,0),(169,48,1,'0000-00-00','sdf','56/90',78,'sdf',NULL,0),(170,48,2,'0000-00-00','asd','56/90',56,'asd',NULL,0),(171,48,3,'0000-00-00','sdfs','56/90',56,'sdf',NULL,0),(172,48,4,'0000-00-00','dsdfs','56/90',565,'sdf',NULL,0),(173,48,5,'0000-00-00','df','56/90',65,'sdf',NULL,0),(174,48,6,'0000-00-00','sdf','56/90',656,'sdf',NULL,0),(175,48,7,'0000-00-00','sdf','56/90',56,'sdf',NULL,0),(176,48,1,'0000-00-00','DFG','56/90',56,'DF',NULL,0),(177,48,2,'0000-00-00','Z','56/90',67,'ZXCXC',NULL,0),(178,48,3,'0000-00-00','','',0,'',NULL,0),(179,48,4,'0000-00-00','','',0,'',NULL,0),(180,48,5,'0000-00-00','','',0,'',NULL,0),(181,48,6,'0000-00-00','','',0,'',NULL,0),(182,48,7,'0000-00-00','','',0,'',NULL,0),(183,48,1,'0000-00-00','sdf','56/90',56,'sdf',NULL,0),(184,48,2,'0000-00-00','','',0,'',NULL,0),(185,48,3,'0000-00-00','','',0,'',NULL,0),(186,48,4,'0000-00-00','','',0,'',NULL,0),(187,48,5,'0000-00-00','','',0,'',NULL,0),(188,48,6,'0000-00-00','','',0,'',NULL,0),(189,48,7,'0000-00-00','','',0,'',NULL,0),(190,48,1,'0000-00-00','sdf','56/90',67,'sdf',NULL,0),(191,48,2,'0000-00-00','','',0,'',NULL,0),(192,48,3,'0000-00-00','','',0,'',NULL,0),(193,48,4,'0000-00-00','','',0,'',NULL,0),(194,48,5,'0000-00-00','','',0,'',NULL,0),(195,48,6,'0000-00-00','','',0,'',NULL,0),(196,48,7,'0000-00-00','','',0,'',NULL,0),(197,48,1,'0000-00-00','dfg','56/90',6767,'dfg',NULL,0),(198,48,2,'0000-00-00','','',0,'',NULL,0),(199,48,3,'0000-00-00','','',0,'',NULL,0),(200,48,4,'0000-00-00','','',0,'',NULL,0),(201,48,5,'0000-00-00','','',0,'',NULL,0),(202,48,6,'0000-00-00','','',0,'',NULL,0),(203,48,7,'0000-00-00','','',0,'',NULL,0),(204,48,1,'0000-00-00','dfg','67/90',45,'dfg',NULL,0),(205,48,2,'0000-00-00','','',0,'',NULL,0),(206,48,3,'0000-00-00','','',0,'',NULL,0),(207,48,4,'0000-00-00','','',0,'',NULL,0),(208,48,5,'0000-00-00','','',0,'',NULL,0),(209,48,6,'0000-00-00','','',0,'',NULL,0),(210,48,7,'0000-00-00','','',0,'',NULL,0),(211,2,1,'2021-07-01','S','34',34,'SDF',NULL,34),(212,2,2,'0000-00-00','','',0,'',NULL,0),(213,2,3,'0000-00-00','','',0,'',NULL,0),(214,2,4,'0000-00-00','','',0,'',NULL,0),(215,2,5,'0000-00-00','','',0,'',NULL,0),(216,2,6,'0000-00-00','','',0,'',NULL,0),(217,2,7,'2021-07-01','','',0,'',NULL,0),(246,1,1,'2021-07-28','dfg','45',45,'dfg',NULL,45),(247,1,2,'0000-00-00','','',0,'',NULL,0),(248,1,3,'0000-00-00','','',0,'',NULL,0),(249,1,4,'0000-00-00','','',0,'',NULL,0),(250,1,5,'0000-00-00','','',0,'',NULL,0),(251,1,6,'0000-00-00','','',0,'',NULL,0),(252,1,7,'0000-00-00','','',0,'',NULL,0),(253,1,1,'2021-08-13','dfg','67',67,'dfg',NULL,67),(254,1,2,'0000-00-00','','',0,'',NULL,0),(255,1,3,'0000-00-00','','',0,'',NULL,0),(256,1,4,'0000-00-00','','',0,'',NULL,0),(257,1,5,'0000-00-00','','',0,'',NULL,0),(258,1,6,'0000-00-00','','',0,'',NULL,0),(259,1,7,'0000-00-00','','',0,'',NULL,0);
/*!40000 ALTER TABLE `user_qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `menu_list`
--

/*!50001 DROP VIEW IF EXISTS `menu_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `menu_list` AS select `menus`.`id` AS `id`,`menus`.`menu_name` AS `menu_name`,replace(`menus`.`controller_name`,'manage/','') AS `controller_name`,`menus`.`icon_class` AS `icon_class`,`menus`.`p_menu_id` AS `p_menu_id`,`menus`.`s_order` AS `s_order`,`menus`.`class_id` AS `class_id`,`menus`.`action` AS `action`,`menus`.`tab_same_new` AS `tab_same_new`,`menus`.`is_active` AS `is_active` from `menus` where ((not(`menus`.`id` in (select distinct `n1`.`id` from (`menus` `n1` join `menus` `n2`) where ((`n1`.`id` > `n2`.`id`) and (`n1`.`controller_name` = `n2`.`controller_name`))))) and (trim(`menus`.`controller_name`) <> '#')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_acl`
--

/*!50001 DROP VIEW IF EXISTS `user_acl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_acl` AS select `ac`.`auth_id` AS `auth_id`,`ac`.`priviledge_id` AS `priviledge_id`,`ac`.`menu_id` AS `menu_id`,`ac`.`auth_function` AS `auth_function`,`ac`.`added_date` AS `added_date`,`ac`.`added_by` AS `added_by`,`ac`.`edit_date` AS `edit_date`,`ac`.`edit_by` AS `edit_by`,`ac`.`status` AS `status`,concat(`cm`.`admin_fname`,' ',`cm`.`admin_lname`) AS `admin_name`,replace(trim(`m`.`controller_name`),'manage/','') AS `controller_name`,`upm`.`upm_id` AS `upm_id`,`upm`.`upm_name` AS `upm_name` from (((`comm_auth_acl` `ac` left join `comm_admin` `cm` on((`cm`.`admin_id` = `ac`.`added_by`))) left join `menus` `m` on((`m`.`id` = `ac`.`menu_id`))) left join `user_previlege_master` `upm` on((`upm`.`upm_id` = `ac`.`priviledge_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-27 12:39:42