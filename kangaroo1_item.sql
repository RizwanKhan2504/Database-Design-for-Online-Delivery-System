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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `Item_Id` int NOT NULL AUTO_INCREMENT,
  `Item_Name` varchar(255) NOT NULL,
  `Item_Price` decimal(10,2) NOT NULL,
  `Item_Category` enum('Starter','Main Course','Deserts','Drinks') NOT NULL,
  `Restaurant_Id` int NOT NULL,
  PRIMARY KEY (`Item_Id`),
  KEY `fk_RID2` (`Restaurant_Id`),
  CONSTRAINT `fk_RID2` FOREIGN KEY (`Restaurant_Id`) REFERENCES `restaurant` (`Restaurant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Spicy tomato chowder',4.50,'Starter',1),(2,'Leek and egg salad',5.50,'Starter',2),(3,'Gluten-free olive bread',6.50,'Starter',3),(4,'Tuscan bean soup',5.50,'Starter',4),(5,'Salmon terrine',7.50,'Starter',5),(6,'Crushed new potatoes',6.50,'Starter',6),(7,'Chickpea soup',4.50,'Starter',7),(8,'Falafel',8.50,'Starter',8),(9,'Prawn and two fruit cocktail',9.50,'Starter',9),(10,'Open Mediterranean Lasagne',10.50,'Starter',10),(11,'Three herb lamb salad',7.50,'Starter',11),(12,'Turkey & Cheese Panini',10.50,'Main Course',1),(13,'Peri Peri Chicken Drumsticks',11.50,'Main Course',2),(14,'Haddock and Spanish Pasta Bake',12.00,'Main Course',3),(15,'Aubergine and Walnut Ragu',12.50,'Main Course',4),(16,'Pilau Rice',12.50,'Main Course',5),(17,'Singapore Egg Fried Rice',13.50,'Main Course',6),(18,'Tomatoes with saffron rice',12.50,'Main Course',7),(19,'Asian prawns stir fry with jasmine rice',14.50,'Main Course',8),(20,'Prawn and two fruit cocktail',9.50,'Main Course',9),(21,'Baked Aubergine',10.50,'Main Course',10),(22,'Chicken Caserolle',12.50,'Main Course',11),(23,'Chia and coconut pudding',10.50,'Deserts',1),(24,'Lemon and yoghurt syrup cakes',11.50,'Deserts',2),(25,'Gooey peanut butter and chocolate fridge bars',12.00,'Deserts',3),(26,'Lemon panna cotta with vodka blueberry syrup',12.50,'Deserts',4),(27,'Lemon and passionfruit delicious pudding',12.50,'Deserts',5),(28,'Strawberry frozen yoghurt',13.50,'Deserts',6),(29,'Tomatoes with saffron rice',12.50,'Deserts',7),(30,'Peanut butter ice-cream cups',14.50,'Deserts',8),(31,'Frozen strawberry cheesecake',9.50,'Deserts',9),(32,'Frozen choc bliss bar',10.50,'Deserts',10),(33,'Dairy-free chocolate avocado mousse tart',12.50,'Deserts',11),(34,'Pomegranate Juice',7.50,'Drinks',1),(35,'Beet Juice',6.50,'Drinks',2),(36,'Lemon Water',5.50,'Drinks',3),(37,'Kombucha',7.50,'Drinks',4),(38,'Coconut Water',5.50,'Drinks',5),(39,'Hot Chocolate',6.50,'Drinks',6),(40,'Cranberry Juice',5.50,'Drinks',7),(41,'Orange Juice',5.50,'Drinks',8),(42,'Red Wine',9.50,'Drinks',9),(43,'Masala Chai',5.50,'Drinks',10),(44,'Coffee',5.50,'Drinks',11),(45,'Garlic Bread',5.50,'Starter',10),(46,'Garlic Bread',6.50,'Starter',11),(47,'Glutten Free Pizza',10.50,'Main Course',10),(48,'Glutten Free Pizza',11.50,'Main Course',11),(49,'Pina Colada',6.50,'Drinks',10),(50,'Pina Colada',7.50,'Drinks',11);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
