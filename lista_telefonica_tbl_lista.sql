CREATE DATABASE  IF NOT EXISTS `lista_telefonica` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lista_telefonica`;
-- MySQL dump 10.13  Distrib 5.7.37, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lista_telefonica
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `tbl_lista`
--

DROP TABLE IF EXISTS `tbl_lista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lista` (
  `cod_lista` int(11) NOT NULL AUTO_INCREMENT,
  `nome_lista` varchar(80) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `sexo` enum('m','f','o') DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cod_lista`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lista`
--

LOCK TABLES `tbl_lista` WRITE;
/*!40000 ALTER TABLE `tbl_lista` DISABLE KEYS */;
INSERT INTO `tbl_lista` VALUES (1,'Luffy Mestre','1990-12-11','98665539142','m','Luffymestre@email.com'),(2,'Zoro Roronoa','1990-12-12','11111111111','m','RoronoaZoro@email.com'),(3,'Sanji Vinsmoke','1990-12-13','22222222222','m','VinsmokeSanji@email.com'),(4,'Rimuru Tempest','1990-12-14','33333333333','m','TempestRimuru@email.com'),(5,'Naofume Tate','1990-12-15','12345678900','m','marquinbrabo@email.com'),(6,'Emma sword','1990-12-16','44444444444','f','EmmaSanzenSekai@email.com');
/*!40000 ALTER TABLE `tbl_lista` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger bkp_usuario
before delete
on tbl_lista
for each row
begin 
insert into bkp_usuario (cod_lista, nome_lista, data_nascimento, cpf, sexo, email)
values
(old.cod_lista, old.nome_lista, old.data_nascimento, old.cpf, old.sexo, old.email);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-21 16:10:32
