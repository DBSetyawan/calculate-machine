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
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (3,1,'Account','','_self','voyager-group','#000000',NULL,3,'2021-01-19 01:01:48','2021-04-28 15:30:04','voyager.users.index','null'),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-01-19 01:01:48','2021-03-01 21:12:57','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2021-01-19 01:01:48','2021-04-28 17:43:02',NULL,NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-01-19 01:01:48','2021-04-22 01:17:20','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,4,'2021-01-19 01:01:48','2021-04-28 16:29:10','voyager.compass.index',NULL),(9,1,'Core','','_self','voyager-dot-3','#000000',5,5,'2021-01-19 01:01:48','2021-04-28 17:20:18','voyager.bread.index','null'),(10,1,'Settings','','_self','voyager-settings',NULL,5,1,'2021-01-19 01:01:48','2021-03-07 06:21:51','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,6,'2021-01-19 01:01:48','2021-04-28 17:20:18','voyager.hooks',NULL),(16,1,'Companies','','_self','voyager-company','#000000',110,1,'2021-01-19 19:11:14','2021-04-28 17:43:09','voyager.company.index','null'),(17,1,'Gaji jabatan','/admin/job-level','_self','voyager-tag','#000000',110,5,'2021-01-19 19:18:50','2021-04-30 10:15:58',NULL,''),(19,1,'Penyusutan','','_self','voyager-double-down','#000000',110,3,'2021-01-19 19:38:51','2021-04-30 10:15:53','voyager.penyusutan.index','null'),(20,1,'Listrik','','_self','voyager-wand','#000000',103,1,'2021-01-19 20:25:15','2021-04-28 17:43:13','voyager.listrik.index','null'),(22,1,'Account MTC','','_self','voyager-book','#000000',110,6,'2021-01-19 20:48:09','2021-04-30 10:15:58','voyager.account-mtc.index','null'),(23,1,'Labor','','_self','voyager-documentation','#000000',103,2,'2021-01-19 21:15:08','2021-04-30 10:15:58','voyager.labor.index','null'),(25,1,'Gaji lainnya','','_self','voyager-documentation','#000000',110,13,'2021-01-19 21:51:27','2021-04-30 10:16:16','voyager.laporan-gaji-lain.index','null'),(29,1,'Bagian penjualan','','_self','voyager-receipt','#000000',110,12,'2021-01-19 23:17:55','2021-04-30 10:16:06','voyager.laporan-bagian-penjualan.index','null'),(31,1,'Biaya Administrasi Umum','','_self','voyager-book','#000000',110,14,'2021-01-19 23:39:36','2021-04-30 10:16:16','voyager.laporan-biaya-administrasi-umum.index','null'),(34,1,'Mesin','/admin/mesin','_self','voyager-harddrive','#000000',104,1,'2021-01-20 01:29:29','2021-04-28 16:48:21',NULL,''),(35,1,'Kategori Bagians','','_self','voyager-categories',NULL,110,7,'2021-01-20 01:33:54','2021-04-30 10:15:58','voyager.kategori-bagian.index',NULL),(40,1,'MTC','','_self','voyager-file-text','#000000',110,4,'2021-01-28 18:18:08','2021-04-30 10:15:58','voyager.rpt-mtc.index','null'),(48,1,'Logs','','_self','voyager-params','#000000',NULL,5,'2021-01-29 00:38:22','2021-04-28 17:29:31',NULL,''),(51,1,'Kalkulasi mesin','','_self','voyager-treasure-open','#000000',103,4,'2021-02-01 01:00:48','2021-04-30 10:16:14','tr.total.kalkulasi','null'),(58,1,'voyager::seeders.menu_items.database','','_self','voyager-data',NULL,56,11,'2021-02-23 01:20:07','2021-02-23 01:20:07','voyager.database.index',NULL),(59,1,'voyager::seeders.menu_items.compass','','_self','voyager-compass',NULL,56,12,'2021-02-23 01:20:07','2021-02-23 01:20:07','voyager.compass.index',NULL),(60,1,'voyager::seeders.menu_items.bread','','_self','voyager-bread',NULL,56,13,'2021-02-23 01:20:07','2021-02-23 01:20:07','voyager.bread.index',NULL),(63,1,'Group mesin','','_self','voyager-harddrive','#000000',110,10,'2021-02-24 04:55:45','2021-04-30 10:15:58','voyager.lb8-kategori-mesin.index','null'),(64,1,'Dashboard','/admin/dashboard','_self','voyager-github-icon','#000000',NULL,1,'2021-02-25 03:57:56','2021-02-25 05:40:21',NULL,''),(75,1,'Document','','_self','voyager-folder','#000000',NULL,4,'2021-02-26 05:51:41','2021-03-10 01:46:24','voyager.media.index','null'),(78,1,'Menus','','_self','voyager-helm',NULL,5,3,'2021-03-04 23:42:15','2021-04-22 01:17:20','voyager.menus.index',NULL),(80,1,'Listrik Totals','','_self','voyager-forward','#000000',48,4,'2021-03-06 16:51:01','2021-04-28 17:29:57','voyager.listrik-total.index','null'),(81,1,'Penyusutan Totals','','_self','voyager-forward','#000000',48,11,'2021-03-06 19:31:44','2021-04-28 17:40:14','voyager.penyusutan-total.index','null'),(82,1,'Transaksi Mtc Totals','','_self','voyager-forward','#000000',48,6,'2021-03-07 04:14:28','2021-04-28 17:31:25','voyager.rpt-mtc-total.index','null'),(84,1,'Account Mtc Totals','','_self','voyager-forward','#000000',48,5,'2021-03-07 04:58:11','2021-04-28 17:31:13','voyager.account-mtc-total.index','null'),(86,1,'Gji Lain Totals','','_self','voyager-forward','#000000',48,9,'2021-03-07 05:35:01','2021-04-28 17:40:14','voyager.gji-lain-total.index','null'),(87,1,'Bagian penjualan total','','_self','voyager-forward','#000000',48,10,'2021-03-07 05:51:15','2021-04-28 17:40:14','voyager.b-penjualan-total.index','null'),(88,1,'Biaya Administrasi Umum Total','','_self','voyager-forward','#000000',48,13,'2021-03-07 06:15:43','2021-04-28 17:40:14','voyager.bau-total.index','null'),(89,1,'Temporary Kalkulasi','','_self','voyager-refresh','#000000',103,3,'2021-03-07 06:42:20','2021-04-30 10:16:14','voyager.all-recalculate.index','null'),(90,1,'Asumsi','','_self','voyager-browser','#000000',110,11,'2021-03-08 01:47:59','2021-04-30 10:15:58','voyager.lwbp-master.index','null'),(93,1,'Log Labor Total','','_self','voyager-forward','#000000',48,7,'2021-03-29 07:26:13','2021-04-28 17:40:14','voyager.laborttals.index','null'),(95,1,'Recalulate history Listrik','','_self','voyager-forward','#000000',48,8,'2021-03-30 01:51:12','2021-04-28 17:40:14','voyager.hlogs-listriks.index','null'),(96,1,'History Recalculate Temporaries','','_self','voyager-bar-chart','#000000',77,1,'2021-03-30 06:52:36','2021-03-30 09:37:50','voyager.history-recalculate-temporary.index','null'),(97,1,'Mesin Totals','','_self','voyager-forward','#000000',34,1,'2021-03-31 02:51:58','2021-04-28 16:48:22','voyager.mesin-total.index','null'),(98,1,'Group Mesin Logs','','_self','voyager-forward',NULL,48,2,'2021-03-31 06:22:01','2021-04-28 17:29:20','voyager.group-mesin-logs.index',NULL),(99,1,'Kategoribagian Logs','','_self','voyager-forward','#000000',48,1,'2021-03-31 07:19:03','2021-04-28 17:29:17','voyager.kategoribagian-logs.index','null'),(100,1,'Gaji Karyawan Logs','','_self','voyager-forward','#000000',48,12,'2021-03-31 07:40:40','2021-04-28 17:40:14','voyager.gaji-karyawan-logs.index','null'),(101,1,'Log history calc','/admin/history-recalculate-temporary','_self','voyager-thumb-tack','#000000',48,3,'2021-04-09 10:26:50','2021-04-28 17:29:40',NULL,''),(102,1,'Lokasi mesin','','_self','voyager-location','#000000',47,1,'2021-04-12 08:06:12','2021-04-28 16:48:53','voyager.location-machine.index','null'),(103,1,'Transaction','','_self','voyager-polaroid','#9193a6',NULL,7,'2021-04-20 03:08:54','2021-04-28 17:33:27',NULL,''),(104,1,'Special Labors','','_self','voyager-polaroid','#000000',47,2,'2021-04-20 04:24:32','2021-04-28 16:48:53','voyager.special-labor.index','null'),(106,1,'Mesin','/admin/mesin','_self','voyager-bookmark','#a19b9b',110,2,'2021-04-28 16:55:55','2021-04-28 17:43:09',NULL,''),(108,1,'Detail Labor','/admin/special-labor','_self','voyager-file-text','#000000',110,8,'2021-04-28 16:59:56','2021-04-30 10:15:58',NULL,''),(109,1,'Location Machine','admin/location-machine','_self','voyager-location','#000000',110,9,'2021-04-28 17:13:47','2021-04-30 10:15:58',NULL,''),(110,1,'Master','','_self','voyager-markdown','#000000',NULL,6,'2021-04-28 17:19:54','2021-04-28 17:42:36',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:06
