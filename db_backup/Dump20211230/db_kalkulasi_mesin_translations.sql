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
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2021-01-19 01:02:16','2021-01-19 01:02:16'),(2,'data_types','display_name_singular',6,'pt','Página','2021-01-19 01:02:16','2021-01-19 01:02:16'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2021-01-19 01:02:16','2021-01-19 01:02:16'),(4,'data_types','display_name_singular',4,'pt','Categoria','2021-01-19 01:02:16','2021-01-19 01:02:16'),(5,'data_types','display_name_singular',2,'pt','Menu','2021-01-19 01:02:16','2021-01-19 01:02:16'),(6,'data_types','display_name_singular',3,'pt','Função','2021-01-19 01:02:16','2021-01-19 01:02:16'),(7,'data_types','display_name_plural',5,'pt','Posts','2021-01-19 01:02:16','2021-01-19 01:02:16'),(8,'data_types','display_name_plural',6,'pt','Páginas','2021-01-19 01:02:16','2021-01-19 01:02:16'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2021-01-19 01:02:16','2021-01-19 01:02:16'),(10,'data_types','display_name_plural',4,'pt','Categorias','2021-01-19 01:02:16','2021-01-19 01:02:16'),(11,'data_types','display_name_plural',2,'pt','Menus','2021-01-19 01:02:16','2021-01-19 01:02:16'),(12,'data_types','display_name_plural',3,'pt','Funções','2021-01-19 01:02:16','2021-01-19 01:02:16'),(13,'categories','slug',1,'pt','categoria-1','2021-01-19 01:02:16','2021-01-19 01:02:16'),(14,'categories','name',1,'pt','Categoria 1','2021-01-19 01:02:16','2021-01-19 01:02:16'),(15,'categories','slug',2,'pt','categoria-2','2021-01-19 01:02:16','2021-01-19 01:02:16'),(16,'categories','name',2,'pt','Categoria 2','2021-01-19 01:02:16','2021-01-19 01:02:16'),(17,'pages','title',1,'pt','Olá Mundo','2021-01-19 01:02:16','2021-01-19 01:02:16'),(18,'pages','slug',1,'pt','ola-mundo','2021-01-19 01:02:16','2021-01-19 01:02:16'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2021-01-19 01:02:16','2021-01-19 01:02:16'),(20,'menu_items','title',1,'pt','Painel de Controle','2021-01-19 01:02:16','2021-01-19 01:02:16'),(21,'menu_items','title',2,'pt','Media','2021-01-19 01:02:16','2021-01-19 01:02:16'),(22,'menu_items','title',13,'pt','Publicações','2021-01-19 01:02:16','2021-01-19 01:02:16'),(23,'menu_items','title',3,'pt','Utilizadores','2021-01-19 01:02:16','2021-01-19 01:02:16'),(24,'menu_items','title',12,'pt','Categorias','2021-01-19 01:02:16','2021-01-19 01:02:16'),(25,'menu_items','title',14,'pt','Páginas','2021-01-19 01:02:16','2021-01-19 01:02:16'),(26,'menu_items','title',4,'pt','Funções','2021-01-19 01:02:16','2021-01-19 01:02:16'),(27,'menu_items','title',5,'pt','Ferramentas','2021-01-19 01:02:16','2021-01-19 01:02:16'),(28,'menu_items','title',6,'pt','Menus','2021-01-19 01:02:16','2021-01-19 01:02:16'),(29,'menu_items','title',7,'pt','Base de dados','2021-01-19 01:02:16','2021-01-19 01:02:16'),(30,'menu_items','title',10,'pt','Configurações','2021-01-19 01:02:16','2021-01-19 01:02:16'),(31,'data_rows','display_name',367,'id','Id','2021-02-24 04:56:50','2021-02-24 04:56:50'),(32,'data_rows','display_name',368,'id','Nama Kategori Mesin','2021-02-24 04:56:50','2021-02-24 04:56:50'),(33,'data_rows','display_name',369,'id','Created At','2021-02-24 04:56:50','2021-02-24 04:56:50'),(34,'data_rows','display_name',370,'id','Updated At','2021-02-24 04:56:50','2021-02-24 04:56:50'),(35,'data_rows','display_name',371,'id','Changed By','2021-02-24 04:56:50','2021-02-24 04:56:50'),(36,'data_types','display_name_singular',36,'id','Lb8 Kategori Mesin','2021-02-24 04:56:50','2021-02-24 04:56:50'),(37,'data_types','display_name_plural',36,'id','Lb8 Kategori Mesins','2021-02-24 04:56:50','2021-02-24 04:56:50'),(38,'data_rows','display_name',372,'id','company','2021-02-24 06:47:02','2021-02-24 06:47:02'),(39,'data_rows','display_name',373,'id','Company Parent Id','2021-02-24 06:47:29','2021-02-24 06:47:29');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
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
