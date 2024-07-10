-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kangaroo1
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `Vehicle_Id` int NOT NULL AUTO_INCREMENT,
  `RegNo` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Dateofpurchase` date NOT NULL,
  `Engine_Size` int NOT NULL,
  `Driver_Id` int NOT NULL,
  PRIMARY KEY (`Vehicle_Id`),
  UNIQUE KEY `RegNo` (`RegNo`),
  KEY `Driver_Id` (`Driver_Id`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`Driver_Id`) REFERENCES `driver` (`Driver_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'BH13 HYF','Red','2012-01-01',50,3),(2,'A1 YFG','Red','2013-01-01',125,4),(3,'KLW 675M','Black','2014-01-01',125,5),(4,'AH1 XYZ','White','2015-01-01',250,6),(5,'F1 CDA','Blue','2016-01-01',250,7),(6,'56D TL','Green','2017-01-01',300,8),(7,'RE13 UUF','Brown','2018-01-01',300,9),(8,'TY1 67R','Yellow','2019-01-01',400,10),(9,'E3 RTH','Violet','2020-01-01',400,11),(10,'FD1 UHY','Silver','2021-01-01',500,12),(11,'KLX 67M','Gold','2022-01-01',500,13);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 22:43:46
