CREATE DATABASE  IF NOT EXISTS `inv_man` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inv_man`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: inv_man
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `Password` varchar(255) DEFAULT NULL,
  `Cname` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `AdminID` int DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `AdminID` (`AdminID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'password123','Alice Johnson','123 Main St, Apt 4B','555-1111','alice@example.com',1),(2,'password123','Bob Smith','456 Oak Ave','555-2222','bob@example.com',NULL),(3,'password123','Charlie Brown','789 Pine Rd','555-3333','charlie@example.com',NULL),(4,'password123','Diana Prince','101 Hero Blvd','555-4444','diana@example.com',NULL),(5,'password123','Edward Norton','202 Actor St','555-5555','edward@example.com',NULL),(6,'adminpass','Admin User','Admin Office','555-0000','admin@example.com',2),(7,'scrypt:32768:8:1$Df8bMb6nOs0jFGKg$e36298f108631a07e7859bb271450e872e3e6b9cefd553c0aa91c1ecead4a99ec3669613cdebfb6ad50516bb5defc8788697cea4eb12de8e10dfb2433abf9b83','Abhigyan Singh','lukhnow','987654','abhi@gmail.com',NULL),(8,'scrypt:32768:8:1$5BVnFXCxAjUZwuN0$ba6d4a1d647abcf83799c0180238f5d24e8d88b627d2cd8c0b20a4adb19bc666b085761b8c8e0d0bec43e7b683f8da800406ed6e38a21d7e7bd98389c8cbe456','Ab Devillers','Haryana','9876543','Abd@gmail.com',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-21 13:04:25
