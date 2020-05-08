-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: fatimadr.cx2qlsor5mk2.eu-west-1.rds.amazonaws.com    Database: WHYWASTE
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Food`
--

DROP TABLE IF EXISTS `Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Food` (
  `FoodID` int(11) NOT NULL AUTO_INCREMENT,
  `FoodType` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `UseByDate` date DEFAULT NULL,
  `RestaurantID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FoodID`),
  KEY `RestaurantID` (`RestaurantID`),
  CONSTRAINT `Food_ibfk_1` FOREIGN KEY (`RestaurantID`) REFERENCES `Restaurants` (`RestaurantID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food`
--

LOCK TABLES `Food` WRITE;
/*!40000 ALTER TABLE `Food` DISABLE KEYS */;
INSERT INTO `Food` VALUES (1,'SEA BASS With vegetables and basil pesto sauce','1','2020-05-23',7),(2,'SPAGHETTI BOLOGNESE','2','2020-05-23',7),(3,'Vegetable Ramen Soup','2','2020-05-23',11),(4,'Chilli Chicken Lemongrass Stir Fry','1','2020-05-23',11),(5,'Nasi Goreng','1','2020-05-23',11),(6,'Margherita Pizza','2','2020-05-23',10),(7,'Pollo Forza Pizza','1','2020-05-23',10),(8,'American Hot Pizza','1','2020-05-23',10),(9,'Filet-o-Fish with Fries','1','2020-05-23',9),(10,'Chicken McNuggets with Fries','1','2020-05-23',9),(11,'Hamburger with Fries','1','2020-05-23',9),(12,'Vegetable Deluxe with Fries','3','2020-05-23',9),(13,'Big Mac with Fries','2','2020-05-23',9),(14,'Portobello Mushroom & Halloumi Burger','2','2020-05-23',8),(15,'Fino Pitta with chips','2','2020-05-23',8),(16,'Chicken Livers & Portuguese Roll','1','2020-05-23',8),(17,'10 Chicken Wings & hummus','3','2020-05-23',8);
/*!40000 ALTER TABLE `Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurants`
--

DROP TABLE IF EXISTS `Restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Restaurants` (
  `RestaurantID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PostCode` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `TelNo` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`RestaurantID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurants`
--

LOCK TABLES `Restaurants` WRITE;
/*!40000 ALTER TABLE `Restaurants` DISABLE KEYS */;
INSERT INTO `Restaurants` VALUES (7,'PREZZO','The Market Place, Bolton','BL1 2AL','some_one@prezzo.com','01204 397 335',' '),(8,'Nando\'s','Peel Centre, Great Portwood Street, Stockport','SK1 2HH','some_one@nandos.com','0161 480 2430',' '),(9,'McDonald\'s','6 High Street, Oldham','OL1 1JA','some_one@mcdonalds.com','0161 624 8686',' '),(10,'Pizza Express','Exchange, Exchange Square, Manchester','M4 3TR','some_one@pizzaexpress.com','0161 834 6130',' '),(11,'Tampopo','16 Albert Square, Manchester','M2 5PF','some_one@tampopo.com','0161 819 1966',' ');
/*!40000 ALTER TABLE `Restaurants` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-08 14:50:41
