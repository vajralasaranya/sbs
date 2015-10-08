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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USERID` int(20) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `GENDER` varchar(5) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(15) DEFAULT NULL,
  `ROLEID` int(20) DEFAULT NULL,
  `userstatus` varchar(20) DEFAULT NULL,
  `REGISTRATION_DATE` date DEFAULT NULL,
  `LAST_MODIFIED_DATE` date DEFAULT NULL,
  `EMAILID` varchar(30) NOT NULL,
  `PHONENUM` varchar(15) NOT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'ww','ww','w','M','e','ew',0,'InActive','2015-10-04','2015-10-04','ww','ww'),(3,'f','f','f','F','j','f',0,'InActive','2015-10-04','2015-10-04','ff','ff'),(4,'d','g','f','F','g','ss',0,'InActive','2015-10-04','2015-10-04','ff','ff'),(5,'s','s','s','M','s','s',0,'InActive','2015-10-04','2015-10-04','s','s'),(6,'y','y','y','M','y','y',0,'InActive','2015-10-04','2015-10-04','y','y'),(7,'g','g','g','M','g','g',0,'InActive','2015-10-04','2015-10-04','g','g'),(8,'h','h','h','M','h','h',0,'InActive','2015-10-04','2015-10-04','h','h'),(9,'jaswitha','ejh','vankineni','F','jaswitha','Jaswi123',0,'InActive','2015-10-04','2015-10-04','jvankine@asu.edu','6233631005'),(10,'srikanth','venkata','vemulakonda','M','srikanthvvgs','curdrice',0,'InActive','2015-10-04','2015-10-04','srikanthvvgs@gmail.com','8329658095'),(11,'fbrdb','gvd','fb','F','DGR','DFDDFVF',0,'InActive','2015-10-06','2015-10-06','fghfhr@gmail.com','548968798');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-07  0:59:32