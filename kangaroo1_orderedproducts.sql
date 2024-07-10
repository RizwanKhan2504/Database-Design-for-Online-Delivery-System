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
-- Table structure for table `orderedproducts`
--

DROP TABLE IF EXISTS `orderedproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderedproducts` (
  `OrderedProducts_Id` int NOT NULL AUTO_INCREMENT,
  `Order_Id` int NOT NULL,
  `Item_Id` int NOT NULL,
  PRIMARY KEY (`OrderedProducts_Id`),
  KEY `ibfk_1` (`Order_Id`),
  KEY `ibfk_2` (`Item_Id`),
  CONSTRAINT `ibfk_1` FOREIGN KEY (`Order_Id`) REFERENCES `ordertable` (`Order_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ibfk_2` FOREIGN KEY (`Item_Id`) REFERENCES `item` (`Item_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderedproducts`
--

LOCK TABLES `orderedproducts` WRITE;
/*!40000 ALTER TABLE `orderedproducts` DISABLE KEYS */;
INSERT INTO `orderedproducts` VALUES (1,1,1),(2,1,12),(3,1,23),(4,2,2),(5,2,13),(6,2,24),(7,3,1),(8,4,12),(9,5,2),(10,6,11),(11,7,10),(12,8,9),(13,9,8),(14,10,21),(15,11,18),(16,12,17),(17,13,7),(18,14,8),(19,14,5),(20,14,43);
/*!40000 ALTER TABLE `orderedproducts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 22:43:47
