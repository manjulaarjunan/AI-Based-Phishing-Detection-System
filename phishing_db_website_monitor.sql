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
-- Table structure for table `website_monitor`
--

DROP TABLE IF EXISTS `website_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_monitor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `keyword_found` varchar(255) DEFAULT NULL,
  `scan_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_monitor`
--

LOCK TABLES `website_monitor` WRITE;
/*!40000 ALTER TABLE `website_monitor` DISABLE KEYS */;
INSERT INTO `website_monitor` VALUES (1,'None','2026-07-07 11:11:30.198485','Safe','https://www.google.com'),(2,'Suspicious Keyword','2026-07-07 11:11:37.005768','Suspicious','http://bank-login-verify.com'),(3,'Suspicious Keyword','2026-07-07 12:00:56.098342','Suspicious','http://bank-login-verify.com'),(4,'None','2026-07-07 12:09:11.372869','Safe','https://www.google.com'),(5,'None','2026-07-07 13:08:26.506272','Safe','http://chatgpt'),(6,'None','2026-07-07 13:08:40.983464','Safe','http://crio.do'),(7,'None','2026-07-07 13:09:17.879359','Safe','http://jagsana.com'),(8,'None','2026-07-07 13:13:41.728491','Safe','http://jagsana.com'),(9,'None','2026-07-07 13:13:47.596548','Safe','http://chatgpt'),(10,'Suspicious Keyword','2026-07-07 14:09:47.375848','Suspicious','http://bank-login-verify.com'),(11,'None','2026-07-10 13:03:26.318516','Safe','http://chatgpt'),(12,'None','2026-07-10 13:03:31.965518','Safe','http://atm/login'),(13,'Suspicious Keyword','2026-07-10 13:03:36.773564','Suspicious','http://bank-login-verify.com'),(14,'Suspicious Keyword','2026-07-10 13:03:48.601996','Suspicious','http://bank-login@verify.com');
/*!40000 ALTER TABLE `website_monitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-13 14:14:51
