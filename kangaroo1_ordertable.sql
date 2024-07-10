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
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertable` (
  `Order_Id` int NOT NULL AUTO_INCREMENT,
  `OrderDate` timestamp NOT NULL,
  `Restaurant_Id` int NOT NULL,
  `Customer_Id` int NOT NULL,
  `Assigned_Driver_Id` int NOT NULL,
  PRIMARY KEY (`Order_Id`),
  KEY `fk_RID` (`Restaurant_Id`),
  KEY `fk_CID` (`Customer_Id`),
  KEY `fk_DID` (`Assigned_Driver_Id`),
  CONSTRAINT `fk_CID` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`),
  CONSTRAINT `fk_DID` FOREIGN KEY (`Assigned_Driver_Id`) REFERENCES `driver` (`Driver_Id`),
  CONSTRAINT `fk_RID` FOREIGN KEY (`Restaurant_Id`) REFERENCES `restaurant` (`Restaurant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertable`
--

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (1,'2023-08-07 23:00:00',1,1,3),(2,'2023-08-06 23:00:00',2,2,4),(3,'2023-08-05 23:00:00',3,3,5),(4,'2023-08-04 23:00:00',4,4,6),(5,'2023-08-03 23:00:00',5,5,7),(6,'2023-08-02 23:00:00',6,6,8),(7,'2023-08-02 23:00:00',7,7,9),(8,'2023-08-01 23:00:00',8,8,10),(9,'2023-07-31 23:00:00',9,9,11),(10,'2023-08-07 23:00:00',10,10,12),(11,'2023-08-06 23:00:00',11,11,13),(12,'2023-08-05 23:00:00',1,1,4),(13,'2023-08-04 23:00:00',2,2,5),(14,'2023-08-03 23:00:00',3,3,6);
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 22:43:44
