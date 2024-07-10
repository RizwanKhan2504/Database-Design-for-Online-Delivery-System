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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_Id` int NOT NULL AUTO_INCREMENT,
  `Last_Name` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Email_ID` varchar(255) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  `Customer_Address` varchar(255) NOT NULL,
  PRIMARY KEY (`Customer_Id`),
  UNIQUE KEY `Email_ID` (`Email_ID`),
  UNIQUE KEY `Phone_Number` (`Phone_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Rosenlof','Linwood','linwood.rosenlof@yahoo.com','01546-942059','567 York Road London E73 8R'),(2,'Alexy','Latosha','latosha@yahoo.com','01704-508066','786 Victoria Street London NW50 6SP'),(3,'Meenan','Alexia','alexia.meenan@meenan.co.uk','01560-328739','3 Park Avenue London NW94 6ZC'),(4,'Stanwick','Graham','gstanwick@gmail.com','01860-191930','14 Kingsway London E95 8ZR'),(5,'Flam','Mauricio','mflam@gmail.com','01640-813748','19 New Road London SW16 3DR'),(6,'Aloi','Phillip','paloi@hotmail.com','01490-898175','17 Manchester Road London SE94 6CE'),(7,'Erixon','Gilberto','gerixon@gmail.com','01582-161403','657 Queen Street London N54 3IG'),(8,'Wiederin','Chery','cwiederin@yahoo.com','01274-659801','92 Queens Road London SW63 0BJ'),(9,'Montecalvo','Eileen','eileen@yahoo.com','01904-227024','33 Springfield RoadLondon NW96 4 FW'),(10,'Logghe','Edwin','edwin_logghe@gmail.com','01366-667615','1 London Road London EC52 4RE'),(11,'Delisle','Elsa','elsa_delisle@gmail.com','01537-525550','487 Broadway London E17 9QP');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
