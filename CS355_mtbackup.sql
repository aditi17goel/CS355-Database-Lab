-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: fp
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `dept_proj`
--

DROP TABLE IF EXISTS `dept_proj`;
/*!50001 DROP VIEW IF EXISTS `dept_proj`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dept_proj` AS SELECT 
 1 AS `DeptCode`,
 1 AS `SUM(SanctionedFund)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `facproj`
--

DROP TABLE IF EXISTS `facproj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facproj` (
  `FID` smallint DEFAULT NULL,
  `PID` smallint DEFAULT NULL,
  `Role` varchar(10) DEFAULT NULL,
  KEY `f1` (`FID`),
  KEY `f2` (`PID`),
  CONSTRAINT `f1` FOREIGN KEY (`FID`) REFERENCES `faculty` (`FID`),
  CONSTRAINT `f2` FOREIGN KEY (`PID`) REFERENCES `project` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facproj`
--

LOCK TABLES `facproj` WRITE;
/*!40000 ALTER TABLE `facproj` DISABLE KEYS */;
INSERT INTO `facproj` VALUES (1,1,'PI'),(1,3,'CoPI'),(2,2,'PI'),(4,5,'PI'),(4,3,'CoPI'),(5,5,'PI'),(6,6,'CoPI'),(6,7,'PI'),(8,8,'PI'),(7,7,'CoPI'),(1,10,'PI');
/*!40000 ALTER TABLE `facproj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `FID` smallint NOT NULL,
  `FName` varchar(20) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `ExtNo` int DEFAULT NULL,
  `DoJ` date DEFAULT NULL,
  `DeptCode` char(2) DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Aditi','1980-04-17',1111,'2019-08-01','CS'),(2,'Abhinav','1990-04-17',1243,'2019-08-01','CS'),(3,'Aditya','1991-02-17',4455,'2019-01-01','ME'),(4,'Appaji','1989-02-13',1267,'2020-01-07','ME'),(5,'Jenish','1990-04-13',1111,'2020-07-07','CS'),(6,'Ayang','1990-04-13',2323,'2020-08-01','CH'),(7,'Chetna','1991-06-17',1111,'2019-04-01','CH'),(8,'Varsha','1989-06-17',1111,'2021-04-01','CS'),(9,'Anant','1991-06-05',2567,'2021-08-01','EE'),(10,'Parishi','1990-04-05',1789,'2021-08-01','EE');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `PID` smallint NOT NULL,
  `PName` varchar(30) DEFAULT NULL,
  `StartingDate` date DEFAULT NULL,
  `EndingDate` date DEFAULT NULL,
  `SanctionedFund` int DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Project1','2019-01-01','2023-01-01',10),(2,'Project2','2019-02-01','2022-01-01',11),(3,'Project3','2019-04-01','2019-05-01',10),(4,'Project4','2021-05-01','2021-10-01',12),(5,'Project5','2019-06-01','2021-01-01',11),(6,'Project6','2020-07-01','2021-01-01',10),(7,'Project7','2019-08-01','2023-01-01',3),(8,'Project8','2019-09-01','2023-11-01',10),(9,'Project9','2019-10-01','2023-11-21',1),(10,'Project10','2020-11-01','2023-01-01',10);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `dept_proj`
--

/*!50001 DROP VIEW IF EXISTS `dept_proj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dept_proj` AS select `combinded`.`DeptCode` AS `DeptCode`,sum(`combinded`.`SanctionedFund`) AS `SUM(SanctionedFund)` from (select `facproj`.`PID` AS `PID`,`faculty`.`FID` AS `FID`,`faculty`.`FName` AS `FName`,`faculty`.`DoB` AS `DoB`,`faculty`.`ExtNo` AS `ExtNo`,`faculty`.`DoJ` AS `DoJ`,`faculty`.`DeptCode` AS `DeptCode`,`facproj`.`Role` AS `Role`,`project`.`PName` AS `PName`,`project`.`StartingDate` AS `StartingDate`,`project`.`EndingDate` AS `EndingDate`,`project`.`SanctionedFund` AS `SanctionedFund` from ((`faculty` join `facproj` on((`faculty`.`FID` = `facproj`.`FID`))) join `project` on((`facproj`.`PID` = `project`.`PID`)))) `combinded` group by `combinded`.`DeptCode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-15 17:58:28
