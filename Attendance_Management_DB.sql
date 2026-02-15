-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: attendance_management_db
-- ------------------------------------------------------
-- Server version	9.6.0

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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '7c1fd446-fd2d-11f0-8dd6-489ebde60857:1-410';

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `AdminID` int NOT NULL,
  `OfficeLocation` varchar(100) NOT NULL,
  `AccessLevel` varchar(50) NOT NULL,
  PRIMARY KEY (`AdminID`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `member` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (9001,'Academic Block A - Room 101','Full Access'),(9002,'Academic Block A - Room 102','Full Access'),(9003,'Academic Block B - Room 201','Full Access'),(9004,'Academic Block B - Room 202','Full Access'),(9005,'Admin Building - Room 001','Full Access'),(9006,'Admin Building - Room 002','Full Access'),(9007,'Hostel Office - Ground Floor','Limited Access'),(9008,'Examination Cell - Room 305','Moderate Access'),(9009,'Student Affairs - Room 210','Moderate Access'),(9010,'Finance Office - Room 110','Moderate Access');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `AttendanceID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `CourseID` int NOT NULL,
  `SessionID` int NOT NULL,
  `Status` enum('Present','Absent') NOT NULL,
  PRIMARY KEY (`AttendanceID`),
  KEY `StudentID` (`StudentID`,`CourseID`),
  KEY `SessionID` (`SessionID`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`StudentID`, `CourseID`) REFERENCES `enrollment` (`StudentID`, `CourseID`) ON DELETE CASCADE,
  CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`SessionID`) REFERENCES `lecturelog` (`SessionID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,230014,201,20,'Present'),(2,230014,201,21,'Present'),(3,230014,201,22,'Present'),(4,230014,201,23,'Absent'),(5,230014,201,24,'Absent'),(6,230014,202,25,'Present'),(7,230014,202,26,'Present'),(8,230014,202,27,'Present'),(9,230014,202,28,'Absent'),(10,230014,202,29,'Present'),(11,230014,202,30,'Present'),(12,230014,202,31,'Present'),(13,230014,103,13,'Present'),(14,230014,103,14,'Present'),(15,230014,103,15,'Present'),(16,230014,103,16,'Absent'),(17,230014,103,17,'Present'),(18,230014,103,18,'Present'),(19,230014,103,19,'Absent'),(20,230014,901,104,'Absent'),(21,230014,901,105,'Present'),(22,230014,901,106,'Absent'),(23,230014,901,107,'Present'),(24,230014,901,108,'Present'),(25,250013,201,20,'Present'),(26,250013,201,21,'Present'),(27,250013,201,22,'Present'),(28,250013,201,23,'Present'),(29,250013,201,24,'Present'),(30,250013,202,25,'Present'),(31,250013,202,26,'Present'),(32,250013,202,27,'Absent'),(33,250013,202,28,'Present'),(34,250013,202,29,'Present'),(35,250013,202,30,'Present'),(36,250013,202,31,'Present'),(37,250013,101,1,'Present'),(38,250013,101,2,'Present'),(39,250013,101,3,'Present'),(40,250013,101,4,'Present'),(41,250013,101,5,'Present'),(42,250013,101,6,'Present'),(43,250013,101,7,'Present'),(44,250013,102,8,'Present'),(45,250013,102,9,'Absent'),(46,250013,102,10,'Present'),(47,250013,102,11,'Absent'),(48,250013,102,12,'Present'),(49,250013,1001,116,'Present'),(50,250013,1001,117,'Present'),(51,250013,1001,118,'Present'),(52,250013,1001,119,'Present'),(53,250013,1001,120,'Present'),(54,250007,601,72,'Present'),(55,250007,601,73,'Present'),(56,250007,601,74,'Present'),(57,250007,601,75,'Present'),(58,250007,601,76,'Present'),(59,250007,601,77,'Present'),(60,250007,601,78,'Present'),(61,250007,602,79,'Present'),(62,250007,602,80,'Present'),(63,250007,602,81,'Present'),(64,250007,602,82,'Present'),(65,250007,602,83,'Present'),(66,250007,502,65,'Present'),(67,250007,502,66,'Present'),(68,250007,502,67,'Present'),(69,250007,502,68,'Present'),(70,250007,502,69,'Present'),(71,250007,502,70,'Present'),(72,250007,502,71,'Present'),(73,250007,901,104,'Present'),(74,250007,901,105,'Absent'),(75,250007,901,106,'Absent'),(76,250007,901,107,'Present'),(77,250007,901,108,'Present'),(78,250007,1001,116,'Present'),(79,250007,1001,117,'Absent'),(80,250007,1001,118,'Present'),(81,250007,1001,119,'Present'),(82,250007,1001,120,'Present'),(83,240015,701,84,'Absent'),(84,240015,701,85,'Present'),(85,240015,701,86,'Present'),(86,240015,701,87,'Present'),(87,240015,701,88,'Present'),(88,240015,702,89,'Absent'),(89,240015,702,90,'Absent'),(90,240015,702,91,'Absent'),(91,240015,702,92,'Present'),(92,240015,702,93,'Present'),(93,240015,802,99,'Present'),(94,240015,802,100,'Present'),(95,240015,802,101,'Present'),(96,240015,802,102,'Present'),(97,240015,802,103,'Present'),(98,240015,1001,116,'Present'),(99,240015,1001,117,'Absent'),(100,240015,1001,118,'Absent'),(101,240015,1001,119,'Present'),(102,240015,1001,120,'Present'),(103,230005,101,1,'Present'),(104,230005,101,2,'Present'),(105,230005,101,3,'Present'),(106,230005,101,4,'Present'),(107,230005,101,5,'Present'),(108,230005,101,6,'Present'),(109,230005,101,7,'Present'),(110,230005,102,8,'Present'),(111,230005,102,9,'Present'),(112,230005,102,10,'Present'),(113,230005,102,11,'Present'),(114,230005,102,12,'Present'),(115,230005,103,13,'Present'),(116,230005,103,14,'Present'),(117,230005,103,15,'Present'),(118,230005,103,16,'Present'),(119,230005,103,17,'Present'),(120,230005,103,18,'Absent'),(121,230005,103,19,'Present'),(122,230005,202,25,'Present'),(123,230005,202,26,'Absent'),(124,230005,202,27,'Present'),(125,230005,202,28,'Present'),(126,230005,202,29,'Present'),(127,230005,202,30,'Present'),(128,230005,202,31,'Present'),(129,230011,101,1,'Present'),(130,230011,101,2,'Present'),(131,230011,101,3,'Present'),(132,230011,101,4,'Present'),(133,230011,101,5,'Present'),(134,230011,101,6,'Present'),(135,230011,101,7,'Present'),(136,230011,102,8,'Absent'),(137,230011,102,9,'Present'),(138,230011,102,10,'Absent'),(139,230011,102,11,'Absent'),(140,230011,102,12,'Present'),(141,230011,103,13,'Present'),(142,230011,103,14,'Present'),(143,230011,103,15,'Present'),(144,230011,103,16,'Present'),(145,230011,103,17,'Present'),(146,230011,103,18,'Present'),(147,230011,103,19,'Present'),(148,230011,202,25,'Absent'),(149,230011,202,26,'Present'),(150,230011,202,27,'Present'),(151,230011,202,28,'Present'),(152,230011,202,29,'Present'),(153,230011,202,30,'Present'),(154,230011,202,31,'Absent'),(155,240001,101,1,'Present'),(156,240001,101,2,'Present'),(157,240001,101,3,'Present'),(158,240001,101,4,'Present'),(159,240001,101,5,'Present'),(160,240001,101,6,'Present'),(161,240001,101,7,'Absent'),(162,240001,102,8,'Absent'),(163,240001,102,9,'Present'),(164,240001,102,10,'Absent'),(165,240001,102,11,'Present'),(166,240001,102,12,'Present'),(167,240001,201,20,'Absent'),(168,240001,201,21,'Absent'),(169,240001,201,22,'Present'),(170,240001,201,23,'Present'),(171,240001,201,24,'Present'),(172,240001,202,25,'Present'),(173,240001,202,26,'Present'),(174,240001,202,27,'Present'),(175,240001,202,28,'Present'),(176,240001,202,29,'Present'),(177,240001,202,30,'Present'),(178,240001,202,31,'Present'),(179,250003,101,1,'Absent'),(180,250003,101,2,'Present'),(181,250003,101,3,'Present'),(182,250003,101,4,'Present'),(183,250003,101,5,'Present'),(184,250003,101,6,'Present'),(185,250003,101,7,'Present'),(186,250003,102,8,'Absent'),(187,250003,102,9,'Present'),(188,250003,102,10,'Present'),(189,250003,102,11,'Present'),(190,250003,102,12,'Present'),(191,250003,201,20,'Present'),(192,250003,201,21,'Present'),(193,250003,201,22,'Present'),(194,250003,201,23,'Absent'),(195,250003,201,24,'Present'),(196,250003,202,25,'Present'),(197,250003,202,26,'Present'),(198,250003,202,27,'Absent'),(199,250003,202,28,'Absent'),(200,250003,202,29,'Absent'),(201,250003,202,30,'Present'),(202,250003,202,31,'Absent'),(203,230015,301,32,'Absent'),(204,230015,301,33,'Present'),(205,230015,301,34,'Absent'),(206,230015,301,35,'Present'),(207,230015,301,36,'Present'),(208,230015,301,37,'Present'),(209,230015,301,38,'Present'),(210,230015,302,39,'Present'),(211,230015,302,40,'Present'),(212,230015,302,41,'Absent'),(213,230015,302,42,'Present'),(214,230015,302,43,'Present'),(215,230015,302,44,'Absent'),(216,230015,302,45,'Present'),(217,230015,401,46,'Present'),(218,230015,401,47,'Present'),(219,230015,401,48,'Present'),(220,230015,401,49,'Present'),(221,230015,401,50,'Present'),(222,230015,401,51,'Present'),(223,230015,401,52,'Present'),(224,240006,301,32,'Present'),(225,240006,301,33,'Present'),(226,240006,301,34,'Present'),(227,240006,301,35,'Present'),(228,240006,301,36,'Present'),(229,240006,301,37,'Present'),(230,240006,301,38,'Present'),(231,240006,302,39,'Present'),(232,240006,302,40,'Present'),(233,240006,302,41,'Present'),(234,240006,302,42,'Present'),(235,240006,302,43,'Present'),(236,240006,302,44,'Absent'),(237,240006,302,45,'Present'),(238,240006,401,46,'Present'),(239,240006,401,47,'Present'),(240,240006,401,48,'Present'),(241,240006,401,49,'Present'),(242,240006,401,50,'Present'),(243,240006,401,51,'Present'),(244,240006,401,52,'Present'),(245,240006,1002,121,'Present'),(246,240006,1002,122,'Absent'),(247,240006,1002,123,'Absent'),(248,240006,1002,124,'Present'),(249,240006,1002,125,'Present'),(250,240006,1002,126,'Present'),(251,240006,1002,127,'Present'),(252,250009,401,46,'Present'),(253,250009,401,47,'Present'),(254,250009,401,48,'Present'),(255,250009,401,49,'Present'),(256,250009,401,50,'Present'),(257,250009,401,51,'Absent'),(258,250009,401,52,'Absent'),(259,250009,402,53,'Absent'),(260,250009,402,54,'Present'),(261,250009,402,55,'Absent'),(262,250009,402,56,'Present'),(263,250009,402,57,'Present'),(264,250009,402,58,'Present'),(265,250009,402,59,'Present'),(266,250009,901,104,'Present'),(267,250009,901,105,'Absent'),(268,250009,901,106,'Present'),(269,250009,901,107,'Present'),(270,250009,901,108,'Present'),(271,250009,1001,116,'Present'),(272,250009,1001,117,'Present'),(273,250009,1001,118,'Present'),(274,250009,1001,119,'Absent'),(275,250009,1001,120,'Present'),(276,240004,801,94,'Present'),(277,240004,801,95,'Absent'),(278,240004,801,96,'Present'),(279,240004,801,97,'Present'),(280,240004,801,98,'Present'),(281,240004,802,99,'Present'),(282,240004,802,100,'Absent'),(283,240004,802,101,'Present'),(284,240004,802,102,'Present'),(285,240004,802,103,'Present'),(286,240004,702,89,'Present'),(287,240004,702,90,'Present'),(288,240004,702,91,'Present'),(289,240004,702,92,'Present'),(290,240004,702,93,'Present'),(291,240004,1002,121,'Present'),(292,240004,1002,122,'Absent'),(293,240004,1002,123,'Present'),(294,240004,1002,124,'Present'),(295,240004,1002,125,'Absent'),(296,240004,1002,126,'Absent'),(297,240004,1002,127,'Present'),(298,240012,1001,116,'Present'),(299,240012,1001,117,'Present'),(300,240012,1001,118,'Present'),(301,240012,1001,119,'Present'),(302,240012,1001,120,'Absent'),(303,240012,1002,121,'Present'),(304,240012,1002,122,'Present'),(305,240012,1002,123,'Present'),(306,240012,1002,124,'Present'),(307,240012,1002,125,'Present'),(308,240012,1002,126,'Present'),(309,240012,1002,127,'Present'),(310,240012,101,1,'Present'),(311,240012,101,2,'Present'),(312,240012,101,3,'Present'),(313,240012,101,4,'Absent'),(314,240012,101,5,'Present'),(315,240012,101,6,'Present'),(316,240012,101,7,'Present'),(317,240012,102,8,'Present'),(318,240012,102,9,'Absent'),(319,240012,102,10,'Present'),(320,240012,102,11,'Present'),(321,240012,102,12,'Present'),(322,240012,202,25,'Present'),(323,240012,202,26,'Absent'),(324,240012,202,27,'Present'),(325,240012,202,28,'Present'),(326,240012,202,29,'Present'),(327,240012,202,30,'Present'),(328,240012,202,31,'Present'),(329,230008,901,104,'Present'),(330,230008,901,105,'Present'),(331,230008,901,106,'Absent'),(332,230008,901,107,'Absent'),(333,230008,901,108,'Present'),(334,230008,902,109,'Absent'),(335,230008,902,110,'Present'),(336,230008,902,111,'Present'),(337,230008,902,112,'Absent'),(338,230008,902,113,'Present'),(339,230008,902,114,'Absent'),(340,230008,902,115,'Present'),(341,230008,201,20,'Present'),(342,230008,201,21,'Present'),(343,230008,201,22,'Present'),(344,230008,201,23,'Present'),(345,230008,201,24,'Present'),(346,230008,202,25,'Present'),(347,230008,202,26,'Present'),(348,230008,202,27,'Absent'),(349,230008,202,28,'Present'),(350,230008,202,29,'Absent'),(351,230008,202,30,'Present'),(352,230008,202,31,'Present'),(353,230008,103,13,'Present'),(354,230008,103,14,'Present'),(355,230008,103,15,'Present'),(356,230008,103,16,'Present'),(357,230008,103,17,'Present'),(358,230008,103,18,'Present'),(359,230008,103,19,'Present'),(360,250010,901,104,'Present'),(361,250010,901,105,'Present'),(362,250010,901,106,'Present'),(363,250010,901,107,'Present'),(364,250010,901,108,'Absent'),(365,250010,902,109,'Present'),(366,250010,902,110,'Present'),(367,250010,902,111,'Absent'),(368,250010,902,112,'Absent'),(369,250010,902,113,'Present'),(370,250010,902,114,'Absent'),(371,250010,902,115,'Present'),(372,250010,101,1,'Present'),(373,250010,101,2,'Present'),(374,250010,101,3,'Present'),(375,250010,101,4,'Present'),(376,250010,101,5,'Present'),(377,250010,101,6,'Present'),(378,250010,101,7,'Present'),(379,250010,202,25,'Present'),(380,250010,202,26,'Present'),(381,250010,202,27,'Present'),(382,250010,202,28,'Present'),(383,250010,202,29,'Present'),(384,250010,202,30,'Present'),(385,250010,202,31,'Present');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `attendance_report`
--

DROP TABLE IF EXISTS `attendance_report`;
/*!50001 DROP VIEW IF EXISTS `attendance_report`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `attendance_report` AS SELECT 
 1 AS `StudentID`,
 1 AS `CourseID`,
 1 AS `AttendancePercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `attendance_request`
--

DROP TABLE IF EXISTS `attendance_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_request` (
  `RequestID` int NOT NULL AUTO_INCREMENT,
  `AttendanceID` int NOT NULL,
  `StudentID` int NOT NULL,
  `Reason` text NOT NULL,
  `RequestDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `ProcessedBy` int DEFAULT NULL,
  `ProcessedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`RequestID`),
  UNIQUE KEY `unique_student_attendance` (`StudentID`,`AttendanceID`),
  KEY `AttendanceID` (`AttendanceID`),
  KEY `ProcessedBy` (`ProcessedBy`),
  CONSTRAINT `attendance_request_ibfk_1` FOREIGN KEY (`AttendanceID`) REFERENCES `attendance` (`AttendanceID`) ON DELETE CASCADE,
  CONSTRAINT `attendance_request_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE,
  CONSTRAINT `attendance_request_ibfk_3` FOREIGN KEY (`ProcessedBy`) REFERENCES `member` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_request`
--

LOCK TABLES `attendance_request` WRITE;
/*!40000 ALTER TABLE `attendance_request` DISABLE KEYS */;
INSERT INTO `attendance_request` VALUES (21,4,230014,'Was sick, missed lecture','2026-01-15 09:15:00','Pending',NULL,NULL),(22,5,230014,'Was sick, missed lecture','2026-01-20 09:16:00','Pending',NULL,NULL),(23,16,230014,'Was sick, missed lecture','2026-01-13 09:17:00','Pending',NULL,NULL),(24,32,250013,'Family emergency','2026-01-10 10:20:00','Pending',NULL,NULL),(25,45,250013,'Family emergency','2026-01-10 10:22:00','Pending',NULL,NULL),(26,74,250007,'Had medical appointment','2026-01-08 11:00:00','Pending',NULL,NULL),(27,79,250007,'Had medical appointment','2026-01-09 11:05:00','Pending',NULL,NULL),(28,88,240015,'Missed transport, late','2026-01-07 08:50:00','Pending',NULL,NULL),(29,89,240015,'Missed transport, late','2026-01-09 08:52:00','Pending',NULL,NULL),(30,123,230005,'Overslept, missed lecture','2026-01-09 09:10:00','Pending',NULL,NULL);
/*!40000 ALTER TABLE `attendance_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `ActionType` varchar(50) NOT NULL,
  `TableName` varchar(50) NOT NULL,
  `RecordID` int NOT NULL,
  `PerformedBy` int NOT NULL,
  `ActionTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `OldValue` text,
  `NewValue` text,
  PRIMARY KEY (`LogID`),
  KEY `PerformedBy` (`PerformedBy`),
  CONSTRAINT `audit_log_ibfk_1` FOREIGN KEY (`PerformedBy`) REFERENCES `member` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
INSERT INTO `audit_log` VALUES (1,'UPDATE','Attendance_request',1,1001,'2025-10-08 10:05:00','Status=Pending','Status=Approved'),(2,'UPDATE','Attendance',16,1001,'2025-10-10 10:06:00','Status=Absent','Status=Present'),(3,'INSERT','Attendance_request',11,230014,'2025-11-14 11:00:00',NULL,'Status=Pending, Reason=Medical'),(4,'UPDATE','Attendance_request',2,1002,'2025-11-17 12:15:00','Status=Pending','Status=Rejected'),(5,'INSERT','Notification',5,9001,'2025-11-18 12:30:00',NULL,'Message=\"Your request approved\"'),(6,'UPDATE','Attendance',74,1001,'2025-11-23 12:35:00','Status=Absent','Status=Present'),(7,'INSERT','Attendance_request',12,240015,'2025-11-24 13:00:00',NULL,'Status=Pending, Reason=Travel'),(8,'UPDATE','Notification',3,9002,'2025-11-26 13:10:00','IsRead=0','IsRead=1'),(9,'DELETE','Attendance',332,1002,'2025-11-28 14:00:00','Status=Absent',NULL),(10,'UPDATE','Attendance_request',3,1001,'2025-11-30 14:15:00','Status=Pending','Status=Approved');
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `CourseID` int NOT NULL,
  `CourseCode` varchar(20) DEFAULT NULL,
  `CourseName` varchar(1000) NOT NULL,
  `LTPC` varchar(10) NOT NULL,
  `DepartmentID` int NOT NULL,
  `Semester` int NOT NULL,
  `Threshold` int NOT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (101,'CSE101','Data Structures and Algorithms','3-1-0-4',1,1,75),(102,'CSE102','Database Management','3-0-0-4',1,1,80),(103,'CSE103','Cybersecurity','3-0-1-3',1,1,50),(201,'AI101','Deep Learning','3-0-0-4',2,1,70),(202,'AI102','Machine Learning','3-1-1-4',2,1,80),(301,'EE101','Analog Systems','3-0-1-4',3,1,75),(302,'EE102','Control Systems','3-1-0-4',3,1,60),(401,'ICDT101','Integrated Chip Design','3-0-1-4',4,1,75),(402,'ICDT102','VSLI Design','3-1-0-4',4,1,75),(501,'ME101','Thermodynamics','3-0-0-4',5,1,80),(502,'ME102','Fluid Mechanics','3-0-1-4',5,1,75),(601,'CH101','Chemical Process Calculations','3-1-0-4',6,1,60),(602,'CH102','Fundamentals of Aerosol Science','3-0-0-3',6,1,60),(701,'CE101','Networks and Complex systems','3-0-0-4',7,1,75),(702,'CE102','Geosynthetics','3-0-0-4',7,1,80),(801,'MAT101','Surface Engineering','3-0-0-4',8,1,50),(802,'MAT102','Materials and Environment','3-0-0-3',8,1,60),(901,'PH101','Quantum Mechanics','3-0-0-4',9,1,80),(902,'PH102','Statistical Mechanics','3-1-0-4',9,1,80),(1001,'MA101','Calculus of Single and Several Variables','3-1-0-4',10,1,80),(1002,'MA102','Differential Topology','3-0-0-4',10,1,80);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseslot`
--

DROP TABLE IF EXISTS `courseslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseslot` (
  `SlotID` int NOT NULL,
  `CourseID` int NOT NULL,
  `Slot` varchar(100) NOT NULL,
  PRIMARY KEY (`SlotID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `courseslot_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseslot`
--

LOCK TABLES `courseslot` WRITE;
/*!40000 ALTER TABLE `courseslot` DISABLE KEYS */;
INSERT INTO `courseslot` VALUES (1,101,'Mon 9:00-10:20 Lecture'),(2,101,'Wed 9:00-10:20 Lecture'),(3,101,'Fri 11:00-12:20 Tutorial'),(4,102,'Tue 9:00-10:20 Lecture'),(5,102,'Thu 9:00-10:20 Lecture'),(6,103,'Mon 11:00-12:20 Lecture'),(7,103,'Wed 11:00-12:20 Lecture'),(8,103,'Fri 3:30-4:50 Practical'),(9,201,'Mon 2:00-3:20 Lecture'),(10,201,'Wed 2:00-3:20 Lecture'),(11,202,'Tue 2:00-3:20 Lecture'),(12,202,'Thu 2:00-3:20 Lecture'),(13,202,'Fri 2:00-3:20 Tutorial'),(14,202,'Wed 3:30-4:50 Practical'),(15,301,'Mon 9:00-10:20 Lecture'),(16,301,'Wed 9:00-10:20 Lecture'),(17,301,'Fri 11:00-12:20 Practical'),(18,302,'Tue 9:00-10:20 Lecture'),(19,302,'Thu 9:00-10:20 Lecture'),(20,302,'Thu 11:00-12:20 Tutorial'),(21,401,'Mon 11:00-12:20 Lecture'),(22,401,'Wed 11:00-12:20 Lecture'),(23,401,'Thu 2:00-3:20 Practical'),(24,402,'Tue 11:00-12:20 Lecture'),(25,402,'Wed 2:00-3:20 Lecture'),(26,402,'Fri 2:00-3:20 Lecture'),(27,501,'Mon 9:00-10:20 Lecture'),(28,501,'Wed 9:00-10:20 Lecture'),(29,502,'Tue 9:00-10:20 Lecture'),(30,502,'Thu 9:00-10:20 Lecture'),(31,502,'Fri 9:00-10:20 Practical'),(32,601,'Mon 11:00-12:20 Lecture'),(33,601,'Wed 11:00-12:20 Lecture'),(34,601,'Fri 11:00-12:20 Tutorial'),(35,602,'Tue 11:00-12:20 Lecture'),(36,602,'Thu 11:00-12:20 Lecture'),(37,701,'Mon 2:00-3:20 Lecture'),(38,701,'Wed 2:00-3:20 Lecture'),(39,702,'Tue 2:00-3:20 Lecture'),(40,702,'Thu 2:00-3:20 Lecture'),(41,801,'Mon 9:00-10:20 Lecture'),(42,801,'Wed 9:00-10:20 Lecture'),(43,802,'Tue 9:00-10:20 Lecture'),(44,802,'Thu 9:00-10:20 Lecture'),(45,901,'Mon 5:00-6:20 Lecture'),(46,901,'Wed 5:00-6:20 Lecture'),(47,902,'Tue 5:00-6:20 Lecture'),(48,902,'Thu 5:00-6:20 Lecture'),(49,902,'Fri 5:00-6:20 Tutorial'),(50,1001,'Tue 5:00-6:20 Lecture'),(51,1001,'Thu 5:00-6:20 Lecture'),(52,1002,'Fri 5:00-6:20 Tutorial'),(53,1002,'Mon 5:00-6:20 Lecture'),(54,1002,'Wed 5:00-6:20 Lecture');
/*!40000 ALTER TABLE `courseslot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `Building` varchar(50) NOT NULL,
  `HODName` varchar(100) NOT NULL,
  `DeptCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`),
  UNIQUE KEY `DepartmentName` (`DepartmentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Science and Engineering','Academic Block A','Dr. Rajesh Kumar','CSE'),(2,'Artificial Intelligence and Data Science','Academic Block A','Dr. Meera Iyer','AI'),(3,'Electrical Engineering','Academic Block B','Dr. Anil Verma','EE'),(4,'Integrated Circuit Design and Technology','Academic Block C','Dr. Sunita Rao','ICDT'),(5,'Mechanical Engineering','Academic Block B','Dr. Vikram Singh','ME'),(6,'Chemical Engineering','Academic Block D','Dr. Pooja Nair','CH'),(7,'Civil Engineering','Academic Block D','Dr. Sanjay Patel','CE'),(8,'Materials Science and Engineering','Academic Block C','Dr. Ritu Malhotra','MAT'),(9,'Physics','Science Block','Dr. Arvind Sharma','PH'),(10,'Mathematics','Science Block','Dr. Neha Banerjee','MA');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `EnrollmentID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `CourseID` int NOT NULL,
  `AcademicYear` varchar(9) NOT NULL,
  `EnrollDate` date NOT NULL,
  `Status` enum('Enrolled','Dropped','Completed') NOT NULL,
  PRIMARY KEY (`EnrollmentID`),
  UNIQUE KEY `StudentID` (`StudentID`,`CourseID`,`AcademicYear`),
  UNIQUE KEY `unique_student_course` (`StudentID`,`CourseID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,230014,201,'2025-2026','2026-01-10','Enrolled'),(2,230014,202,'2025-2026','2026-01-10','Enrolled'),(3,230014,103,'2025-2026','2026-01-10','Enrolled'),(4,230014,901,'2025-2026','2026-01-10','Enrolled'),(5,250013,201,'2025-2026','2026-01-10','Enrolled'),(6,250013,202,'2025-2026','2026-01-10','Enrolled'),(7,250013,101,'2025-2026','2026-01-10','Enrolled'),(8,250013,102,'2025-2026','2026-01-10','Enrolled'),(9,250013,1001,'2025-2026','2026-01-10','Enrolled'),(10,250007,601,'2025-2026','2026-01-10','Enrolled'),(11,250007,602,'2025-2026','2026-01-10','Enrolled'),(12,250007,502,'2025-2026','2026-01-10','Enrolled'),(13,250007,901,'2025-2026','2026-01-10','Enrolled'),(14,250007,1001,'2025-2026','2026-01-10','Enrolled'),(15,240015,701,'2025-2026','2026-01-10','Enrolled'),(16,240015,702,'2025-2026','2026-01-10','Enrolled'),(17,240015,802,'2025-2026','2026-01-10','Enrolled'),(18,240015,1001,'2025-2026','2026-01-10','Enrolled'),(19,230005,101,'2025-2026','2026-01-10','Enrolled'),(20,230005,102,'2025-2026','2026-01-10','Enrolled'),(21,230005,103,'2025-2026','2026-01-10','Enrolled'),(22,230005,202,'2025-2026','2026-01-10','Enrolled'),(23,230011,101,'2025-2026','2026-01-10','Enrolled'),(24,230011,102,'2025-2026','2026-01-10','Enrolled'),(25,230011,103,'2025-2026','2026-01-10','Enrolled'),(26,230011,202,'2025-2026','2026-01-10','Enrolled'),(27,240001,101,'2025-2026','2026-01-10','Enrolled'),(28,240001,102,'2025-2026','2026-01-10','Enrolled'),(29,240001,201,'2025-2026','2026-01-10','Enrolled'),(30,240001,202,'2025-2026','2026-01-10','Enrolled'),(31,250003,101,'2025-2026','2026-01-10','Enrolled'),(32,250003,102,'2025-2026','2026-01-10','Enrolled'),(33,250003,201,'2025-2026','2026-01-10','Enrolled'),(34,250003,202,'2025-2026','2026-01-10','Enrolled'),(35,230015,301,'2025-2026','2026-01-10','Enrolled'),(36,230015,302,'2025-2026','2026-01-10','Enrolled'),(37,230015,401,'2025-2026','2026-01-10','Enrolled'),(38,240006,301,'2025-2026','2026-01-10','Enrolled'),(39,240006,302,'2025-2026','2026-01-10','Enrolled'),(40,240006,401,'2025-2026','2026-01-10','Enrolled'),(41,240006,1002,'2025-2026','2026-01-10','Enrolled'),(42,250009,401,'2025-2026','2026-01-10','Enrolled'),(43,250009,402,'2025-2026','2026-01-10','Enrolled'),(44,250009,901,'2025-2026','2026-01-10','Enrolled'),(45,250009,1001,'2025-2026','2026-01-10','Enrolled'),(46,240004,801,'2025-2026','2026-01-10','Enrolled'),(47,240004,802,'2025-2026','2026-01-10','Enrolled'),(48,240004,702,'2025-2026','2026-01-10','Enrolled'),(49,240004,1002,'2025-2026','2026-01-10','Enrolled'),(50,240012,1001,'2025-2026','2026-01-10','Enrolled'),(51,240012,1002,'2025-2026','2026-01-10','Enrolled'),(52,240012,101,'2025-2026','2026-01-10','Enrolled'),(53,240012,102,'2025-2026','2026-01-10','Enrolled'),(54,240012,202,'2025-2026','2026-01-10','Enrolled'),(55,230008,901,'2025-2026','2026-01-10','Enrolled'),(56,230008,902,'2025-2026','2026-01-10','Enrolled'),(57,230008,201,'2025-2026','2026-01-10','Enrolled'),(58,230008,202,'2025-2026','2026-01-10','Enrolled'),(59,230008,103,'2025-2026','2026-01-10','Enrolled'),(60,250010,901,'2025-2026','2026-01-10','Enrolled'),(61,250010,902,'2025-2026','2026-01-10','Enrolled'),(62,250010,101,'2025-2026','2026-01-10','Enrolled'),(63,250010,202,'2025-2026','2026-01-10','Enrolled');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturelog`
--

DROP TABLE IF EXISTS `lecturelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturelog` (
  `SessionID` int NOT NULL,
  `CourseID` int NOT NULL,
  `TeacherID` int NOT NULL,
  `SessionDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `RoomNumber` varchar(50) NOT NULL,
  `IsConducted` tinyint(1) NOT NULL,
  PRIMARY KEY (`SessionID`),
  KEY `CourseID` (`CourseID`),
  KEY `TeacherID` (`TeacherID`),
  CONSTRAINT `lecturelog_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lecturelog_ibfk_2` FOREIGN KEY (`TeacherID`) REFERENCES `teacher` (`TeacherID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturelog`
--

LOCK TABLES `lecturelog` WRITE;
/*!40000 ALTER TABLE `lecturelog` DISABLE KEYS */;
INSERT INTO `lecturelog` VALUES (1,101,1001,'2026-01-05','09:00:00','10:20:00','LH101',1),(2,101,1001,'2026-01-07','09:00:00','10:20:00','LH101',1),(3,101,1001,'2026-01-09','11:00:00','12:20:00','LH101',1),(4,101,1001,'2026-01-12','09:00:00','10:20:00','LH101',1),(5,101,1001,'2026-01-14','09:00:00','10:20:00','LH101',1),(6,101,1001,'2026-01-16','11:20:00','12:20:00','LH101',1),(7,101,1001,'2026-01-19','09:00:00','10:20:00','LH101',1),(8,102,1004,'2026-01-06','09:00:00','10:20:00','LH102',1),(9,102,1004,'2026-01-08','09:00:00','10:20:00','LH102',1),(10,102,1004,'2026-01-13','09:00:00','10:20:00','LH102',1),(11,102,1004,'2026-01-15','09:00:00','10:20:00','LH102',1),(12,102,1004,'2026-01-20','09:00:00','10:20:00','LH102',1),(13,103,1007,'2026-01-05','11:00:00','12:20:00','LH102',1),(14,103,1007,'2026-01-07','11:00:00','12:20:00','LH102',1),(15,103,1007,'2026-01-09','03:30:00','04:50:00','LH102',1),(16,103,1007,'2026-01-12','11:00:00','12:20:00','LH102',1),(17,103,1007,'2026-01-14','11:00:00','12:20:00','LH102',1),(18,103,1007,'2026-01-16','03:30:00','04:50:00','LH102',1),(19,103,1007,'2026-01-19','11:00:00','12:20:00','LH102',1),(20,201,1001,'2026-01-05','02:00:00','03:20:00','LH201',1),(21,201,1001,'2026-01-07','02:00:00','03:20:00','LH201',1),(22,201,1001,'2026-01-12','02:00:00','03:20:00','LH201',1),(23,201,1001,'2026-01-14','02:00:00','03:20:00','LH201',1),(24,201,1001,'2026-01-19','02:00:00','03:20:00','LH201',1),(25,202,1008,'2026-01-06','02:00:00','03:20:00','LH202',1),(26,202,1008,'2026-01-08','02:00:00','03:20:00','LH202',1),(27,202,1008,'2026-01-09','02:00:00','03:20:00','LH202',1),(28,202,1008,'2026-01-14','03:30:00','04:50:00','LH202',1),(29,202,1008,'2026-01-15','02:00:00','03:20:00','LH202',1),(30,202,1008,'2026-01-16','02:00:00','03:20:00','LH202',1),(31,202,1008,'2026-01-20','02:00:00','03:20:00','LH202',1),(32,301,1003,'2026-01-05','09:00:00','10:20:00','LH301',1),(33,301,1003,'2026-01-07','09:00:00','10:20:00','LH301',1),(34,301,1003,'2026-01-09','11:00:00','12:20:00','LH301',1),(35,301,1003,'2026-01-12','09:00:00','10:20:00','LH301',1),(36,301,1003,'2026-01-14','09:00:00','10:20:00','LH301',1),(37,301,1003,'2026-01-16','11:00:00','12:20:00','LH301',1),(38,301,1003,'2026-01-19','09:00:00','10:20:00','LH301',1),(39,302,1003,'2026-01-06','09:00:00','10:20:00','LH302',1),(40,302,1003,'2026-01-08','09:00:00','10:20:00','LH302',1),(41,302,1003,'2026-01-08','11:00:00','12:20:00','LH302',1),(42,302,1003,'2026-01-13','09:00:00','10:20:00','LH302',1),(43,302,1003,'2026-01-15','09:00:00','10:20:00','LH302',1),(44,302,1003,'2026-01-15','11:00:00','12:20:00','LH302',1),(45,302,1003,'2026-01-20','09:00:00','10:20:00','LH302',1),(46,401,1005,'2026-01-05','11:00:00','12:20:00','LH401',1),(47,401,1005,'2026-01-07','11:00:00','12:20:00','LH401',1),(48,401,1005,'2026-01-08','14:00:00','15:20:00','LH401',1),(49,401,1005,'2026-01-12','11:00:00','12:20:00','LH401',1),(50,401,1005,'2026-01-14','11:00:00','12:20:00','LH401',1),(51,401,1005,'2026-01-15','14:00:00','15:20:00','LH401',1),(52,401,1005,'2026-01-19','11:00:00','12:20:00','LH401',1),(53,402,1005,'2026-01-06','11:00:00','12:20:00','LH402',1),(54,402,1005,'2026-01-07','14:00:00','15:30:00','LH402',1),(55,402,1005,'2026-01-09','14:00:00','15:30:00','LH402',1),(56,402,1005,'2026-01-13','11:00:00','12:20:00','LH402',1),(57,402,1005,'2026-01-14','14:00:00','15:30:00','LH402',1),(58,402,1005,'2026-01-16','14:00:00','15:30:00','LH402',1),(59,402,1005,'2026-01-20','11:00:00','12:20:00','LH402',1),(60,501,1003,'2026-01-05','09:00:00','10:20:00','LH501',1),(61,501,1003,'2026-01-07','09:00:00','10:20:00','LH501',1),(62,501,1003,'2026-01-12','09:00:00','10:20:00','LH501',1),(63,501,1003,'2026-01-14','09:00:00','10:20:00','LH501',1),(64,501,1003,'2026-01-19','09:00:00','10:20:00','LH501',1),(65,502,1003,'2026-01-06','09:00:00','10:20:00','LH501',1),(66,502,1003,'2026-01-08','09:00:00','10:20:00','LH501',1),(67,502,1003,'2026-01-09','09:00:00','10:20:00','LH501',1),(68,502,1003,'2026-01-13','09:00:00','10:20:00','LH501',1),(69,502,1003,'2026-01-15','09:00:00','10:20:00','LH501',1),(70,502,1003,'2026-01-16','09:00:00','10:20:00','LH501',1),(71,502,1003,'2026-01-19','09:00:00','10:20:00','LH501',1),(72,601,1002,'2026-01-05','11:00:00','12:20:00','LH601',1),(73,601,1002,'2026-01-07','11:00:00','12:20:00','LH601',1),(74,601,1002,'2026-01-09','11:00:00','12:20:00','LH601',1),(75,601,1002,'2026-01-12','11:00:00','12:20:00','LH601',1),(76,601,1002,'2026-01-14','11:00:00','12:20:00','LH601',1),(77,601,1002,'2026-01-16','11:00:00','12:20:00','LH601',1),(78,601,1002,'2026-01-19','11:00:00','12:20:00','LH601',1),(79,602,1010,'2026-01-06','11:00:00','12:20:00','LH602',1),(80,602,1010,'2026-01-08','11:00:00','12:20:00','LH602',1),(81,602,1010,'2026-01-13','11:00:00','12:20:00','LH602',1),(82,602,1010,'2026-01-15','11:00:00','12:20:00','LH602',1),(83,602,1010,'2026-01-20','11:00:00','12:20:00','LH602',1),(84,701,1006,'2026-01-05','02:00:00','03:20:00','LH701',1),(85,701,1006,'2026-01-07','02:00:00','03:20:00','LH701',1),(86,701,1006,'2026-01-12','02:00:00','03:20:00','LH701',1),(87,701,1006,'2026-01-14','02:00:00','03:20:00','LH701',1),(88,701,1006,'2026-01-19','02:00:00','03:20:00','LH701',1),(89,702,1006,'2026-01-06','02:00:00','03:20:00','LH702',1),(90,702,1006,'2026-01-08','02:00:00','03:20:00','LH702',1),(91,702,1006,'2026-01-13','02:00:00','03:20:00','LH702',1),(92,702,1006,'2026-01-15','02:00:00','03:20:00','LH702',1),(93,702,1006,'2026-01-20','02:00:00','03:20:00','LH702',1),(94,801,1007,'2026-01-05','09:00:00','10:20:00','LH801',1),(95,801,1007,'2026-01-07','09:00:00','10:20:00','LH801',1),(96,801,1007,'2026-01-12','09:00:00','10:20:00','LH801',1),(97,801,1007,'2026-01-14','09:00:00','10:20:00','LH801',1),(98,801,1007,'2026-01-19','09:00:00','10:20:00','LH801',1),(99,802,1007,'2026-01-06','09:00:00','10:20:00','LH802',1),(100,802,1007,'2026-01-08','09:00:00','10:20:00','LH802',1),(101,802,1007,'2026-01-13','09:00:00','10:20:00','LH802',1),(102,802,1007,'2026-01-15','09:00:00','10:20:00','LH802',1),(103,802,1007,'2026-01-20','09:00:00','10:20:00','LH802',1),(104,901,1009,'2026-01-05','05:00:00','06:20:00','LH901',1),(105,901,1009,'2026-01-07','05:00:00','06:20:00','LH901',1),(106,901,1009,'2026-01-12','05:00:00','06:20:00','LH901',1),(107,901,1009,'2026-01-14','05:00:00','06:20:00','LH901',1),(108,901,1009,'2026-01-19','05:00:00','06:20:00','LH901',1),(109,902,1002,'2026-01-06','05:00:00','06:20:00','LH902',1),(110,902,1002,'2026-01-08','05:00:00','06:20:00','LH902',1),(111,902,1002,'2026-01-09','05:00:00','06:20:00','LH902',1),(112,902,1002,'2026-01-13','05:00:00','06:20:00','LH902',1),(113,902,1002,'2026-01-15','05:00:00','06:20:00','LH902',1),(114,902,1002,'2026-01-16','05:00:00','06:20:00','LH902',1),(115,902,1002,'2026-01-20','05:00:00','06:20:00','LH902',1),(116,1001,1004,'2026-01-06','05:00:00','06:20:00','LH1001',1),(117,1001,1004,'2026-01-08','05:00:00','06:20:00','LH1001',1),(118,1001,1004,'2026-01-13','05:00:00','06:20:00','LH1001',1),(119,1001,1004,'2026-01-15','05:00:00','06:20:00','LH1001',1),(120,1001,1004,'2026-01-20','05:00:00','06:20:00','LH1001',1),(121,1002,1004,'2026-01-05','05:00:00','06:20:00','LH1002',1),(122,1002,1004,'2026-01-07','05:00:00','06:20:00','LH1002',1),(123,1002,1004,'2026-01-09','05:00:00','06:20:00','LH1002',1),(124,1002,1004,'2026-01-12','05:00:00','06:20:00','LH1002',1),(125,1002,1004,'2026-01-14','05:00:00','06:20:00','LH1002',1),(126,1002,1004,'2026-01-16','05:00:00','06:20:00','LH1002',1),(127,1002,1004,'2026-01-19','05:00:00','06:20:00','LH1002',1);
/*!40000 ALTER TABLE `lecturelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `MemberID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Age` int NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ContactNumber` varchar(15) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Role` enum('Student','Teacher','Admin') NOT NULL,
  `CreatedAt` datetime NOT NULL,
  PRIMARY KEY (`MemberID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1001,'Dr. Rajesh Kumar',NULL,45,'Male','rajesh.kumar@iitam.ac.in','Gujarat','8123142992','hashed_pwd_1001','Teacher','2026-02-10 22:35:56'),(1002,'Dr. Meera Iyer',NULL,42,'Female','meera.iyer@iitam.ac.in','Tamil Nadu','9263222558','hashed_pwd_1002','Teacher','2026-02-10 22:35:56'),(1003,'Dr. Anil Verma',NULL,50,'Male','anil.verma@iitam.ac.in','Delhi','7682626620','hashed_pwd_1003','Teacher','2026-02-10 22:35:56'),(1004,'Dr. Sunita Rao',NULL,47,'Female','sunita.rao@iitam.ac.in','Maharashtra','1707731053','hashed_pwd_1004','Teacher','2026-02-10 22:35:56'),(1005,'Dr. Vikram Singh',NULL,39,'Male','vikram.singh@iitam.ac.in','Rajasthan','5191992217','hashed_pwd_1005','Teacher','2026-02-10 22:35:56'),(1006,'Dr. Pooja Nair',NULL,41,'Female','pooja.nair@iitam.ac.in','Kerala','2108455210','hashed_pwd_1006','Teacher','2026-02-10 22:35:56'),(1007,'Dr. Sanjay Patel',NULL,52,'Male','sanjay.patel@iitam.ac.in','Gujarat','6593313653','hashed_pwd_1007','Teacher','2026-02-10 22:35:56'),(1008,'Dr. Ritu Malhotra',NULL,44,'Female','ritu.malhotra@iitam.ac.in','Punjab','6417649118','hashed_pwd_1008','Teacher','2026-02-10 22:35:56'),(1009,'Dr. Arvind Sharma',NULL,55,'Male','arvind.sharma@iitam.ac.in','Uttar Pradesh','1854831332','hashed_pwd_1009','Teacher','2026-02-10 22:35:56'),(1010,'Dr. Neha Banerjee',NULL,38,'Female','neha.banerjee@iitam.ac.in','West Bengal','4596355215','hashed_pwd_1010','Teacher','2026-02-10 22:35:56'),(9001,'Rajesh Khanna',NULL,45,'Male','rajesh.khanna@iitam.ac.in','Haryana','2030722365','hashed_pwd_9001','Admin','2026-02-10 22:37:09'),(9002,'Anita Desai',NULL,42,'Female','anita.desai@iitam.ac.in','Madhya Pradesh','6945362426','hashed_pwd_9002','Admin','2026-02-10 22:37:09'),(9003,'Suresh Iyer',NULL,48,'Male','suresh.iyer@iitam.ac.in','Tamil Nadu','5518603633','hashed_pwd_9003','Admin','2026-02-10 22:37:09'),(9004,'Meena Shah',NULL,44,'Female','meena.shah@iitam.ac.in','Gujarat','1540875891','hashed_pwd_9004','Admin','2026-02-10 22:37:09'),(9005,'Vikram Patel',NULL,46,'Male','vikram.patel@iitam.ac.in','Gujarat','9533292504','hashed_pwd_9005','Admin','2026-02-10 22:37:09'),(9006,'Kavita Joshi',NULL,41,'Female','kavita.joshi@iitam.ac.in','Maharashtra','1969320594','hashed_pwd_9006','Admin','2026-02-10 22:37:09'),(9007,'Amit Verma',NULL,47,'Male','amit.verma@iitam.ac.in','Rajasthan','6628700115','hashed_pwd_9007','Admin','2026-02-10 22:37:09'),(9008,'Pooja Jaiswal',NULL,39,'Female','pooja.jaiswal@iitam.ac.in','Chhattisgarh','9615242538','hashed_pwd_9008','Admin','2026-02-10 22:37:09'),(9009,'Rakesh Malhotra',NULL,50,'Male','rakesh.malhotra@iitam.ac.in','Gujarat','6007183255','hashed_pwd_9009','Admin','2026-02-10 22:37:09'),(9010,'Sunita Bisht',NULL,43,'Female','sunita.bisht@iitam.ac.in','Gujarat','2321572475','hashed_pwd_9010','Admin','2026-02-10 22:37:09'),(230005,'Wanda Maximoff',NULL,21,'Female','wanda.maximoff@iitam.ac.in','Maharashtra','7113210793','hashed_pwd_230005','Student','2026-02-10 22:35:49'),(230008,'Bruce Banner',NULL,21,'Male','bruce.banner@iitam.ac.in','Kerala','0995543041','hashed_pwd_230008','Student','2026-02-10 22:35:49'),(230011,'Tony Stark',NULL,21,'Male','tony.stark@iitam.ac.in','Maharashtra','9950292273','hashed_pwd_230011','Student','2026-02-10 22:35:49'),(230014,'Ishaan Patel',NULL,21,'Male','ishaan.patel@iitam.ac.in','Gujarat','6483827315','hashed_pwd_230014','Student','2026-02-10 22:35:49'),(230015,'Rohit Verma',NULL,21,'Male','rohit.verma@iitam.ac.in','Uttar Pradesh','2670257638','hashed_pwd_230015','Student','2026-02-10 22:35:49'),(240001,'Peter Parker',NULL,20,'Male','peter.parker@iitam.ac.in','Gujarat','3972795736','hashed_pwd_240001','Student','2026-02-10 22:35:49'),(240004,'Natasha Romanoff',NULL,20,'Female','natasha.romanoff@iitam.ac.in','Karnataka','3328953823','hashed_pwd_240004','Student','2026-02-10 22:35:49'),(240006,'Steve Rogers',NULL,20,'Male','steve.rogers@iitam.ac.in','Punjab','5661069435','hashed_pwd_240006','Student','2026-02-10 22:35:49'),(240012,'Neha Gupta',NULL,20,'Female','neha.gupta@iitam.ac.in','Rajasthan','1209389031','hashed_pwd_240012','Student','2026-02-10 22:35:49'),(240015,'Priya Singh',NULL,20,'Female','priya.singh@iitam.ac.in','Bihar','3827450511','hashed_pwd_240015','Student','2026-02-10 22:35:49'),(250003,'Arjun Sharma',NULL,19,'Male','arjun.sharma@iitam.ac.in','Delhi','0607168600','hashed_pwd_250003','Student','2026-02-10 22:35:49'),(250007,'Ananya Iyer',NULL,19,'Female','ananya.iyer@iitam.ac.in','Tamil Nadu','3708244008','hashed_pwd_250007','Student','2026-02-10 22:35:49'),(250009,'Kunal Mehta',NULL,20,'Male','kunal.mehta@iitam.ac.in','Gujarat','9531215303','hashed_pwd_250009','Student','2026-02-10 22:35:49'),(250010,'Shreya Nair',NULL,19,'Female','shreya.nair@iitam.ac.in','Kerala','9091734419','hashed_pwd_250010','Student','2026-02-10 22:35:49'),(250013,'Sam Wilson',NULL,19,'Male','sam.wilson@iitam.ac.in','Haryana','9110854206','hashed_pwd_250013','Student','2026-02-10 22:35:49');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `NotificationID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `Message` text NOT NULL,
  `Type` enum('AttendanceAlert','RequestUpdate','Announcement') DEFAULT 'Announcement',
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsRead` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`NotificationID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,230011,'Your attendance in Course 102 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(2,240001,'Your attendance in Course 102 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(3,250013,'Your attendance in Course 102 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(4,230014,'Your attendance in Course 201 dropped below 70%','AttendanceAlert','2026-02-11 23:34:05',0),(5,240001,'Your attendance in Course 201 dropped below 70%','AttendanceAlert','2026-02-11 23:34:05',0),(6,250003,'Your attendance in Course 202 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(7,230008,'Your attendance in Course 202 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(8,230011,'Your attendance in Course 202 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(9,230015,'Your attendance in Course 301 dropped below 75%','AttendanceAlert','2026-02-11 23:34:05',0),(10,250009,'Your attendance in Course 401 dropped below 75%','AttendanceAlert','2026-02-11 23:34:05',0),(11,250009,'Your attendance in Course 402 dropped below 75%','AttendanceAlert','2026-02-11 23:34:05',0),(12,240015,'Your attendance in Course 702 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(13,230008,'Your attendance in Course 901 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(14,230014,'Your attendance in Course 901 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(15,250007,'Your attendance in Course 901 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(16,230008,'Your attendance in Course 902 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(17,250010,'Your attendance in Course 902 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(18,240015,'Your attendance in Course 1001 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(19,240004,'Your attendance in Course 1002 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0),(20,240006,'Your attendance in Course 1002 dropped below 80%','AttendanceAlert','2026-02-11 23:34:05',0);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentID` int NOT NULL,
  `Roll_no` varchar(20) DEFAULT NULL,
  `DepartmentID` int NOT NULL,
  `BatchYear` int NOT NULL,
  `CPI` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `unique_roll` (`Roll_no`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `member` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (230005,'23CS001',1,2023,8.40),(230008,'23PH001',9,2023,7.90),(230011,'23CS002',1,2023,9.10),(230014,'23AI001',2,2023,8.20),(230015,'23EE001',3,2023,7.60),(240001,'24CS001',1,2024,8.80),(240004,'24MAT001',8,2024,8.00),(240006,'24EE001',3,2024,7.50),(240012,'24MA001',10,2024,8.60),(240015,'24CE001',7,2024,7.80),(250003,'25CS001',1,2025,8.90),(250007,'25CH001',6,2025,8.10),(250009,'25ICDT001',4,2025,7.40),(250010,'25PH001',9,2025,8.30),(250013,'25AI001',2,2025,7.90);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `TeacherID` int NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `OfficeLocation` varchar(100) NOT NULL,
  PRIMARY KEY (`TeacherID`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`TeacherID`) REFERENCES `member` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1001,'Professor','AB-A-101'),(1002,'Associate Professor','AB-A-102'),(1003,'Professor','AB-B-103'),(1004,'Associate Professor','AB-C-104'),(1005,'Assistant Professor','AB-B-105'),(1006,'Assistant Professor','AB-D-106'),(1007,'Professor','AB-D-107'),(1008,'Associate Professor','AB-C-108'),(1009,'Professor','AB-S-109'),(1010,'Assistant Professor','AB-S-110');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherdepartment`
--

DROP TABLE IF EXISTS `teacherdepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacherdepartment` (
  `TD_ID` int NOT NULL,
  `TeacherID` int NOT NULL,
  `DepartmentID` int NOT NULL,
  PRIMARY KEY (`TD_ID`),
  KEY `TeacherID` (`TeacherID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `teacherdepartment_ibfk_1` FOREIGN KEY (`TeacherID`) REFERENCES `teacher` (`TeacherID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacherdepartment_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherdepartment`
--

LOCK TABLES `teacherdepartment` WRITE;
/*!40000 ALTER TABLE `teacherdepartment` DISABLE KEYS */;
INSERT INTO `teacherdepartment` VALUES (1,1001,1),(2,1001,2),(3,1002,6),(4,1002,9),(5,1003,3),(6,1003,5),(7,1004,1),(8,1004,10),(9,1005,4),(10,1006,7),(11,1007,1),(12,1007,8),(13,1008,2),(14,1009,9),(15,1010,6);
/*!40000 ALTER TABLE `teacherdepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `attendance_report`
--

/*!50001 DROP VIEW IF EXISTS `attendance_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `attendance_report` AS select `attendance`.`StudentID` AS `StudentID`,`attendance`.`CourseID` AS `CourseID`,round(((sum((`attendance`.`Status` = 'Present')) * 100.0) / count(0)),2) AS `AttendancePercentage` from `attendance` group by `attendance`.`StudentID`,`attendance`.`CourseID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-15  9:32:00
