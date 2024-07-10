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
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license` (
  `Driving_LicencsNo` int NOT NULL,
  `Issue_Date` date NOT NULL,
  `Expiry_Date` date NOT NULL,
  `Driver_Id` int NOT NULL,
  `CountryofIssue` varchar(255) NOT NULL,
  PRIMARY KEY (`Driving_LicencsNo`),
  UNIQUE KEY `Driver_Id` (`Driver_Id`),
  CONSTRAINT `fk_Driver_Id` FOREIGN KEY (`Driver_Id`) REFERENCES `driver` (`Driver_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (9999,'2011-01-03','2036-01-01',11,'France'),(22222,'2011-01-03','2031-01-01',4,'USA'),(55555,'2015-01-05','2032-01-01',7,'Brazil'),(66666,'2016-01-03','2033-01-01',8,'Peru'),(77777,'2017-01-03','2033-01-01',9,'Argentina'),(88888,'2018-01-03','2035-01-01',10,'Netherlands'),(101010,'2011-01-03','2037-01-01',12,'Spain'),(333333,'2013-01-03','2032-01-01',5,'Canada'),(1111111,'2010-01-01','2030-01-01',3,'UK'),(4444444,'2014-01-04','2032-01-04',6,'Mexico'),(11011011,'2011-01-03','2038-01-01',13,'Germany');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 22:43:45
