-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: gp12banco
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `jogador`
--

DROP TABLE IF EXISTS `jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogador` (
  `codjogador` int NOT NULL,
  `nickname` varchar(16) NOT NULL,
  `ranking` varchar(30) NOT NULL,
  `nivel` int NOT NULL,
  PRIMARY KEY (`codjogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogador`
--

LOCK TABLES `jogador` WRITE;
/*!40000 ALTER TABLE `jogador` DISABLE KEYS */;
INSERT INTO `jogador` VALUES (1,'Beatrice','Ferro',236),(2,'Kieran','Prata',246),(3,'Conan','Diamante',21),(4,'Patrick','Imortal',168),(5,'Gregory','Platina',170),(6,'Leilani','Bronze',110),(7,'Amelia','Ferro',69),(8,'Porter','Prata',97),(9,'Denton','Bronze',268),(10,'Coby','Bronze',49),(11,'Suki','Diamante',134),(12,'Armand','Prata',231),(13,'Brady','Diamante',135),(14,'Lois','Ferro',293),(15,'William','Prata',249),(16,'Noah','Diamante',104),(17,'Wendy','Diamante',153),(18,'Michael','Platina',180),(19,'Brennan','Imortal',72),(20,'Ryan','Bronze',294),(21,'Chastity','Imortal',287),(22,'Brianna','Ouro',291),(23,'Jonah','Platina',55),(24,'Kaden','Radiante',218),(25,'Ursula','Imortal',273),(26,'Erin','Diamante',232),(27,'Kaye','Radiante',167),(28,'Ahmed','Prata',127),(29,'Salvador','Platina',146),(30,'Autumn','Diamante',157),(31,'Adara','Imortal',293),(32,'Moses','Platina',46),(33,'Erica','Platina',10),(34,'Hollee','Ouro',194),(35,'Jarrod','Radiante',118),(36,'Adara','Ferro',49),(37,'Willa','Diamante',156),(38,'Fallon','Platina',261),(39,'Warren','Radiante',262),(40,'Akeem','Diamante',128),(41,'Gray','Diamante',45),(42,'Walker','Radiante',254),(43,'Colton','Radiante',191),(44,'Tashya','Ouro',81),(45,'Melanie','Imortal',208),(46,'Chandler','Ouro',280),(47,'Alfonso','Bronze',95),(48,'Rebekah','Ouro',70),(49,'Samantha','Ferro',27),(50,'Quon','Radiante',289),(51,'Blaine','Imortal',117),(52,'Hadassah','Radiante',173),(53,'Maisie','Platina',294),(54,'Hayes','Ouro',4),(55,'Kibo','Ferro',232),(56,'Isadora','Prata',70),(57,'Astra','Imortal',290),(58,'Maya','Ouro',219),(59,'Vance','Imortal',59),(60,'David','Radiante',299),(61,'Madaline','Imortal',284),(62,'Rina','Diamante',291),(63,'Audrey','Ferro',150),(64,'Quinlan','Diamante',85),(65,'Harding','Imortal',139),(66,'Harper','Ouro',233),(67,'Noah','Platina',215),(68,'Zia','Bronze',189),(69,'Judith','Ouro',20),(70,'Dawn','Ferro',128),(71,'Hope','Diamante',174),(72,'Ayanna','Diamante',81),(73,'Jordan','Imortal',77),(74,'Lavinia','Radiante',118),(75,'Yardley','Ouro',208),(76,'Micah','Platina',188),(77,'Harrison','Platina',150),(78,'Kaden','Platina',203),(79,'Oliver','Ferro',190),(80,'Clark','Ouro',63),(81,'Teegan','Ouro',57),(82,'Iona','Bronze',192),(83,'Vladimir','Diamante',177),(84,'Sylvia','Imortal',113),(85,'Alvin','Ferro',110),(86,'Daquan','Bronze',16),(87,'Josephine','Radiante',184),(88,'Phyllis','Prata',203),(89,'Melissa','Diamante',297),(90,'Maggie','Platina',73),(91,'Oren','Bronze',74),(92,'Chava','Ferro',247),(93,'Thomas','Ferro',160),(94,'Clark','Prata',118),(95,'Armand','Ouro',300),(96,'Camilla','Bronze',169),(97,'Fletcher','Ferro',218),(98,'Hoyt','Radiante',43),(99,'Herrod','Ouro',48),(100,'Britanni','Platina',129);
/*!40000 ALTER TABLE `jogador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partida` (
  `codpartida` int NOT NULL,
  `data` date NOT NULL,
  `Mapa` char(50) NOT NULL,
  `tipo_de_jogo_codtipo_de_jogo` int NOT NULL,
  `Time1_codtime_1` int NOT NULL,
  `Time2_codtime_2` int NOT NULL,
  PRIMARY KEY (`codpartida`),
  KEY `Partida_Time1` (`Time1_codtime_1`),
  KEY `Partida_Time2` (`Time2_codtime_2`),
  KEY `Partida_tipo_de_jogo` (`tipo_de_jogo_codtipo_de_jogo`),
  CONSTRAINT `Partida_Time1` FOREIGN KEY (`Time1_codtime_1`) REFERENCES `time1` (`codtime_1`),
  CONSTRAINT `Partida_Time2` FOREIGN KEY (`Time2_codtime_2`) REFERENCES `time2` (`codtime_2`),
  CONSTRAINT `Partida_tipo_de_jogo` FOREIGN KEY (`tipo_de_jogo_codtipo_de_jogo`) REFERENCES `tipo_de_jogo` (`codtipo_de_jogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (1,'2015-06-21','Fracture',1,1,1),(2,'2013-06-20','Haven',2,2,2),(3,'2010-11-20','Icebox',3,3,3),(4,'2023-04-21','Ascent',4,4,4),(5,'2005-08-21','Breeze',5,5,5),(6,'2024-05-20','Ascent',6,6,6),(7,'2030-07-21','Haven',7,7,7),(8,'2012-07-20','Bind',8,8,8),(9,'2009-10-20','Icebox',9,9,9),(10,'2029-11-20','Ascent',10,10,10),(11,'2023-04-20','Ascent',11,11,11),(12,'2020-04-20','Ascent',12,12,12),(13,'2009-06-20','Ascent',13,13,13),(14,'2006-12-20','Split',14,14,14),(15,'2011-09-21','Fracture',15,15,15),(16,'2020-08-21','Haven',16,16,16),(17,'2017-02-21','Breeze',17,17,17),(18,'2020-07-20','Fracture',18,18,18),(19,'2016-05-20','Breeze',19,19,19),(20,'2028-02-21','Icebox',20,20,20),(21,'2011-05-20','Haven',21,21,21),(22,'2020-06-20','Ascent',22,22,22),(23,'2022-06-21','Breeze',23,23,23),(24,'2008-01-21','Breeze',24,24,24),(25,'2007-07-21','Fracture',25,25,25),(26,'2014-08-20','Split',26,26,26),(27,'2031-05-21','Haven',27,27,27),(28,'2011-09-21','Fracture',28,28,28),(29,'2006-05-20','Breeze',29,29,29),(30,'2031-03-21','Ascent',30,30,30),(31,'2018-04-20','Ascent',31,31,31),(32,'2030-10-20','Ascent',32,32,32),(33,'2011-04-20','Fracture',33,33,33),(34,'2012-12-20','Split',34,34,34),(35,'2021-07-20','Fracture',35,35,35),(36,'2018-10-20','Breeze',36,36,36),(37,'2027-06-21','Bind',37,37,37),(38,'2027-04-21','Fracture',38,38,38),(39,'2003-07-20','Bind',39,39,39),(40,'2012-10-20','Split',40,40,40),(41,'2020-08-20','Ascent',41,41,41),(42,'2029-01-21','Ascent',42,42,42),(43,'2025-10-20','Bind',43,43,43),(44,'2006-05-21','Icebox',44,44,44),(45,'2030-08-20','Split',45,45,45),(46,'2026-05-20','Split',46,46,46),(47,'2022-02-21','Ascent',47,47,47),(48,'2012-07-20','Bind',48,48,48),(49,'2030-05-21','Breeze',49,49,49),(50,'2015-02-21','Ascent',50,50,50),(51,'2003-08-20','Bind',51,51,51),(52,'2011-07-20','Icebox',52,52,52),(53,'2031-07-21','Split',53,53,53),(54,'2023-06-20','Haven',54,54,54),(55,'2023-03-21','Split',55,55,55),(56,'2015-08-21','Ascent',56,56,56),(57,'2007-01-21','Bind',57,57,57),(58,'2016-05-20','Split',58,58,58),(59,'2003-09-20','Bind',59,59,59),(60,'2007-06-21','Bind',60,60,60),(61,'2002-03-21','Haven',61,61,61),(62,'2005-07-20','Bind',62,62,62),(63,'2026-08-20','Bind',63,63,63),(64,'2001-06-20','Haven',64,64,64),(65,'2024-09-20','Haven',65,65,65),(66,'2017-08-20','Ascent',66,66,66),(67,'2014-12-20','Bind',67,67,67),(68,'2019-02-21','Breeze',68,68,68),(69,'2014-07-21','Haven',69,69,69),(70,'2023-05-21','Icebox',70,70,70),(71,'2013-03-21','Ascent',71,71,71),(72,'2005-09-20','Haven',72,72,72),(73,'2002-05-20','Fracture',73,73,73),(74,'2011-06-20','Breeze',74,74,74),(75,'2004-07-20','Split',75,75,75),(76,'2025-06-20','Ascent',76,76,76),(77,'2017-06-20','Split',77,77,77),(78,'2020-10-20','Haven',78,78,78),(79,'2010-01-21','Breeze',79,79,79),(80,'2014-12-20','Ascent',80,80,80),(81,'2007-02-21','Ascent',81,81,81),(82,'2015-08-20','Icebox',82,82,82),(83,'2015-03-21','Ascent',83,83,83),(84,'2030-01-21','Bind',84,84,84),(85,'2030-04-21','Bind',85,85,85),(86,'2028-12-20','Fracture',86,86,86),(87,'2007-06-21','Breeze',87,87,87),(88,'2021-02-21','Split',88,88,88),(89,'2009-08-20','Haven',89,89,89),(90,'2009-11-20','Haven',90,90,90),(91,'2030-08-20','Haven',91,91,91),(92,'2003-02-21','Bind',92,92,92),(93,'2024-06-21','Haven',93,93,93),(94,'2001-03-21','Ascent',94,94,94),(95,'2006-03-21','Haven',95,95,95),(96,'2004-07-21','Bind',96,96,96),(97,'2029-07-21','Breeze',97,97,97),(98,'2024-09-20','Split',98,98,98),(99,'2003-02-21','Ascent',99,99,99),(100,'2024-12-20','Split',100,100,100);
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance` (
  `codperformance` int NOT NULL,
  `Partida_codpartida` int NOT NULL,
  `Jogador_codjogador` int NOT NULL,
  `kills` int NOT NULL,
  `Deaths` int NOT NULL,
  `Assistances` int NOT NULL,
  PRIMARY KEY (`codperformance`),
  KEY `Performance_Jogador` (`Jogador_codjogador`),
  KEY `Performance_Partida` (`Partida_codpartida`),
  CONSTRAINT `Performance_Jogador` FOREIGN KEY (`Jogador_codjogador`) REFERENCES `jogador` (`codjogador`),
  CONSTRAINT `Performance_Partida` FOREIGN KEY (`Partida_codpartida`) REFERENCES `partida` (`codpartida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES (1,1,1,20,6,17),(2,2,2,11,16,10),(3,3,3,23,23,9),(4,4,4,24,3,12),(5,5,5,3,6,11),(6,6,6,30,10,16),(7,7,7,11,8,2),(8,8,8,20,16,16),(9,9,9,29,25,16),(10,10,10,5,8,3),(11,11,11,26,28,13),(12,12,12,11,23,2),(13,13,13,33,3,9),(14,14,14,19,4,6),(15,15,15,4,24,9),(16,16,16,2,18,15),(17,17,17,7,25,2),(18,18,18,24,7,7),(19,19,19,35,18,11),(20,20,20,34,20,7),(21,21,21,33,27,13),(22,22,22,8,14,20),(23,23,23,8,6,2),(24,24,24,28,6,20),(25,25,25,11,28,17),(26,26,26,17,9,5),(27,27,27,15,17,9),(28,28,28,20,12,11),(29,29,29,9,4,6),(30,30,30,17,19,7),(31,31,31,2,2,18),(32,32,32,26,1,2),(33,33,33,12,21,2),(34,34,34,17,17,1),(35,35,35,6,17,14),(36,36,36,7,23,18),(37,37,37,6,16,19),(38,38,38,25,3,12),(39,39,39,19,19,17),(40,40,40,29,20,17),(41,41,41,1,8,9),(42,42,42,25,18,12),(43,43,43,28,21,10),(44,44,44,4,5,8),(45,45,45,1,16,18),(46,46,46,31,23,8),(47,47,47,33,22,10),(48,48,48,11,10,12),(49,49,49,24,20,20),(50,50,50,3,7,8),(51,51,51,8,24,6),(52,52,52,22,14,17),(53,53,53,9,10,6),(54,54,54,2,1,5),(55,55,55,13,26,20),(56,56,56,26,3,12),(57,57,57,32,21,11),(58,58,58,2,5,6),(59,59,59,2,7,15),(60,60,60,11,4,17),(61,61,61,15,8,1),(62,62,62,33,22,14),(63,63,63,15,20,4),(64,64,64,27,22,3),(65,65,65,10,25,6),(66,66,66,8,16,13),(67,67,67,14,25,14),(68,68,68,17,11,7),(69,69,69,26,15,9),(70,70,70,2,14,4),(71,71,71,7,28,8),(72,72,72,18,4,18),(73,73,73,4,17,14),(74,74,74,17,6,11),(75,75,75,32,23,13),(76,76,76,5,11,17),(77,77,77,1,12,10),(78,78,78,30,2,3),(79,79,79,14,25,20),(80,80,80,16,2,15),(81,81,81,28,25,12),(82,82,82,19,14,13),(83,83,83,26,23,19),(84,84,84,35,20,1),(85,85,85,32,10,5),(86,86,86,30,1,15),(87,87,87,21,21,11),(88,88,88,25,2,12),(89,89,89,32,9,13),(90,90,90,5,24,19),(91,91,91,19,24,5),(92,92,92,34,5,6),(93,93,93,35,25,20),(94,94,94,4,19,16),(95,95,95,29,1,8),(96,96,96,16,21,12),(97,97,97,4,13,4),(98,98,98,5,26,1),(99,99,99,27,10,9),(100,100,100,23,15,15);
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_part_jogador`
--

DROP TABLE IF EXISTS `rel_part_jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_part_jogador` (
  `codrel_part_jogador` int NOT NULL,
  `Partida_codpartida` int NOT NULL,
  `Jogador_codjogador` int NOT NULL,
  PRIMARY KEY (`codrel_part_jogador`),
  KEY `rel_part_jogador_Jogador` (`Jogador_codjogador`),
  KEY `rel_part_jogador_Partida` (`Partida_codpartida`),
  CONSTRAINT `rel_part_jogador_Jogador` FOREIGN KEY (`Jogador_codjogador`) REFERENCES `jogador` (`codjogador`),
  CONSTRAINT `rel_part_jogador_Partida` FOREIGN KEY (`Partida_codpartida`) REFERENCES `partida` (`codpartida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_part_jogador`
--

LOCK TABLES `rel_part_jogador` WRITE;
/*!40000 ALTER TABLE `rel_part_jogador` DISABLE KEYS */;
INSERT INTO `rel_part_jogador` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50),(51,51,51),(52,52,52),(53,53,53),(54,54,54),(55,55,55),(56,56,56),(57,57,57),(58,58,58),(59,59,59),(60,60,60),(61,61,61),(62,62,62),(63,63,63),(64,64,64),(65,65,65),(66,66,66),(67,67,67),(68,68,68),(69,69,69),(70,70,70),(71,71,71),(72,72,72),(73,73,73),(74,74,74),(75,75,75),(76,76,76),(77,77,77),(78,78,78),(79,79,79),(80,80,80),(81,81,81),(82,82,82),(83,83,83),(84,84,84),(85,85,85),(86,86,86),(87,87,87),(88,88,88),(89,89,89),(90,90,90),(91,91,91),(92,92,92),(93,93,93),(94,94,94),(95,95,95),(96,96,96),(97,97,97),(98,98,98),(99,99,99),(100,100,100);
/*!40000 ALTER TABLE `rel_part_jogador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sumario`
--

DROP TABLE IF EXISTS `sumario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sumario` (
  `codsumario` int NOT NULL,
  `rounds_win_def` int NOT NULL,
  `rounds_win_atk` int NOT NULL,
  `Partida_codpartida` int NOT NULL,
  `Jogador_codjogador` int NOT NULL,
  PRIMARY KEY (`codsumario`),
  KEY `Sumario_Jogador` (`Jogador_codjogador`),
  KEY `Sumario_Partida` (`Partida_codpartida`),
  CONSTRAINT `Sumario_Jogador` FOREIGN KEY (`Jogador_codjogador`) REFERENCES `jogador` (`codjogador`),
  CONSTRAINT `Sumario_Partida` FOREIGN KEY (`Partida_codpartida`) REFERENCES `partida` (`codpartida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sumario`
--

LOCK TABLES `sumario` WRITE;
/*!40000 ALTER TABLE `sumario` DISABLE KEYS */;
INSERT INTO `sumario` VALUES (1,6,1,1,1),(2,5,11,2,2),(3,6,4,3,3),(4,4,5,4,4),(5,4,4,5,5),(6,8,1,6,6),(7,1,11,7,7),(8,7,12,8,8),(9,9,5,9,9),(10,12,1,10,10),(11,6,11,11,11),(12,3,4,12,12),(13,1,8,13,13),(14,4,12,14,14),(15,4,3,15,15),(16,9,3,16,16),(17,3,9,17,17),(18,12,9,18,18),(19,2,4,19,19),(20,10,3,20,20),(21,5,9,21,21),(22,12,8,22,22),(23,7,2,23,23),(24,4,6,24,24),(25,3,7,25,25),(26,0,1,26,26),(27,5,5,27,27),(28,12,0,28,28),(29,10,0,29,29),(30,5,5,30,30),(31,9,12,31,31),(32,3,9,32,32),(33,0,2,33,33),(34,4,3,34,34),(35,5,5,35,35),(36,12,5,36,36),(37,8,12,37,37),(38,11,5,38,38),(39,8,3,39,39),(40,8,10,40,40),(41,0,11,41,41),(42,11,8,42,42),(43,8,11,43,43),(44,5,10,44,44),(45,6,9,45,45),(46,11,8,46,46),(47,1,12,47,47),(48,10,5,48,48),(49,3,3,49,49),(50,4,1,50,50),(51,4,4,51,51),(52,8,8,52,52),(53,8,5,53,53),(54,8,8,54,54),(55,10,8,55,55),(56,4,7,56,56),(57,4,2,57,57),(58,11,11,58,58),(59,12,9,59,59),(60,10,8,60,60),(61,8,3,61,61),(62,12,2,62,62),(63,1,5,63,63),(64,4,3,64,64),(65,3,1,65,65),(66,2,3,66,66),(67,11,3,67,67),(68,9,3,68,68),(69,11,3,69,69),(70,5,7,70,70),(71,10,4,71,71),(72,6,1,72,72),(73,0,0,73,73),(74,1,5,74,74),(75,3,8,75,75),(76,7,5,76,76),(77,2,8,77,77),(78,1,10,78,78),(79,9,5,79,79),(80,0,3,80,80),(81,0,1,81,81),(82,10,0,82,82),(83,3,9,83,83),(84,7,7,84,84),(85,4,1,85,85),(86,12,7,86,86),(87,1,1,87,87),(88,6,3,88,88),(89,9,9,89,89),(90,7,5,90,90),(91,2,5,91,91),(92,10,10,92,92),(93,2,8,93,93),(94,9,5,94,94),(95,3,7,95,95),(96,0,7,96,96),(97,11,1,97,97),(98,7,3,98,98),(99,7,6,99,99),(100,3,5,100,100);
/*!40000 ALTER TABLE `sumario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_de_pontos`
--

DROP TABLE IF EXISTS `tabela_de_pontos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_de_pontos` (
  `codtabela` int NOT NULL,
  `pontos_combate` int NOT NULL,
  `rank_economico` int NOT NULL,
  `melhor_round` int NOT NULL,
  `media_dinheiro_gasto` int NOT NULL,
  `pior_round` int NOT NULL,
  `Partida_codpartida` int NOT NULL,
  `Jogador_codjogador` int NOT NULL,
  PRIMARY KEY (`codtabela`),
  KEY `tabela_de_pontos_Jogador` (`Jogador_codjogador`),
  KEY `tabela_de_pontos_Partida` (`Partida_codpartida`),
  CONSTRAINT `tabela_de_pontos_Jogador` FOREIGN KEY (`Jogador_codjogador`) REFERENCES `jogador` (`codjogador`),
  CONSTRAINT `tabela_de_pontos_Partida` FOREIGN KEY (`Partida_codpartida`) REFERENCES `partida` (`codpartida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_de_pontos`
--

LOCK TABLES `tabela_de_pontos` WRITE;
/*!40000 ALTER TABLE `tabela_de_pontos` DISABLE KEYS */;
INSERT INTO `tabela_de_pontos` VALUES (1,200,3,7,4199,7,1,1),(2,226,5,17,3701,8,2,2),(3,306,7,2,4415,15,3,3),(4,279,2,28,2655,12,4,4),(5,189,9,8,3674,18,5,5),(6,290,1,18,3457,10,6,6),(7,171,7,3,4386,34,7,7),(8,154,5,32,4030,9,8,8),(9,197,9,27,3676,17,9,9),(10,69,2,24,4006,4,10,10),(11,178,4,34,4098,33,11,11),(12,208,3,6,3950,15,12,12),(13,196,8,15,4088,18,13,13),(14,135,1,17,3261,30,14,14),(15,238,1,6,4418,3,15,15),(16,226,8,30,3307,16,16,16),(17,278,1,1,2598,7,17,17),(18,144,7,15,3267,18,18,18),(19,61,4,22,2739,24,19,19),(20,316,10,34,4291,32,20,20),(21,92,1,27,3656,30,21,21),(22,248,1,20,3767,15,22,22),(23,87,4,24,3549,12,23,23),(24,224,8,5,4022,35,24,24),(25,94,6,3,3712,14,25,25),(26,315,2,27,4050,15,26,26),(27,272,2,29,2614,19,27,27),(28,108,2,35,2838,14,28,28),(29,320,4,2,3484,22,29,29),(30,130,6,27,3950,18,30,30),(31,313,4,30,2725,23,31,31),(32,183,2,19,4490,34,32,32),(33,260,7,6,2558,10,33,33),(34,266,4,14,3973,17,34,34),(35,187,7,12,3824,6,35,35),(36,67,6,12,3609,8,36,36),(37,173,3,16,4132,29,37,37),(38,52,10,22,4320,29,38,38),(39,68,4,23,4081,25,39,39),(40,62,10,25,3218,11,40,40),(41,114,9,24,2893,27,41,41),(42,275,8,29,2575,23,42,42),(43,242,10,31,2692,20,43,43),(44,251,8,28,3399,15,44,44),(45,84,3,34,3761,8,45,45),(46,120,5,7,2734,29,46,46),(47,81,5,35,3705,25,47,47),(48,303,8,25,3065,19,48,48),(49,275,6,25,3715,9,49,49),(50,136,4,33,3299,20,50,50),(51,278,5,24,4229,6,51,51),(52,317,1,26,4418,33,52,52),(53,307,10,30,3992,31,53,53),(54,127,3,1,2811,9,54,54),(55,247,1,14,3357,1,55,55),(56,186,8,21,3058,16,56,56),(57,105,7,26,3287,10,57,57),(58,189,10,16,3370,15,58,58),(59,89,6,31,4346,16,59,59),(60,84,1,27,4163,20,60,60),(61,144,8,8,4218,9,61,61),(62,168,2,15,3438,9,62,62),(63,253,9,8,3282,33,63,63),(64,306,1,7,3778,13,64,64),(65,261,3,4,2775,5,65,65),(66,55,4,1,2704,3,66,66),(67,130,1,9,3663,11,67,67),(68,137,4,30,3729,22,68,68),(69,110,3,32,3326,8,69,69),(70,259,5,32,4464,22,70,70),(71,316,4,9,2652,21,71,71),(72,87,1,10,3667,6,72,72),(73,311,9,1,3779,3,73,73),(74,115,3,10,3038,35,74,74),(75,128,3,16,4282,20,75,75),(76,304,10,24,3731,31,76,76),(77,105,6,22,4322,20,77,77),(78,107,6,23,4225,25,78,78),(79,171,4,5,2888,17,79,79),(80,57,6,35,4239,13,80,80),(81,158,10,33,4206,28,81,81),(82,212,4,4,3637,7,82,82),(83,283,5,35,3880,25,83,83),(84,200,4,3,4285,5,84,84),(85,137,10,4,4221,2,85,85),(86,246,6,1,2554,22,86,86),(87,170,3,25,4260,6,87,87),(88,206,5,27,3048,1,88,88),(89,291,3,23,3055,6,89,89),(90,276,10,16,3949,30,90,90),(91,308,7,4,4188,5,91,91),(92,250,8,26,3026,6,92,92),(93,143,6,20,3422,2,93,93),(94,90,4,35,3343,14,94,94),(95,170,3,20,2501,18,95,95),(96,214,3,18,2895,2,96,96),(97,107,9,10,4107,31,97,97),(98,199,4,1,3571,20,98,98),(99,231,5,30,3922,8,99,99),(100,130,5,2,3257,32,100,100);
/*!40000 ALTER TABLE `tabela_de_pontos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time1`
--

DROP TABLE IF EXISTS `time1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time1` (
  `codtime_1` int NOT NULL,
  `agente_1_1` char(50) NOT NULL,
  `agente_1_2` char(50) NOT NULL,
  `agente_1_3` char(50) NOT NULL,
  `agente_1_4` char(50) NOT NULL,
  `agente_1_5` char(50) NOT NULL,
  `rounds_wintime1` int NOT NULL,
  PRIMARY KEY (`codtime_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time1`
--

LOCK TABLES `time1` WRITE;
/*!40000 ALTER TABLE `time1` DISABLE KEYS */;
INSERT INTO `time1` VALUES (1,'Winter','Addison','Joel','Karyn','Ramona',18),(2,'Steven','Sigourney','Cally','Neil','Imogene',2),(3,'Hyatt','Guinevere','Zephr','Elton','Maryam',13),(4,'Ina','Hunter','Latifah','Heidi','Kevyn',17),(5,'Ila','Cade','Stuart','Alvin','India',12),(6,'Darius','Amber','Nathan','Barbara','Camille',3),(7,'Garrison','Adena','Hamilton','Jasmine','Hiroko',15),(8,'Winter','Carter','Ruby','Patience','Maggie',3),(9,'Kylynn','Sybil','Holmes','Owen','Josephine',17),(10,'Buckminster','Zia','Darius','Linus','Moana',7),(11,'Amery','Avram','Tobias','Charles','Leslie',6),(12,'Edward','Samson','Kato','Xena','Amber',11),(13,'Mohammad','Pearl','Gannon','Uma','Mikayla',5),(14,'Andrew','Nicholas','Allistair','Rebecca','Daryl',16),(15,'Peter','Aidan','Igor','Quemby','Amber',15),(16,'Sasha','Maggy','Walker','Astra','Kay',11),(17,'Zeph','Marcia','Grant','Shad','Ima',5),(18,'Prescott','Gary','Lavinia','Patrick','Helen',15),(19,'Rigel','Thane','Armand','Liberty','Belle',2),(20,'Ayanna','Brett','Jillian','Bree','MacKenzie',8),(21,'Violet','Hyatt','Marshall','Brandon','Melissa',14),(22,'Beck','Serina','Justin','Christopher','Naida',16),(23,'Chancellor','Rhonda','Dalton','Amethyst','Mallory',4),(24,'Berk','Christen','Caldwell','Kenneth','Octavia',1),(25,'Montana','Irene','Cameron','Piper','Audrey',15),(26,'Serina','Nayda','Maile','Charlotte','Kaden',10),(27,'Dane','Axel','Simone','Cherokee','Maite',9),(28,'Xander','TaShya','Carter','Mercedes','Jordan',17),(29,'Orson','Dane','Lev','Jason','Melinda',13),(30,'Ahmed','Melinda','Gavin','Emery','Kellie',11),(31,'Noah','Thomas','Sandra','Renee','Dahlia',18),(32,'Leigh','Jescie','Hamilton','Jamal','Sandra',7),(33,'Lara','Alden','Colette','Chantale','Whitney',10),(34,'Georgia','Vaughan','Amos','Gareth','Joelle',16),(35,'Yen','Barry','Sean','Drake','Alfreda',11),(36,'Lyle','Mufutau','Angela','Britanney','Ivana',10),(37,'Herman','Tara','Zachary','Carissa','Karly',7),(38,'Mercedes','Derek','Quintessa','Clark','Libby',11),(39,'Mannix','Wynne','Ross','Ishmael','Aretha',9),(40,'Wade','Uma','Nissim','Aubrey','Noelle',1),(41,'Addison','Jaquelyn','Gil','Dalton','Frances',1),(42,'Jana','Phyllis','Jasmine','Beatrice','Quynn',12),(43,'Sandra','Hedley','Branden','Gregory','Ruth',7),(44,'Raymond','Felix','Baker','Keely','Allegra',15),(45,'Nasim','Quinlan','Hoyt','Mary','Jordan',9),(46,'Vance','Gareth','Ursa','Colette','Dorothy',5),(47,'Orson','Keane','Oleg','Austin','Belle',7),(48,'Sylvia','Joel','Vance','Chase','Brielle',9),(49,'Quamar','Malik','Omar','Alice','Joy',18),(50,'Hall','Donovan','Judah','Jane','Casey',14),(51,'Aurora','Prescott','Eric','Daquan','Echo',11),(52,'Kennedy','Deacon','Sandra','Rigel','Maxine',3),(53,'Clayton','Abigail','Bruno','Melissa','Hermione',15),(54,'Ila','Ira','Gray','Hanae','Illana',12),(55,'Castor','Rigel','Honorato','Drake','Xantha',6),(56,'Calvin','Griffith','Nevada','Hiroko','Ella',1),(57,'Amela','Stephen','Blair','Nerea','Sheila',4),(58,'Willa','Eden','Teagan','Adara','MacKensie',3),(59,'Slade','Brent','Blaze','Brendan','Patricia',14),(60,'Ezekiel','Marvin','Colt','Tyler','Yolanda',11),(61,'Zeph','Colette','Kameko','Rudyard','Astra',4),(62,'Kirk','Whitney','Dalton','Ryan','Rebekah',5),(63,'Gage','Marsden','Rudyard','Brian','Linda',16),(64,'Brent','Rhiannon','Zephania','Lionel','Doris',16),(65,'Penelope','Kai','Amber','Jesse','Iola',2),(66,'Germaine','Lillith','Branden','Fulton','Deanna',15),(67,'Ciaran','Maryam','Sheila','Channing','Shana',18),(68,'Arsenio','Demetrius','Mia','Len','Chantale',10),(69,'Deirdre','Jacob','Stephen','Oliver','Basia',4),(70,'Uma','Lacy','Aretha','Lisandra','Sydney',16),(71,'Kaseem','Hollee','Cheryl','Grace','Quintessa',11),(72,'Matthew','Giselle','Rose','Xenos','Megan',3),(73,'Bevis','Medge','Leslie','Lamar','Genevieve',9),(74,'Herrod','Kenyon','Kelsie','Lee','Deanna',11),(75,'Reagan','Jason','Sarah','David','Madaline',11),(76,'Leigh','Kasimir','Ila','Melyssa','Shelby',3),(77,'Tanisha','David','Jescie','Kessie','Pandora',12),(78,'Zephania','Giselle','Reece','Astra','Elaine',3),(79,'Orla','Ainsley','Imani','Destiny','Heidi',3),(80,'Blair','Robin','Amanda','Violet','Quemby',18),(81,'Howard','Gary','Vladimir','Alden','Genevieve',4),(82,'Yolanda','Hunter','Galvin','Cadman','Zephr',18),(83,'Jamal','Xandra','Hilel','Xavier','Florence',9),(84,'Sydnee','Caldwell','Arden','Violet','Heidi',11),(85,'Georgia','Imogene','Lunea','Timon','Ila',14),(86,'Chelsea','Lael','Harlan','Declan','Kristen',18),(87,'Beck','August','Rashad','Jaquelyn','Carol',1),(88,'Lael','Scott','Vivien','Alexandra','Sharon',5),(89,'Doris','Leandra','Cruz','Madonna','Meredith',5),(90,'Elliott','Ariana','Astra','Alana','Robin',2),(91,'Quail','Evangeline','Gray','Harding','Darrel',15),(92,'Alexander','Oprah','Maxwell','Zephr','Basia',10),(93,'Ariel','Colorado','Avram','Janna','Rylee',5),(94,'Halee','Calista','Sharon','Yasir','Ariel',3),(95,'Leonard','Knox','Erin','Mary','Maris',4),(96,'Julian','Quon','Duncan','Clio','Harriet',15),(97,'Ray','Blythe','Alice','Lacy','Quincy',3),(98,'Stella','Branden','Audra','Destiny','Delilah',18),(99,'Colleen','Marvin','Zachary','Patrick','Clementine',6),(100,'Hayden','Maris','Stuart','Dai','Holly',5);
/*!40000 ALTER TABLE `time1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time2`
--

DROP TABLE IF EXISTS `time2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time2` (
  `codtime_2` int NOT NULL,
  `agente_2_1` char(50) NOT NULL,
  `agente_2_2` char(50) NOT NULL,
  `agente_2_3` char(50) NOT NULL,
  `agente_2_4` char(50) NOT NULL,
  `agente_2_5` char(50) NOT NULL,
  `rounds_wintime2` int NOT NULL,
  PRIMARY KEY (`codtime_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time2`
--

LOCK TABLES `time2` WRITE;
/*!40000 ALTER TABLE `time2` DISABLE KEYS */;
INSERT INTO `time2` VALUES (1,'Lane','Ezra','Stacey','Aladdin','Cassidy',6),(2,'Irene','Chantale','Tatiana','Halla','Emery',9),(3,'Kaitlin','Hall','Joy','Lacota','Anastasia',4),(4,'Stella','Ryan','Kasper','Inga','Sacha',4),(5,'Jermaine','Callum','Hedley','Brock','Jolie',14),(6,'Keane','Kameko','Jackson','Mikayla','Cecilia',13),(7,'Vaughan','Fuller','Addison','Margaret','Bruno',7),(8,'Walter','Hillary','Lydia','Sydnee','Miranda',4),(9,'Kaitlin','Lev','Elvis','Wayne','Scarlet',18),(10,'Piper','Kasimir','Anjolie','Melvin','Philip',1),(11,'Gavin','Erin','Summer','Galvin','Paloma',14),(12,'Berk','Hedwig','Hakeem','Chaney','Colorado',1),(13,'Uriah','Emmanuel','Randall','Willa','Carson',17),(14,'Dorian','Hector','Colorado','Ronan','Lois',11),(15,'Rajah','Dana','Shafira','David','Cynthia',5),(16,'Hoyt','Deanna','Blair','Hadassah','Alice',6),(17,'Malik','Zena','Ryan','Lana','Donna',14),(18,'Ivor','Axel','Cruz','Roanna','Brenden',14),(19,'Lunea','Christopher','Hashim','Ezra','Guy',13),(20,'Bertha','Sandra','Vladimir','Diana','Dolan',11),(21,'Sade','Jamal','Tobias','Xenos','Cameron',1),(22,'Jack','Beau','Elvis','Chaim','Claudia',13),(23,'Kalia','Keaton','Arden','Vernon','Doris',11),(24,'Emi','Ria','Brendan','Garrett','Arsenio',18),(25,'Aristotle','Robin','Deirdre','Rhonda','Elton',12),(26,'Allegra','Callum','Holmes','Blythe','Acton',6),(27,'Gannon','Gay','Nash','Ian','Jade',7),(28,'Amal','Neil','Eden','Jarrod','Elvis',3),(29,'Chadwick','Karyn','Sybil','Dorothy','Thane',13),(30,'Kermit','Fleur','Petra','Gabriel','Yael',10),(31,'Shaine','Carolyn','Halla','Maggy','Carly',8),(32,'Blaine','Baker','Jayme','Jessamine','Keiko',4),(33,'George','Hakeem','Angela','Gillian','Athena',17),(34,'Xander','Kibo','Molly','Hector','Clare',2),(35,'Hannah','Clarke','Harding','Minerva','Colette',14),(36,'Jolene','May','Beau','Allen','Wang',5),(37,'Aristotle','Josiah','Reese','Lewis','Heather',13),(38,'Travis','Zena','Magee','Laith','Clio',17),(39,'Camden','Quinn','Zorita','Vanna','Oliver',17),(40,'Philip','Tamara','Joshua','Fuller','Iona',5),(41,'Dustin','Sigourney','Germaine','Carl','Hadley',17),(42,'Jolene','Althea','Wayne','Darius','Susan',11),(43,'Stewart','Colette','Walter','Colton','Nayda',8),(44,'Quintessa','Ulysses','Brooke','Leah','Evangeline',5),(45,'Whitney','Driscoll','Karyn','Jameson','Todd',5),(46,'Marshall','Noelani','Adrienne','Brielle','Leslie',13),(47,'MacKensie','Joelle','Charlotte','Robert','Brielle',4),(48,'Austin','Orson','Ivan','Elmo','Shellie',6),(49,'Ciara','Lesley','Adara','Freya','Alfreda',14),(50,'Miranda','Lenore','Wynne','Tanisha','Lamar',18),(51,'Yael','Jillian','Germane','Stacy','Ursula',18),(52,'Zenaida','Joel','Kasimir','Stephen','Casey',5),(53,'Oleg','Ori','Chava','Rachel','Quon',10),(54,'Macy','Walker','Xaviera','Amena','Blake',9),(55,'Petra','Vincent','Danielle','Craig','Winter',7),(56,'Kane','Dolan','Dane','Odette','Igor',3),(57,'Idona','Macey','Hillary','Amir','Rhonda',6),(58,'Brielle','Dai','Trevor','Orson','Caesar',12),(59,'Zahir','Reese','Zelda','Nerea','Jasper',8),(60,'Blythe','Price','Dustin','Brody','Ross',18),(61,'Haviva','Hermione','Malik','Emmanuel','Roth',15),(62,'Urielle','Simone','Brennan','Xerxes','Stephen',2),(63,'Damon','Byron','Madison','Bradley','Jocelyn',18),(64,'Travis','Fatima','Anika','Kenyon','Carissa',14),(65,'Leo','Hope','Oscar','Madeson','Karina',11),(66,'Amery','Caleb','Darryl','Eden','Oprah',12),(67,'Hyacinth','Adria','Carla','Rogan','Tatum',4),(68,'Kaye','Bruce','Brianna','Clinton','Helen',18),(69,'Tamekah','Lucy','Hayden','Richard','Benjamin',15),(70,'Mariko','Alfreda','Clarke','Bradley','Sheila',13),(71,'Noble','Bevis','Preston','Peter','Charde',10),(72,'Gavin','Ishmael','Stacey','Ira','Thor',6),(73,'Jada','Cameron','Britanni','Harding','Graham',17),(74,'Felix','Hakeem','Cleo','Cara','Veronica',14),(75,'Adele','Sybil','Bruno','Dillon','Charde',9),(76,'Orlando','Amanda','Abigail','Hamilton','Dalton',10),(77,'Nelle','Ezekiel','Rina','Sandra','Wyatt',7),(78,'Lunea','Alexandra','Nathan','Sacha','Benedict',11),(79,'Kuame','Wilma','Abel','Tate','Nolan',18),(80,'Tad','Bertha','Keelie','Tucker','Rhiannon',7),(81,'Shoshana','Amethyst','Chloe','Maris','Deirdre',2),(82,'Tobias','Xerxes','Maris','Brenden','Halee',7),(83,'Hamish','TaShya','Nadine','Thomas','Peter',18),(84,'Garrett','Lilah','Victoria','Rahim','Kelly',14),(85,'Cruz','Yardley','Ifeoma','Mia','Ferris',7),(86,'Madeline','Dennis','Tatum','Bethany','Lydia',15),(87,'Deborah','Hector','Keefe','Dakota','Moana',3),(88,'Rhoda','Jane','Emmanuel','Yoko','Shad',5),(89,'Adrian','Ulric','Yuli','Zia','Elton',4),(90,'Tatum','Kyle','Todd','Jada','Judah',16),(91,'Nina','Ila','Hiroko','Lucian','Tad',17),(92,'Wyatt','Abra','Joy','Kaye','Isabelle',15),(93,'Maite','Maite','Fallon','Leandra','Chandler',11),(94,'Jenette','Carolyn','Hammett','Desirae','Jason',11),(95,'Gabriel','Sloane','Camilla','Caleb','Sharon',7),(96,'Abdul','James','Kelly','Wyoming','Edan',18),(97,'Felix','Moses','Casey','Charity','Noah',2),(98,'Elijah','Nasim','Silas','Erich','Hop',16),(99,'Gil','Steven','Abigail','Indira','Jocelyn',13),(100,'Kelly','Xander','Thane','Thomas','Jordan',14);
/*!40000 ALTER TABLE `time2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_jogo`
--

DROP TABLE IF EXISTS `tipo_de_jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_jogo` (
  `codtipo_de_jogo` int NOT NULL,
  `tipo_de_jogo` varchar(50) NOT NULL,
  PRIMARY KEY (`codtipo_de_jogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_jogo`
--

LOCK TABLES `tipo_de_jogo` WRITE;
/*!40000 ALTER TABLE `tipo_de_jogo` DISABLE KEYS */;
INSERT INTO `tipo_de_jogo` VALUES (1,'Ranqueada'),(2,'Spike Rush'),(3,'Casual'),(4,'Ranqueada'),(5,'Spike Rush'),(6,'Casual'),(7,'Ranqueada'),(8,'Ranqueada'),(9,'Spike Rush'),(10,'Ranqueada'),(11,'Ranqueada'),(12,'Casual'),(13,'Spike Rush'),(14,'Casual'),(15,'Ranqueada'),(16,'Ranqueada'),(17,'Casual'),(18,'Casual'),(19,'Spike Rush'),(20,'Ranqueada'),(21,'Casual'),(22,'Casual'),(23,'Casual'),(24,'Ranqueada'),(25,'Ranqueada'),(26,'Casual'),(27,'Casual'),(28,'Spike Rush'),(29,'Spike Rush'),(30,'Casual'),(31,'Casual'),(32,'Casual'),(33,'Ranqueada'),(34,'Ranqueada'),(35,'Casual'),(36,'Casual'),(37,'Spike Rush'),(38,'Spike Rush'),(39,'Casual'),(40,'Spike Rush'),(41,'Spike Rush'),(42,'Spike Rush'),(43,'Ranqueada'),(44,'Spike Rush'),(45,'Spike Rush'),(46,'Ranqueada'),(47,'Casual'),(48,'Ranqueada'),(49,'Ranqueada'),(50,'Ranqueada'),(51,'Ranqueada'),(52,'Ranqueada'),(53,'Ranqueada'),(54,'Ranqueada'),(55,'Casual'),(56,'Casual'),(57,'Ranqueada'),(58,'Ranqueada'),(59,'Spike Rush'),(60,'Casual'),(61,'Ranqueada'),(62,'Spike Rush'),(63,'Spike Rush'),(64,'Ranqueada'),(65,'Casual'),(66,'Ranqueada'),(67,'Spike Rush'),(68,'Ranqueada'),(69,'Spike Rush'),(70,'Spike Rush'),(71,'Spike Rush'),(72,'Casual'),(73,'Casual'),(74,'Casual'),(75,'Spike Rush'),(76,'Ranqueada'),(77,'Ranqueada'),(78,'Casual'),(79,'Spike Rush'),(80,'Spike Rush'),(81,'Spike Rush'),(82,'Spike Rush'),(83,'Casual'),(84,'Ranqueada'),(85,'Ranqueada'),(86,'Casual'),(87,'Spike Rush'),(88,'Ranqueada'),(89,'Spike Rush'),(90,'Casual'),(91,'Casual'),(92,'Spike Rush'),(93,'Ranqueada'),(94,'Ranqueada'),(95,'Casual'),(96,'Ranqueada'),(97,'Ranqueada'),(98,'Casual'),(99,'Ranqueada'),(100,'Ranqueada');
/*!40000 ALTER TABLE `tipo_de_jogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-13 13:57:35
