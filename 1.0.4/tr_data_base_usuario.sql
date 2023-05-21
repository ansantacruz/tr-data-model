-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 34.121.184.65    Database: tr_data_base
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '75447b91-ec31-11ed-9be9-42010a400002:1-247462';

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(50) DEFAULT NULL,
  `usu_apellido` varchar(50) DEFAULT NULL,
  `usu_tipoDocumento` int DEFAULT NULL,
  `usu_numeroDocumento` varchar(45) DEFAULT NULL,
  `usu_telefonoFijo` varchar(15) DEFAULT NULL,
  `usu_telefonoCelular` varchar(15) DEFAULT NULL,
  `usu_correo` varchar(30) NOT NULL,
  `usu_ciudad` int DEFAULT NULL,
  `usu_fechaNacimiento` date DEFAULT NULL,
  `usu_tipoPersona` int DEFAULT NULL,
  `usu_fechaCreacion` datetime DEFAULT NULL,
  `usu_activo` int DEFAULT NULL,
  `usu_UID` varchar(100) DEFAULT NULL,
  `usu_token` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`usu_id`),
  KEY `usu_tipoDocumento` (`usu_tipoDocumento`),
  KEY `usu_ciudad` (`usu_ciudad`),
  KEY `usu_tipoPersona` (`usu_tipoPersona`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usu_tipoDocumento`) REFERENCES `tipo_documento` (`tdo_id`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`usu_ciudad`) REFERENCES `ciudad` (`ciu_id`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`usu_tipoPersona`) REFERENCES `tipo_persona` (`tpe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-21 15:42:36
