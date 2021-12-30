-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: dblab
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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Rollno` char(8) NOT NULL,
  `SName` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `gender` char(1) DEFAULT 'F',
  `email` varchar(30) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  PRIMARY KEY (`Rollno`),
  UNIQUE KEY `uniqueemail` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1901cs01','Aditi','Ggn','F','Aditi@gmail.com','2001-04-17'),('1901cs02','Bob','Indore','M','Bob@gmail.com','2001-12-14'),('1901cs03','Caty','Bhopal','F','Caty@gmail.com','2001-04-17'),('1901cs04','Devin','Delhi','M','Devin@gmail.com','2001-12-14'),('1901cs05','Erin','Mumbai','F','Erin@gmail.com','2001-04-17'),('1901cs06','Florida','Bnglr','F','Florida@gmail.com','2001-04-17'),('1901cs07','George','Surat','M','George@gmail.com','2001-12-14'),('1901cs08','Harsh','Chdgrh','M','Harsh@gmail.com','2001-05-03'),('1901cs09','Rohan','Patna','M','Rohan@gmail.com','2001-12-14'),('1901cs10','Sushmita','Hisar','F','Sushmita@gmail.com','2001-04-17'),('1901cs11','Aayushi','Delhi','F','Aakash@gmail.com','2001-04-17'),('1901cs12','Appaji','Kerela','M','Appaji@gmail.com','2001-12-18'),('1901cs21','Kalpana','Hisar','F','Kalpana@gmail.com','2002-01-18'),('1901cs22','Aathira','Kochi','F','Aathira@gmail.com','2001-01-12'),('1901cs23','Kiran','Bhiwadi','F','Kiran@gmail.com','2002-02-11'),('1901cs25','Priyaansi','Bharuch','F','Priyaansi@gmail.com','2001-03-18'),('1901cs26','Parishi','Indore','F','Parishi@gmail.com','2002-01-18'),('1901cs27','Apoorva','Kanpur','F','Apoorva@gmail.com','2001-01-14'),('1901cs29','Prachi','Ggn','F','Prachi@gmail.com','2001-03-18'),('1901cs30','Adarsh','Siliguri','M','Adarsh@gmail.com','2001-10-04'),('1901cs99','Yash','Bnglr','M','Yash@gmail.com','2001-12-14');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `CCode` char(5) NOT NULL,
  `CName` char(20) DEFAULT NULL,
  `Credit` int DEFAULT NULL,
  `ctype` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('CS102','Crs_with_lessCredit',4,'Open Elective'),('CS201','Crs_with_lessCredit',4,'Core'),('CS202','Course3',6,'Elective'),('CS204','Algo',8,'Core'),('CS210','Crs_with_lessCredit',4,'Core'),('CS211','Course5',6,'Elective'),('CS212','Course6',8,'Elective'),('CS215','Course7',8,'Core'),('CS301','Course8',6,'Core'),('CS302','Crs_with_lessCredit',4,'Core'),('CS303','Course10',8,'Core'),('CS354','Database Systems',6,'Open Elective'),('CS355','Database Lab',6,'Core'),('CS501','Level_5_1',6,'Core'),('CS502','Level_5_2',8,'Open Elective'),('CS555','Course 12',8,'Elective'),('CS561','Course 11',8,'Elective'),('CS599','Course 13',8,'Core'),('CS601','Course 14',4,'Core\r'),('CS602','Course 15',4,'Core\r'),('CS603','Course 16',6,'Elective\r'),('CS604','Course 17',4,'Core\r'),('CS605','Course 18',8,'Open Elective\r'),('CS606','Course 19',4,'Core\r'),('CS607','Course 20',4,'Elective\r'),('CS608','Course 21',6,'Core\r'),('CS609','Course 22',6,'Core\r'),('CS610','Course 23',4,'Core\r');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrolled`
--

DROP TABLE IF EXISTS `enrolled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrolled` (
  `RollNo` char(8) NOT NULL,
  `CCode` char(5) NOT NULL,
  `DoE` date NOT NULL,
  `grade` char(1) DEFAULT NULL,
  PRIMARY KEY (`RollNo`,`CCode`,`DoE`),
  KEY `enrolled_f1` (`CCode`),
  CONSTRAINT `enrolled_f1` FOREIGN KEY (`CCode`) REFERENCES `course` (`CCode`),
  CONSTRAINT `enrolled_f2` FOREIGN KEY (`RollNo`) REFERENCES `student` (`Rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrolled`
--

LOCK TABLES `enrolled` WRITE;
/*!40000 ALTER TABLE `enrolled` DISABLE KEYS */;
INSERT INTO `enrolled` VALUES ('1901cs01','CS102','2019-11-01','A'),('1901cs01','CS201','2020-01-01','A'),('1901cs01','CS201','2021-07-24','B'),('1901cs01','CS202','2020-01-01','A'),('1901cs01','CS202','2020-11-01','B'),('1901cs01','CS204','2020-01-01','A'),('1901cs01','CS204','2020-11-01','B'),('1901cs01','CS210','2020-01-01','A'),('1901cs01','CS210','2020-11-01','B'),('1901cs01','CS211','2021-07-24','B'),('1901cs01','CS212','2020-11-01','B'),('1901cs01','CS215','2020-11-01','B'),('1901cs01','CS301','2021-07-24','B'),('1901cs01','CS302','2021-02-01','B'),('1901cs01','CS303','2021-02-01','B'),('1901CS01','CS354','2020-01-01','B'),('1901cs01','CS355','2021-01-01',NULL),('1901cs01','CS501','2021-07-24','C'),('1901CS01','CS502','2021-09-01','C'),('1901CS01','CS555','2021-09-01','C'),('1901CS01','CS561','2021-07-24','C'),('1901cs01','CS599','2021-09-01','C'),('1901cs02','CS102','2019-11-01','A'),('1901cs02','CS201','2021-07-24','B'),('1901cs02','CS202','2020-11-01','B'),('1901cs02','CS210','2020-11-01','B'),('1901cs02','CS212','2020-11-01','B'),('1901cs02','CS301','2021-07-24','B'),('1901cs02','CS303','2021-02-01','B'),('1901CS02','CS354','2019-06-09','B'),('1901CS02','CS354','2021-06-09','B'),('1901cs02','CS355','2021-01-01',NULL),('1901CS02','CS561','2021-07-24','C'),('1901cs03','CS102','2019-11-01','A'),('1901cs04','CS201','2020-01-01','A'),('1901cs04','CS201','2021-07-24','B'),('1901cs04','CS202','2020-01-01','A'),('1901cs04','CS204','2020-01-01','A'),('1901cs04','CS210','2020-01-01','A'),('1901cs04','CS211','2020-01-01','A'),('1901CS04','CS354','2020-01-01','B'),('1901CS04','CS355','2020-07-01',NULL),('1901cs05','CS202','2020-11-01','B'),('1901CS05','CS599','2021-09-01','C'),('1901CS06','CS354','2018-06-09','B'),('1901CS06','CS599','2021-09-01','C'),('1901cs09','CS102','2019-11-01','A'),('1901cs10','CS102','2019-11-01','A'),('1901cs10','CS202','2020-11-01','B'),('1901cs10','CS215','2020-11-01','B'),('1901CS10','CS354','2021-06-01','B'),('1901cs11','CS102','2019-11-01','A'),('1901cs99','CS102','2019-11-01','A'),('1901cs99','CS202','2020-11-01','B');
/*!40000 ALTER TABLE `enrolled` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-09  8:25:48
