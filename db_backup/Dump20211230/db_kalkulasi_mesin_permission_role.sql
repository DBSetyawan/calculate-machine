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
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,5),(2,1),(3,1),(4,1),(5,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(42,5),(43,1),(43,5),(44,1),(44,5),(45,1),(45,5),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(52,5),(53,1),(53,5),(54,1),(54,5),(55,1),(55,5),(56,1),(57,1),(57,5),(58,1),(58,5),(59,1),(59,5),(60,1),(60,5),(61,1),(62,1),(62,5),(63,1),(63,5),(64,1),(64,5),(65,1),(65,5),(66,1),(67,1),(67,5),(68,1),(68,5),(69,1),(69,5),(70,1),(70,5),(71,1),(72,1),(72,5),(73,1),(73,5),(74,1),(74,5),(75,1),(75,5),(76,1),(77,1),(77,5),(78,1),(78,5),(79,1),(79,5),(80,1),(80,5),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(87,5),(88,1),(88,5),(89,1),(89,5),(90,1),(90,5),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(97,5),(98,1),(98,5),(99,1),(99,5),(100,1),(100,5),(101,1),(102,1),(102,5),(103,1),(103,5),(104,1),(104,5),(105,1),(105,5),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(112,5),(113,1),(113,5),(114,1),(114,5),(115,1),(115,5),(116,1),(116,5),(117,1),(117,5),(118,1),(118,5),(119,1),(119,5),(120,1),(120,5),(121,1),(122,1),(122,5),(123,1),(123,5),(124,1),(124,5),(125,1),(125,5),(126,1),(127,1),(127,5),(128,1),(128,5),(129,1),(129,5),(130,1),(130,5),(131,1),(132,1),(132,5),(133,1),(133,5),(134,1),(134,5),(135,1),(135,5),(136,1),(137,1),(137,5),(138,1),(138,5),(139,1),(139,5),(140,1),(140,5),(141,1),(142,1),(142,5),(143,1),(143,5),(144,1),(144,5),(145,1),(145,5),(146,1),(147,1),(147,5),(148,1),(148,5),(149,1),(149,5),(150,1),(150,5),(151,1),(152,1),(152,5),(153,1),(153,5),(154,1),(154,5),(155,1),(155,5),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(167,5),(168,1),(169,1),(170,1),(171,1),(172,1),(172,5),(173,1),(174,1),(175,1),(176,1),(177,1),(177,5),(178,1),(179,1),(180,1),(181,1),(182,1),(182,5),(183,1),(184,1),(185,1),(186,1),(187,1),(187,5),(188,1),(189,1),(190,1),(191,1),(197,1),(197,5),(198,1),(199,1),(200,1),(201,1),(202,1),(202,5),(203,1),(204,1),(205,1),(206,1),(207,1),(207,5),(208,1),(209,1),(210,1),(211,1),(212,1),(212,5),(213,1),(213,5),(214,1),(214,5),(215,1),(215,5),(216,1),(217,1),(217,5),(218,1),(218,5),(219,1),(219,5),(220,1),(220,5),(221,1),(227,1),(228,1),(229,1),(230,1),(231,1),(237,1),(238,1),(239,1),(240,1),(241,1),(242,1),(242,5),(243,1),(244,1),(245,1),(246,1),(247,1),(247,5),(248,1),(249,1),(250,1),(251,1),(252,1),(252,5),(253,1),(254,1),(255,1),(256,1),(257,1),(257,5),(258,1),(259,1),(260,1),(261,1),(262,1),(263,1),(264,1),(265,1),(266,1),(267,1),(267,5),(268,1),(268,5),(269,1),(269,5),(270,1),(270,5),(271,1),(272,1),(272,5),(273,1),(273,5),(274,1),(274,5),(275,1),(275,5),(276,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
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
