-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: swearnet
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_attempts` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(64) NOT NULL,
  `succeed` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `attempts_count` int DEFAULT NULL,
  `banned` tinyint(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`login_id`),
  KEY `ip` (`ip`),
  KEY `login_attempts_ibfk_1` (`user_id`),
  CONSTRAINT `login_attempts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` VALUES (3,'2024-01-20 22:52:49','::1',0,9,NULL,0,NULL,NULL),(4,'2024-01-20 22:58:17','::1',0,9,NULL,0,NULL,NULL),(5,'2024-01-20 23:01:18','::1',0,9,NULL,0,NULL,NULL),(6,'2024-01-20 23:01:22','::1',0,9,NULL,0,NULL,NULL),(7,'2024-01-20 23:02:14','::1',0,9,NULL,0,NULL,NULL),(8,'2024-01-20 23:03:10','::1',0,9,NULL,0,NULL,NULL),(9,'2024-01-20 23:03:31','::1',0,9,NULL,0,NULL,NULL),(10,'2024-01-20 23:05:13','::1',0,9,NULL,0,NULL,NULL),(11,'2024-01-20 23:06:27','::1',0,9,NULL,0,NULL,NULL),(12,'2024-01-20 23:07:29','::1',0,9,NULL,0,NULL,NULL),(13,'2024-01-20 23:10:31','::1',0,9,NULL,0,NULL,NULL),(14,'2024-01-20 23:14:08','::1',0,9,NULL,0,NULL,NULL),(15,'2024-01-20 23:16:19','::1',0,9,NULL,0,NULL,NULL),(16,'2024-01-20 23:17:05','::1',0,9,NULL,0,NULL,NULL),(17,'2024-01-20 23:19:02','::1',0,9,NULL,0,NULL,NULL),(18,'2024-01-20 23:19:13','::1',0,9,NULL,0,NULL,NULL),(19,'2024-01-20 23:25:56','::1',0,9,NULL,0,NULL,NULL),(20,'2024-01-20 23:26:17','::1',0,9,NULL,0,NULL,NULL),(21,'2024-01-20 23:28:09','::1',0,9,NULL,0,NULL,NULL),(22,'2024-01-20 23:28:18','::1',0,9,NULL,0,NULL,NULL),(23,'2024-01-20 23:30:43','::1',0,9,NULL,0,NULL,NULL),(24,'2024-01-20 23:32:50','::1',0,9,NULL,0,NULL,NULL),(25,'2024-01-20 23:33:06','::1',0,9,NULL,0,NULL,NULL),(26,'2024-01-20 23:34:19','::1',0,9,NULL,0,NULL,NULL),(27,'2024-01-20 23:34:36','::1',0,9,NULL,0,NULL,NULL),(28,'2024-01-20 23:34:44','::1',0,9,NULL,0,NULL,NULL),(29,'2024-01-20 23:38:04','::1',0,9,NULL,0,NULL,NULL),(30,'2024-01-21 01:02:24','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTg5NDQsImV4cCI6MTcwNTgwMjU0NH0.ENfnj6aQ9_d42zhJ48mRHOhK0UWJmdWiPkD1XHPxfIM',NULL),(31,'2024-01-21 01:02:38','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTg5NTgsImV4cCI6MTcwNTgwMjU1OH0.KAPBxfAl7nn2vxqFroRckMEwugdFyXWu3nIuonYJqNI',NULL),(32,'2024-01-21 01:03:30','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTkwMTAsImV4cCI6MTcwNTgwMjYxMH0.jaXBFIMFcaa10W6RpTuuJ11XMNkUm8Z0DqDMKKzezDo',NULL),(33,'2024-01-21 01:03:33','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTkwMTMsImV4cCI6MTcwNTgwMjYxM30.qduAkDzkKTC4MUKKROQjsEHA297lCXLRRQO6QYO8ohc',NULL),(34,'2024-01-21 01:03:41','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTkwMjEsImV4cCI6MTcwNTgwMjYyMX0.tIkxgDytufxhq8ZkLGK4yJ0eE9lrqomcIxXR_2EDHzw',NULL),(35,'2024-01-21 01:04:01','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTkwNDEsImV4cCI6MTcwNTgwMjY0MX0.j-DcB4KgcMJCkIie5-sXNNb1Xju6m9_1Xt-C-huBNCk',NULL),(36,'2024-01-21 01:04:06','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTkwNDYsImV4cCI6MTcwNTgwMjY0Nn0.gm8HjiDj8PdTvDtEQbW5ydLPiO68kPideBwmCZ3yC_Q',NULL),(37,'2024-01-21 01:05:34','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTkxMzQsImV4cCI6MTcwNTgwMjczNH0.QJHUiI5AEhSllazkpJRIZZs3HLY_QTjFcI22HPLV57c',NULL),(38,'2024-01-21 01:05:47','::1',0,9,NULL,0,NULL,NULL),(39,'2024-01-21 01:15:17','::1',0,9,NULL,0,NULL,NULL),(40,'2024-01-21 01:16:58','::1',0,9,NULL,0,NULL,NULL),(41,'2024-01-21 01:17:48','::1',0,9,NULL,0,NULL,NULL),(42,'2024-01-21 01:17:57','::1',0,9,NULL,0,NULL,NULL),(43,'2024-01-21 01:18:06','::1',0,9,NULL,0,NULL,NULL),(44,'2024-01-21 01:18:19','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTk4OTksImV4cCI6MTcwNTgwMzQ5OX0.U-s7IltMBGhtSdklK41R1Fudtb3EuHgooJl8Guic3b0',NULL),(45,'2024-01-21 01:18:40','::1',0,9,NULL,0,NULL,NULL),(46,'2024-01-21 01:19:31','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTk5NzEsImV4cCI6MTcwNTgwMzU3MX0.rEpY3nZlyKMZ7h0uTdld4Q3Mq-zS8lyyCPLq-pWjcI8',NULL),(47,'2024-01-21 01:19:42','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU3OTk5ODIsImV4cCI6MTcwNTgwMzU4Mn0.hEAIqGD4dASoow2aAbIM0HVnXgK4-Ah0hf-U49BhrYM',NULL),(48,'2024-01-21 01:23:31','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MDAyMTEsImV4cCI6MTcwNTgwMzgxMX0.Z7I1zZ9e4HwM8n0x7Kw9-gm7f94oXkLMQOVWxMREoME',NULL),(49,'2024-01-21 01:25:00','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MDAzMDAsImV4cCI6MTcwNTgwMzkwMH0.0e6acZVfBhkroiMLw-hxL0rVzIFDS5WS4b7Ry95tUP4',NULL),(50,'2024-01-21 01:25:50','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MDAzNTAsImV4cCI6MTcwNTgwMzk1MH0.SKOnftgKufVl8DlPiXB61lxTXMOphOo7gSJygzt3KsA',NULL),(51,'2024-01-21 01:27:51','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MDA0NzEsImV4cCI6MTcwNTgwNDA3MX0.aGesiF8LMT9kQz8FMVP6AzvL0jlUIUzbo6wSD7pa2sg',NULL),(52,'2024-01-21 01:30:01','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MDA2MDEsImV4cCI6MTcwNTgwNDIwMX0.plLHrwGRy0s_qO807GmluHbrlnGIiJvaUNMpuSocUMA',NULL),(53,'2024-01-21 01:30:08','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MDA2MDgsImV4cCI6MTcwNTgwNDIwOH0.r7O0uQzCiCyMWzHaXfDQgW-qjwECmDghqBHqzFrpwUg',NULL),(54,'2024-01-21 01:30:59','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MDA2NTksImV4cCI6MTcwNTgwNDI1OX0.RubOq9bLncl_MVuKFz-C8ucTUrbHB3pqayU5jQDKFWk',NULL),(55,'2024-01-21 12:07:08','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4Mzg4MjgsImV4cCI6MTcwNTg0MjQyOH0.YhpVloGAbCd3n7FXntPOW2tfGWiM_qp6XwOeSydcr50',NULL),(56,'2024-01-21 12:07:22','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4Mzg4NDIsImV4cCI6MTcwNTg0MjQ0Mn0.CtMS1uYQ6IDPDCIzohmSAr7CNWFvK4slBoMblLC4OZQ',NULL),(57,'2024-01-21 12:08:56','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4Mzg5MzYsImV4cCI6MTcwNTg0MjUzNn0.eGUz_Y4h4egIcxTsSd8A_xaXnarU85qqdJWRr8Nya1Q',NULL),(58,'2024-01-21 12:09:10','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4Mzg5NTAsImV4cCI6MTcwNTg0MjU1MH0.hJFUo0P4eL3IXvaizNAZ2kjVkfOq7MieHlwWGV9Ra8k',NULL),(59,'2024-01-21 12:09:49','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4Mzg5ODksImV4cCI6MTcwNTg0MjU4OX0.p6gZ99rXgaWghr7P6OoUBpxRt1LgP9LMMe5UwnN3p04',NULL),(60,'2024-01-21 12:10:00','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MzkwMDAsImV4cCI6MTcwNTg0MjYwMH0.tGjRQfBZs29SwfvZoEvLqBgLnYQEnl4Krne0ey6v7yk',NULL),(61,'2024-01-21 12:10:06','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MzkwMDYsImV4cCI6MTcwNTg0MjYwNn0.jTH2IyIeigdvOtT34tgnZS_qA1P2xKiLkJYKpwLpano',NULL),(62,'2024-01-21 12:10:13','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MzkwMTMsImV4cCI6MTcwNTg0MjYxM30.Z-Xfb6lHFB_je5QHEga03cflgVs3GQ0aPIRhhlrTlhY',NULL),(63,'2024-01-21 12:11:01','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MzkwNjEsImV4cCI6MTcwNTg0MjY2MX0.BW5htY44sTEmoa3nelwLZLBJWG5YRh1a2u5CTs9k2AI',NULL),(64,'2024-01-21 12:11:07','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4MzkwNjcsImV4cCI6MTcwNTg0MjY2N30.Sv24UdXX-USICdMeMufYwvUcrjjF9bSs54kMZPiwgtI',NULL),(65,'2024-01-21 12:30:27','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4NDAyMjcsImV4cCI6MTcwNTg0MzgyN30.U0yDgQA5pU9uZenzSyHGVq21U1pFlyTIGFhHezkqItI',NULL),(66,'2024-01-21 12:33:59','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4NDA0MzksImV4cCI6MTcwNTg0NDAzOX0.VWj6JvfFfxOhS54zHHRrfieDMRYB_fJbYpgxkJwayMU',NULL),(67,'2024-01-21 12:40:23','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4NDA4MjMsImV4cCI6MTcwNTg0NDQyM30.m7pW6RjH9qMmCTlvLN8BELbzl4sXc1ji6T-PiD_kv5k',NULL),(68,'2024-01-21 12:42:00','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4NDA5MjAsImV4cCI6MTcwNTg0NDUyMH0.x5UvV_hLKDi2XHJyODVJVBMvFE7o5aNnUF_KnwBPYFw',NULL),(69,'2024-01-21 12:46:25','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4NDExODUsImV4cCI6MTcwNTg0NDc4NX0.z_OiGIq3ceBoJZ4Pqg_rriKipS9Yon0GRgmBGRSNgGg',NULL),(70,'2024-01-21 12:54:53','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDU4NDE2OTMsImV4cCI6MTcwNTg0NTI5M30.AzcIfJvnjRJ_IbkF6dVbBoMzUsQbDmxElB4OC6KKjKI',NULL),(71,'2024-01-21 13:33:47','::1',1,9,NULL,0,NULL,NULL),(72,'2024-01-21 13:41:16','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlzQWRtaW4iOjEsImV4cGlyZXNJbiI6MTcwNTg0ODA3Njk1OH0sImlhdCI6MTcwNTg0NDQ3NiwiZXhwIjoxNzA1ODQ4MDc2fQ.gA21iO79rm5RLpOFz0Gp2ad_nMmcQuXZ5D7AFbymVxk',NULL),(73,'2024-01-21 13:44:40','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlzQWRtaW4iOjEsImV4cGlyZXNJbiI6MTcwNTg0ODI4MDc4Mn0sImlhdCI6MTcwNTg0NDY4MCwiZXhwIjoxNzA1ODQ4MjgwfQ.C04dCuP58-T4m_A0WoqBYOvbJLJ5KsTaqggIjE-awy4',NULL),(74,'2024-01-21 13:47:17','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlzQWRtaW4iOjEsImV4cGlyZXNJbiI6MTcwNTg0ODQzNzEzN30sImlhdCI6MTcwNTg0NDgzNywiZXhwIjoxNzA1ODQ4NDM3fQ.CTAKeRjva2jeOi3py5olCkBuOXX6T10AJZudl1CQBhE',NULL),(75,'2024-01-21 13:55:20','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODQ4OTIwNDAyfSwiaWF0IjoxNzA1ODQ1MzIwLCJleHAiOjE3MDU4NDg5MjB9.DANrOZjUP-_bj5Qa7bYVIOyHGbjAvx8XspFw5WsvH1U',NULL),(76,'2024-01-21 13:58:22','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODQ5MTAyOTUwfSwiaWF0IjoxNzA1ODQ1NTAyLCJleHAiOjE3MDU4NDkxMDJ9.h9hW9J-G-hu2fZP9QQs_eY54vU-u7Ig1uCyFyHTdHN4',NULL),(77,'2024-01-21 14:05:10','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODQ5NTEwMTE4fSwiaWF0IjoxNzA1ODQ1OTEwLCJleHAiOjE3MDU4NDk1MTB9.gX_dcg5u-uxgGv3L9UYlVL9kUF_Bt257RlspKXXJHSc',NULL),(78,'2024-01-21 14:07:05','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODQ5NjI1NjIzfSwiaWF0IjoxNzA1ODQ2MDI1LCJleHAiOjE3MDU4NDk2MjV9.X0d5x6UUduEUwbqWnALdILrBtkwuBJ_jH9IJZiTSGAI',NULL),(79,'2024-01-21 14:10:24','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODQ5ODI0MzczfSwiaWF0IjoxNzA1ODQ2MjI0LCJleHAiOjE3MDU4NDk4MjR9.8MjqKIJwE37debb93L6O0VOKZtq6Xp6AWlqTaT-jNVk',NULL),(80,'2024-01-21 14:14:19','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhMjIiLCJpc0FkbWluIjoxLCJleHBpcmVzSW4iOjE3MDU4NTAwNTkxNDZ9LCJpYXQiOjE3MDU4NDY0NTksImV4cCI6MTcwNTg1MDA1OX0.J74hZY6CHNVDk-KIFIdy_O4w9v9glsZLEq0tt5Ge2gM',NULL),(81,'2024-01-21 14:16:41','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhMjIiLCJpc0FkbWluIjoxLCJleHBpcmVzSW4iOjE3MDU4NTAyMDExODB9LCJpYXQiOjE3MDU4NDY2MDEsImV4cCI6MTcwNTg1MDIwMX0.IHMM2J171Mf_9y6ncTt7786nEjdsq86hmedcS6WKSsI',NULL),(82,'2024-01-21 16:16:50','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhMjIiLCJpc0FkbWluIjoxLCJleHBpcmVzSW4iOjE3MDU4NTc0MTAyMDl9LCJpYXQiOjE3MDU4NTM4MTAsImV4cCI6MTcwNTg1NzQxMH0.1wBM13AFZ85vj8QkEHgestodFKY54eksLOkFH8kSfBw',NULL),(83,'2024-01-21 16:35:20','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODU4NTIwNjM2fSwiaWF0IjoxNzA1ODU0OTIwLCJleHAiOjE3MDU4NTg1MjB9.BgrdvzPOfBwWM_8dRjOcfDM4E88XMgLw0jOHO3xOqLg',NULL),(84,'2024-01-21 16:47:51','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODU5MjcxNzM1fSwiaWF0IjoxNzA1ODU1NjcxLCJleHAiOjE3MDU4NTkyNzF9.4xt0sxrzojmpQttypxDsFfFY9SXrKOwnnqiwcMZe_o8',NULL),(85,'2024-01-21 17:03:24','::1',1,9,NULL,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODYwMjA0MzExfSwiaWF0IjoxNzA1ODU2NjA0LCJleHAiOjE3MDU4NjAyMDR9.G4MpKDsqUscRc_S9_Xkt9Hr_dtb1yopNhiNGTr65YxE',NULL),(87,'2024-01-21 18:21:48','::1',1,9,NULL,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1ODY0OTA3OTk3fSwiaWF0IjoxNzA1ODYxMzA3LCJleHAiOjE3MDU4NjQ5MDd9.5nMWJrtaLm0-M8cdAHAimEVXYWDtOYnlovRhhGuKn3o',NULL),(95,'2024-01-22 14:09:45','::1',1,9,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTM2MTg1NTMzfSwiaWF0IjoxNzA1OTMyNTg1LCJleHAiOjE3MDU5MzYxODV9.LRYRJbT3RH-3mBmd4-Smtrk7WY9_lTa1JSo2lJP-Qgg',NULL),(96,'2024-01-22 14:14:32','::1',0,9,1,0,NULL,NULL),(97,'2024-01-22 14:14:35','::1',0,9,1,0,NULL,NULL),(98,'2024-01-22 14:14:38','::1',0,9,1,0,NULL,NULL),(99,'2024-01-22 14:43:47','::1',0,9,1,0,NULL,NULL),(100,'2024-01-22 14:43:50','::1',0,9,1,0,NULL,NULL),(101,'2024-01-22 14:50:04','::1',0,9,1,0,NULL,NULL),(102,'2024-01-22 14:50:07','::1',0,9,1,0,NULL,NULL),(103,'2024-01-22 14:50:08','::1',0,9,1,0,NULL,NULL),(104,'2024-01-22 14:50:35','::1',0,9,2,0,NULL,NULL),(105,'2024-01-22 14:50:52','::1',0,9,3,0,NULL,NULL),(106,'2024-01-22 14:50:54','::1',0,9,4,0,NULL,NULL),(107,'2024-01-22 14:50:56','::1',0,9,5,1,NULL,'2024-01-23 03:50:56'),(108,'2024-01-22 14:50:58','::1',0,9,5,1,NULL,'2024-01-23 03:50:56'),(109,'2024-01-22 14:50:59','::1',0,9,5,1,NULL,'2024-01-23 03:50:56'),(110,'2024-01-22 14:51:04','::1',1,9,5,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTM4NjY0Mjg2fSwiaWF0IjoxNzA1OTM1MDY0LCJleHAiOjE3MDU5Mzg2NjR9.1AwB8-Bt_czadxZg5oHNQkZ-LzmqY-d9QwzG3wyHHL8','2024-01-23 03:50:56'),(111,'2024-01-22 14:55:06','::1',1,9,6,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTM4OTA2NTIwfSwiaWF0IjoxNzA1OTM1MzA2LCJleHAiOjE3MDU5Mzg5MDZ9.5CxUAI0mvZ1Ezgfh6kVWMblx0ocsLEwHIkV4Uuz0Acg','2024-01-23 03:50:56'),(112,'2024-01-22 14:56:48','::1',1,9,7,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTM5MDA4NzQ5fSwiaWF0IjoxNzA1OTM1NDA4LCJleHAiOjE3MDU5MzkwMDh9.aD7fhxFor-4bIF_4tE3B48trVmyC7P8BvgNZLqmt1tc','2024-01-23 03:50:56'),(113,'2024-01-22 15:05:43','::1',1,9,8,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTM5NTQzNDk2fSwiaWF0IjoxNzA1OTM1OTQzLCJleHAiOjE3MDU5Mzk1NDN9.DQzF3i0CwAJ_b-cBY49cM4yyEd3zii03MEqYSQRPXW8','2024-01-23 03:50:56'),(114,'2024-01-22 15:09:29','::1',1,9,9,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTM5NzY5Njg5fSwiaWF0IjoxNzA1OTM2MTY5LCJleHAiOjE3MDU5Mzk3Njl9.gJ-lTFG0KmrDJOtH2mvEYlFNZLR7ZObpNnDRJdN0rR4','2024-01-23 03:50:56'),(115,'2024-01-22 15:40:50','::1',1,9,10,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQxNjUwNjE4fSwiaWF0IjoxNzA1OTM4MDUwLCJleHAiOjE3MDU5NDE2NTB9.iEMMUkN55hiNQQirXtUHFU3y428NDOzQdiyFHehbLRk','2024-01-23 03:50:56'),(116,'2024-01-22 15:50:59','::1',1,9,11,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQyMjU5Njc3fSwiaWF0IjoxNzA1OTM4NjU5LCJleHAiOjE3MDU5NDIyNTl9.PsDdDe1DKqo8B22Wka9hHxYyJxtQdTRPdvbNdXwr0cE','2024-01-23 03:50:56'),(117,'2024-01-22 15:52:04','::1',1,9,12,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQyMzI0ODU5fSwiaWF0IjoxNzA1OTM4NzI0LCJleHAiOjE3MDU5NDIzMjR9.N4on-oZe8xj-H8r_9fKOGfy_7O6Ojdvh6LBhpyQyGMU','2024-01-23 03:50:56'),(118,'2024-01-22 15:53:59','::1',1,9,13,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQyNDM5MDYyfSwiaWF0IjoxNzA1OTM4ODM5LCJleHAiOjE3MDU5NDI0Mzl9.0ApwnnaKqtM-H19Jmpt3OJV04c9053lf4je8UFFarBA','2024-01-23 03:50:56'),(119,'2024-01-22 15:57:12','::1',1,9,14,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQyNjMyMjEzfSwiaWF0IjoxNzA1OTM5MDMyLCJleHAiOjE3MDU5NDI2MzJ9.kEJbOoT4a-NEm5DA2oqKXHmb2ZXol7MttLZAg1xvczY','2024-01-23 03:50:56'),(120,'2024-01-22 15:59:19','::1',1,9,15,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQyNzU5NzExfSwiaWF0IjoxNzA1OTM5MTU5LCJleHAiOjE3MDU5NDI3NTl9.MR4CpwXFj9IraxnK6K1G0EsKk4BvdFphEPcBu5bKAZI','2024-01-23 03:50:56'),(121,'2024-01-22 16:05:20','::1',1,9,16,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQzMTIwNjI1fSwiaWF0IjoxNzA1OTM5NTIwLCJleHAiOjE3MDU5NDMxMjB9.ScMkd33kXoFmqR05c0P7OT5Z5GCftOXkejtOBrEChNI','2024-01-23 03:50:56'),(122,'2024-01-22 17:16:43','::1',1,9,17,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQ3NDAzODQ5fSwiaWF0IjoxNzA1OTQzODAzLCJleHAiOjE3MDU5NDc0MDN9.XYDQEG4H_r2E0U025g5qproKyjW8IafkSMLRfwleBYM','2024-01-23 03:50:56'),(123,'2024-01-22 17:18:25','::1',1,9,18,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQ3NTA1MjA3fSwiaWF0IjoxNzA1OTQzOTA1LCJleHAiOjE3MDU5NDc1MDV9.H_HAoZdqqlGOs-CBwqSTyrLJ2wczMNe7iKaJ3MR2wkQ','2024-01-23 03:50:56'),(124,'2024-01-22 17:24:56','::1',1,9,19,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhIiwiaXNBZG1pbiI6MSwiZXhwaXJlc0luIjoxNzA1OTQ3ODk2NjMwfSwiaWF0IjoxNzA1OTQ0Mjk2LCJleHAiOjE3MDU5NDc4OTZ9.d1D-jzmrnCfdrZZdZJVKIdLBN0nAr0mdLErUmfBlXYA',NULL),(125,'2024-01-22 18:42:27','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTI1NDc2OTJ9LCJpYXQiOjE3MDU5NDg5NDcsImV4cCI6MTcwNTk1MjU0N30.e6terPSJbHZprl0nXFvhMUul7zONaL63dmgT2QTko64',NULL),(126,'2024-01-22 18:43:06','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTI1ODY4NzZ9LCJpYXQiOjE3MDU5NDg5ODYsImV4cCI6MTcwNTk1MjU4Nn0.K7OQV05dycMZAKNFJqU6pGm_k8KbC0HkxJrFzFyXA4c',NULL),(127,'2024-01-22 18:46:21','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTI3ODEwMzl9LCJpYXQiOjE3MDU5NDkxODEsImV4cCI6MTcwNTk1Mjc4MX0.WhkWubXA6e1cwLKyUu1uR_WphyMkV4gtdLJrYLmuZdM',NULL),(128,'2024-01-22 18:49:40','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTI5ODA3NjZ9LCJpYXQiOjE3MDU5NDkzODAsImV4cCI6MTcwNTk1Mjk4MH0.NQM4ork6jToJI4Wm00Ef3qFC0GKcL7ddE-LjoavnANY',NULL),(129,'2024-01-22 18:56:00','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTMzNjAxNzZ9LCJpYXQiOjE3MDU5NDk3NjAsImV4cCI6MTcwNTk1MzM2MH0.mvRRxJ94Hl8a6M5YPia6u_hfrU1BukHhToF1hkwAEjU',NULL),(130,'2024-01-22 19:00:41','::1',0,12,1,0,NULL,NULL),(131,'2024-01-22 19:00:49','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTM2NDkwOTh9LCJpYXQiOjE3MDU5NTAwNDksImV4cCI6MTcwNTk1MzY0OX0.ZpfIQZxt9Now9BwmUiyJfaRjvkfA7Gm-QyvnPV4cNAY',NULL),(132,'2024-01-22 19:05:14','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTM5MTQ5NTB9LCJpYXQiOjE3MDU5NTAzMTQsImV4cCI6MTcwNTk1MzkxNH0.JX-7JuLRac-dWXdBVFQ0i8lwl1Wu7NooffkFBmLeLRA',NULL),(133,'2024-01-22 19:11:04','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTQyNjQyOTR9LCJpYXQiOjE3MDU5NTA2NjQsImV4cCI6MTcwNTk1NDI2NH0.PUJE-yWXHwekW4Ww4OswLyoyyCqPwdOX85NbsLVgB5o',NULL),(134,'2024-01-22 19:15:55','::1',1,12,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6MTIsInVzZXJOYW1lIjoiTmlpbG8iLCJpc0FkbWluIjowLCJleHBpcmVzSW4iOjE3MDU5NTQ1NTU4MjV9LCJpYXQiOjE3MDU5NTA5NTUsImV4cCI6MTcwNTk1NDU1NX0.HwSKJMn1N965BPejESTo12brcK3qd1pedMH6D417OxE',NULL),(135,'2024-01-22 20:07:53','::1',1,9,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhMjIiLCJpc0FkbWluIjoxLCJleHBpcmVzSW4iOjE3MDU5NTc2NzMxMjl9LCJpYXQiOjE3MDU5NTQwNzMsImV4cCI6MTcwNTk1NzY3M30.ZS6XDacqzd2ZaDY7K6mJSgkiMeOOYuwIWfdi8238Sxc',NULL),(136,'2024-01-22 20:25:59','::1',0,9,1,0,NULL,NULL),(137,'2024-01-22 20:26:06','::1',0,9,2,0,NULL,NULL),(138,'2024-01-22 20:26:17','::1',1,9,0,0,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6OSwidXNlck5hbWUiOiJuaXBhMjIiLCJpc0FkbWluIjoxLCJleHBpcmVzSW4iOjE3MDU5NTg3Nzc4NDB9LCJpYXQiOjE3MDU5NTUxNzcsImV4cCI6MTcwNTk1ODc3N30.WkWedTooKO6xhIswcG_VB8NNYgvQf__y-e2xvzfTJqE',NULL);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,9,'KURWA!','2024-01-21 14:47:52'),(4,9,'Perkele','2024-01-21 15:39:00'),(5,9,'Have fun with Spaghetti Code :P','2024-01-21 15:39:59'),(7,12,'Moi mita kuuluu?','2024-01-22 18:51:25');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isAdmin` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'nipa22','$2a$10$0.6jJ5GgZmTWLzVbt.Av6ebovwlnbR1srf73MHgKbDI46OCmqNj2m','vielaanonyymiluikauttelija@gmail.com','2023-12-20 13:37:31',1),(12,'Niilo','$2a$10$gXRxx9iq1x/H4ie4tqb5g.Yk4tbDoCJ1ndMzErk.g7zGuKbzWp8Dy','eipahuvita@gmail.com','2024-01-22 18:41:49',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'swearnet'
--
/*!50003 DROP PROCEDURE IF EXISTS `handle_login_attempt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `handle_login_attempt`(
 IN new_ip VARCHAR(64),
 IN new_succeed TINYINT,
 IN new_user_id INT, 
 IN new_token VARCHAR(255),
 OUT new_banned TINYINT,
 OUT new_expires DATETIME
)
BEGIN
  DECLARE prev_banned TINYINT;
  DECLARE prev_expires DATETIME;
  DECLARE prev_attempts_count INT;
  DECLARE new_attempts_count INT;
  SET new_banned = null;
  SET new_expires = null;
  SET new_attempts_count = 0;
  
  -- Check if the user has a previous banned login
  SELECT banned, expires, attempts_count
  INTO prev_banned, prev_expires, prev_attempts_count
  FROM login_attempts
  WHERE user_id = new_user_id
  ORDER BY timestamp DESC
  LIMIT 1;

  SELECT 'Before if', prev_banned, prev_expires; -- Lisää tämä rivi

  IF prev_banned = 1 AND prev_expires > CURRENT_TIMESTAMP THEN
    -- If the user is still banned, set the new login accordingly
    SET new_banned = 1;
    SET new_expires = prev_expires;
    SET new_attempts_count = prev_attempts_count + 1;
  ELSE
    -- Otherwise, handle the new login logic
    IF new_succeed = 0 THEN
      -- Failed login attempt
      SET new_attempts_count = prev_attempts_count + 1;
		
      IF new_attempts_count > 4 THEN
        -- If attempts_count is greater than 4, set banned = 1 and expires to 12 hours from now
        SET new_banned = 1;
        SET new_expires = DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 12 HOUR);
      ELSE
        -- Otherwise, set banned = 0 and expires to null
        SET new_banned = 0;
        SET new_expires = NULL;
      END IF;
    ELSE
      -- Successful login attempt
      SET new_attempts_count = 0;
      SET new_banned = 0;
      SET new_expires = NULL;
    END IF;
  END IF;
  INSERT INTO login_attempts (ip, succeed, user_id, attempts_count, banned, token, expires)  VALUES (new_ip, new_succeed, new_user_id, new_attempts_count, new_banned, new_token, new_expires);
  SELECT new_banned, new_expires;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-22 21:33:10
