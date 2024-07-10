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
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `Restaurant_ID` int NOT NULL AUTO_INCREMENT,
  `Restaurant_Name` varchar(255) NOT NULL,
  `Restaurant_Address` varchar(255) NOT NULL,
  PRIMARY KEY (`Restaurant_ID`),
  UNIQUE KEY `Restaurant_Address` (`Restaurant_Address`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Da Terra','8 Patriot Square, Bethnal Green, London, E2 9NF'),(2,'Dorian','105-107 Talbot Road, Notting Hill, London, W11 2AT'),(3,'Brat','64 Shoreditch High Street, Shoreditch, London, E1 6JJ'),(4,'Fallow St James','2 St James’s Market, St. James, London, SW1Y 4RP'),(5,'BiBi','42 North Audley Street, Mayfair, London, W1K 6ZR'),(6,'Pollen Street Social','8-10 Pollen Street, Mayfair, London, W1S 1NQ'),(7,'Perilla','1-3 Green Lanes, Canonbury, London, N16 9BS'),(8,'Pizza Hutt','30 London road West Croydon CR0 2TA'),(9,'Pizza Hutt','523 Oxford St, London W1C 2QL'),(10,'Franco Manca','T2, 32 Broadgate, London EC2M 2QS'),(11,'Franco Manca','121 Middlesex St, Bishopsgate, London E1 7JF');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
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
