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
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `alert_date` datetime(6) DEFAULT NULL,
  `alert_message` varchar(255) DEFAULT NULL,
  `threat_level` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqx4kjyy8qmc38cpa1pj5gp74i` (`user_id`),
  CONSTRAINT `FKqx4kjyy8qmc38cpa1pj5gp74i` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
INSERT INTO `alerts` VALUES (2,'2026-07-07 11:41:24.454837','Warning! Phishing activity detected','HIGH','http://bank-login-verify.com',NULL),(4,'2026-07-07 11:42:10.902755','Warning! Phishing activity detected','HIGH','http://bank-login-verify.com',NULL),(5,'2026-07-07 11:44:55.430218','Website is Safe','LOW','https://www.google.com',NULL),(6,'2026-07-07 11:45:03.769736','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(7,'2026-07-07 12:01:11.415181','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(8,'2026-07-07 12:09:29.480522','Website is Safe','LOW','https://www.google.com',NULL),(9,'2026-07-07 13:07:23.858465','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(10,'2026-07-07 13:52:56.726326','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(11,'2026-07-07 13:53:13.747830','Warning! Phishing Website Detected','HIGH','http://atm/login',NULL),(12,'2026-07-07 14:08:13.678539','Website is Safe','LOW','https://www.google.com',NULL),(13,'2026-07-07 14:08:45.274609','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(14,'2026-07-07 14:09:07.305948','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(15,'2026-07-07 14:10:07.916062','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(16,'2026-07-07 14:21:44.758383','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(17,'2026-07-07 14:29:24.715506','Warning! Phishing Website Detected','HIGH','http://bank-login@verify.com',1),(18,'2026-07-07 14:29:38.288557','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL),(19,'2026-07-07 14:30:47.091170','Warning! Phishing Website Detected','HIGH','http://bank-login@verify.com',2),(20,'2026-07-10 13:04:22.113885','Warning! Phishing Website Detected','HIGH','http://bank-login-verify.com',NULL);
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
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
