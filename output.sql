-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: movieReview
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.2

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

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin` (
  `AdminID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(150) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES (2,'Admin','john.doe@example.com','123');
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie` (
  `MovieID` int NOT NULL AUTO_INCREMENT,
  `MovieName` varchar(255) NOT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `Length` int DEFAULT NULL,
  `MovieImageURL` varchar(500) DEFAULT NULL,
  `MovieRating` float DEFAULT NULL,
  `Trailer` varchar(100) NOT NULL,
  PRIMARY KEY (`MovieID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'3 Idiots','Drama/Comedy','2009-12-25',170,'3-Idiots.jpg',8.4,'SOXWc32k4zA'),(2,'Dangal','Sports/Drama','2016-12-21',161,'Dangal.jpg',8.4,''),(3,'PK','Comedy/Drama','2014-12-19',153,'PK.jpg',8.1,'SOXWc32k4zA'),(4,'Lagaan','Drama/Sports','2001-06-15',224,'Lagaan.jpg',8.1,''),(5,'Bahubali: The Beginning','Action/Fantasy','2015-07-10',159,'Bahubali-Beginning.jpg',8,'VdafjyFK3ko'),(7,'Captain America','Action','2011-07-22',124,'captain-america.jpg',8,'');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Review` (
  `ReviewID` int NOT NULL AUTO_INCREMENT,
  `MovieName` varchar(255) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `UserRating` float DEFAULT NULL,
  `Review` varchar(1200) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ReviewID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (1,'PK','JohnDoe',4.5,'Amazing movie with a unique storyline and great acting!','2025-08-08 06:40:20'),(2,NULL,NULL,8,'Test','2025-08-08 13:09:47'),(3,NULL,NULL,7,'Test','2025-08-08 13:17:36'),(4,NULL,NULL,7,'Test','2025-08-08 13:25:06'),(5,'PK','Raj',7,'Test','2025-08-08 13:25:33'),(6,NULL,NULL,7,'Test 2','2025-08-08 13:26:34'),(7,'PK','Raj',7,'rewg','2025-08-08 13:27:06'),(8,'Dangal','Raj',1,'Not an interesting movie to see','2025-08-09 05:07:06'),(9,'Bahubali: The Beginning','Sumit Sarkar ',9,'It\'s an interesting movie.... the mystery of killing bahubali is the final climax which will be given in its second part','2025-08-09 15:27:37'),(10,'PK','Sumit Sarkar ',6,'it\'s okay okay','2025-08-09 15:28:32'),(11,'Bahubali: The Beginning','Raj',10,'Test','2025-08-09 15:33:36'),(12,NULL,'Raj',10,'Test','2025-08-09 15:33:54'),(13,NULL,'Raj',10,'Test','2025-08-09 15:33:55'),(14,NULL,NULL,10,'Test','2025-08-09 15:33:59'),(15,NULL,NULL,10,'Test','2025-08-09 15:33:59'),(16,NULL,NULL,10,'Test','2025-08-09 15:34:15'),(17,NULL,NULL,10,'Test','2025-08-09 15:34:16'),(18,NULL,NULL,10,'Test','2025-08-09 15:34:21'),(19,'Bahubali: The Beginning','Raj',10,'test2','2025-08-09 15:36:49'),(20,NULL,NULL,10,'test2','2025-08-09 15:38:29'),(21,'Bahubali: The Beginning','Raj',10,'test3','2025-08-09 15:41:10'),(22,'Bahubali: The Beginning','Raj',10,'test3','2025-08-09 15:41:59'),(23,'Bahubali: The Beginning','Sumit Sarkar ',9,'hdgd','2025-08-09 15:43:58'),(24,'Bahubali: The Beginning','Raj',10,'test3','2025-08-09 15:45:50'),(25,'Bahubali: The Beginning','Raj',10,'test3','2025-08-09 15:46:33'),(26,'Bahubali: The Beginning','Raj',10,'test3','2025-08-09 16:07:56'),(27,'Bahubali: The Beginning','Raj',10,'test 4','2025-08-09 17:21:18');
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(150) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Raj','raj.sarkar123@example.com','Raj@1234'),(2,'RajSarkar','Rajsarkar78966@gmail.com','Raj@1234'),(3,'RajSarkarsd','Rajsarkar78966@gmail.com','Raj@1234'),(4,'Sumit Sarkar ','sumitsarkar78966@gmail.com','Raj@1234');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-10 11:38:50
