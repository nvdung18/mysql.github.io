-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: watch_shop
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `_revenue_test`
--

DROP TABLE IF EXISTS `_revenue_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_revenue_test` (
  `idRev` int unsigned NOT NULL AUTO_INCREMENT,
  `revenue` double NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idRev`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_revenue_test`
--

LOCK TABLES `_revenue_test` WRITE;
/*!40000 ALTER TABLE `_revenue_test` DISABLE KEYS */;
INSERT INTO `_revenue_test` VALUES (1,59,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(2,60,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(3,61,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(4,62,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(5,63,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(6,64,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(7,65,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(8,66,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(9,67,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(10,68,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(11,69,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(12,70,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(13,71,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(14,72,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(15,73,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(16,74,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(17,75,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(18,76,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(19,77,5,'2022-09-25 13:09:49','2022-09-25 13:09:49'),(20,78,5,'2022-09-25 13:09:49','2022-09-25 13:09:49');
/*!40000 ALTER TABLE `_revenue_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `idAccount` varchar(45) NOT NULL,
  `method` varchar(45) NOT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `idUser` varchar(45) NOT NULL,
  PRIMARY KEY (`idAccount`),
  KEY `FK_USER_idx` (`idUser`),
  CONSTRAINT `FKAccount_idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('Ac_1','Default','dung1810','$2y$10$fqVK3FB5wzQTfplnq3uZkuUt2p428qTmaIwyhPZp0ujmO80ovwNgq','Us_1'),('Ac_2','Default','huy1612','$2y$10$SlVFDlDolgIcV3OXz4eIHemhM593hw/QD2CmBqqRCLX8xw8hiL5oK','Us_2'),('Ac_3','Default','admin','202cb962ac59075b964b07152d234b70','Us_3'),('Ac_4','Default','abc123','$2y$10$8HcGTc./vUQGLU86IisA4uKXe3K8K0DH0vYrA8QuQTVLub12BIjm.','Us_4'),('Ac_5','Default','fnmfg123','$2y$10$V.ix6QLmmGOjzQF.GFGRGefuWbN41V4s8Dtpa8Nfo34H7v79MWoKq','Us_5'),('Ac_6','Default','safhsa','$2y$10$IuloVjKUxR1qKcxbb3//4uf1.l.DUhMwZncsZnprS/Qv3ZvYKjmCW','Us_6');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `idCart` varchar(45) NOT NULL,
  `idAccount` varchar(45) NOT NULL,
  PRIMARY KEY (`idCart`),
  KEY `FKCart_idAccount_idx` (`idAccount`),
  CONSTRAINT `FKCart_idAccount` FOREIGN KEY (`idAccount`) REFERENCES `account` (`idAccount`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('Cart_0','Ac_1'),('Cart_1','Ac_2'),('Cart_2','Ac_4'),('Cart_3','Ac_5'),('Cart_4','Ac_6');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartdetail`
--

DROP TABLE IF EXISTS `cartdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartdetail` (
  `idCart` varchar(45) NOT NULL,
  `idProduct` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`idCart`,`idProduct`),
  KEY `FKCartDetail_idProduct_idx` (`idProduct`),
  CONSTRAINT `FKCartDetail_idCart` FOREIGN KEY (`idCart`) REFERENCES `cart` (`idCart`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKCartDetail_idProduct` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartdetail`
--

LOCK TABLES `cartdetail` WRITE;
/*!40000 ALTER TABLE `cartdetail` DISABLE KEYS */;
INSERT INTO `cartdetail` VALUES ('Cart_4','SP02',1);
/*!40000 ALTER TABLE `cartdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout` (
  `idCheckout` varchar(45) NOT NULL,
  `recipientName` varchar(45) NOT NULL,
  `recipientPhoneNumber` varchar(45) NOT NULL,
  `recipientEmail` varchar(45) DEFAULT NULL,
  `recipientAddress` varchar(45) NOT NULL,
  `idAccount` varchar(45) NOT NULL,
  PRIMARY KEY (`idCheckout`),
  KEY `FK_ACCOUNT_idx` (`idAccount`),
  CONSTRAINT `FKCheckout_idAcoount` FOREIGN KEY (`idAccount`) REFERENCES `account` (`idAccount`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES ('Cko_01','Nguyễn Văn Dũng','0935774353','','72 Phan Tứ, Thành Phố Đà Nẵng','Ac_1'),('Cko_02','Mai Quốc Huy','035441753',NULL,'127 Núi Thành, Thành phố Đà Nẵng','Ac_2'),('Cko_03','Mai Quốc Huy','0521321654','nguyenvandung.18100@gmail.com','72 Trường Chinh,Đà Nẵng,Việt Nam','Ac_2'),('Cko_04','Mai Quốc Huy','0521321654','nguyenvandung.18100@gmail.com','72 Trường Chinh,Đà Nẵng,Việt Nam','Ac_2'),('Cko_05','Mai Quốc Huy','0521321654','nguyenvandung.18100@gmail.com','72 Trường Chinh,Đà Nẵng,Việt Nam','Ac_2'),('Cko_06','Mai Quốc Huy','235345345','nguyenvandung.18100@gmail.com','72 Trường Chinh,Đà Nẵng,Việt Nam','Ac_2'),('Cko_07','Mai Quốc Huy','23435432','nguyenvandung.18100@gmail.com','72 Trường Chinh,Đà Nẵng,Việt Nam','Ac_2'),('Cko_08','Nguyễn Văn Dũng','01401','nvandung296@gmail.com','asdasd,dsfsdf,fsdfsd','Ac_1'),('Cko_09','Nguyễn Văn Dũng','052156231','nvandung296@gmail.com','asdasddsfsdf,dsfsdf,fsdfsd','Ac_1'),('Cko_10','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_11','Nguyễn Văn Dũng','0521321654','nvandung296@gmail.com','72 Trường Chinh,Đà Nẵng,Việt Nam','Ac_1'),('Cko_12','Nguyễn Văn Dũng','0935463745','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_13','Nguyễn Văn Dũng','0935463745','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_14','Nguyễn Văn Dũng','0935463745','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_15','Nguyễn Văn Dũng','23435432','nvandung296@gmail.com','72 Trường Chinh,Đà Nẵng,Việt Nam','Ac_1'),('Cko_16','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_17','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_18','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','56 Phan Tu,Đà Nẵng,Việt Nam','Ac_1'),('Cko_19','Mai Quốc Huy','0936441252','nguyenvandung.18100@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_2'),('Cko_20','Mai Quốc Huy','0936441252','nguyenvandung.18100@gmail.com','asdasd,Đà Nẵng,Việt Nam','Ac_2'),('Cko_21','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','asdasddsfsdf,Đà Nẵng,Việt Nam','Ac_1'),('Cko_22','Nguyễn Huỳnh Hùng','0936441252','dungnv.21it@vku.udn.vn','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_4'),('Cko_23','Nguyễn Huỳnh Hùng','0936441252','dungnv.21it@vku.udn.vn','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_4'),('Cko_24','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_25','Nguyễn Văn Dũng','0935 463 745','nvandung296@gmail.com','56 Phan Tu,Đà Nẵng,Việt Nam','Ac_1'),('Cko_26','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_27','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_28','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_29','Mai Quốc Huy','0545642132','nguyenvandung.18100@gmail.com','fsdfasfdasdf,Đà Nẵng,Việt Nam','Ac_2'),('Cko_30','Mai Quốc Huy','0936441252s','nguyenvandung.18100@gmail.com','asdasd,Đà Nẵng,Việt Nam','Ac_2'),('Cko_31','Mai Quốc Huy','0545642132','nguyenvandung.18100@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_2'),('Cko_32','Mai Quốc Huy','0936441252','nguyenvandung.18100@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_2'),('Cko_33','Mai Quốc Huy','0936441252','nguyenvandung.18100@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_2'),('Cko_34','Mai Quốc Huy','0936441252','nguyenvandung.18100@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_2'),('Cko_35','Mai Quốc Huy','0936441252','nguyenvandung.18100@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_2'),('Cko_36','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_37','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_38','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_39','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_40','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_41','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_42','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_43','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_44','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','fsdfasfdasdf,Đà Nẵng,Việt Nam','Ac_1'),('Cko_45','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_46','Nguyễn Văn Dũng','0045654','nvandung296@gmail.com','fsdfsdf,Đà Nẵng,Việt Nam','Ac_1'),('Cko_47','Nguyễn Văn Dũng','102156','nvandung296@gmail.com','72 Nguyễn Trãi,fsda,sdfs','Ac_1'),('Cko_48','Nguyễn Văn Dũng','.02313','nvandung296@gmail.com','72 Nguyễn Trãi,asdf,sdf','Ac_1'),('Cko_49','Nguyễn Văn Dũng','012156','nvandung296@gmail.com','72 Nguyễn Trãi,efgdf,df','Ac_1'),('Cko_50','Nguyễn Văn Dũng','0561231','nvandung296@gmail.com','72 Nguyễn Trãi,dfdf,fdsaf','Ac_1'),('Cko_51','Nguyễn Văn Dũng','00564','nvandung296@gmail.com','afdsf,fd,sdf,df','Ac_1'),('Cko_52','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_53','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1'),('Cko_54','Nguyễn Văn Dũng','0936441252','nvandung296@gmail.com','72 Nguyễn Trãi,Đà Nẵng,Việt Nam','Ac_1');
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentproduct`
--

DROP TABLE IF EXISTS `commentproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentproduct` (
  `idCommentProduct` varchar(45) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `dateComment` datetime NOT NULL,
  `idAccount` varchar(45) NOT NULL,
  PRIMARY KEY (`idCommentProduct`),
  KEY `FKComment_idAccount_idx` (`idAccount`),
  CONSTRAINT `FKComment_idAccount` FOREIGN KEY (`idAccount`) REFERENCES `account` (`idAccount`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentproduct`
--

LOCK TABLES `commentproduct` WRITE;
/*!40000 ALTER TABLE `commentproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dailyrevenue`
--

DROP TABLE IF EXISTS `dailyrevenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dailyrevenue` (
  `idDRevenue` int NOT NULL AUTO_INCREMENT,
  `releaseDate` date NOT NULL,
  `revenue` double NOT NULL DEFAULT '0',
  `quantity` int DEFAULT '0',
  PRIMARY KEY (`idDRevenue`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dailyrevenue`
--

LOCK TABLES `dailyrevenue` WRITE;
/*!40000 ALTER TABLE `dailyrevenue` DISABLE KEYS */;
INSERT INTO `dailyrevenue` VALUES (1,'2022-06-24',75000000,14),(2,'2022-06-25',223000000,15),(3,'2022-06-26',156000000,16),(4,'2022-06-27',89000000,17),(5,'2022-06-28',654000000,18),(6,'2022-06-29',105000000,19),(7,'2022-06-30',19000000,20),(8,'2022-07-01',248000000,21),(9,'2022-11-05',248000000,23),(10,'2022-11-06',105000000,15),(11,'2022-11-07',190000000,10),(12,'2022-11-08',47475000,1),(13,'2022-11-09',27400000,2),(14,'2022-11-10',0,0),(15,'2022-11-11',27400000,2),(16,'2022-11-12',316596000,1),(17,'2022-11-13',1042880000,1),(18,'2022-11-14',7980000,1),(19,'2022-11-15',491523350,2),(20,'2022-11-16',14525500,1),(21,'2022-11-18',198710000,2),(22,'2022-11-19',0,0),(23,'2022-11-21',135720000,1),(24,'2022-11-22',0,0),(25,'2022-11-23',15290000,1),(26,'2022-12-03',284050000,1),(27,'2022-12-14',342620000,2),(28,'2022-12-15',505733000,1),(29,'2022-12-19',0,0),(30,'2022-12-20',193251250,3),(31,'2022-12-21',47483500,2),(32,'2022-12-22',314737100,5),(33,'2022-12-23',16228100,1),(34,'2023-04-09',0,0);
/*!40000 ALTER TABLE `dailyrevenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_09_02_163555_create_product_table',1),(6,'2022_09_02_165543_create_product_table',2),(7,'2022_09_25_195129_create_revenue_table',3),(8,'2022_09_25_200103_create__revenue_test_table',4),(9,'2022_09_25_200348_create__revenue_test_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthlyrevenue`
--

DROP TABLE IF EXISTS `monthlyrevenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthlyrevenue` (
  `idMRevenue` int NOT NULL AUTO_INCREMENT,
  `releaseDate` date NOT NULL,
  `revenue` double NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  PRIMARY KEY (`idMRevenue`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthlyrevenue`
--

LOCK TABLES `monthlyrevenue` WRITE;
/*!40000 ALTER TABLE `monthlyrevenue` DISABLE KEYS */;
INSERT INTO `monthlyrevenue` VALUES (1,'2022-11-06',2620499850,57,10),(5,'2022-12-21',1704102950,15,26),(7,'2023-04-09',0,0,34);
/*!40000 ALTER TABLE `monthlyrevenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idOrder` varchar(45) NOT NULL,
  `status` text NOT NULL,
  `deliveryTime` text,
  `orderNotes` text,
  `deliveryCharges` double DEFAULT NULL,
  `productMoney` double DEFAULT NULL,
  `idAccount` varchar(45) NOT NULL,
  `idPayment` varchar(45) NOT NULL,
  `idPromoCode` varchar(45) DEFAULT NULL,
  `totalMoney` double DEFAULT NULL,
  `idCheckout` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `FKOrder_idAccount_idx` (`idAccount`),
  KEY `FKOrder_idPayment_idx` (`idPayment`),
  KEY `FKOrder_idPromoCode_idx` (`idPromoCode`),
  KEY `FKCheckout_idCheckout_idx` (`idCheckout`),
  CONSTRAINT `FKOrder_idAccount` FOREIGN KEY (`idAccount`) REFERENCES `account` (`idAccount`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKOrder_idCheckout` FOREIGN KEY (`idCheckout`) REFERENCES `checkout` (`idCheckout`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKOrder_idPayment` FOREIGN KEY (`idPayment`) REFERENCES `payment` (`idPayment`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKOrder_idPromoCode` FOREIGN KEY (`idPromoCode`) REFERENCES `promocode` (`idPromoCode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('ord_01','{\"1\":[\"2022\\/11\\/02\",\"09:04:21am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/02\",\"10:03:08am\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/02\",\"10:06:03am\",\"Delivering\"],\"4\":[\"2022\\/11\\/02\",\"02:01:39pm\",\"Order deliveried\"]}','2022-06-29 00:00:00','dsfasdf',30000,27400000,'Ac_1','pm_01','prcode_01',27400000,'Cko_01'),('ord_02','{\"1\":[\"2022\\/11\\/02\",\"09:04:21am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/03\",\"08:54:21am\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/03\",\"08:54:25am\",\"Delivering\"],\"4\":[\"2022\\/11\\/03\",\"08:54:29am\",\"Order deliveried\"]}','2022-06-29 13:03:00','fdsafsd',0,47475000,'Ac_2','pm_01','prcode_01',47475000,'Cko_02'),('ord_03','{\"1\":[\"2022\\/11\\/03\",\"09:04:21am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/07\",\"04:24:12pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/07\",\"04:34:08pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/07\",\"04:34:35pm\",\"Order deliveried\"]}',NULL,'sdgagf',0,27400000,'Ac_1','pm_01','prcode_01',27400000,'Cko_03'),('ord_04','{\"1\":[\"2022\\/11\\/02\",\"09:04:21am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/08\",\"03:35:48pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/08\",\"03:36:02pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/08\",\"03:36:13pm\",\"Order deliveried\"]}','','fdsafsd',0,47475000,'Ac_2','pm_01','prcode_01',47475000,'Cko_04'),('ord_05','{\"1\":[\"2022\\/11\\/02\",\"09:04:21am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/09\",\"10:39:34pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/09\",\"10:39:38pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/09\",\"10:40:00pm\",\"Order deliveried\"]}','','fdsafsd',0,27400000,'Ac_2','pm_01','prcode_01',27400000,'Cko_05'),('ord_06','{\"1\":[\"2022\\/11\\/02\",\"09:04:21am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/09\",\"10:39:34pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/11\",\"05:32:25pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/11\",\"06:21:49pm\",\"Order deliveried\"]}','','fdsafsd',0,27400000,'Ac_2','pm_01','prcode_01',27400000,'Cko_06'),('ord_07','{\"1\":[\"2022\\/11\\/02\",\"09:04:21am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/12\",\"11:30:11am\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/12\",\"11:30:29am\",\"Delivering\"],\"4\":[\"2022\\/11\\/12\",\"11:30:49am\",\"Order deliveried\"]}','','fdsafsd',0,27400000,'Ac_2','pm_01','prcode_01',27400000,'Cko_07'),('ord_08','{\"1\":[\"2022\\/11\\/12\",\"05:51:35pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/12\",\"05:55:20pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/12\",\"05:59:23pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/12\",\"06:00:02pm\",\"Order deliveried\"]}','2022-11-12 05:51:35pm','dfdfdfdfd',0,214700000,'Ac_2','pm_01','prcode_01',214700000,'Cko_08'),('ord_09','{\"1\":[\"2022\\/11\\/12\",\"06:04:10pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/12\",\"06:06:09pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/12\",\"06:06:12pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/12\",\"06:06:15pm\",\"Order deliveried\"]}','2022-11-12 06:04:10pm','fdssdfd',0,47475000,'Ac_2','pm_01','prcode_01',47475000,'Cko_09'),('ord_10','{\"1\":[\"2022\\/11\\/12\",\"06:14:27pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/12\",\"06:14:50pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/12\",\"06:14:59pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/12\",\"06:22:00pm\",\"Order deliveried\"]}','2022-11-12 06:14:27pm','',0,12793000,'Ac_2','pm_01','prcode_01',12793000,'Cko_10'),('ord_11','{\"1\":[\"2022\\/11\\/12\",\"10:41:05pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/12\",\"10:41:58pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/12\",\"11:15:47pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/12\",\"11:23:59pm\",\"Order deliveried\"]}','2022-11-12 10:41:05pm','',0,12793000,'Ac_1','pm_01','prcode_01',12793000,'Cko_11'),('ord_12','{\"1\":[\"2022\\/11\\/13\",\"08:37:04am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/13\",\"08:37:35am\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/13\",\"08:37:54am\",\"Delivering\"],\"4\":[\"2022\\/11\\/13\",\"08:44:31am\",\"Order deliveried\"]}','2022-11-13 08:37:04am','fdsfa',0,15360000,'Ac_1','pm_01','prcode_01',15360000,'Cko_12'),('ord_13','{\"1\":[\"2022\\/11\\/13\",\"09:03:25am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/13\",\"09:03:47am\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/13\",\"09:04:16am\",\"Delivering\"],\"4\":[\"2022\\/11\\/13\",\"09:04:41am\",\"Order deliveried\"]}','2022-11-13 09:03:25am','',0,1027520000,'Ac_1','pm_01','prcode_01',1027520000,'Cko_13'),('ord_14','{\"1\":[\"2022\\/11\\/14\",\"08:13:39am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/14\",\"08:14:13am\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/14\",\"08:14:38am\",\"Delivering\"],\"4\":[\"2022\\/11\\/14\",\"08:15:00am\",\"Order deliveried\"]}','2022-11-14 08:13:39am','',0,11400000,'Ac_1','pm_01','pm_02',7980000,'Cko_14'),('ord_15','{\"1\":[\"2022\\/11\\/15\",\"05:43:30pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/15\",\"05:44:04pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/15\",\"05:44:17pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/15\",\"05:44:19pm\",\"Order deliveried\"]}','2022-11-15 05:43:30pm','Ship tầm giờ trưa hoặc tối, tránh giờ hành chính',0,505733000,'Ac_1','pm_01','pm_03',480446350,'Cko_15'),('ord_16','{\"1\":[\"2022\\/11\\/15\",\"08:42:48pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/15\",\"09:29:29pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/15\",\"09:29:31pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/15\",\"09:29:33pm\",\"Order deliveried\"]}','2022-11-15 08:42:48pm','',0,11077000,'Ac_1','pm_01','prcode_01',11077000,'Cko_15'),('ord_17','{\"1\":[\"2022\\/11\\/15\",\"09:41:50pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/18\",\"11:47:49pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/18\",\"11:47:51pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/18\",\"11:47:53pm\",\"Order deliveried\"]}','2022-11-15 09:41:50pm','',0,6830000,'Ac_1','pm_01','prcode_01',6830000,'Cko_16'),('ord_18','{\"1\":[\"2022\\/11\\/16\",\"07:41:08am\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/16\",\"07:41:53am\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/16\",\"07:42:06am\",\"Delivering\"],\"4\":[\"2022\\/11\\/16\",\"07:42:53am\",\"Order deliveried\"]}','2022-11-16 07:41:08am','',0,15290000,'Ac_1','pm_01','pm_03',14525500,'Cko_17'),('ord_19','{\"1\":[\"2022\\/11\\/18\",\"11:47:25pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/18\",\"11:47:56pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/18\",\"11:47:59pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/18\",\"11:48:00pm\",\"Order deliveried\"]}','2022-11-18 11:47:25pm','Ship tầm giờ trưa hoặc tối, tránh giờ hành chính',0,191880000,'Ac_1','pm_01','prcode_01',191880000,'Cko_18'),('ord_20','{\"1\":[\"2022\\/11\\/21\",\"10:33:59pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/21\",\"10:34:21pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/21\",\"10:34:24pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/21\",\"10:34:26pm\",\"Order deliveried\"]}','2022-11-21 10:33:59pm','',0,135720000,'Ac_2','pm_01','prcode_01',135720000,'Cko_19'),('ord_21','{\"1\":[\"2022\\/11\\/23\",\"08:46:39pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/11\\/23\",\"08:56:17pm\",\"Order confirmed\"],\"3\":[\"2022\\/11\\/23\",\"08:56:21pm\",\"Delivering\"],\"4\":[\"2022\\/11\\/23\",\"08:56:24pm\",\"Order deliveried\"]}','2022-11-23 08:46:39pm','fdsfa',0,15290000,'Ac_2','pm_01','prcode_01',15290000,'Cko_20'),('ord_22','{\"1\":[\"2022\\/12\\/03\",\"09:05:38pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/03\",\"09:06:12pm\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/03\",\"09:06:15pm\",\"Delivering\"],\"4\":[\"2022\\/12\\/03\",\"09:06:17pm\",\"Order deliveried\"]}','2022-12-03 09:05:38pm','',0,284050000,'Ac_1','pm_01','prcode_01',284050000,'Cko_21'),('ord_23','{\"1\":[\"2022\\/12\\/14\",\"08:16:28pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/14\",\"08:16:57pm\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/14\",\"08:16:59pm\",\"Delivering\"],\"4\":[\"2022\\/12\\/14\",\"08:17:02pm\",\"Order deliveried\"]}','2022-12-14 08:16:28pm','',0,335790000,'Ac_4','pm_01','prcode_01',335790000,'Cko_22'),('ord_24','{\"1\":[\"2022\\/12\\/14\",\"10:02:19pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/14\",\"10:02:38pm\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/14\",\"10:02:53pm\",\"Delivering\"],\"4\":[\"2022\\/12\\/14\",\"10:02:55pm\",\"Order deliveried\"]}','2022-12-14 10:02:19pm','',0,6830000,'Ac_4','pm_01','prcode_01',6830000,'Cko_23'),('ord_25','{\"1\":[\"2022\\/12\\/15\",\"07:11:29pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/15\",\"07:12:43pm\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/15\",\"07:13:11pm\",\"Delivering\"],\"4\":[\"2022\\/12\\/15\",\"07:13:14pm\",\"Order deliveried\"]}','2022-12-15 07:11:29pm','',0,505733000,'Ac_1','pm_01','prcode_01',505733000,'Cko_24'),('ord_26','{\"1\":[\"2022\\/12\\/20\",\"08:35:30am\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/20\",\"08:36:47am\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/20\",\"08:37:23am\",\"Delivering\"],\"4\":[\"2022\\/12\\/20\",\"08:37:27am\",\"Order deliveried\"]}','2022-12-20 08:35:30am','',0,47475000,'Ac_1','pm_01','pm_03',45101250,'Cko_25'),('ord_27','{\"1\":[\"2022\\/12\\/20\",\"10:17:34pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/20\",\"10:22:46pm\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/20\",\"10:22:49pm\",\"Delivering\"],\"4\":[\"2022\\/12\\/20\",\"10:22:51pm\",\"Order deliveried\"]}','2022-12-20 10:17:34pm','',0,14770000,'Ac_1','pm_02','prcode_01',14770000,'Cko_27'),('ord_28','{\"1\":[\"2022\\/12\\/20\",\"11:55:43pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/20\",\"11:56:34pm\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/20\",\"11:57:10pm\",\"Delivering\"],\"4\":[\"2022\\/12\\/20\",\"11:57:12pm\",\"Order deliveried\"]}','2022-12-20 11:55:43pm','',0,133380000,'Ac_1','pm_01','prcode_01',133380000,'Cko_28'),('ord_29','{\"1\":[\"2022\\/12\\/21\",\"10:46:42am\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/21\",\"10:47:47am\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/21\",\"10:47:51am\",\"Delivering\"],\"4\":[\"2022\\/12\\/21\",\"10:47:53am\",\"Order deliveried\"]}','2022-12-21 10:46:42am','sdfsdf',0,16730000,'Ac_2','pm_02','pm_03',15893500,'Cko_30'),('ord_30','{\"1\":[\"2022\\/12\\/21\",\"11:25:48am\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/21\",\"11:26:54am\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/21\",\"11:26:56am\",\"Delivering\"],\"4\":[\"2022\\/12\\/21\",\"11:26:59am\",\"Order deliveried\"]}','2022-12-21 11:25:48am','',0,31590000,'Ac_2','pm_02','prcode_01',31590000,'Cko_31'),('ord_31','{\"1\":[\"2022\\/12\\/22\",\"07:46:35am\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/22\",\"07:46:44am\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/22\",\"07:46:46am\",\"Delivering\"],\"4\":[\"2022\\/12\\/22\",\"07:46:48am\",\"Order deliveried\"]}','2022-12-22 07:46:35am','',0,191880000,'Ac_1','pm_01','prcode_01',191880000,'Cko_37'),('ord_32','{\"1\":[\"2022\\/12\\/22\",\"07:59:08am\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/22\",\"08:01:17am\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/22\",\"08:01:19am\",\"Delivering\"],\"4\":[\"2022\\/12\\/22\",\"08:01:21am\",\"Order deliveried\"]}','2022-12-22 07:59:08am','',0,47475000,'Ac_1','pm_02','prcode_01',47475000,'Cko_42'),('ord_34','{\"1\":[\"2022\\/12\\/22\",\"10:39:56am\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/22\",\"10:41:42am\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/22\",\"10:41:44am\",\"Delivering\"],\"4\":[\"2022\\/12\\/22\",\"10:42:07am\",\"Order deliveried\"]}','2022-12-22 10:39:56am','',0,16280000,'Ac_1','pm_01','prcode_01',16280000,'Cko_46'),('ord_35','{\"1\":[\"2022\\/12\\/22\",\"01:51:50pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/22\",\"01:53:36pm\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/22\",\"01:53:59pm\",\"Delivering\"],\"4\":[\"2022\\/12\\/22\",\"01:54:02pm\",\"Order deliveried\"]}','2022-12-22 01:51:50pm','',0,15290000,'Ac_1','pm_02','chris12',14831300,'Cko_52'),('ord_36','{\"1\":[\"2022\\/12\\/22\",\"06:41:58pm\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/22\",\"06:44:02pm\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/22\",\"06:44:10pm\",\"Delivering\"],\"4\":[\"2022\\/12\\/22\",\"06:44:59pm\",\"Order deliveried\"]}','2022-12-22 06:41:58pm','Ship tầm giờ trưa hoặc tối, tránh giờ hành chính',0,45640000,'Ac_1','pm_02','chris12',44270800,'Cko_53'),('ord_37','{\"1\":[\"2022\\/12\\/23\",\"08:40:45am\",\"Wait for confirmation\"],\"2\":[\"2022\\/12\\/23\",\"08:46:43am\",\"Order confirmed\"],\"3\":[\"2022\\/12\\/23\",\"08:47:12am\",\"Delivering\"],\"4\":[\"2022\\/12\\/23\",\"08:47:15am\",\"Order deliveried\"]}','2022-12-23 08:40:45am','',0,16730000,'Ac_1','pm_02','chris12',16228100,'Cko_54');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `idOrder` varchar(45) NOT NULL,
  `idProduct` varchar(45) NOT NULL,
  `orderDate` datetime DEFAULT NULL,
  `quantity` int NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`idOrder`,`idProduct`),
  KEY `FKOrderDetail_idProduct_idx` (`idProduct`),
  CONSTRAINT `FKOrderDetail_idOrder` FOREIGN KEY (`idOrder`) REFERENCES `order` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKOrderDetail_idProduct` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES ('ord_01','SP01',NULL,1,0),('ord_01','SP02',NULL,1,0),('ord_02','SP05',NULL,1,0),('ord_03','SP01',NULL,1,0),('ord_03','SP02',NULL,1,0),('ord_04','SP05',NULL,1,0),('ord_05','SP01',NULL,1,0),('ord_05','SP02',NULL,1,0),('ord_06','SP01',NULL,1,0),('ord_06','SP02',NULL,1,0),('ord_07','SP01',NULL,1,0),('ord_07','SP02',NULL,1,0),('ord_08','SP08',NULL,1,0),('ord_08','SP32',NULL,1,0),('ord_09','SP05',NULL,1,0),('ord_10','SP06',NULL,1,0),('ord_11','SP06',NULL,1,0),('ord_12','SP18',NULL,1,0),('ord_13','SP28',NULL,1,0),('ord_14','SP17',NULL,2,0),('ord_15','SP26',NULL,1,505733000),('ord_16','SP03',NULL,1,11077000),('ord_17','SP14',NULL,1,6830000),('ord_18','SP04',NULL,1,15290000),('ord_19','SP08',NULL,1,191880000),('ord_20','SP12',NULL,1,135720000),('ord_21','SP04',NULL,1,15290000),('ord_22','SP29',NULL,1,284050000),('ord_23','SP07',NULL,1,335790000),('ord_24','SP14',NULL,1,6830000),('ord_25','SP26',NULL,1,505733000),('ord_26','SP05',NULL,1,47475000),('ord_27','SP02',NULL,1,14770000),('ord_28','SP09',NULL,1,133380000),('ord_29','SP15',NULL,1,16730000),('ord_30','SP33',NULL,1,31590000),('ord_31','SP08',NULL,1,191880000),('ord_32','SP05',NULL,1,47475000),('ord_34','SP13',NULL,1,16280000),('ord_35','SP04',NULL,1,15290000),('ord_36','SP32',NULL,2,45640000),('ord_37','SP15',NULL,1,16730000);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `idPayment` varchar(45) NOT NULL,
  `namePayment` varchar(45) DEFAULT NULL,
  `totalPayment` double DEFAULT '0',
  PRIMARY KEY (`idPayment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('pm_01','Payment on delivery',3967233100),('pm_02','momo',947130200);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idProduct` varchar(45) NOT NULL,
  `nameProduct` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `detailsImg` text,
  `price` double NOT NULL,
  `description` text,
  `quantity` int NOT NULL,
  `type` varchar(45) NOT NULL,
  `sale` float DEFAULT '0',
  `quantitySold` int DEFAULT '0',
  `idTrademark` varchar(45) NOT NULL,
  PRIMARY KEY (`idProduct`),
  UNIQUE KEY `nameProduct_UNIQUE` (`nameProduct`),
  KEY `FKProduct_idTrademark_idx` (`idTrademark`),
  CONSTRAINT `FKProduct_idTrademark` FOREIGN KEY (`idTrademark`) REFERENCES `trademark` (`idTrademark`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('SP01','88 RUE DU RHONE SWISS QUARTZ WATCH 42MM','88RUE_DU_RHONE/SP01.jpg','{\"nameImgDetail1\":\"88rue_du_rhone/details/SP01_dt1.jpg\",\"nameImgDetail2\":\"88rue_du_rhone/details/SP01_dt2.jpg\"}',12630000,'88 Rue Du Rhone Double 8 Origin 42mm 87WA120037 is a functional and handsome Gents watch . Case is made out of Stainless Steel while the dial colour is Black. The features of the watch include (among others) a date function. 50 metres water resistancy will protect the watch and allows it to be submerged in water for periods, so can be used for swimming and fishing. It is not reccomended for high impact water sports',10,'male',0,0,'tm0'),('SP02','88 RUE DU RHONE MEN\'S SWISS CHRONO WATCH 42MM','88RUE_DU_RHONE/SP02.jpg','{\"nameImgDetail1\":\"88rue_du_rhone/details/88-rue-du-rhone-men-s-swiss-chrono-watch-42mm4.jpg\",\"nameImgDetail2\":\"88rue_du_rhone/details/SP01_dt2.jpg\"}',14770000,'A dazzling stainless steel case and bracelet set off the striking blue dial in this unique 88 RUE DU RHONE timepiece. Chronograph dials, silver numerals and the bright red\"8\" seconds hand add additional drama to this sumptuous and elegant watch.',10,'male',0,0,'tm0'),('SP03','88 RUE DU RHONE MEN\'S SWISS SILVER STAINLESS STEEL 42MM','88RUE_DU_RHONE/SP03.jpg','{\"nameImgDetail1\":\"88rue_du_rhone/details/88-rue-du-rhone-men-s-swiss-chrono-watch-42mm4.jpg\",\"nameImgDetail2\":\"88rue_du_rhone/details/SP01_dt2.jpg\"}',11077000,'This handsome stainless steel timepiece from 88 RUE DU RHONE has impeccable finish and modern sophistication. A dazzling stainless steel case surrounds the rich black dial with 8-filigree motif and dashing silver indexes. The signature silver \"8\" seconds hand adds an elegant and whimsical touch to this splendid watch.',10,'male',0,0,'tm0'),('SP04','88 RUE DU RHONE DOUBLE 8 ORIGIN DIAMOND WATCH 35MM','88RUE_DU_RHONE/SP04.jpg','{\"nameImgDetail1\":\"88rue_du_rhone/details/SP01_dt2.jpg\",\"nameImgDetail2\":\"88rue_du_rhone/details/SP01_dt2\"}',15290000,'Refined oval case and mother of pearl dial with a red sapphire: this bold 35mm ladies timepiece shows 88 RUE DU RHONE’s know-how and attention to the smallest details. The red leather strap is a dynamic and bold feature that celebrates individualism and creative spirit - the secret of Swiss craftsmanship.',10,'female',0,0,'tm0'),('SP05','88 RUE DU RHONE SWISS QUARTZ RED WATCH 35MM','88RUE_DU_RHONE/SP05.jpg','{\"nameImgDetail1\":\"88rue_du_rhone/details/SP01_dt2.jpg\",\"nameImgDetail2\":\"88rue_du_rhone/details/SP01_dt2\"}',47475000,'A rose gold PVD bezel encrusted in 88 lustrous diamonds makes this 35mm stunner a timepiece for the elegantly stylish woman. This chic 88 RUE DU RHONE chronograph captures the energy and spirit of iconic Hollywood starlets. The sleek yet vibrant rose gold and crimson accents are set against a shimmering mother of pearl dial, accentuated by a crimson leather strap. A dark pink sapphire and date window are found at 4 o’clock, along with colorful second hand and chronometer hands. A bold “8” on the dial of this watch, the symbol of infinite fortune and luck, further emphasizes the timeless appeal of Hollywood’s most glamorous leading ladies.',10,'female',10,0,'tm0'),('SP06','88 RUE DU RHONE WOMEN\'S SWISS ROMAN LEATHER ALLIGATOR 35MM','88RUE_DU_RHONE/SP06.jpg','{\"nameImgDetail1\":\"88rue_du_rhone/details/88-rue-du-rhone-women-s-swiss-roman-leather-alligator-35mm.jpg\",\"nameImgDetail2\":\"88rue_du_rhone/details/SP01_dt2.jpg\"}',12793000,'The epitome of timeless elegance, this 88 RUE DU RHONE Double 8 Origin Quartz watch with a stainless steel case and vibrant rose gold Roman numerals is a contemporary take on a popular classic. The stainless steel case with a vibrant white mother-of-pearl face is the perfect palette for the chic rose gold accents which are enhanced by the polished black leather strap with alligator padding.',10,'female',12,0,'tm0'),('SP07','BAUME & MERCIER CLIFTON 10060 WATCH 42','Baume_Mercier/SP07.jpg','{\"nameImgDetail1\":\"baume_mercier/details/baume-and-mercier-clifton-mens-watch-42mm1.png\",\"nameImgDetail2\":\"baume_mercier/details/baume-mercier-hop.jpg\"}',335790000,'Movement Designation: Manual, La Joux-Perret 7381, Finish: Circular-grained finished plate. Bridges personnalized with\"Côtes de Genève\" decor., Power Reserve: 90 hour, Frequency: 3 Hz / 21600 Vph, Number Of Rubies: 21',10,'male',0,0,'tm1'),('SP08','BAUME & MERCIER CAPELAND 10106 BLUE WATCH 44','Baume_Mercier/SP08.jpg','{\"nameImgDetail1\":\"baume_mercier/details/baume-and-mercier-capeland-blue-mens-watch-44mm1.png\",\"nameImgDetail2\":\"baume_mercier/details/baume-mercier-hop.jpg\"}',191880000,'Movement Designation: Automatic, Group manufacture movement, Finish: Circular-grained finished plate and bridges. Open worked oscillating weight adorned with \"Côtes de, Genève\", snailed decor and PHI symbol., Power Reserve: 42 hour, Frequency: 4 Hz / 28800 Vph, Number Of Rubies: 35',10,'male',0,0,'tm1'),('SP09','BAUME & MERCIER CLASSIMA 10077 AUTOMATIC WATCH 33','Baume_Mercier/SP09.jpg','{\"nameImgDetail1\":\"baume_mercier/details/baume--mercier-classima-automatic-watch-33mm.png\",\"nameImgDetail2\":\"baume_mercier/details/baume-mercier-hop.jpg\"}',133380000,'Movement Designation: Automatic, Power Reserve: 42 hour, Frequency: 4 Hz / 28800 Vph, Number Of Rubies: 21',10,'male',0,0,'tm1'),('SP10','BAUME & MERCIER HAMPTON 10108 WATCH 34.5 X 22','Baume_Mercier/SP10.jpg','{\"nameImgDetail1\":\"baume_mercier/details/baume-et-mercier-hampton-watch-34-5-x-22mm1.png\",\"nameImgDetail2\":\"baume_mercier/details/baume-mercier-hop.jpg\"}',92430000,'A two-tone and rectangular watch for women, the Hampton 10108 comes with a quartz movement featuring date function and is delivered on a steel bracelet.',10,'female',0,0,'tm1'),('SP11','BAUME & MERCIER CLASSIMA 10478 WATCH 31MM','Baume_Mercier/SP11.jpg','{\"nameImgDetail1\":\"baume_mercier\\/details\\/baume-mercier-hop.jpg\",\"nameImgDetail2\":\"baume_mercier\\/details\\/\"}',73710000,'A sparkling diamond quartz watch with a polished stainless steel bracelet and mother-of-pearl dial, the Classima Lady 10478 is a stunning timepiece. It comes with a stainless steel watch case and 48 brilliant cut diamonds.',10,'female',0,0,'tm1'),('SP12','BAUME & MERCIER 10114 DIAMOND WATCH 27','Baume_Mercier/SP12.jpg','{\"nameImgDetail1\":\"baume_mercier/details/baume-and-mercier-diamond--rose-gold-watch-27mm1.png\",\"nameImgDetail2\":\"baume_mercier/details/baume-mercier-hop.jpg\"}',135720000,'Movement Designation: Automatic, Power Reserve: 38 hour. Frequency: 4 Hz / 28800 Vph, Number Of Rubies: 25',10,'female',0,0,'tm1'),('SP13','BULOVA CURV CHRONOGRAPH MEN\'S WATCH 43MM','Bulova/SP13.jpg','{\"nameImgDetail1\":\"bulova/details/bulova-curv-chronograph-men-s-watch-43mm18.jpg\",\"nameImgDetail2\":\"bulova/details/buluva.jpg\"}',16280000,'From the new CURV Collection. The world’s first curved chronograph movement features high- performance quartz technology with 262 kHz vibrational frequency for precise accuracy. Five-hand chronograph in rose gold-tone stainless steel case and bezel, dark grey dial, curved sapphire glass, screw-back case, alligator grain dark brown leather strap with 3-piece buckle closure, and water resistance to 30 meters.',10,'male',0,0,'tm10'),('SP14','BULOVA FRANK LLOYD WRIGHT BROWN WATCH 39MM','Bulova/SP14.jpg','{\"nameImgDetail1\":\"bulova\\/details\\/buluva.jpg\",\"nameImgDetail2\":\"bulova\\/details\\/\"}',6830000,'Bulova Frank Lloyd Wright men\'s watch features a 39mm wide yellow gold plated solid stainless steel case with a fixed bezel and textured screw down crown.',10,'male',0,0,'tm10'),('SP15','BULOVA PHANTOM CRYSTAL WATCH 40MM','Bulova/SP15.jpg','{\"nameImgDetail1\":\"bulova/details/bulova-phantom-crystal-men-s-watch-40mm2.jpg\",\"nameImgDetail2\":\"bulova/details/buluva.jpg\"}',16730000,'Dress watch opulently embellished with 582 Swarovski® Crystals on the cushion-shaped stainless steel and rose gold-tone case and bracelet, and round pave set three-hand silver white dial with date feature. Curved mineral crystal, deployant closure, quartz movement, and water resistance to 30 meters.',10,'male',0,0,'tm10'),('SP16','BULOVA CRYSTAL MOTHER OF PEARL WATCH 32MM','Bulova/SP16.jpg','{\"nameImgDetail1\":\"bulova/details/buluva.jpg\",\"nameImgDetail2\":\"bulova/details/\"}',10750000,'Lined with rows of exquisite crystal accents, this women\'s Bulova watch beautifully catches the light from any angle.',10,'female',0,0,'tm10'),('SP17','BULOVA CRYSTAL WOMEN\'S WATCH 25MM','Bulova/SP17.jpg','{\"nameImgDetail1\":\"bulova/details/-bulova-women-s-crystal-bracelet-watch-25mm.jpg\",\"nameImgDetail2\":\"bulova/details/buluva.jpg\"}',5700000,'Due to a recent redesign by Bulova, recently manufactured Bulova watches, including all watches sold and shipped by Amazon, will not feature the Bulova tuning fork logo on the watch face.',10,'female',0,0,'tm10'),('SP18','BULOVA PHANTOM WOMEN\'S WATCH 32.5MM','Bulova/SP18.jpg','{\"nameImgDetail1\":\"bulova/details/bulova-phantom-women-s-watch-32-5mm1.jpg\",\"nameImgDetail2\":\"bulova/details/buluva.jpg\"}',15360000,'Bulova\'s outstanding Phantom timepiece is easy to admire with 120 individual Swarovski crystals set to gorgeous rose gold-tone stainless steel.',10,'female',0,0,'tm10'),('SP19','CALVIN KLEIN INFINITE MEN\'S WATCH 42MM','Calvin_Klein/SP19.jpg','{\"nameImgDetail1\":\"calvin_klein/details/calvin-klein-infinite-men-s-watch-42mm-.jpg\",\"nameImgDetail2\":\"calvin_klein/details/calvin-klein-luxury-shopping.jpg\"}',11190000,'Calvin Klein Time K4N23146 is a functional and handsome Gents watch. Material of the case is Stainless Steel while the dial colour is Silver. The features of the watch include (among others) a date function. In regards to the water resistance, the watch has got a resistancy up to 30 metres.',10,'male',0,0,'tm11'),('SP20','CALVIN KLEIN CITY BROWN WATCH 37MM','Calvin_Klein/SP20.jpg','{\"nameImgDetail1\":\"calvin_klein/details/calvin-klein-city-brown-watch-37mm1.jpg\",\"nameImgDetail2\":\"calvin_klein/details/calvin-klein-luxury-shopping.jpg\"}',6350000,'Precise. Sophisticated. Calvin Klein City Extension. A Timeless And Iconic Design For Those That Live A Modern Lifestyle. The Calvin Klein City Features Stamped Horizontal Lines In A Silver, Black Or Blue Dial With A Polished Stainless Steel Circular Case. This Impactful Gent Timepiece, Coupled With A Classic Polished And Brushed Stainless Steel Bracelet And Decorated With Black, Blue Or Grey Silicone-Covered Links For A Silhouette Of Appealing Sobriety, Is Full Of Character And Personality.',10,'male',0,0,'tm11'),('SP21','CALVIN KLEIN EVEN GREEN WATCH 42MM','Calvin_Klein/SP21.jpg','{\"nameImgDetail1\":\"calvin_klein/details/calvin-klein-even-green-watch-42mm1.jpg\",\"nameImgDetail2\":\"calvin_klein/details/calvin-klein-luxury-shopping.jpg\"}',4390000,'Stainless steel case with a green leather strap. Fixed stainless steel bezel. Green dial with luminous green hands and index hour markers. Dial Type: Analog. Luminescent hands.',10,'male',0,0,'tm11'),('SP22','CALVIN KLEIN STEP WHITE WATCH 30MM','Calvin_Klein/SP22.jpg','{\"nameImgDetail1\":\"calvin_klein/details/calvin-klein-class-ladies-watch-32mm5.jpg\",\"nameImgDetail2\":\"calvin_klein/details/calvin-klein-luxury-shopping.jpg\"}',6350000,'Precise. Sophisticated. Calvin Klein City Extension. A Timeless And Iconic Design For Those That Live A Modern Lifestyle. The Calvin Klein City Features Stamped Horizontal Lines In A Silver, Black Or Blue Dial With A Polished Stainless Steel Circular Case. This Impactful Gent Timepiece, Coupled With A Classic Polished And Brushed Stainless Steel Bracelet And Decorated With Black, Blue Or Grey Silicone-Covered Links For A Silhouette Of Appealing Sobriety, Is Full Of Character And Personality.',10,'female',0,0,'tm11'),('SP23','CALVIN KLEIN ROUND WOMEN\'S WATCH 33MM','Calvin_Klein/SP23.jpg','{\"nameImgDetail1\":\"calvin_klein/details/calvin-klein-round-women-s-watch-33mm3.jpg\",\"nameImgDetail2\":\"calvin_klein/details/calvin-klein-luxury-shopping.jpg\"}',6040000,'Stainless steel case with a stainless steel bracelet. Fixed stainless steel bezel. Dark green dial with luminous silver-tone hands and index hour markers. Minute markers around the outer rim. Dial Type: Analog. Luminescent hands and markers. Date display at the 3 o\'clock position.',10,'female',0,0,'tm11'),('SP24','CALVIN KLEIN CLASS LADIES WATCH 32MM','Calvin_Klein/SP24.jpg','{\"nameImgDetail1\":\"calvin_klein/details/calvin-klein-step-white-watch-30mm.jpg\",\"nameImgDetail2\":\"calvin_klein/details/calvin-klein-luxury-shopping.jpg\"}',5810000,'Yellow gold-tone stainless steel case and bracelet. Fixed yellow gold-tone bezel. Silver dial with yellow gold-tone hands. Index markers at the 3, 6, 9 and 12 o\'clock positions.',10,'female',0,0,'tm11'),('SP25','CHANEL MONSIEUR H6597 WATCH 40MM','Chanel/SP25.jpg','{\"nameImgDetail1\":\"chanel/details/chanel-luxury-shopping.jpg\",\"nameImgDetail2\":\"chanel/details/\"}',1612910000,'Dial black \"grand feu\" enamel dial displaying a retrograde minute indication, a jumping hour window and a small second counter',10,'male',0,0,'tm12'),('SP26','CHANEL J12 H4189 UNISEX CERAMIC LEATHER BLACK 33','Chanel/SP26.jpg','{\"nameImgDetail1\":\"chanel/details/chanel-luxury-shopping.jpg\",\"nameImgDetail2\":\"chanel/details/\"}',505733000,'Steel rimmed bezel set with a row of 53 VS Quality Top Wesselton white diamonds (0.96 carats).',10,'male',0,0,'tm12'),('SP27','CHANEL J12 H2428 UNISEX CERAMIC BLACK SAPPHIRE 38','Chanel/SP27.jpg','{\"nameImgDetail1\":\"chanel/details/chanel-luxury-shopping.jpg\",\"nameImgDetail2\":\"chanel/details/\"}',535558000,'The J12 series watches are constructed mostly from high-gloss finished Ceramic which is extremely scratch resistant, keeping the watch looking stylish & new for a long time.',10,'male',0,0,'tm12'),('SP28','CHANEL MADEMOISELLE PRIVÉ H3567 WATCH 37.5','Chanel/SP28.jpg','{\"nameImgDetail1\":\"chanel/details/chanel-luxury-shopping.jpg\",\"nameImgDetail2\":\"chanel/details/\"}',1027520000,'18 carat yellow gold case with a black satin bracelet. Fixed- diamond set bezel. Black lacquered with yellow gold camellias dial with gold-tone hands.',10,'female',0,0,'tm12'),('SP29','CHANEL J12 H6784 EDITION WATCH 33MM','Chanel/SP29.jpg','{\"nameImgDetail1\":\"chanel/details/chanel-luxury-shopping.jpg\",\"nameImgDetail2\":\"chanel/details/\"}',284050000,'Dial black-lacquered dial with tone-on-tone ceramic indicators',10,'female',0,0,'tm12'),('SP30','CHANEL J12 H7555 X-RAY RED EDITION WATCH 38MM','Chanel/SP30.jpg','{\"nameImgDetail1\":\"chanel/details/chanel-luxury-shopping.jpg\",\"nameImgDetail2\":\"chanel/details/\"}',735040000,'Sapphire and white gold, ruby bezel and indicators Ref. H7555 - Limited edition restricted to 12 piece(s)',10,'female',0,0,'tm12'),('SP31','FENDI RUN AWAY FOW617A2YAF0QA1 WATCH 41MM','Fendi/SP31.jpg','{\"nameImgDetail1\":\"fendi/details/fendi-run-away-watch-41mm1.jpg\",\"nameImgDetail2\":\"fendi/details/fendi-box.jpg\"}',19040000,'Polished And Satin-Brushed Stainless Steel Case, Stainless Steel F Insert. Curved Off-Centered Black Sunray Dial, Grey Minute Track And Silver Colored Indexes, Silver Colored Hands. Black Fendi Dolce T. Calfskin Leather Strap, Stainless Steel Pin Buckle.',10,'male',0,0,'tm13'),('SP32','FENDI RUN AWAY FOW780A45UF0GMF WATCH 41MM','Fendi/SP32.jpg','{\"nameImgDetail1\":\"fendi/details/fendi-run-away-fow780a45uf0gmf-watch-41mm1.jpg\",\"nameImgDetail2\":\"fendi/details/versace.png\"}',22820000,'Polished and satin-brushed black colored stainless steel case, grey colored stainless steel F insert. Curved off-centered brown sunray dial with printed FF logo pattern, grey colored indexes, grey colored hands. Black Fendi Dolce T. calfskin leather strap with embossed FF logo, black colored stainless steel pin buckle.',10,'male',0,0,'tm13'),('SP33','FENDI MOMENTO F230011011 CHRONOGRAPH 46MM','Fendi/SP33.jpg','{\"nameImgDetail1\":\"fendi/details/fendi-run-away-fow780a45uf0gmf-watch-41mm1.jpg\",\"nameImgDetail2\":\"fendi/details/fendi-box.jpg\"}',31590000,'Polished And Satin-Brushed Black Colored Stainless Steel Case, Grey Colored Stainless Steel F Insert. Curved Off-Centered Black Sunray Dial, Grey Minute Track And Grey Colored Indexes, Grey Colored Hands. Black Fendi Dolce T. Calfskin Leather Strap With Embossed Ff Logo, Black Colored Stainless Steel Pin Buckle.',10,'male',0,0,'tm13'),('SP34','FENDI CHAMELEON F347621000D1 WATCH 18MM X 31MM','Fendi/SP34.jpg','{\"nameImgDetail1\":\"fendi/details/fendi-box.jpg\",\"nameImgDetail2\":\"fendi/details/\"}',22815000,'Chameleon Collection, Rectangle Shap, Hour, Minute Function, Case Material Black Colored Stainless Steel, Case Diameter 18 x 31',10,'female',0,0,'tm13'),('SP35','FENDI MY WAY DIAMOND F350424011 WATCH 28MM','Fendi/SP35.jpg','{\"nameImgDetail1\":\"fendi/details/fendi-box.jpg\",\"nameImgDetail2\":\"fendi/details/\"}',22230000,'28mm Gold Case, White Dial Quartz 2 Hand Movement, Black Calf Leather Strap, Swiss Made',10,'female',0,0,'tm13'),('SP36','FENDI MOMENTO F223236400D1 DIAMOND WATCH 32MM','Fendi/SP36.jpg','{\"nameImgDetail1\":\"fendi/details/fendi-momento-f223236400d1-silver-diamond-watch-32mm1.jpeg\",\"nameImgDetail2\":\"fendi/details/fendi-box.jpg\"}',35100000,'Bezel Material Fixed, Calendar Date display at the 4 o\'clock position, Case Back Solid, Case Diameter 31.5 x 32 mm, Case Material Stainless Steel',10,'female',0,0,'tm13');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocode`
--

DROP TABLE IF EXISTS `promocode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocode` (
  `idPromoCode` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `discountPercent` float NOT NULL,
  PRIMARY KEY (`idPromoCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocode`
--

LOCK TABLES `promocode` WRITE;
/*!40000 ALTER TABLE `promocode` DISABLE KEYS */;
INSERT INTO `promocode` VALUES ('chris12','discount 3%',3),('pm_02','discount 30%',30),('pm_03','discount 5%',5),('prcode_01','No promotion',0);
/*!40000 ALTER TABLE `promocode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `idReceipt` varchar(45) NOT NULL,
  `releaseDate` datetime NOT NULL,
  `idOrder` varchar(45) NOT NULL,
  PRIMARY KEY (`idReceipt`),
  KEY `FKReceipt_idOrder_idx` (`idOrder`),
  CONSTRAINT `FKReceipt_idOrder` FOREIGN KEY (`idOrder`) REFERENCES `order` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES ('recpt_01','2022-11-02 02:01:39','ord_01'),('recpt_02','2022-11-03 08:54:29','ord_02'),('recpt_03','2022-11-07 04:34:35','ord_03'),('recpt_04','2022-11-08 03:36:13','ord_04'),('recpt_05','2022-11-09 10:40:00','ord_05'),('recpt_06','2022-11-11 06:21:49','ord_06'),('recpt_07','2022-11-12 11:30:49','ord_07'),('recpt_08','2022-11-12 06:00:02','ord_08'),('recpt_09','2022-11-12 06:06:15','ord_09'),('recpt_10','2022-11-12 06:22:00','ord_10'),('recpt_11','2022-11-12 11:23:32','ord_11'),('recpt_12','2022-11-13 08:44:31','ord_12'),('recpt_13','2022-11-13 09:04:41','ord_13'),('recpt_14','2022-11-14 08:15:00','ord_14'),('recpt_15','2022-11-15 05:44:20','ord_15'),('recpt_16','2022-11-15 09:29:33','ord_16'),('recpt_17','2022-11-16 07:42:53','ord_18'),('recpt_18','2022-11-18 11:47:53','ord_17'),('recpt_19','2022-11-18 11:48:00','ord_19'),('recpt_20','2022-11-21 10:34:26','ord_20'),('recpt_21','2022-11-23 08:56:24','ord_21'),('recpt_22','2022-12-03 09:06:17','ord_22'),('recpt_23','2022-12-14 08:17:02','ord_23'),('recpt_24','2022-12-14 10:02:55','ord_24'),('recpt_25','2022-12-15 07:13:14','ord_25'),('recpt_26','2022-12-20 08:37:27','ord_26'),('recpt_27','2022-12-20 10:22:51','ord_27'),('recpt_28','2022-12-20 11:57:12','ord_28'),('recpt_29','2022-12-21 10:47:53','ord_29'),('recpt_30','2022-12-21 11:26:59','ord_30'),('recpt_31','2022-12-22 07:46:49','ord_31'),('recpt_32','2022-12-22 08:01:21','ord_32'),('recpt_33','2022-12-22 10:42:07','ord_34'),('recpt_34','2022-12-22 01:54:02','ord_35'),('recpt_35','2022-12-22 06:44:59','ord_36'),('recpt_36','2022-12-23 08:47:15','ord_37');
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trademark`
--

DROP TABLE IF EXISTS `trademark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trademark` (
  `idTrademark` varchar(45) NOT NULL,
  `nameTrademark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTrademark`),
  UNIQUE KEY `nameTrademark_UNIQUE` (`nameTrademark`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trademark`
--

LOCK TABLES `trademark` WRITE;
/*!40000 ALTER TABLE `trademark` DISABLE KEYS */;
INSERT INTO `trademark` VALUES ('tm0','88RUE DU RHONE'),('tm1','Baume & Mercier'),('tm10','Bulova'),('tm11','Calvin Klein'),('tm12','Chanel'),('tm13','Fendi'),('tm14','Gucci'),('tm15','Hublot'),('tm17','IWC'),('tm16','Lacoste'),('tm18','Movado'),('tm2','Omega'),('tm3','Panerai'),('tm5','Rolex'),('tm4','Seiko'),('tm9','Tag Heuer'),('tm6','Tissot'),('tm7','Versace'),('tm8','Zenith');
/*!40000 ALTER TABLE `trademark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idUser` varchar(45) NOT NULL,
  `nameUser` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` text,
  `phoneNumber` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `role` varchar(45) NOT NULL,
  `remember_token` varchar(1000) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Us_1','dung1810','Nguyễn Văn Dũng','Nam','628 Lê Văn Hiến, Quận Ngũ Hành Sơn, Thành phố Đà Nẵngg',935463745,'nvandung296@gmail.com','1','Yjt1F5E9cythwHT8whHzFpr0gEiNtthRiZRVDb1AH1yOX7gljljW1gQi4lWU',NULL,'$2y$10$MzSVYfFh5vKKWEwl9.NQKOvvkKRwJ1oDDoSiSBSJ7X9BQo8l8DLMm',1),('Us_2','huy1612','Mai Quốc Huy','Nam','628 Lê Văn Hiến, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng',935744636,'nguyenvandung.18100@gmail.com','1','ib2vakKiprL2vJJv8NwMipjVjNdvEoFfGPqiT4wE17KLlYGhRhwYxnlbNOTR',NULL,'$2y$10$2xA9voMpemNLQk.IPyM9WOAilb4Q7jSvH0ytOnMTDF2B/mgJ5pZwy',1),('Us_3','admin','adminDung','Nam',NULL,NULL,NULL,'2',NULL,NULL,'202cb962ac59075b964b07152d234b70',1),('Us_4','abc123','Nguyễn Huỳnh Hùng','Nam',NULL,NULL,'dungnv.21it@vku.udn.vn','1','wu2n0HL3jNOdfi9g',NULL,'$2y$10$8HcGTc./vUQGLU86IisA4uKXe3K8K0DH0vYrA8QuQTVLub12BIjm.',1),('Us_5','fnmfg123','638b657bb7cfc',NULL,NULL,NULL,'demo@unicode.vn','1','pKiXeQdtOUMADgxC7Lj4PePJyXEk8abZUOtbdMw6GN4zs6yBInlVd9HQPVXv',NULL,'$2y$10$V.ix6QLmmGOjzQF.GFGRGefuWbN41V4s8Dtpa8Nfo34H7v79MWoKq',1),('Us_6','safhsa','63a024023dc72',NULL,NULL,NULL,'asnd@gmail.com','1','JXB8k9K3SbuIuFGgElK1QrdKMDQ6cNthHCQfXVrVjRmKULuV9QT1Mkf12POv',NULL,'$2y$10$IuloVjKUxR1qKcxbb3//4uf1.l.DUhMwZncsZnprS/Qv3ZvYKjmCW',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weeklyrevenue`
--

DROP TABLE IF EXISTS `weeklyrevenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weeklyrevenue` (
  `idWRrevenue` int NOT NULL AUTO_INCREMENT,
  `releaseDate` date NOT NULL,
  `revenue` double NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  PRIMARY KEY (`idWRrevenue`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weeklyrevenue`
--

LOCK TABLES `weeklyrevenue` WRITE;
/*!40000 ALTER TABLE `weeklyrevenue` DISABLE KEYS */;
INSERT INTO `weeklyrevenue` VALUES (2,'2022-11-05',636275000,53,9),(4,'2022-11-12',2072214850,15,16),(5,'2022-11-21',1283413000,6,23),(6,'2022-12-20',571699950,11,30);
/*!40000 ALTER TABLE `weeklyrevenue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 17:22:14
