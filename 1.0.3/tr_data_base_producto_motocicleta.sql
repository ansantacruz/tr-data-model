-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 34.134.59.167    Database: tr_data_base
-- ------------------------------------------------------
-- Server version	8.0.26-google

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
-- Table structure for table `producto_motocicleta`
--

DROP TABLE IF EXISTS `producto_motocicleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_motocicleta` (
  `pmo_producto` int NOT NULL,
  `pmo_motocicleta` int NOT NULL,
  PRIMARY KEY (`pmo_producto`,`pmo_motocicleta`),
  KEY `pmo_motocicleta` (`pmo_motocicleta`),
  CONSTRAINT `producto_motocicleta_ibfk_1` FOREIGN KEY (`pmo_producto`) REFERENCES `producto` (`pro_id`),
  CONSTRAINT `producto_motocicleta_ibfk_2` FOREIGN KEY (`pmo_motocicleta`) REFERENCES `motocicleta` (`mot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_motocicleta`
--

LOCK TABLES `producto_motocicleta` WRITE;
/*!40000 ALTER TABLE `producto_motocicleta` DISABLE KEYS */;
INSERT INTO `producto_motocicleta` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(8,1),(10,1),(12,1),(15,1),(1,2),(2,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(1,3),(2,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(8,5),(10,5),(12,5),(15,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(14,6),(15,6);
/*!40000 ALTER TABLE `producto_motocicleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 17:45:01
