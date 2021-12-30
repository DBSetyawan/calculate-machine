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
-- Table structure for table `total_kalkulasi_tanpa_penyusutan`
--

DROP TABLE IF EXISTS `total_kalkulasi_tanpa_penyusutan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total_kalkulasi_tanpa_penyusutan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_calc_tnp_penyusutan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(10) unsigned DEFAULT NULL,
  `code_mesin` int(10) unsigned DEFAULT NULL,
  `group_mesin` int(10) unsigned DEFAULT NULL,
  `category_bagian` int(10) unsigned DEFAULT NULL,
  `listrik` double DEFAULT NULL,
  `penyusutan` double DEFAULT NULL,
  `labor` double DEFAULT NULL,
  `mtc` double DEFAULT NULL,
  `gaji_lainnya` double DEFAULT NULL,
  `bagian_penjualan` double DEFAULT NULL,
  `bau` double DEFAULT NULL,
  `semua_total_biaya` double DEFAULT NULL,
  `semua_total_biaya_perjam` double DEFAULT NULL,
  `tanpa_penyusutan_plus_mtc_total` double DEFAULT NULL,
  `tanpa_penyusutan_plus_mtc_perjam` double DEFAULT NULL,
  `tanpa_penyusutan_total` double DEFAULT NULL,
  `tanpa_penyusutan_total_perjam` double DEFAULT NULL,
  `tanpa_mtc_total` double DEFAULT NULL,
  `tanpa_mtc_total_perjam` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `b_prod_lain` double DEFAULT NULL,
  `code_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_parent_id` (`company_parent_id`),
  KEY `code_mesin` (`code_mesin`),
  KEY `category_bagian` (`category_bagian`),
  KEY `code_mesin_2` (`code_mesin`),
  KEY `total_kalkulasi_tanpa_penyusutan_group_mesin_index` (`group_mesin`),
  CONSTRAINT `company_fk_kalkulasi` FOREIGN KEY (`company_parent_id`) REFERENCES `company` (`id`) ON DELETE SET NULL,
  CONSTRAINT `group_mesin_fk_kalkulasi` FOREIGN KEY (`group_mesin`) REFERENCES `lb8_kategori_mesin` (`id`) ON DELETE SET NULL,
  CONSTRAINT `kategori_bagian_fk_kalkulasi` FOREIGN KEY (`category_bagian`) REFERENCES `kategori_bagian` (`id`) ON DELETE SET NULL,
  CONSTRAINT `mesin_fk_bk_kalkulasi` FOREIGN KEY (`code_mesin`) REFERENCES `mesin` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_kalkulasi_tanpa_penyusutan`
--

LOCK TABLES `total_kalkulasi_tanpa_penyusutan` WRITE;
/*!40000 ALTER TABLE `total_kalkulasi_tanpa_penyusutan` DISABLE KEYS */;
/*!40000 ALTER TABLE `total_kalkulasi_tanpa_penyusutan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:15
