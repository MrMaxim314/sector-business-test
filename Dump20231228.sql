-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: testprisma
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('d1148dc2-d853-43cb-9b13-9746dd12b34b','5ae76c78381ff9080a84515f1fbf3594ba7e5af874c5844a1e2690d6e5cd5503','2023-12-28 10:48:19.669','20231228104613_unique',NULL,NULL,'2023-12-28 10:48:19.597',1),('de1fd86e-4948-4a11-9ca9-5fc4f3de277f','c5224e6380794cb64bb2417fb79acfccc3828137819fd1a866e4c3616ed5ab0b','2023-12-28 10:48:19.473','20231227233213_new',NULL,NULL,'2023-12-28 10:48:19.390',1),('f93e6119-5a7e-4eac-a8c9-18a652fe0953','2f6f203860ef2c19496c148934f5635e28c3df9dbb2833b5f84576ee4aa253a5','2023-12-28 10:48:19.590','20231227233351_new_2',NULL,NULL,'2023-12-28 10:48:19.482',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email_key` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'gggg','Doe','myemail@dd.com','$argon2id$v=19$m=65536,t=3,p=4$i3xrbT2bd8jWgG79E+3PVQ$FaANchUZfF0VproRxao2HY5BEUGhiHEU8iiDGOQZIDQ',NULL,'!Logo1703770253920.png','2023-12-28 10:52:40.036',NULL),(4,'Max',NULL,'my1email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$wP3+/gwZonuu5txaBJ0ZKg$mvznedHBuYjzfIwDFpiYS+ack0s1/+afV7aV+2FjCik',NULL,NULL,'2023-12-28 12:33:56.879',NULL),(5,'Anton',NULL,'my5email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$5u4WBGk2/PEY2gwB+YaxZQ$7RfbVrWq4EK+zDbdonILE6d2Q2xIGo2s+zuT0L+XkfI','M','vp1703770748103.jpg','2023-12-28 12:34:08.809',NULL),(6,'Max',NULL,'my6email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$hnViVFtCaxpSt+ylPtxw1Q$ZJfjAFMLDNitxbiQvlpOtbTcWhyvJj7UPU4mJCdWpd8',NULL,NULL,'2023-12-28 12:34:14.139',NULL),(7,'Max',NULL,'my7email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$ClhCH2vwV+G8vsbRTQen9A$TAtHeVPjmNXn8iCPlWU0WCylHq/Yd0hlRe5S9SovYxg',NULL,NULL,'2023-12-28 12:34:18.262',NULL),(8,'Max',NULL,'my8email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$HgQjZycqvjRts9ix1GNm6Q$Qj+MDBv7Fq6KzVxUCKyfoPlCMb8QKTKO1Uh0FZKbTOQ',NULL,NULL,'2023-12-28 12:34:22.304',NULL),(9,'Petr','Petrov','my9email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$PbNOkcYqLabHKP23UcpVjA$0PJh9UWfROEQQJx2ZMaUGyH5O9JI/t60an/Yi+91isA','M','vp1703771958154.jpg','2023-12-28 12:34:26.046',NULL),(10,'Max',NULL,'my10email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$/o8ogQg3gtDfvCeTFv51tQ$V0y81VR3KpRFS+Pav4yOV0nADI9lzGQsnffE1B07bKQ',NULL,NULL,'2023-12-28 12:34:38.465',NULL),(11,'Max',NULL,'my11email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$kZVx+2KxDhxpkHApk+oPIg$50xz2516KucYeSmDDThetbphrg581Ll6WcU9gOqIZRk',NULL,NULL,'2023-12-28 12:34:42.638',NULL),(12,'Max',NULL,'my12email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$b45mzgyfsnJipGnAx1if5w$W7TrqeBB0ZnSuSXr2z//xw6jR30Pu59lPUWJgjBYQhU',NULL,NULL,'2023-12-28 12:34:46.518',NULL),(13,'Max',NULL,'my13email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$HPZNSo9nvDpALnX09/6dYA$YgsIS55DMaVn1pcwwsOSxOThnTq/V5TrAL6Ar9gwlCY',NULL,NULL,'2023-12-28 12:34:50.384',NULL),(14,'Max',NULL,'my14email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$SfzUI+5W3lVuiNLuOwWHdQ$/K81YAYAX4DL5jq39igIS4eiW9wqU/XiqqeNvLKKpH0',NULL,NULL,'2023-12-28 12:34:53.862',NULL),(17,'Max',NULL,'my15email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$yCxug9nfsQ352yj7BnQxqQ$ja8zCjvusu+ghQmMoH4M6eapyYeElmYYFuLx9mnnaDU',NULL,NULL,'2023-12-28 13:35:29.347',NULL),(18,'ddffdf','Ivanov','my16email@dd.com','$argon2id$v=19$m=65536,t=3,p=4$D+hGc7cgZX2mwQbaYKhpbw$A50LBjp/lZtIMPwRRKa1boTGoFh7wMg+8YVfaTEPrDU','F','vp1703771920956.jpg','2023-12-28 13:56:48.237',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 17:02:56
