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
-- Table structure for table `history_log_recalculate`
--

DROP TABLE IF EXISTS `history_log_recalculate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_log_recalculate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `changed_by` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recalculate_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listrik` int(11) DEFAULT NULL,
  `penyusutan` int(11) DEFAULT NULL,
  `labor` int(11) DEFAULT NULL,
  `mtc` int(11) DEFAULT NULL,
  `biaya_produksi_lain` int(11) DEFAULT NULL,
  `biaya_administrasi_umum` int(11) DEFAULT NULL,
  `gaji_lainnya` int(11) DEFAULT NULL,
  `bagian_penjualan` int(11) DEFAULT NULL,
  `total_semua_biaya` int(11) DEFAULT NULL,
  `total_semua_biaya_perjam` int(11) DEFAULT NULL,
  `total_tanpa_penyusutan_n_mtc` int(11) DEFAULT NULL,
  `total_tanpa_penyusutan_n_mtc_perjam` int(11) DEFAULT NULL,
  `total_tanpa_penyusutan` int(11) DEFAULT NULL,
  `total_tanpa_penyusutan_perjam` int(11) DEFAULT NULL,
  `total_tanpa_mtc` int(11) DEFAULT NULL,
  `total_tanpa_mtc_perjam` int(11) DEFAULT NULL,
  `id_logs` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `dibuat_oleh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_log_recalculate`
--

LOCK TABLES `history_log_recalculate` WRITE;
/*!40000 ALTER TABLE `history_log_recalculate` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_log_recalculate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:08
