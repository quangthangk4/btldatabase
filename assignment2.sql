CREATE DATABASE  IF NOT EXISTS `railway` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `railway`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: autorack.proxy.rlwy.net    Database: railway
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `ACCOUNT`
--

DROP TABLE IF EXISTS `ACCOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACCOUNT` (
  `CID` int NOT NULL,
  `account_number` int NOT NULL AUTO_INCREMENT,
  `account_type_id` int DEFAULT NULL,
  PRIMARY KEY (`account_number`),
  KEY `FK2jkixb0karjhlf8331q6a63r6` (`account_type_id`),
  KEY `FKt3nllm1jwt7559hipdfd3v0l2` (`CID`),
  CONSTRAINT `FK2jkixb0karjhlf8331q6a63r6` FOREIGN KEY (`account_type_id`) REFERENCES `ACC_TYPE` (`ACCid`),
  CONSTRAINT `FKt3nllm1jwt7559hipdfd3v0l2` FOREIGN KEY (`CID`) REFERENCES `CUSTOMER` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCOUNT`
--

LOCK TABLES `ACCOUNT` WRITE;
/*!40000 ALTER TABLE `ACCOUNT` DISABLE KEYS */;
INSERT INTO `ACCOUNT` VALUES (1,1001,1),(2,1002,2),(3,1003,3),(4,1004,4),(5,1005,5),(6,1006,6),(7,1007,7),(8,1008,8),(9,1009,9),(10,1010,10),(1,1011,11),(3,1012,12);
/*!40000 ALTER TABLE `ACCOUNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACC_TYPE`
--

DROP TABLE IF EXISTS `ACC_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACC_TYPE` (
  `ACCid` int NOT NULL AUTO_INCREMENT,
  `CFlag` bit(1) DEFAULT NULL,
  `Cbalance` decimal(38,2) DEFAULT NULL,
  `LFlag` bit(1) DEFAULT NULL,
  `Lbalance` decimal(38,2) DEFAULT NULL,
  `Linterest_rate` decimal(38,2) DEFAULT NULL,
  `SFlag` bit(1) DEFAULT NULL,
  `Sbalance` decimal(38,2) DEFAULT NULL,
  `Sinterest_rate` decimal(38,2) DEFAULT NULL,
  `Cdate_opened` datetime(6) DEFAULT NULL,
  `Ldate_taken` datetime(6) DEFAULT NULL,
  `Sdate_opened` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ACCid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACC_TYPE`
--

LOCK TABLES `ACC_TYPE` WRITE;
/*!40000 ALTER TABLE `ACC_TYPE` DISABLE KEYS */;
INSERT INTO `ACC_TYPE` VALUES (1,_binary '\0',NULL,_binary '\0',NULL,NULL,_binary '',1000.00,10.00,NULL,NULL,'2023-01-01 00:00:00.000000'),(2,_binary '',2000.00,_binary '\0',NULL,NULL,_binary '\0',NULL,NULL,'2023-02-01 00:00:00.000000',NULL,NULL),(3,_binary '\0',NULL,_binary '',500.00,3.50,_binary '\0',NULL,NULL,NULL,'2023-03-01 00:00:00.000000',NULL),(4,_binary '\0',NULL,_binary '\0',NULL,NULL,_binary '',5000.00,10.00,NULL,NULL,'2020-10-01 00:00:00.000000'),(5,_binary '',4000.00,_binary '\0',NULL,NULL,_binary '\0',NULL,NULL,'2023-05-01 00:00:00.000000',NULL,NULL),(6,_binary '\0',NULL,_binary '',3000.00,4.50,_binary '\0',NULL,NULL,NULL,'2023-06-01 00:00:00.000000',NULL),(7,_binary '\0',NULL,_binary '\0',NULL,NULL,_binary '',1500.00,10.00,NULL,NULL,'2021-09-01 00:00:00.000000'),(8,_binary '',3500.00,_binary '\0',NULL,NULL,_binary '\0',NULL,NULL,'2022-08-01 00:00:00.000000',NULL,NULL),(9,_binary '\0',NULL,_binary '',2500.00,5.00,_binary '\0',NULL,NULL,NULL,'2023-07-01 00:00:00.000000',NULL),(10,_binary '\0',NULL,_binary '\0',NULL,NULL,_binary '',8000.00,10.00,NULL,NULL,'2020-09-01 00:00:00.000000'),(11,_binary '\0',NULL,_binary '',51000.00,12.50,_binary '\0',NULL,NULL,NULL,'2024-12-04 07:00:00.000000',NULL),(12,_binary '\0',NULL,_binary '',121212.00,5.55,_binary '\0',NULL,NULL,NULL,'2024-12-03 07:00:00.000000',NULL);
/*!40000 ALTER TABLE `ACC_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BFAX_NUMBER`
--

DROP TABLE IF EXISTS `BFAX_NUMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BFAX_NUMBER` (
  `Bfax_number` varchar(255) NOT NULL,
  `Bname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Bfax_number`),
  KEY `FKd9b2tifp5wetyxbsvx2grukv6` (`Bname`),
  CONSTRAINT `FKd9b2tifp5wetyxbsvx2grukv6` FOREIGN KEY (`Bname`) REFERENCES `BRANCH` (`bname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BFAX_NUMBER`
--

LOCK TABLES `BFAX_NUMBER` WRITE;
/*!40000 ALTER TABLE `BFAX_NUMBER` DISABLE KEYS */;
INSERT INTO `BFAX_NUMBER` VALUES ('111111111','Branch1'),('101010101','Branch10'),('222222222','Branch2'),('333333333','Branch3'),('444444444','Branch4'),('555555555','Branch5'),('666666666','Branch6'),('777777777','Branch7'),('888888888','Branch8'),('999999999','Branch9');
/*!40000 ALTER TABLE `BFAX_NUMBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BPHONE_NUMBER`
--

DROP TABLE IF EXISTS `BPHONE_NUMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BPHONE_NUMBER` (
  `Bname` varchar(255) NOT NULL,
  `Bphone_number` varchar(255) NOT NULL,
  PRIMARY KEY (`Bphone_number`),
  KEY `FKasj57alxbjtn3kg1wd2lf2575` (`Bname`),
  CONSTRAINT `FKasj57alxbjtn3kg1wd2lf2575` FOREIGN KEY (`Bname`) REFERENCES `BRANCH` (`bname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BPHONE_NUMBER`
--

LOCK TABLES `BPHONE_NUMBER` WRITE;
/*!40000 ALTER TABLE `BPHONE_NUMBER` DISABLE KEYS */;
INSERT INTO `BPHONE_NUMBER` VALUES ('Branch1','111222333'),('Branch10','000111222'),('Branch2','222333444'),('Branch3','333444555'),('Branch4','444555666'),('Branch5','555666777'),('Branch6','666777888'),('Branch7','777888999'),('Branch8','888999000'),('Branch9','999000111');
/*!40000 ALTER TABLE `BPHONE_NUMBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BRANCH`
--

DROP TABLE IF EXISTS `BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BRANCH` (
  `Bno` int NOT NULL,
  `Bcity` varchar(255) DEFAULT NULL,
  `Bdistrict` varchar(255) DEFAULT NULL,
  `Bemail` varchar(255) NOT NULL,
  `Bregion` varchar(255) DEFAULT NULL,
  `Bstreet` varchar(255) DEFAULT NULL,
  `bname` varchar(255) NOT NULL,
  PRIMARY KEY (`bname`),
  UNIQUE KEY `UKf0mvxtxjrgtd3fu9hiromisbu` (`Bemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRANCH`
--

LOCK TABLES `BRANCH` WRITE;
/*!40000 ALTER TABLE `BRANCH` DISABLE KEYS */;
INSERT INTO `BRANCH` VALUES (1,'City A','District A','branch1@email.com','Region A','Street A','Branch1'),(10,'City J','District J','branch10@email.com','Region J','Street J','Branch10'),(2,'City B','District B','branch2@email.com','Region B','Street B','Branch2'),(3,'City C','District C','branch3@email.com','Region C','Street C','Branch3'),(4,'City D','District D','branch4@email.com','Region D','Street D','Branch4'),(5,'City E','District E','branch5@email.com','Region E','Street E','Branch5'),(6,'City F','District F','branch6@email.com','Region F','Street F','Branch6'),(7,'City G','District G','branch7@email.com','Region G','Street G','Branch7'),(8,'City H','District H','branch8@email.com','Region H','Street H','Branch8'),(9,'City I','District I','branch9@email.com','Region I','Street I','Branch9');
/*!40000 ALTER TABLE `BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CPHONE_NUMBER`
--

DROP TABLE IF EXISTS `CPHONE_NUMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CPHONE_NUMBER` (
  `CID` int NOT NULL,
  `Cphone_number` varchar(255) NOT NULL,
  PRIMARY KEY (`Cphone_number`),
  KEY `FKm09o0gjhxtwbr6lwxah4heavi` (`CID`),
  CONSTRAINT `FKm09o0gjhxtwbr6lwxah4heavi` FOREIGN KEY (`CID`) REFERENCES `CUSTOMER` (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CPHONE_NUMBER`
--

LOCK TABLES `CPHONE_NUMBER` WRITE;
/*!40000 ALTER TABLE `CPHONE_NUMBER` DISABLE KEYS */;
INSERT INTO `CPHONE_NUMBER` VALUES (1,'111111111'),(2,'222222222'),(3,'333333333'),(4,'444444444'),(5,'555555555'),(6,'666666666'),(7,'777777777'),(8,'888888888'),(9,'999999999'),(10,'101010101');
/*!40000 ALTER TABLE `CPHONE_NUMBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `CID` int NOT NULL AUTO_INCREMENT,
  `EID` int DEFAULT NULL,
  `Cemail` varchar(255) NOT NULL,
  `Cfirst_name` varchar(255) NOT NULL,
  `Chome_address` varchar(255) DEFAULT NULL,
  `Clast_name` varchar(255) NOT NULL,
  `Coffice_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CID`),
  UNIQUE KEY `UK7ipacdmqejk25v2e7qen0qbn3` (`Cemail`),
  KEY `FKddj0d7j9k01epkhvfgvamqakd` (`EID`),
  CONSTRAINT `FKddj0d7j9k01epkhvfgvamqakd` FOREIGN KEY (`EID`) REFERENCES `EMPLOYEE` (`EID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,1,'alice@email.com','Alice','Home A','Brown','Office A'),(2,2,'bob@email.com','Bob','Home B','Smith','Office B'),(3,3,'carol@email.com','Carol','Home C','Johnson','Office C'),(4,4,'nguyenvana@email.com','Nguyen','Home D','Van A','Office D'),(5,5,'emily@email.com','Emily','Home E','Davis','Office E'),(6,6,'david@email.com','David','Home F','Taylor','Office F'),(7,7,'sarah@email.com','Sarah','Home G','Williams','Office G'),(8,8,'chris@email.com','Chris','Home H','Johnson','Office H'),(9,9,'anna@email.com','Anna','Home I','Wilson','Office I'),(10,10,'tom@email.com','Tom','Home J','Moore','Office J'),(11,1,'john.doe1@example.com','John','123 Main St, City1','Doe','456 Office Rd, City1'),(12,1,'jane.smith2@example.com','Jane','789 Oak St, City2','Smith','321 Office Rd, City2'),(13,3,'michael.johnson3@example.com','Michael','234 Pine St, City3','Johnson','654 Office Rd, City3'),(14,4,'mary.brown4@example.com','Mary','567 Maple St, City4','Brown','987 Office Rd, City4'),(15,7,'david.wilson5@example.com','David','345 Elm St, City5','Wilson','135 Office Rd, City5'),(16,8,'emily.davis6@example.com','Emily','678 Birch St, City6','Davis','246 Office Rd, City6'),(17,7,'william.martin7@example.com','William','456 Cedar St, City7','Martin','753 Office Rd, City7'),(18,10,'susan.thomas8@example.com','Susan','123 Fir St, City8','Thomas','159 Office Rd, City8'),(19,10,'james.martinez9@example.com','James','234 Redwood St, City9','Martinez','963 Office Rd, City9'),(20,10,'patricia.anderson10@example.com','Patricia','567 Oakwood St, City10','Anderson','357 Office Rd, City10');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE` (
  `EID` int NOT NULL AUTO_INCREMENT,
  `Eno` int NOT NULL,
  `Edob` datetime(6) NOT NULL,
  `Bname` varchar(255) NOT NULL,
  `Ecity` varchar(255) DEFAULT NULL,
  `Edistrict` varchar(255) DEFAULT NULL,
  `Eemail` varchar(255) NOT NULL,
  `Efirst_name` varchar(255) NOT NULL,
  `Elast_name` varchar(255) NOT NULL,
  `Estreet` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EID`),
  UNIQUE KEY `UKmyyxugitd01equf5wnheok08k` (`Eemail`),
  KEY `FK8jup5o7ehlqayi9tb5hi6hd73` (`Bname`),
  CONSTRAINT `FK8jup5o7ehlqayi9tb5hi6hd73` FOREIGN KEY (`Bname`) REFERENCES `BRANCH` (`bname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (1,101,'1980-01-01 00:00:00.000000','Branch1','City A','District A','employee1@email.com','John','Doe','Street A'),(2,102,'1985-02-02 00:00:00.000000','Branch2','City B','District B','employee2@email.com','Jane','Smith','Street B'),(3,103,'1990-03-03 00:00:00.000000','Branch3','City C','District C','employee3@email.com','Mike','Brown','Street C'),(4,104,'1995-04-04 00:00:00.000000','Branch4','City D','District D','employee4@email.com','Nguyen','Van A','Street D'),(5,105,'2000-05-05 00:00:00.000000','Branch5','City E','District E','employee5@email.com','Emily','Davis','Street E'),(6,106,'1980-06-06 00:00:00.000000','Branch6','City F','District F','employee6@email.com','David','Taylor','Street F'),(7,107,'1985-07-07 00:00:00.000000','Branch7','City G','District G','employee7@email.com','Sarah','Williams','Street G'),(8,108,'1990-08-08 00:00:00.000000','Branch8','City H','District H','employee8@email.com','Chris','Johnson','Street H'),(9,109,'1995-09-09 00:00:00.000000','Branch9','City I','District I','employee9@email.com','Anna','Wilson','Street I'),(10,110,'2000-10-10 00:00:00.000000','Branch10','City J','District J','employee10@email.com','Tom','Moore','Street J');
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EPHONE_NUMBER`
--

DROP TABLE IF EXISTS `EPHONE_NUMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EPHONE_NUMBER` (
  `EID` int NOT NULL,
  `Ephone_number` varchar(255) NOT NULL,
  PRIMARY KEY (`Ephone_number`),
  KEY `FK804s19gtn77tulqeek2vv40o4` (`EID`),
  CONSTRAINT `FK804s19gtn77tulqeek2vv40o4` FOREIGN KEY (`EID`) REFERENCES `EMPLOYEE` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EPHONE_NUMBER`
--

LOCK TABLES `EPHONE_NUMBER` WRITE;
/*!40000 ALTER TABLE `EPHONE_NUMBER` DISABLE KEYS */;
INSERT INTO `EPHONE_NUMBER` VALUES (1,'111111111'),(2,'222222222'),(3,'333333333'),(4,'444444444'),(5,'555555555'),(6,'666666666'),(7,'777777777'),(8,'888888888'),(9,'999999999'),(10,'101010101');
/*!40000 ALTER TABLE `EPHONE_NUMBER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04 19:18:23
