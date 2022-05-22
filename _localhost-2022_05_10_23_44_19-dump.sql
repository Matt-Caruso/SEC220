-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school1
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_name` char(20) DEFAULT NULL,
  `class_subject` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'sec220','cyber'),(2,'sec220','cyber'),(3,'sec220','cyber'),(4,'sec200','cyber'),(5,'calc 2','math'),(6,'calc 2','math'),(7,'calc 2','math'),(8,'comsc440','CS'),(9,'comsc440','CS'),(10,'comsc440','CS');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` char(20) DEFAULT NULL,
  `lastname` char(20) DEFAULT NULL,
  `addressId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `addressId` (`addressId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`addressId`) REFERENCES `student_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'ryan','toy',1),(2,'james','malark',2),(3,'Ethan','winters',3),(4,'hunter','speirs',4),(5,'Angie','hoobler',5),(6,'lexi','blithe',6),(7,'tim','peconte',7),(8,'Joey','gaurnere',8),(9,'katie','sledge',9),(10,'lauren','nix',10);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` char(40) DEFAULT NULL,
  `town` char(30) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_address`
--

LOCK TABLES `student_address` WRITE;
/*!40000 ALTER TABLE `student_address` DISABLE KEYS */;
INSERT INTO `student_address` VALUES (1,'1 0pd ferry st','bristol',11111),(2,'4 madison square st','New York',22222),(3,'3 td bank ave','Boston',33333),(4,'7 wells fargo ave','Canthor',44444),(5,'75 united bv','chicago',55555),(6,'5 so-fi st','Los angelos',66666),(7,'90 primrose st','trumbull',77777),(8,'84 highview ave','toronto',88888),(9,'5 hidden pond ln','huntington',99999),(10,'53 golden Ln','cranston',0);
/*!40000 ALTER TABLE `student_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class_association`
--

DROP TABLE IF EXISTS `student_class_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_class_association` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentId` int DEFAULT NULL,
  `classId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `studentId` (`studentId`),
  KEY `classId` (`classId`),
  CONSTRAINT `student_class_association_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `student_class_association_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class_association`
--

LOCK TABLES `student_class_association` WRITE;
/*!40000 ALTER TABLE `student_class_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_class_association` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 23:44:20
