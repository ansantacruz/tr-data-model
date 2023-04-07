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
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `ven_id` int NOT NULL AUTO_INCREMENT,
  `ven_usuario` int NOT NULL,
  `ven_direccion` varchar(50) NOT NULL,
  `ven_fotoIdentificacion` varchar(100) DEFAULT NULL,
  `ven_latitud` double NOT NULL,
  `ven_longitud` double NOT NULL,
  PRIMARY KEY (`ven_id`),
  UNIQUE KEY `ven_usuario_UNIQUE` (`ven_usuario`),
  KEY `ven_usuario` (`ven_usuario`),
  CONSTRAINT `vendedor_usuario` FOREIGN KEY (`ven_usuario`) REFERENCES `usuario` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,2,'Dg. 48p Sur #5-24','FOTO',4.556534,-74.113988),(2,1,'Cra. 7 #No. 40-62','Foto Usuario',4.555251,-74.122879),(3,3,'Dg. 48x Bis Sur #572','Foto Usuario',4.557764,-74.114664),(4,7,'Cl. 54 Sur #27 28','',4.578331,-74.138616),(5,8,'Calle 40 #24-55','',4.579132,-74.121415),(6,9,'Cra. 24B #44-31','',4.580276,-74.126168),(7,10,'Tv. 76, Bogotá','',4.702493,-74.092499),(8,11,'Cl. 80 #78, Bogotá','',4.699231,-74.095392);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 17:45:38
