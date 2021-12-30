CREATE DATABASE  IF NOT EXISTS `db_kalkulasi_mesin` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `db_kalkulasi_mesin`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: 192.168.88.99    Database: db_kalkulasi_mesin
-- ------------------------------------------------------
-- Server version	5.5.32

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
-- Table structure for table `hlogs_listriks`
--

DROP TABLE IF EXISTS `hlogs_listriks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hlogs_listriks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `before` bigint(20) DEFAULT NULL,
  `history_latest` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=951 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hlogs_listriks`
--

LOCK TABLES `hlogs_listriks` WRITE;
/*!40000 ALTER TABLE `hlogs_listriks` DISABLE KEYS */;
INSERT INTO `hlogs_listriks` VALUES (902,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,428513852,NULL,'2021-04-27 07:39:40',3,132,2,2,NULL),(903,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,428511225,NULL,'2021-04-27 08:28:52',3,132,2,2,NULL),(904,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,333726049,NULL,'2021-04-27 08:28:52',3,133,2,2,NULL),(905,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,4197735305,NULL,'2021-04-28 03:53:25',3,134,1,2,NULL),(906,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,4197729923,NULL,'2021-04-28 09:12:01',3,134,1,2,NULL),(907,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,36538664228,NULL,'2021-04-28 09:12:01',3,135,6,4,NULL),(908,'Accounting','listrik.ncost_bulan_plus_adm',0,4197729923,NULL,'2021-04-28 17:54:54',3,134,1,2,NULL),(909,'Accounting','listrik.ncost_bulan_plus_adm',0,36538664228,NULL,'2021-04-28 17:54:54',3,135,6,4,NULL),(910,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,524340783,NULL,'2021-04-30 09:04:53',3,137,1,1,NULL),(911,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,524338307,NULL,'2021-04-30 09:29:46',3,137,1,1,NULL),(912,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,368579160,NULL,'2021-04-30 09:29:47',3,138,2,1,NULL),(913,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-04-30 09:40:30',3,139,2,2,NULL),(914,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-04-30 09:51:16',3,141,2,2,NULL),(915,'admin edp','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-09-06 03:35:27',3,141,2,2,NULL),(916,'admin edp','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-09-06 03:36:58',3,141,2,2,NULL),(917,'admin edp','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-09-06 03:36:58',3,141,2,2,NULL),(918,'admin edp','listrik.ncost_bulan_plus_adm',2341,34531,NULL,'2021-09-06 08:31:20',3,141,2,2,NULL),(919,'admin edp','listrik.ncost_bulan_plus_adm',1,131870,NULL,'2021-09-06 08:31:20',3,142,2,2,NULL),(920,'admin edp','listrik.LWBP_perminggu',137347,0,NULL,'2021-09-06 09:31:54',3,142,2,2,NULL),(921,'admin edp','listrik.WBP_perminggu',32317,0,NULL,'2021-09-06 09:31:54',3,142,2,2,NULL),(922,'admin edp','listrik.LWBP_perminggu',137347,0,NULL,'2021-09-06 09:39:43',3,142,2,2,NULL),(923,'admin edp','listrik.WBP_perminggu',32317,0,NULL,'2021-09-06 09:39:43',3,142,2,2,NULL),(924,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-06 10:16:45',3,141,2,2,NULL),(925,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-06 10:16:45',3,141,2,2,NULL),(926,'admin edp','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-09-06 10:16:45',3,141,2,2,NULL),(927,'admin edp','listrik.LWBP_perminggu',137347,0,NULL,'2021-09-07 01:13:36',3,142,2,2,NULL),(928,'admin edp','listrik.LWBP_perminggu',137347,0,NULL,'2021-09-07 01:13:36',3,142,2,2,NULL),(929,'admin edp','listrik.WBP_perminggu',32317,0,NULL,'2021-09-07 01:13:36',3,142,2,2,NULL),(930,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:13:50',3,141,2,2,NULL),(931,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:13:50',3,141,2,2,NULL),(932,'admin edp','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-09-07 01:13:50',3,141,2,2,NULL),(933,'admin edp','listrik.code_mesin',142,141,NULL,'2021-09-07 01:15:00',3,141,2,2,NULL),(934,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:15:31',3,141,2,2,NULL),(935,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:15:31',3,141,2,2,NULL),(936,'admin edp','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-09-07 01:15:31',3,141,2,2,NULL),(937,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:19:07',3,141,2,2,NULL),(938,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:19:07',3,141,2,2,NULL),(939,'admin edp','listrik.ncost_bulan_plus_adm',0,368578100,NULL,'2021-09-07 01:19:07',3,141,2,2,NULL),(940,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:19:07',3,141,2,2,NULL),(941,'admin edp','listrik.ncost_bulan_plus_adm',0,368578100,NULL,'2021-09-07 01:19:07',3,141,2,2,NULL),(942,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:19:07',3,143,2,2,NULL),(943,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:19:07',3,141,2,2,NULL),(944,'admin edp','listrik.ncost_bulan_plus_adm',0,368578100,NULL,'2021-09-07 01:19:07',3,141,2,2,NULL),(945,'admin edp','listrik.persen_cost_perbulan',0,1,NULL,'2021-09-07 01:19:07',3,143,2,2,NULL),(946,'admin edp','listrik.ncost_bulan_plus_adm',0,1193029112,NULL,'2021-09-07 01:19:07',3,143,2,2,NULL),(947,NULL,'listrik',0,0,'2021-10-05 01:28:32','2021-10-05 01:28:32',3,143,2,2,'demo'),(948,'demo','listrik.persen_cost_perbulan',0,1,NULL,'2021-10-05 01:28:53',3,143,2,2,NULL),(949,'demo','listrik.persen_cost_perbulan',0,1,NULL,'2021-10-05 01:28:53',3,143,2,2,NULL),(950,'demo','listrik.ncost_bulan_plus_adm',0,1193030528,NULL,'2021-10-05 01:28:54',3,143,2,2,NULL);
/*!40000 ALTER TABLE `hlogs_listriks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:11
