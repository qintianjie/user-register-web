-- MySQL dump 10.13  Distrib 5.5.24, for Linux (x86_64)
--
-- Host: localhost    Database: colorcc
-- ------------------------------------------------------
-- Server version	5.5.22-log

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
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE` (
  `ID` int(11) NOT NULL,
  `ROLE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROLE_UNIQUE` (`ROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
INSERT INTO `ROLE` VALUES (1,'USER',NULL),(2,'ADMIN',NULL),(3,'SUPERUSER',NULL);
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(40) CHARACTER SET latin1 NOT NULL,
  `PASSWD` varchar(41) CHARACTER SET latin1 NOT NULL,
  `SALT` varchar(8) CHARACTER SET latin1 NOT NULL,
  `REGISTER_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_DETAIL`
--

DROP TABLE IF EXISTS `USER_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_DETAIL` (
  `ID` bigint(20) NOT NULL,
  `USER_ID` bigint(20) NOT NULL,
  `USER_NAME` varchar(45) DEFAULT NULL,
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) DEFAULT NULL,
  `USER_GROUP_ID` varchar(45) DEFAULT NULL,
  `DESCRIBE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_DETAIL`
--

LOCK TABLES `USER_DETAIL` WRITE;
/*!40000 ALTER TABLE `USER_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_GROUP`
--

DROP TABLE IF EXISTS `USER_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_GROUP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `GROUP_NAME_UNIQUE` (`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_GROUP`
--

LOCK TABLES `USER_GROUP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE`
--

DROP TABLE IF EXISTS `USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ROLE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE`
--

LOCK TABLES `USER_ROLE` WRITE;
/*!40000 ALTER TABLE `USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-19 18:49:17