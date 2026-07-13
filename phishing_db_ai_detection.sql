-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: phishing_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `ai_detection`
--

DROP TABLE IF EXISTS `ai_detection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_detection` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `detection_date` datetime(6) DEFAULT NULL,
  `prediction` varchar(255) DEFAULT NULL,
  `risk_score` int NOT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_detection`
--

LOCK TABLES `ai_detection` WRITE;
/*!40000 ALTER TABLE `ai_detection` DISABLE KEYS */;
INSERT INTO `ai_detection` VALUES (1,'2026-07-07 11:26:48.592815','Safe Website',0,'https://www.google.com'),(2,'2026-07-07 11:26:53.983717','Suspicious Website',40,'http://bank-login-verify.com'),(3,'2026-07-07 11:27:15.858275','Safe Website',0,'http://localhost:8080/detect-url'),(4,'2026-07-07 11:27:50.032547','Suspicious Website',40,'http://atm/login'),(5,'2026-07-07 12:01:02.730118','Suspicious Website',40,'http://bank-login-verify.com'),(6,'2026-07-07 12:09:21.721531','Safe Website',0,'https://www.google.com'),(7,'2026-07-07 12:09:47.804212','Suspicious Website',40,'http://atm/login'),(8,'2026-07-07 13:07:36.022405','Suspicious Website',40,'http://bank-login-verify.com'),(9,'2026-07-07 13:52:45.468865','Suspicious Website',40,'http://bank-login-verify.com'),(10,'2026-07-07 14:08:07.594734','Suspicious Website',40,'http://atm/login'),(11,'2026-07-07 14:08:26.389444','Safe Website',0,'https://www.google.com'),(12,'2026-07-07 14:09:54.567949','Safe Website',0,'https://www.google.com'),(13,'2026-07-07 14:10:01.852038','Safe Website',0,'http://chatgpt'),(14,'2026-07-07 14:10:31.246055','Suspicious Website',40,'http://bank-login-verify.com'),(15,'2026-07-07 14:15:20.313053','Suspicious Website',40,'http://bank-login-verify.com'),(16,'2026-07-07 14:15:40.147768','Suspicious Website',40,'http://bank'),(17,'2026-07-07 14:29:10.913291','Suspicious Website',40,'http://bank-login-verify.com'),(18,'2026-07-07 14:29:24.691300','Phishing Website',70,'http://bank-login@verify.com'),(19,'2026-07-07 14:30:47.052809','Phishing Website',70,'http://bank-login@verify.com'),(20,'2026-07-07 14:39:09.225972','Safe Website',0,'http://localhost:8080/detect-url'),(21,'2026-07-10 13:04:00.218132','Suspicious Website',40,'http://bank-login-verify.com'),(22,'2026-07-10 13:04:09.344600','Safe Website',0,'https://www.google.com');
/*!40000 ALTER TABLE `ai_detection` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 14:14:50
