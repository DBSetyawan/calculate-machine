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
-- Table structure for table `listrik`
--

DROP TABLE IF EXISTS `listrik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listrik` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_listrik` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `ampere` double DEFAULT NULL,
  `voltase` int(11) DEFAULT NULL,
  `LWBP_perminggu` double DEFAULT NULL,
  `WBP_perminggu` double DEFAULT NULL,
  `total_biaya_listrik` double DEFAULT NULL,
  `nilai_cost_bulan` double DEFAULT NULL,
  `persen_cost_perbulan` double DEFAULT NULL,
  `ncost_bulan_plus_adm` double DEFAULT NULL,
  `output_perjam` int(11) DEFAULT NULL,
  `persen_output_perjam` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `LWBP_faktorkali` double DEFAULT NULL,
  `WBP_faktorkali` double DEFAULT NULL,
  `total_insteadofLISTRIK` int(11) DEFAULT NULL,
  `nilai_cost_perbulan_insteadofLISTRIK` int(11) DEFAULT NULL,
  `nilai_cost_perbualan_adm_insteadOfListrik` int(11) DEFAULT NULL,
  `persen_cost_perbulan_insteadOfListrik` int(11) DEFAULT NULL,
  `listrikperjam` int(10) unsigned DEFAULT NULL,
  `assumptionshift_lwbp1` int(11) DEFAULT NULL,
  `assumption_itval_perminggu` int(11) DEFAULT NULL,
  `assumption_wbp` int(11) DEFAULT NULL,
  `assumptionshift_lwbp2` int(11) DEFAULT NULL,
  `assumptionshift_lwbp3` int(11) DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  `begin_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `slugprefixstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listrik`
--

LOCK TABLES `listrik` WRITE;
/*!40000 ALTER TABLE `listrik` DISABLE KEYS */;
INSERT INTO `listrik` VALUES (323,'LTKE0TR0921001',3,141,3,1111,1212,0,0,0,0,0,0,NULL,NULL,'2021-09-06 09:44:09','2021-10-05 01:27:57',2,1500,1500,NULL,NULL,NULL,NULL,10000,NULL,6,4,NULL,17,2,'2021-09-06 09:44:09','2021-10-05 01:27:57',NULL),(324,'LTKeITR092100324',3,141,3,380,1230,47674.8,11217.6,89460360,357841440,0.2360248447205,368578099.34907,NULL,NULL,'2021-09-06 10:16:33','2021-10-05 01:27:57',2,1500,1500,NULL,NULL,NULL,NULL,5340,NULL,6,4,NULL,17,2,'2021-09-06 10:16:33','2021-10-05 01:27:57',NULL),(325,'LTK3BTR092100325',3,143,3,1230,1230,154315.8,36309.6,289569060,1158276240,0.7639751552795,1193029111.0509,NULL,NULL,'2021-09-07 01:18:41','2021-10-05 01:27:57',2,1500,1500,NULL,NULL,NULL,NULL,1230,NULL,6,4,NULL,17,2,'2021-09-07 01:18:41','2021-10-05 01:27:57',NULL),(326,'LTK22TR102100326',3,143,3,1230,1230,154315.8,36309.6,289569060,1158276240,1,1193030527.2,NULL,NULL,'2021-10-05 01:28:32','2021-10-05 01:28:54',2,1500,1500,NULL,NULL,NULL,NULL,1230,NULL,6,4,NULL,17,2,'2021-10-05 01:28:32',NULL,NULL);
/*!40000 ALTER TABLE `listrik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:00
