CREATE DATABASE  IF NOT EXISTS `turepuesto_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `turepuesto_db`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: turepuesto_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `calificacion_comprador`
--

DROP TABLE IF EXISTS `calificacion_comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion_comprador` (
  `cco_id` int NOT NULL,
  `cco_comprador` int NOT NULL,
  `cco_descripcion` varchar(200) NOT NULL,
  `cco_tipoCalificacion` int NOT NULL,
  `cco_fechaCreacion` datetime NOT NULL,
  `cco_vendedor` int NOT NULL,
  `cco_activo` int NOT NULL,
  PRIMARY KEY (`cco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion_comprador`
--

LOCK TABLES `calificacion_comprador` WRITE;
/*!40000 ALTER TABLE `calificacion_comprador` DISABLE KEYS */;
/*!40000 ALTER TABLE `calificacion_comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion_vendedor`
--

DROP TABLE IF EXISTS `calificacion_vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion_vendedor` (
  `cve_id` int NOT NULL,
  `cve_vendedor` int NOT NULL,
  `cve_descripcion` varchar(200) NOT NULL,
  `cve_tipoCalificacion` int NOT NULL,
  `cve_fechaCreacion` datetime NOT NULL,
  `cve_comprador` varchar(50) NOT NULL,
  `cve_activo` int NOT NULL,
  PRIMARY KEY (`cve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion_vendedor`
--

LOCK TABLES `calificacion_vendedor` WRITE;
/*!40000 ALTER TABLE `calificacion_vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `calificacion_vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `ciu_id` int NOT NULL,
  `ciu_descripcion` varchar(50) NOT NULL,
  `ciu_pais` int NOT NULL,
  `ciu_activo` int NOT NULL,
  PRIMARY KEY (`ciu_id`),
  KEY `ciu_pais` (`ciu_pais`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`ciu_pais`) REFERENCES `pais` (`pai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Bogota',1,1),(2,'Medellin',1,1),(3,'Cali',1,1);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprador`
--

DROP TABLE IF EXISTS `comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprador` (
  `com_id` int NOT NULL,
  `com_usuario` int NOT NULL,
  PRIMARY KEY (`com_id`),
  KEY `com_usuario` (`com_usuario`),
  CONSTRAINT `comprador_ibfk_1` FOREIGN KEY (`com_usuario`) REFERENCES `usuario` (`usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprador`
--

LOCK TABLES `comprador` WRITE;
/*!40000 ALTER TABLE `comprador` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `pai_id` int NOT NULL,
  `pai_descripcion` varchar(50) NOT NULL,
  `pai_activo` int NOT NULL,
  PRIMARY KEY (`pai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Colombia',1);
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_calificacion`
--

DROP TABLE IF EXISTS `tipo_calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_calificacion` (
  `tca_id` int NOT NULL,
  `tca_descripcion` varchar(50) NOT NULL,
  `tca_valor` decimal(10,0) NOT NULL,
  `tca_activo` int NOT NULL,
  PRIMARY KEY (`tca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_calificacion`
--

LOCK TABLES `tipo_calificacion` WRITE;
/*!40000 ALTER TABLE `tipo_calificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `tdo_id` int NOT NULL,
  `tdo_descripcion` varchar(50) NOT NULL,
  `tdo_activo` int NOT NULL,
  `tdo_pais` int NOT NULL,
  PRIMARY KEY (`tdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'Cedula Ciudadania',1,1),(2,'Tarjeta de Identidad',1,1),(3,'Cedula de Extranjeria',1,1);
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_persona`
--

DROP TABLE IF EXISTS `tipo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_persona` (
  `tpe_id` int NOT NULL,
  `tpe_descripcion` varchar(50) DEFAULT NULL,
  `tpe_activo` varchar(45) NOT NULL,
  PRIMARY KEY (`tpe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_persona`
--

LOCK TABLES `tipo_persona` WRITE;
/*!40000 ALTER TABLE `tipo_persona` DISABLE KEYS */;
INSERT INTO `tipo_persona` VALUES (1,'Natural','1'),(2,'Juridica','1');
/*!40000 ALTER TABLE `tipo_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usu_id` int NOT NULL,
  `usu_nombre` varchar(50) NOT NULL,
  `usu_apellido` varchar(50) NOT NULL,
  `usu_tipoDocumento` int NOT NULL,
  `usu_telefonoFijo` varchar(15) DEFAULT NULL,
  `usu_telefonoCelular` varchar(15) NOT NULL,
  `usu_correo` varchar(30) NOT NULL,
  `usu_ciudad` int NOT NULL,
  `usu_fechaNacimiento` date DEFAULT NULL,
  `usu_tipoPersona` int NOT NULL,
  `usu_fechaCreacion` datetime NOT NULL,
  `usu_activo` int NOT NULL,
  `usu_password` varchar(50) NOT NULL,
  PRIMARY KEY (`usu_id`),
  KEY `usu_tipoDocumento` (`usu_tipoDocumento`),
  KEY `usu_ciudad` (`usu_ciudad`),
  KEY `usu_tipoPersona` (`usu_tipoPersona`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usu_tipoDocumento`) REFERENCES `tipo_documento` (`tdo_id`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`usu_ciudad`) REFERENCES `ciudad` (`ciu_id`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`usu_tipoPersona`) REFERENCES `tipo_persona` (`tpe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `ven_id` int NOT NULL,
  `ven_usuario` int NOT NULL,
  `ven_direccion` varchar(50) NOT NULL,
  `ven_fotoIdentificacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ven_id`),
  KEY `ven_usuario` (`ven_usuario`),
  CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`ven_usuario`) REFERENCES `usuario` (`usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'turepuesto_db'
--

--
-- Dumping routines for database 'turepuesto_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27  0:13:11
