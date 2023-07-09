-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: abc
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `ecom`
--

DROP TABLE IF EXISTS `ecom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecom` (
  `Email` varchar(40) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecom`
--

LOCK TABLES `ecom` WRITE;
/*!40000 ALTER TABLE `ecom` DISABLE KEYS */;
INSERT INTO `ecom` VALUES ('abc@gmail.com','1234');
/*!40000 ALTER TABLE `ecom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `Eid` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone_number` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Eid`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (3,'amitsinghsharma','xyz bhopal mp','9865741230','Male','xyz@gmail.com','32891'),(4,'amitsinghsharma','xyz bhopal mp','9865741230','Male','abc@gmail.com','00000'),(5,'Jack Daniel','124 indore mp','9854746666','Male','aaa@gmail.com','1234'),(6,'Harry potter','fno. 2 sehore mp','9854740000','Male','bbb@gmail.com','4321'),(11,'Harsha Sinha','506 Vishnu nagar Sehore ','8451700110','Female','Harshasinha@yahoo.com','684542'),(19,'Arun yadav',' 15- Abc Delhi india ','null','Male','a@gmail.com','1230'),(20,'Harry potter ','125- carter road london  ','98765431121','Male','harry@gmail.com','12345'),(21,'Jack maa',' 23-Delhi india','9876543210','Male','a123@gmail.com','1230'),(23,'Arun yadav',' 111 mumbai maharashtra','9876542121','Male','zzz@gmail.com','11111'),(27,'Harry potter ',' fssg','12234444','Male','ansh@gmail.com','1230'),(36,'Jack maa',' final check ','9876543210','Female','zz@gmail.com','3210'),(38,'Jack maa',' final check ','9876543210','Female','jackma@gmail.com','3210'),(42,'Arun yadav',' asdfgh','9876543210','Female','ab@gmail.com','3210');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Pid` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` decimal(30,2) DEFAULT NULL,
  `Promo_price` decimal(30,2) DEFAULT NULL,
  `Promo_start` date DEFAULT NULL,
  `Promo_end` date DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`Pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1215,'Cotton white tshirt',600.00,450.00,'2023-06-29','2023-07-15','Tshirt is awesome'),(1216,'Cotton black tshirt',700.00,550.00,'2023-06-29','2023-07-15','Tshirt is black'),(11217,'Black shoes',700.00,600.00,'2023-07-12','2023-07-20','Black Leather shoes'),(11218,'Black shoes',700.00,600.00,'2023-07-12','2023-07-20','Black Leather shoes');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-09 16:08:58
