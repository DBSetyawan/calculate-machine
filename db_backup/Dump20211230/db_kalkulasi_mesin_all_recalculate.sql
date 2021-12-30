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
-- Table structure for table `all_recalculate`
--

DROP TABLE IF EXISTS `all_recalculate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_recalculate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `id_listrik` bigint(20) DEFAULT NULL,
  `id_penyusutan` bigint(20) DEFAULT NULL,
  `id_labor` bigint(20) DEFAULT NULL,
  `id_mtc` bigint(20) DEFAULT NULL,
  `id_bprodlain_insteadof_mtc` bigint(20) DEFAULT NULL,
  `id_gajilain` bigint(20) DEFAULT NULL,
  `id_bgoenjualan` bigint(20) DEFAULT NULL,
  `id_bau` bigint(20) DEFAULT NULL,
  `total_semua_biaya` bigint(20) DEFAULT NULL,
  `total_semua_biaya_perjam` bigint(20) DEFAULT NULL,
  `total_tanpa_penyusutan_n_mtc` bigint(20) DEFAULT NULL,
  `total_tanpa_penyusutan_n_mtc_perjam` bigint(20) DEFAULT NULL,
  `total_tanpa_penyusutan` bigint(20) DEFAULT NULL,
  `total_tanpa_penyusutan_perjam` bigint(20) DEFAULT NULL,
  `total_tanpa_mtc` bigint(20) DEFAULT NULL,
  `total_tanpa_mtc_perjam` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  `listrik_fk` int(11) DEFAULT NULL,
  `begin_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `slugprefixclose` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_recalculate`
--

LOCK TABLES `all_recalculate` WRITE;
/*!40000 ALTER TABLE `all_recalculate` DISABLE KEYS */;
INSERT INTO `all_recalculate` VALUES (4,3,143,2,1193030527,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-10-05 01:29:44','2021-10-05 01:29:44',2,326,'2021-10-05 01:29:44',NULL,NULL);
/*!40000 ALTER TABLE `all_recalculate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:02
