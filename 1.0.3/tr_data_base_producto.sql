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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `pro_descripcion` varchar(100) NOT NULL,
  `pro_valor` decimal(10,0) NOT NULL,
  `pro_activo` int NOT NULL,
  `pro_fechaCreacion` datetime NOT NULL,
  `pro_marca` int NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Plato De Bobinas',50000,1,'2023-01-16 16:57:08',6),(2,'Cilindro',120000,1,'2023-01-16 16:57:08',6),(3,'Carburador',0,1,'0000-00-00 00:00:00',6),(4,'Sello Valvula',0,1,'0000-00-00 00:00:00',6),(5,'Cilindro Completo',0,1,'0000-00-00 00:00:00',6),(6,'Culata',0,1,'0000-00-00 00:00:00',6),(7,'Injector',0,1,'0000-00-00 00:00:00',6),(8,'Pastillas delanteras',0,1,'0000-00-00 00:00:00',6),(9,'Pastillas traseras',0,1,'0000-00-00 00:00:00',6),(10,'Mordaza delantera',0,1,'0000-00-00 00:00:00',6),(11,'Mordaza trasera',0,1,'0000-00-00 00:00:00',6),(12,'Bomba de liquido de frenos delantera',0,1,'0000-00-00 00:00:00',6),(13,'Bomba de liquidos de freno trasera',0,1,'0000-00-00 00:00:00',6),(14,'Liquido de freno DOT3',0,1,'0000-00-00 00:00:00',6),(15,'Guia blindada',0,1,'0000-00-00 00:00:00',6),(16,'Casco Shaft Integral SH-581Evo Negro Mate GRA. Solid Trans',0,1,'0000-00-00 00:00:00',1),(17,'Casco Shaft 562 Extremer Blanco Rojo Amr N',0,1,'0000-00-00 00:00:00',1),(18,'Casco Shaft Pro 612 DV L.O.A Azul Navy Amarillo N',0,1,'0000-00-00 00:00:00',1),(19,'CASCO INTEGRAL ICON AIRFORM CONFLUX',0,1,'0000-00-00 00:00:00',2),(20,'CASCO INTEGRAL ICON AIRFORM CHANTILLY OPAL   CASCO INTEGRAL ICON AIRFORM CHANTILLY OPAL   CASCO INT',0,1,'0000-00-00 00:00:00',2),(21,'CASCO INTEGRAL ICON AIRFORM CHANTILLY OPAL',0,1,'0000-00-00 00:00:00',2),(22,'CHAQUETA ICON PDX 2 IMPERMEABLE',0,1,'0000-00-00 00:00:00',2),(23,'Chaqueta De Protección Shaft Nitro',0,0,'0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 17:44:53
