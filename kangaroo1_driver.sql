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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `Driver_Id` int NOT NULL AUTO_INCREMENT,
  `Driver_Name` varchar(255) NOT NULL,
  `Email_Id` varchar(255) NOT NULL,
  `Driving_LicenceNo` int NOT NULL,
  `Restaurant_Id` int NOT NULL,
  `Vehicle_Id` int NOT NULL,
  `Manager_Id` int NOT NULL,
  PRIMARY KEY (`Driver_Id`),
  UNIQUE KEY `Email_Id` (`Email_Id`),
  UNIQUE KEY `Vehicle_Id` (`Vehicle_Id`),
  UNIQUE KEY `Vehicle_Id_2` (`Vehicle_Id`),
  UNIQUE KEY `Vehicle_Id_3` (`Vehicle_Id`),
  UNIQUE KEY `Vehicle_Id_4` (`Vehicle_Id`),
  UNIQUE KEY `Vehicle_Id_5` (`Vehicle_Id`),
  UNIQUE KEY `Vehicle_Id_6` (`Vehicle_Id`),
  UNIQUE KEY `Vehicle_Id_7` (`Vehicle_Id`),
  KEY `fk_MId` (`Manager_Id`),
  KEY `Driving_LicenceNo` (`Driving_LicenceNo`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`Driving_LicenceNo`) REFERENCES `kangaroo`.`licence` (`Driving_LicenceNo`),
  CONSTRAINT `driver_ibfk_2` FOREIGN KEY (`Vehicle_Id`) REFERENCES `vehicle` (`Vehicle_Id`),
  CONSTRAINT `fk_MId` FOREIGN KEY (`Manager_Id`) REFERENCES `manager` (`Manager_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Paul Farin','paul.farrin@farrin.co.uk',1111111,1,1,1),(2,'Vicky Schellenberge','vschellenberge@hotmail.com',22222,2,2,2),(3,'Marlon Tromblay','mtromblay@yahoo.com',333333,3,3,3),(4,'Dudley Dibartolo','dudley_dibartolo@yahoo.com',4444444,4,4,4),(5,'Carline Bulcao','carline@yahoo.com',55555,5,5,5),(6,'Margarita Srloski','margarita_orloski@yahoo.com',66666,6,6,6),(7,'Lewis Mellom','lewis@yahoo.com',77777,7,7,7),(8,'Jestine Driscol','jestine_driscol@driscol.co.uk',88888,8,8,8),(9,'Jeff Brossoit','jeff.brossoit@yahoo.com',9999,9,9,9),(10,'Bronwyn Bridgford','bronwyn.bridgford@yahoo.com',101010,10,10,10),(11,'Ashley Tropp','ashley.tropp@gmail.com',11011011,11,11,11);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
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
