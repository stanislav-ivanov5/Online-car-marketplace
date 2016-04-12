CREATE DATABASE  IF NOT EXISTS `mobile` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mobile`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: mobile
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `validity` datetime NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `phone_num` varchar(45) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mps_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ad_id`),
  KEY `fk_Ad_User1_idx` (`user_id`),
  KEY `fk_Ad_MPS1_idx` (`mps_id`),
  KEY `fk_Ad_city1_idx` (`city_id`),
  CONSTRAINT `fk_Ad_MPS1` FOREIGN KEY (`mps_id`) REFERENCES `mps` (`mps_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ad_User1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ad_city1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chassis_category`
--

DROP TABLE IF EXISTS `chassis_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chassis_category` (
  `chassis_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_cabrio` varchar(45) NOT NULL,
  PRIMARY KEY (`chassis_category_id`),
  UNIQUE KEY `name_cabrio_UNIQUE` (`name_cabrio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chassis_category`
--

LOCK TABLES `chassis_category` WRITE;
/*!40000 ALTER TABLE `chassis_category` DISABLE KEYS */;
INSERT INTO `chassis_category` VALUES (4,'Cabrio'),(1,'Coupe'),(3,'Estate'),(5,'Hatchback'),(2,'Sedan');
/*!40000 ALTER TABLE `chassis_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (14,'Blagoevgrad'),(8,'Burgas'),(11,'Dobrich'),(17,'Haskovo'),(13,'Lovech'),(5,'Pernik'),(12,'Pleven'),(3,'Plovdiv'),(6,'Provadia'),(7,'Purvomai'),(9,'Rousse'),(18,'Shumen'),(1,'Sofia'),(19,'Stara Zagora'),(10,'Tarnovo'),(2,'Varna'),(15,'Vidin'),(16,'Vratsa');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`color_id`),
  UNIQUE KEY `idColor_UNIQUE` (`color_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (4,'Black'),(3,'Blue'),(5,'Green'),(1,'Red'),(2,'White');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine`
--

DROP TABLE IF EXISTS `engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine` (
  `engine_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_engine` varchar(45) NOT NULL,
  PRIMARY KEY (`engine_id`),
  UNIQUE KEY `type_engine_UNIQUE` (`type_engine`),
  UNIQUE KEY `engine_id_UNIQUE` (`engine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine`
--

LOCK TABLES `engine` WRITE;
/*!40000 ALTER TABLE `engine` DISABLE KEYS */;
INSERT INTO `engine` VALUES (1,'Benzin'),(2,'Diesel'),(4,'Electric'),(3,'Hybrid');
/*!40000 ALTER TABLE `engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gearbox`
--

DROP TABLE IF EXISTS `gearbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gearbox` (
  `gearbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`gearbox_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gearbox`
--

LOCK TABLES `gearbox` WRITE;
/*!40000 ALTER TABLE `gearbox` DISABLE KEYS */;
INSERT INTO `gearbox` VALUES (2,'Automatic'),(1,'Manual'),(3,'Semi-automatic');
/*!40000 ALTER TABLE `gearbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marka`
--

DROP TABLE IF EXISTS `marka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marka` (
  `marka_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`marka_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marka`
--

LOCK TABLES `marka` WRITE;
/*!40000 ALTER TABLE `marka` DISABLE KEYS */;
INSERT INTO `marka` VALUES (3,'Audi'),(2,'BMW'),(8,'Citroen'),(5,'Honda'),(10,'Lada'),(1,'Mercedes'),(4,'Opel'),(7,'Peugeot'),(6,'VW');
/*!40000 ALTER TABLE `marka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `marka_id` int(11) NOT NULL,
  PRIMARY KEY (`model_id`,`marka_id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_Model_Marka1` (`marka_id`),
  CONSTRAINT `fk_Model_Marka1` FOREIGN KEY (`marka_id`) REFERENCES `marka` (`marka_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (45,'1 series',2),(44,'2 series',2),(61,'207',7),(65,'2105',10),(40,'3 series',2),(62,'307',7),(41,'5 series',2),(42,'6 series',2),(43,'7 series',2),(35,'A-class',1),(46,'A1',3),(47,'A2',3),(48,'A3',3),(49,'A4',3),(50,'A5',3),(51,'A6',3),(55,'Accord',5),(53,'Astra',4),(36,'B-class',1),(37,'C-class',1),(63,'C1',8),(64,'C2',8),(54,'Civic',5),(38,'E-class',1),(56,'Golf 2',6),(57,'Golf 3',6),(58,'Golf 4',6),(59,'Golf 5',6),(66,'Niva',10),(60,'Passat',6),(39,'S-class',1),(67,'Samara',10),(52,'Vectra',4);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mps`
--

DROP TABLE IF EXISTS `mps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mps` (
  `mps_id` int(11) NOT NULL AUTO_INCREMENT,
  `mps_category_id` int(11) NOT NULL,
  `power` int(11) NOT NULL,
  `km` int(11) NOT NULL,
  `production_date` int(11) NOT NULL,
  `gearbox_id` int(11) NOT NULL,
  `engine_id` int(11) NOT NULL,
  `marka_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `chassis_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`mps_id`),
  KEY `fk_MPS_MPS_Category1_idx` (`mps_category_id`),
  KEY `fk_MPS_Model1_idx` (`model_id`),
  KEY `fk_MPS_Chassis_Category1_idx` (`chassis_id`),
  KEY `fk_MPS_Color1_idx` (`color_id`),
  KEY `fk_MPS_Gearbox1_idx` (`gearbox_id`),
  KEY `fk_MPS_Engine1_idx` (`engine_id`),
  CONSTRAINT `fk_MPS_Chassis_Category1` FOREIGN KEY (`chassis_id`) REFERENCES `chassis_category` (`chassis_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MPS_Color1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MPS_Engine1` FOREIGN KEY (`engine_id`) REFERENCES `engine` (`engine_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MPS_Gearbox1` FOREIGN KEY (`gearbox_id`) REFERENCES `gearbox` (`gearbox_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MPS_MPS_Category1` FOREIGN KEY (`mps_category_id`) REFERENCES `mps_category` (`mps_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MPS_Model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mps`
--

LOCK TABLES `mps` WRITE;
/*!40000 ALTER TABLE `mps` DISABLE KEYS */;
INSERT INTO `mps` VALUES (2,1,500,600,2005,2,2,8,2,1,47,0),(3,1,501,601,2005,2,2,3,2,1,47,0),(4,1,511,611,2005,2,2,3,2,1,47,0),(5,1,521,621,2005,2,2,3,2,1,47,0),(6,1,531,631,2005,2,2,3,2,1,47,0),(7,1,541,641,2005,2,2,3,2,1,47,0),(8,1,551,651,2005,2,2,3,2,1,47,0),(9,1,561,661,2005,2,2,3,2,1,47,0),(10,1,571,671,2005,2,2,3,2,1,47,0),(11,1,581,681,2005,2,2,3,2,1,47,0),(12,1,591,691,2005,2,2,3,2,1,47,0),(13,1,601,701,2005,2,2,3,2,1,47,0),(14,1,611,711,2005,2,2,3,2,1,47,0),(15,1,621,721,2005,2,2,3,2,1,47,0),(16,1,631,731,2005,2,2,3,2,1,47,0),(17,1,641,741,2005,2,2,3,2,1,47,0),(18,1,651,751,2005,2,2,3,2,1,47,0),(19,1,661,761,2005,2,2,3,2,1,47,0),(20,1,671,771,2005,2,2,3,2,1,47,0),(21,1,681,781,2005,2,2,3,2,1,47,0),(22,1,691,791,2005,2,2,3,2,1,47,0),(23,1,701,801,2005,2,2,3,2,1,47,0),(24,1,711,811,2005,2,2,3,2,1,47,0),(25,1,721,821,2005,2,2,3,2,1,47,0),(26,1,731,831,2005,2,2,3,2,1,47,0),(27,1,741,841,2005,2,2,3,2,1,47,0),(28,1,501,601,2005,2,2,5,2,1,67,0),(29,1,511,611,2005,2,2,5,2,1,67,0),(30,1,521,621,2005,2,2,5,2,1,67,0),(31,1,531,631,2005,2,2,5,2,1,67,0),(32,1,541,641,2005,2,2,5,2,1,67,0),(33,1,551,651,2005,2,2,5,2,1,67,0),(34,1,561,661,2005,2,2,5,2,1,67,0),(35,1,571,671,2005,2,2,5,2,1,67,0),(36,1,581,681,2005,2,2,5,2,1,67,0),(37,1,591,691,2005,2,2,5,2,1,67,0),(38,1,601,701,2005,2,2,5,2,1,67,0),(39,1,611,711,2005,2,2,5,2,1,67,0),(40,1,621,721,2005,2,2,5,2,1,67,0),(41,1,631,731,2005,2,2,5,2,1,67,0),(42,1,641,741,2005,2,2,5,2,1,67,0),(43,1,651,751,2005,2,2,5,2,1,67,0),(44,1,661,761,2005,2,2,5,2,1,67,0),(45,1,671,771,2005,2,2,5,2,1,67,0),(46,1,681,781,2005,2,2,5,2,1,67,0),(47,1,691,791,2005,2,2,5,2,1,67,0),(48,1,701,801,2005,2,2,5,2,1,67,0),(49,1,711,811,2005,2,2,5,2,1,67,0),(50,1,721,821,2005,2,2,5,2,1,67,0),(51,1,731,831,2005,2,2,5,2,1,67,0),(52,1,741,841,2005,2,2,5,2,1,67,0);
/*!40000 ALTER TABLE `mps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mps_and_engine`
--

DROP TABLE IF EXISTS `mps_and_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mps_and_engine` (
  `mps_category_id` int(11) NOT NULL COMMENT 'Kak se pravi dvete zaedno da sa unique',
  `engine_id` int(11) NOT NULL COMMENT 'Kak se pravi dvete zaedno da sa unique',
  PRIMARY KEY (`engine_id`,`mps_category_id`),
  KEY `fk_MPS_AND_Engine_MPS_Category1_idx` (`mps_category_id`),
  CONSTRAINT `fk_MPS_AND_Engine_Engine1` FOREIGN KEY (`engine_id`) REFERENCES `engine` (`engine_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MPS_AND_Engine_MPS_Category1` FOREIGN KEY (`mps_category_id`) REFERENCES `mps_category` (`mps_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mps_and_engine`
--

LOCK TABLES `mps_and_engine` WRITE;
/*!40000 ALTER TABLE `mps_and_engine` DISABLE KEYS */;
INSERT INTO `mps_and_engine` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,2);
/*!40000 ALTER TABLE `mps_and_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mps_category`
--

DROP TABLE IF EXISTS `mps_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mps_category` (
  `mps_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_mps` varchar(45) NOT NULL,
  PRIMARY KEY (`mps_category_id`),
  UNIQUE KEY `idMPS_Category_UNIQUE` (`mps_category_id`),
  UNIQUE KEY `name_mps_UNIQUE` (`name_mps`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mps_category`
--

LOCK TABLES `mps_category` WRITE;
/*!40000 ALTER TABLE `mps_category` DISABLE KEYS */;
INSERT INTO `mps_category` VALUES (1,'automobile'),(2,'motorcyle');
/*!40000 ALTER TABLE `mps_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `photo` blob,
  PRIMARY KEY (`photo_id`),
  KEY `ad_id_fk` (`ad_id`),
  CONSTRAINT `ad_id_fk` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone_num` varchar(45) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_num_UNIQUE` (`phone_num`),
  KEY `fk_User_User_Type1_idx` (`user_type_id`),
  CONSTRAINT `fk_User_User_Type1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'userna','0888777333','email',4,'paswrod'),(7,'imememe','02221119199191','mamamam',4,'adsfajdlfjalksdjf'),(8,'nama','mamama','8777666777',1,'parola'),(9,'ivasn','asdf@','0123456789',4,'passs'),(10,'gosho','gosho@','0999888777',4,'dsaf'),(11,'joro','was@','0555444888',4,'passsa'),(12,'rado','rado@.gmail.com','8799985854',1,'sdsdsadassas');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`user_type_id`),
  UNIQUE KEY `user_type_UNIQUE` (`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (2,'admin'),(3,'dealer'),(1,'guest'),(4,'user');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-18  3:23:08
