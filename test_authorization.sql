-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `authorization`
--

DROP TABLE IF EXISTS `authorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorization` (
  `AUTHORIZATIONID` int(20) NOT NULL,
  `AUTHORIZED_BY_USERID` int(20) NOT NULL,
  `AUTHORIZED_TO_USERID` int(20) NOT NULL,
  `TRANSACTION_ID` int(20) DEFAULT NULL,
  `REQUEST_CREATION_TS` date DEFAULT NULL,
  `REQUEST_TYPE` varchar(500) DEFAULT NULL,
  `REQUEST_STATUS` varchar(10) NOT NULL,
  `APPROVAL_FLAG` varchar(10) DEFAULT NULL,
  `REQUEST_DESCRIPTION` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`AUTHORIZATIONID`),
  KEY `FK_USERBY` (`AUTHORIZED_BY_USERID`),
  KEY `FK_USERTO` (`AUTHORIZED_TO_USERID`),
  KEY `FK_TRANSACTION` (`TRANSACTION_ID`),
  CONSTRAINT `authorization_ibfk_1` FOREIGN KEY (`AUTHORIZED_BY_USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `authorization_ibfk_2` FOREIGN KEY (`AUTHORIZED_TO_USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `authorization_ibfk_3` FOREIGN KEY (`TRANSACTION_ID`) REFERENCES `transaction` (`TRANSACTIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorization`
--

LOCK TABLES `authorization` WRITE;
/*!40000 ALTER TABLE `authorization` DISABLE KEYS */;
/*!40000 ALTER TABLE `authorization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-01 20:38:57
