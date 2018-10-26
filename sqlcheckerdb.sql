-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: sqlautochecker
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `basicinfo`
--

DROP TABLE IF EXISTS `basicinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basicinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicinfo`
--

LOCK TABLES `basicinfo` WRITE;
/*!40000 ALTER TABLE `basicinfo` DISABLE KEYS */;
INSERT INTO `basicinfo` VALUES (1,'cat'),(2,'money'),(3,'david');
/*!40000 ALTER TABLE `basicinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bigdoc`
--

DROP TABLE IF EXISTS `bigdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bigdoc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `biginfo` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bigdoc`
--

LOCK TABLES `bigdoc` WRITE;
/*!40000 ALTER TABLE `bigdoc` DISABLE KEYS */;
INSERT INTO `bigdoc` VALUES (1,'cat'),(2,'money'),(3,'david'),(4,'mudit'),(5,'king'),(6,'queen');
/*!40000 ALTER TABLE `bigdoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailinfo`
--

DROP TABLE IF EXISTS `detailinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailinfo` (
  `id` int(11) NOT NULL,
  `dob` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailinfo`
--

LOCK TABLES `detailinfo` WRITE;
/*!40000 ALTER TABLE `detailinfo` DISABLE KEYS */;
INSERT INTO `detailinfo` VALUES (100,'cat'),(101,'money'),(102,'david'),(103,'mudit'),(104,'king'),(105,'queen');
/*!40000 ALTER TABLE `detailinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `midtype`
--

DROP TABLE IF EXISTS `midtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `midtype` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `info` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `midtype`
--

LOCK TABLES `midtype` WRITE;
/*!40000 ALTER TABLE `midtype` DISABLE KEYS */;
INSERT INTO `midtype` VALUES (1,'cat'),(2,'money'),(3,'david'),(4,'mudit'),(5,'king'),(6,'queen');
/*!40000 ALTER TABLE `midtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personalinfo`
--

DROP TABLE IF EXISTS `personalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personalinfo` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personalinfo`
--

LOCK TABLES `personalinfo` WRITE;
/*!40000 ALTER TABLE `personalinfo` DISABLE KEYS */;
INSERT INTO `personalinfo` VALUES (1,'cat'),(2,'money'),(3,'david'),(4,'mudit'),(5,'king'),(6,'queen');
/*!40000 ALTER TABLE `personalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smalldoc`
--

DROP TABLE IF EXISTS `smalldoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smalldoc` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `smallinfo` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smalldoc`
--

LOCK TABLES `smalldoc` WRITE;
/*!40000 ALTER TABLE `smalldoc` DISABLE KEYS */;
INSERT INTO `smalldoc` VALUES (1,'cat'),(2,'money'),(3,'david'),(4,'mudit'),(5,'king'),(6,'queen');
/*!40000 ALTER TABLE `smalldoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updateinfo`
--

DROP TABLE IF EXISTS `updateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updateinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changedinfo` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updateinfo`
--

LOCK TABLES `updateinfo` WRITE;
/*!40000 ALTER TABLE `updateinfo` DISABLE KEYS */;
INSERT INTO `updateinfo` VALUES (1,'cat'),(2,'money'),(3,'david'),(4,'mudit'),(5,'king'),(6,'queen');
/*!40000 ALTER TABLE `updateinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-27  2:16:58
