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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(50) NOT NULL,
  `usu_apellido` varchar(50) NOT NULL,
  `usu_tipoDocumento` int NOT NULL,
  `usu_numeroDocumento` varchar(45) DEFAULT NULL,
  `usu_telefonoFijo` varchar(15) DEFAULT NULL,
  `usu_telefonoCelular` varchar(15) NOT NULL,
  `usu_correo` varchar(30) NOT NULL,
  `usu_ciudad` int NOT NULL,
  `usu_fechaNacimiento` date DEFAULT NULL,
  `usu_tipoPersona` int NOT NULL,
  `usu_fechaCreacion` datetime DEFAULT NULL,
  `usu_activo` int NOT NULL,
  `usu_password` varchar(50) NOT NULL,
  PRIMARY KEY (`usu_id`),
  KEY `usu_tipoDocumento` (`usu_tipoDocumento`),
  KEY `usu_ciudad` (`usu_ciudad`),
  KEY `usu_tipoPersona` (`usu_tipoPersona`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usu_tipoDocumento`) REFERENCES `tipo_documento` (`tdo_id`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`usu_ciudad`) REFERENCES `ciudad` (`ciu_id`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`usu_tipoPersona`) REFERENCES `tipo_persona` (`tpe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Carlos','Garzon',1,'1031159822','7316912','3108172843','carlosangarzon@gmail.com',1,'1995-07-10',1,'2023-02-12 00:00:00',1,'prueba'),(2,'Camila','Camargo',1,'1031159823','7316912','3108172843','camila@gmail.com',1,'1996-08-02',1,'2023-02-12 00:00:00',1,'prueba'),(3,'Alejandra','Garzon',1,'1031159825','7316912','3108172843','alejandra@gmail.com',1,'2002-03-07',1,'2023-02-13 05:28:28',1,'prueba Api'),(4,'Diego','Garzon',1,'1031159828','7316912','3108172843','diego@gmail.com',1,'2002-03-07',1,'2023-02-13 05:41:09',1,'prueba Api'),(5,'alonso','Garzon',1,'1031159830','7316912','3108172843','alonso@gmail.com',1,'2002-03-07',1,'2023-02-13 05:41:56',1,'prueba Api'),(6,'andres','Garzon',1,'1031159830','7316912','3108172843','andres@gmail.com',1,'2002-03-07',1,'2023-02-13 05:43:25',1,'prueba Api'),(7,'John','Gamboa',1,'1012555777','7316000','3108008004','john@gmail.com',1,'1989-10-14',1,'2023-04-07 11:44:55',1,'prueba Api'),(8,'Camilo','Santacruz',1,'1012666888','7315000','3109990055','camilo@gmail.com',1,'1970-10-10',1,'2023-04-07 11:47:50',1,'prueba Api'),(9,'Martha','Colucci',1,'1033500600','7558899','3005555888','martha@gmail.com',1,'1970-11-11',1,'2023-04-07 11:50:48',1,'prueba Api'),(10,'Carolina','Bonannote',1,'1077889911','7489951','3008996333','Carolina@gmail.com',1,'1950-08-15',1,'2023-05-08 11:51:35',1,'prueba Api'),(11,'Susana','Gaviria',1,'1044555888','7485239','3115448966','susana@gmail.com',1,'1989-10-14',1,'2023-06-06 11:55:38',1,'prueba Api');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 17:45:35
