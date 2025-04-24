-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: Human_Friends
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.20.04.1

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
-- Table structure for table `AllAnimals`
--

DROP TABLE IF EXISTS `AllAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AllAnimals` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `commands` text,
  `petType` varchar(50) DEFAULT NULL,
  `packAnimalType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllAnimals`
--

LOCK TABLES `AllAnimals` WRITE;
/*!40000 ALTER TABLE `AllAnimals` DISABLE KEYS */;
INSERT INTO `AllAnimals` VALUES (1,'Fido','2020-01-01','Sit, Stay, Fetch','dogs',NULL),(2,'Buddy','2023-12-12','Sit, Paw, Bark','dogs',NULL),(3,'Bella','2019-11-11','Sit, Stay, Roll','dogs',NULL),(4,'Whiskers','2019-05-15','Sit, Pounce','cats',NULL),(5,'Hammy','2024-12-10','Roll, Hide','hamsters',NULL),(6,'Smudge','2020-02-20','Sit, Pounce, Scratch','cats',NULL),(7,'Peanut','2023-07-12','Roll, Spin','hamsters',NULL),(8,'Oliver','2024-06-30','Jump, Scratch, Meow','cats',NULL),(9,'Thunder','2015-07-21','Trot, Canter, Gallop',NULL,'Horses'),(10,'Sandy','2016-11-03','Walk, Carry',NULL,'Camels'),(11,'Eeyore','2017-09-18','Walk, Carry, Bray',NULL,'Donkeys'),(12,'Storm','2022-10-19','Trot, Canter',NULL,'Horses'),(13,'Dune','2018-12-12','Walk, Sit',NULL,'Camels'),(14,'Burro','2023-06-01','Walk, Bray, Kick',NULL,'Donkeys'),(15,'Blaze','2016-02-27','Trot, Jump, Gallop',NULL,'Horses'),(16,'Sahara','2015-08-14','Walk, Run',NULL,NULL);
/*!40000 ALTER TABLE `AllAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Animals`
--

DROP TABLE IF EXISTS `Animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Animals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `commands` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Animals`
--

LOCK TABLES `Animals` WRITE;
/*!40000 ALTER TABLE `Animals` DISABLE KEYS */;
INSERT INTO `Animals` VALUES (1,'Fido','2020-01-01','Sit, Stay, Fetch'),(2,'Buddy','2023-12-12','Sit, Paw, Bark'),(3,'Bella','2019-11-11','Sit, Stay, Roll'),(4,'Whiskers','2019-05-15','Sit, Pounce'),(5,'Hammy','2024-12-10','Roll, Hide'),(6,'Smudge','2020-02-20','Sit, Pounce, Scratch'),(7,'Peanut','2023-07-12','Roll, Spin'),(8,'Oliver','2024-06-30','Jump, Scratch, Meow'),(9,'Thunder','2015-07-21','Trot, Canter, Gallop'),(10,'Sandy','2016-11-03','Walk, Carry'),(11,'Eeyore','2017-09-18','Walk, Carry, Bray'),(12,'Storm','2022-10-19','Trot, Canter'),(13,'Dune','2018-12-12','Walk, Sit'),(14,'Burro','2023-06-01','Walk, Bray, Kick'),(15,'Blaze','2016-02-27','Trot, Jump, Gallop'),(16,'Sahara','2015-08-14','Walk, Run');
/*!40000 ALTER TABLE `Animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camels`
--

DROP TABLE IF EXISTS `Camels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animalID` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animalID` (`animalID`),
  CONSTRAINT `Camels_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `Animals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camels`
--

LOCK TABLES `Camels` WRITE;
/*!40000 ALTER TABLE `Camels` DISABLE KEYS */;
/*!40000 ALTER TABLE `Camels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cats`
--

DROP TABLE IF EXISTS `Cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animalID` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animalID` (`animalID`),
  CONSTRAINT `Cats_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `Animals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cats`
--

LOCK TABLES `Cats` WRITE;
/*!40000 ALTER TABLE `Cats` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dogs`
--

DROP TABLE IF EXISTS `Dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animalID` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animalID` (`animalID`),
  CONSTRAINT `Dogs_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `Animals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dogs`
--

LOCK TABLES `Dogs` WRITE;
/*!40000 ALTER TABLE `Dogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donkeys`
--

DROP TABLE IF EXISTS `Donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Donkeys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animalID` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animalID` (`animalID`),
  CONSTRAINT `Donkeys_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `Animals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donkeys`
--

LOCK TABLES `Donkeys` WRITE;
/*!40000 ALTER TABLE `Donkeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `Donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hamsters`
--

DROP TABLE IF EXISTS `Hamsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hamsters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animalID` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animalID` (`animalID`),
  CONSTRAINT `Hamsters_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `Animals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hamsters`
--

LOCK TABLES `Hamsters` WRITE;
/*!40000 ALTER TABLE `Hamsters` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hamsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horses`
--

DROP TABLE IF EXISTS `Horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Horses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animalID` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animalID` (`animalID`),
  CONSTRAINT `Horses_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `Animals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horses`
--

LOCK TABLES `Horses` WRITE;
/*!40000 ALTER TABLE `Horses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HorsesAndDonkeys`
--

DROP TABLE IF EXISTS `HorsesAndDonkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HorsesAndDonkeys` (
  `id` int NOT NULL DEFAULT '0',
  `animalID` int DEFAULT NULL,
  `petType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HorsesAndDonkeys`
--

LOCK TABLES `HorsesAndDonkeys` WRITE;
/*!40000 ALTER TABLE `HorsesAndDonkeys` DISABLE KEYS */;
INSERT INTO `HorsesAndDonkeys` VALUES (1,9,'Horses'),(3,11,'Donkeys'),(4,12,'Horses'),(6,14,'Donkeys'),(7,15,'Horses');
/*!40000 ALTER TABLE `HorsesAndDonkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PackAnimals`
--

DROP TABLE IF EXISTS `PackAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animalID` int DEFAULT NULL,
  `packAnimalType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animalID` (`animalID`),
  CONSTRAINT `PackAnimals_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `Animals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimals`
--

LOCK TABLES `PackAnimals` WRITE;
/*!40000 ALTER TABLE `PackAnimals` DISABLE KEYS */;
INSERT INTO `PackAnimals` VALUES (1,9,'Horses'),(3,11,'Donkeys'),(4,12,'Horses'),(6,14,'Donkeys'),(7,15,'Horses'),(9,10,'Camels'),(10,13,'Camels');
/*!40000 ALTER TABLE `PackAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pets`
--

DROP TABLE IF EXISTS `Pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animalID` int DEFAULT NULL,
  `petType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animalID` (`animalID`),
  CONSTRAINT `Pets_ibfk_1` FOREIGN KEY (`animalID`) REFERENCES `Animals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pets`
--

LOCK TABLES `Pets` WRITE;
/*!40000 ALTER TABLE `Pets` DISABLE KEYS */;
INSERT INTO `Pets` VALUES (1,1,'dogs'),(2,2,'dogs'),(3,3,'dogs'),(4,4,'cats'),(5,5,'hamsters'),(6,6,'cats'),(7,7,'hamsters'),(8,8,'cats');
/*!40000 ALTER TABLE `Pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YoungAnimals`
--

DROP TABLE IF EXISTS `YoungAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YoungAnimals` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `commands` text,
  `AgeInMonths` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YoungAnimals`
--

LOCK TABLES `YoungAnimals` WRITE;
/*!40000 ALTER TABLE `YoungAnimals` DISABLE KEYS */;
INSERT INTO `YoungAnimals` VALUES (2,'Buddy','2023-12-12','Sit, Paw, Bark',16),(7,'Peanut','2023-07-12','Roll, Spin',21),(12,'Storm','2022-10-19','Trot, Canter',30),(14,'Burro','2023-06-01','Walk, Bray, Kick',22);
/*!40000 ALTER TABLE `YoungAnimals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-24 18:09:57
