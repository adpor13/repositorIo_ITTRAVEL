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
-- Table structure for table `producto_distribuidor`
--

DROP TABLE IF EXISTS `producto_distribuidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_distribuidor` (
  `cantidad` int(3) DEFAULT NULL,
  `distribuidor_correo_electronico` varchar(20) NOT NULL,
  `pd_id_producto` int(4) NOT NULL,
  PRIMARY KEY (`distribuidor_correo_electronico`,`pd_id_producto`),
  KEY `fk_producto_distribuidor_distribuidor1_idx` (`distribuidor_correo_electronico`),
  KEY `fk_producto_distribuidor_producto1_idx` (`pd_id_producto`),
  CONSTRAINT `fk_producto_distribuidor_distribuidor1` FOREIGN KEY (`distribuidor_correo_electronico`) REFERENCES `distribuidor` (`correo_electronico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_distribuidor_producto1` FOREIGN KEY (`pd_id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_distribuidor`
--

LOCK TABLES `producto_distribuidor` WRITE;
/*!40000 ALTER TABLE `producto_distribuidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_distribuidor` ENABLE KEYS */;
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
