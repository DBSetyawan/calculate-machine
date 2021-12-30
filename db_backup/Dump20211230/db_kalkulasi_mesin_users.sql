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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias_roles` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'EDP Administrator','edp@admin.com','users/April2021/ev0CSyX3stEnevGWrsg7.jpg',NULL,'$2y$10$YuqOnjlh98F5G3wv0Ng9E.pZD2hUn30jlSdQa8vcz5ImKNYnfPloO','YtRaIDaHjMbzo7Q99LwLldPjGN3S7OqHwKOkBBuO9HguAQUpgKDA69xomVah','{\"locale\":\"id\"}','2021-01-19 01:02:15','2021-05-19 07:00:40',NULL),(2,2,'daniel','d@dev.id','users/March2021/PSrky2nOL7fmuFv7CHKa.png',NULL,'$2y$10$ppc7Qn4O57OAPupLosTUJu.NoN6AqvUHqaKdesZdbg7PtkAbijBPC',NULL,'{\"locale\":\"id\"}','2021-02-09 02:49:01','2021-03-05 00:36:53',NULL),(3,5,'Accounting','guest@secret.co','users/March2021/VJmjjsAEG0xgj4Dz1Zd2.png',NULL,'$2y$10$Qu9ocFstCW33xsSeKkSZ5.hDGb7Z3f7PKdkz2mUNLU7IDslT6JLba','qVmLiEsawZngzM2FC30WTPc5cNgQXJJKRCXsqgzINeqipQXQHdSxBxi5hiAL','{\"locale\":\"id\"}','2021-03-04 23:07:48','2021-04-13 08:33:14',NULL),(4,5,'accounting test','accounting@1.com','users/default.png',NULL,'$2y$10$F1SRBBr3P5DIuBnuxgmq0OJGj21XzDUfJTrBVC9pfB3G/Qobl7mOy',NULL,'{\"locale\":\"id\"}','2021-04-28 07:32:01','2021-04-28 07:32:01',NULL),(5,1,'daniel','daniel@edp.com','users/default.png',NULL,'$2y$10$v/x6n1Vk149YLvPnvkL12uvfiPd55ktBNRmRCp/E1CtflPoocOseu',NULL,NULL,'2021-05-19 06:59:33','2021-05-19 06:59:33',NULL),(6,1,'daniel','admin@admin.com','users/default.png',NULL,'$2y$10$OMW1KiRH2KtFFVdbsfrwHO9tYpSyylj2qoGklM/j7plcv79R9jNs6',NULL,NULL,'2021-06-29 02:55:53','2021-06-29 02:55:53',NULL),(7,1,'edp-administrator','edp@administrator.com','users/default.png',NULL,'$2y$10$d7mpZsRhBFYRhN6oCe.t.OxtkTLkCY2X8qh2zIamw4CWA798tLxqK',NULL,NULL,'2021-06-29 02:56:57','2021-06-29 02:56:58',NULL),(8,1,'daniel','daniel@developer.com','users/default.png',NULL,'$2y$10$dIWGt/OSZJuvo6RJ3K72tO.WHUz4j55Ln93ayWjO/kzcK9guTvJU6',NULL,NULL,'2021-08-01 06:35:11','2021-08-01 06:35:12',NULL),(9,1,'admin edp','tys@admin.com','users/default.png',NULL,'$2y$10$SA9cS2HjuR1QlMrfO6aXbeFW/Cn17voP42dnwgjQolsOpZEMbaUCy',NULL,NULL,'2021-09-06 01:32:08','2021-09-06 01:32:08',NULL),(10,1,'demo','demo@kalkulasi.dev','users/default.png',NULL,'$2y$10$lPhF7tgrsJoqAyD1WOAqeuOFKCvd5dZYNaA.vOqBTQjbnRS.OHuGa',NULL,NULL,'2021-10-05 01:21:55','2021-10-05 01:21:55',NULL),(11,1,'daniel budi setyawan','daniel@developer.co.id','users/default.png',NULL,'$2y$10$q1k4wwOwWEq2OI311klwxuyFY1Ve97pnmPugmxIcIpvB93qF6LOLW',NULL,NULL,'2021-12-30 04:50:01','2021-12-30 04:50:02',NULL),(12,5,'fintech','may@gmail.com','users/December2021/Zg9uly4OeiOikLVOmEzQ.jpg',NULL,'$2y$10$Bq6CBZlxhMsqexn/c2QR4exOM82sgYeWdQ7F0cS.7XSL9ImvKFBZG',NULL,'{\"locale\":\"id\"}','2021-12-30 04:52:34','2021-12-30 04:52:34',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:07
