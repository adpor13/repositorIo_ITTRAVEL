-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_ittravel
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
  `idproducto` int(11) NOT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `categoria_idcategoria` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `disponibilidad` tinyint(1) DEFAULT '0',
  `disponible_desde` datetime DEFAULT NULL,
  `disponible_hasta` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fotos` varchar(255) DEFAULT NULL,
  `geolocalizacion` varchar(255) DEFAULT NULL,
  `horario` datetime DEFAULT NULL,
  `idiomas` varchar(255) DEFAULT NULL,
  `incluye` varchar(255) DEFAULT NULL,
  `no_incluye` varchar(255) DEFAULT NULL,
  `nombre_servicio` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `proveedor_idproveedor` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `venta_libre` tinyint(1) DEFAULT '0',
  `web` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,NULL,0,'','',1,'2017-05-16 07:00:00',NULL,'','','','2017-05-18 09:30:00','','','','','',0,NULL,1,'','');
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

-- Dump completed on 2017-05-18  9:59:51
