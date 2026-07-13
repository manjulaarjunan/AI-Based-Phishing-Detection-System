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
-- Table structure for table `url_analysis`
--

DROP TABLE IF EXISTS `url_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `url_analysis` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `detection_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_analysis`
--

LOCK TABLES `url_analysis` WRITE;
/*!40000 ALTER TABLE `url_analysis` DISABLE KEYS */;
INSERT INTO `url_analysis` VALUES (1,'2026-07-07 10:24:42.233058','Safe','https://www.google.com'),(2,'2026-07-07 10:25:18.022952','Phishing','http://bank-login-verify.com'),(3,'2026-07-07 10:31:16.965881','Phishing','http://bank-login-verify.com'),(4,'2026-07-07 10:31:20.952831','Safe','https://www.google.com'),(5,'2026-07-07 12:00:48.247194','Phishing','http://bank-login-verify.com'),(6,'2026-07-07 12:09:05.612470','Safe','https://www.google.com'),(7,'2026-07-07 13:52:36.029972','Phishing','http://bank-login-verify.com'),(8,'2026-07-07 14:07:51.339297','Phishing','http://bank-login-verify.com'),(9,'2026-07-07 14:07:55.067969','Safe','https://www.google.com'),(10,'2026-07-07 14:09:34.342801','Phishing','http://bank-login-verify.com'),(11,'2026-07-07 14:09:40.851025','Safe','http://chatgpt'),(12,'2026-07-10 13:02:06.796463','Safe','https://www.google.com'),(13,'2026-07-10 13:02:30.448735','Safe','http.gmail'),(14,'2026-07-10 13:02:45.711178','Safe','http-gmail'),(15,'2026-07-10 13:03:14.823324','Phishing','htttp://admin-login');
/*!40000 ALTER TABLE `url_analysis` ENABLE KEYS */;
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
