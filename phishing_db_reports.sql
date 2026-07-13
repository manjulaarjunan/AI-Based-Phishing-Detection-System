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
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `detection_status` varchar(255) DEFAULT NULL,
  `report_date` datetime(6) DEFAULT NULL,
  `threat_level` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2o32rer9hfweeylg7x8ut8rj2` (`user_id`),
  CONSTRAINT `FK2o32rer9hfweeylg7x8ut8rj2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (3,'Suspicious Website','2026-07-07 13:07:36.048052','MEDIUM','http://bank-login-verify.com',NULL),(4,'Suspicious Website','2026-07-07 13:52:45.485857','MEDIUM','http://bank-login-verify.com',NULL),(6,'Safe Website','2026-07-07 14:08:26.401539','LOW','https://www.google.com',1),(7,'Safe Website','2026-07-07 14:09:54.580953','LOW','https://www.google.com',2),(8,'Safe Website','2026-07-07 14:10:01.869024','LOW','http://chatgpt',2),(9,'Suspicious Website','2026-07-07 14:10:31.259067','MEDIUM','http://bank-login-verify.com',2),(10,'Suspicious Website','2026-07-07 14:15:20.325046','MEDIUM','http://bank-login-verify.com',2),(11,'Suspicious Website','2026-07-07 14:15:40.158803','MEDIUM','http://bank',2),(12,'Suspicious Website','2026-07-07 14:29:10.927282','MEDIUM','http://bank-login-verify.com',1),(13,'Phishing Website','2026-07-07 14:29:24.705292','HIGH','http://bank-login@verify.com',1),(14,'Phishing Website','2026-07-07 14:30:47.078180','HIGH','http://bank-login@verify.com',2),(15,'Safe Website','2026-07-07 14:39:09.240963','LOW','http://localhost:8080/detect-url',2),(16,'Suspicious Website','2026-07-10 13:04:00.230002','MEDIUM','http://bank-login-verify.com',3),(17,'Safe Website','2026-07-10 13:04:09.347533','LOW','https://www.google.com',3);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
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
