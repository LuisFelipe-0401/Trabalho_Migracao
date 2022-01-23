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
-- Temporary table structure for view `relatorio_cliente_telefone`
--

DROP TABLE IF EXISTS `relatorio_cliente_telefone`;
/*!50001 DROP VIEW IF EXISTS `relatorio_cliente_telefone`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `relatorio_cliente_telefone` AS SELECT 
 1 AS `nome_lista`,
 1 AS `data_nascimento`,
 1 AS `cpf`,
 1 AS `email`,
 1 AS `telefone1`,
 1 AS `telefone2`,
 1 AS `telefone3`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `relatorio_cliente_telefone`
--

/*!50001 DROP VIEW IF EXISTS `relatorio_cliente_telefone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `relatorio_cliente_telefone` AS select `t`.`nome_lista` AS `nome_lista`,`t`.`data_nascimento` AS `data_nascimento`,`t`.`cpf` AS `cpf`,`t`.`email` AS `email`,`tel`.`telefone1` AS `telefone1`,`tel`.`telefone2` AS `telefone2`,`tel`.`telefone3` AS `telefone3` from (`tbl_lista` `t` join `telefone` `tel` on(`t`.`cod_lista` = `tel`.`cod_tbl_lista`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'lista_telefonica'
--

--
-- Dumping routines for database 'lista_telefonica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-21 16:10:32
