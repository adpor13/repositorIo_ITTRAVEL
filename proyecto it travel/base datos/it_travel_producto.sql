-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: it_travel
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id_producto` int(4) NOT NULL,
  `nombre_servicio_turistico` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `geolocalizacion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pais` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `telefono` int(15) DEFAULT '0',
  `email` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `web` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `youtube` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `incluye` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `no_incluye` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `venta_libre` varchar(1) CHARACTER SET utf8 DEFAULT 'N',
  `capacidad` int(3) DEFAULT '0',
  `disponibilidad` int(3) DEFAULT '0',
  `horario` datetime DEFAULT NULL,
  `duracion_actividad` int(2) DEFAULT NULL,
  `disponible_desde` datetime DEFAULT NULL,
  `disponible_hasta` datetime DEFAULT NULL,
  `modalidad` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `variedad` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `proveedor_correo_electronico` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `id_producto_UNIQUE` (`id_producto`),
  KEY `fk_producto_proveedor1_idx` (`proveedor_correo_electronico`),
  CONSTRAINT `fk_producto_proveedor1` FOREIGN KEY (`proveedor_correo_electronico`) REFERENCES `proveedor` (`correo_electronico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'excursion1',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'N',0,0,NULL,NULL,NULL,NULL,NULL,NULL,'pedro_soler@msn.com'),(2,'excursion2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'N',0,0,NULL,NULL,NULL,NULL,NULL,NULL,'pedro_soler@msn.com'),(3,'excursion3',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'N',0,0,NULL,NULL,NULL,NULL,NULL,NULL,'pedro_soler@msn.com');
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

-- Dump completed on 2017-05-18  9:35:43
