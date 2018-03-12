-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: teste_romario
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Terror'),(2,'Romance'),(3,'Comedy'),(4,'Action'),(5,'Science Fiction');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `release_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D5EF26F12469DE2` (`category_id`),
  CONSTRAINT `FK_1D5EF26F12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,3,'Title of movie 1','Description of movie 3.1416','2018-02-12'),(2,4,'Title of movie 2','Description of movie 6.2832','2018-02-11'),(3,4,'Title of movie 3','Description of movie 9.4248','2018-02-10'),(4,4,'Title of movie 4','Description of movie 12.5664','2018-02-09'),(5,3,'Title of movie 5','Description of movie 15.708','2018-02-08'),(6,4,'Title of movie 6','Description of movie 18.8496','2018-02-07'),(7,2,'Title of movie 7','Description of movie 21.9912','2018-02-06'),(8,1,'Title of movie 8','Description of movie 25.1328','2018-02-05'),(9,3,'Title of movie 9','Description of movie 28.2744','2018-02-04'),(10,2,'Title of movie 10','Description of movie 31.416','2018-02-03'),(11,4,'Title of movie 11','Description of movie 34.5576','2018-02-02'),(12,3,'Title of movie 12','Description of movie 37.6992','2018-02-01'),(13,5,'Title of movie 13','Description of movie 40.8408','2018-01-31'),(14,1,'Title of movie 14','Description of movie 43.9824','2018-01-30'),(15,3,'Title of movie 15','Description of movie 47.124','2018-01-29'),(16,4,'Title of movie 16','Description of movie 50.2656','2018-01-28'),(17,3,'Title of movie 17','Description of movie 53.4072','2018-01-27'),(18,5,'Title of movie 18','Description of movie 56.5488','2018-01-26'),(19,1,'Title of movie 19','Description of movie 59.6904','2018-01-25'),(20,5,'Title of movie 20','Description of movie 62.832','2018-01-24'),(21,4,'Title of movie 21','Description of movie 65.9736','2018-01-23'),(22,4,'Title of movie 22','Description of movie 69.1152','2018-01-22'),(23,4,'Title of movie 23','Description of movie 72.2568','2018-01-21'),(24,1,'Title of movie 24','Description of movie 75.3984','2018-01-20'),(25,2,'Title of movie 25','Description of movie 78.54','2018-01-19'),(26,5,'Title of movie 26','Description of movie 81.6816','2018-01-18'),(27,3,'Title of movie 27','Description of movie 84.8232','2018-01-17'),(28,3,'Title of movie 28','Description of movie 87.9648','2018-01-16'),(29,5,'Title of movie 29','Description of movie 91.1064','2018-01-15'),(30,4,'Title of movie 30','Description of movie 94.248','2018-01-14'),(31,1,'Title of movie 31','Description of movie 97.3896','2018-01-13'),(32,3,'Title of movie 32','Description of movie 100.5312','2018-01-12'),(33,5,'Title of movie 33','Description of movie 103.6728','2018-01-11'),(34,4,'Title of movie 34','Description of movie 106.8144','2018-01-10'),(35,1,'Title of movie 35','Description of movie 109.956','2018-01-09'),(36,1,'Title of movie 36','Description of movie 113.0976','2018-01-08'),(37,3,'Title of movie 37','Description of movie 116.2392','2018-01-07'),(38,1,'Title of movie 38','Description of movie 119.3808','2018-01-06'),(39,3,'Title of movie 39','Description of movie 122.5224','2018-01-05'),(40,2,'Title of movie 40','Description of movie 125.664','2018-01-04'),(41,1,'Title of movie 41','Description of movie 128.8056','2018-01-03'),(42,4,'Title of movie 42','Description of movie 131.9472','2018-01-02'),(43,4,'Title of movie 43','Description of movie 135.0888','2018-01-01'),(44,2,'Title of movie 44','Description of movie 138.2304','2017-12-31'),(45,1,'Title of movie 45','Description of movie 141.372','2017-12-30'),(46,1,'Title of movie 46','Description of movie 144.5136','2017-12-29'),(47,5,'Title of movie 47','Description of movie 147.6552','2017-12-28'),(48,4,'Title of movie 48','Description of movie 150.7968','2017-12-27'),(49,3,'Title of movie 49','Description of movie 153.9384','2017-12-26'),(50,1,'Title of movie 50','Description of movie 157.08','2017-12-25'),(51,1,'Title of movie 51','Description of movie 160.2216','2017-12-24'),(52,2,'Title of movie 52','Description of movie 163.3632','2017-12-23'),(53,3,'Title of movie 53','Description of movie 166.5048','2017-12-22'),(54,4,'Title of movie 54','Description of movie 169.6464','2017-12-21'),(55,1,'Title of movie 55','Description of movie 172.788','2017-12-20'),(56,5,'Title of movie 56','Description of movie 175.9296','2017-12-19'),(57,1,'Title of movie 57','Description of movie 179.0712','2017-12-18'),(58,4,'Title of movie 58','Description of movie 182.2128','2017-12-17'),(59,4,'Title of movie 59','Description of movie 185.3544','2017-12-16'),(60,4,'Title of movie 60','Description of movie 188.496','2017-12-15'),(61,4,'Title of movie 61','Description of movie 191.6376','2017-12-14'),(62,5,'Title of movie 62','Description of movie 194.7792','2017-12-13'),(63,3,'Title of movie 63','Description of movie 197.9208','2017-12-12'),(64,4,'Title of movie 64','Description of movie 201.0624','2017-12-11'),(65,5,'Title of movie 65','Description of movie 204.204','2017-12-10'),(66,4,'Title of movie 66','Description of movie 207.3456','2017-12-09'),(67,3,'Title of movie 67','Description of movie 210.4872','2017-12-08'),(68,3,'Title of movie 68','Description of movie 213.6288','2017-12-07'),(69,5,'Title of movie 69','Description of movie 216.7704','2017-12-06'),(70,4,'Title of movie 70','Description of movie 219.912','2017-12-05'),(71,3,'Title of movie 71','Description of movie 223.0536','2017-12-04'),(72,1,'Title of movie 72','Description of movie 226.1952','2017-12-03'),(73,4,'Title of movie 73','Description of movie 229.3368','2017-12-02'),(74,1,'Title of movie 74','Description of movie 232.4784','2017-12-01'),(75,1,'Title of movie 75','Description of movie 235.62','2017-11-30'),(76,1,'Title of movie 76','Description of movie 238.7616','2017-11-29'),(77,3,'Title of movie 77','Description of movie 241.9032','2017-11-28'),(78,4,'Title of movie 78','Description of movie 245.0448','2017-11-27'),(79,1,'Title of movie 79','Description of movie 248.1864','2017-11-26'),(80,2,'Title of movie 80','Description of movie 251.328','2017-11-25'),(81,1,'Title of movie 81','Description of movie 254.4696','2017-11-24'),(82,2,'Title of movie 82','Description of movie 257.6112','2017-11-23'),(83,4,'Title of movie 83','Description of movie 260.7528','2017-11-22'),(84,3,'Title of movie 84','Description of movie 263.8944','2017-11-21'),(85,5,'Title of movie 85','Description of movie 267.036','2017-11-20'),(86,2,'Title of movie 86','Description of movie 270.1776','2017-11-19'),(87,3,'Title of movie 87','Description of movie 273.3192','2017-11-18'),(88,2,'Title of movie 88','Description of movie 276.4608','2017-11-17'),(89,4,'Title of movie 89','Description of movie 279.6024','2017-11-16'),(90,2,'Title of movie 90','Description of movie 282.744','2017-11-15'),(91,5,'Title of movie 91','Description of movie 285.8856','2017-11-14'),(92,1,'Title of movie 92','Description of movie 289.0272','2017-11-13'),(93,2,'Title of movie 93','Description of movie 292.1688','2017-11-12'),(94,5,'Title of movie 94','Description of movie 295.3104','2017-11-11'),(95,3,'Title of movie 95','Description of movie 298.452','2017-11-10'),(96,1,'Title of movie 96','Description of movie 301.5936','2017-11-09'),(97,2,'Title of movie 97','Description of movie 304.7352','2017-11-08'),(98,1,'Title of movie 98','Description of movie 307.8768','2017-11-07'),(99,3,'Title of movie 99','Description of movie 311.0184','2017-11-06'),(100,3,'Title of movie 100','Description of movie 314.16','2017-11-05'),(101,5,'Title of movie 101','Description of movie 317.3016','2017-11-04'),(102,4,'Title of movie 102','Description of movie 320.4432','2017-11-03'),(103,1,'Title of movie 103','Description of movie 323.5848','2017-11-02'),(104,1,'Title of movie 104','Description of movie 326.7264','2017-11-01'),(105,1,'Title of movie 105','Description of movie 329.868','2017-10-31'),(106,2,'Title of movie 106','Description of movie 333.0096','2017-10-30'),(107,3,'Title of movie 107','Description of movie 336.1512','2017-10-29'),(108,4,'Title of movie 108','Description of movie 339.2928','2017-10-28'),(109,4,'Title of movie 109','Description of movie 342.4344','2017-10-27'),(110,1,'Title of movie 110','Description of movie 345.576','2017-10-26'),(111,4,'Title of movie 111','Description of movie 348.7176','2017-10-25'),(112,2,'Title of movie 112','Description of movie 351.8592','2017-10-24'),(113,2,'Title of movie 113','Description of movie 355.0008','2017-10-23'),(114,3,'Title of movie 114','Description of movie 358.1424','2017-10-22'),(115,4,'Title of movie 115','Description of movie 361.284','2017-10-21'),(116,4,'Title of movie 116','Description of movie 364.4256','2017-10-20'),(117,2,'Title of movie 117','Description of movie 367.5672','2017-10-19'),(118,3,'Title of movie 118','Description of movie 370.7088','2017-10-18'),(119,2,'Title of movie 119','Description of movie 373.8504','2017-10-17'),(120,3,'Title of movie 120','Description of movie 376.992','2017-10-16'),(121,2,'Title of movie 121','Description of movie 380.1336','2017-10-15'),(122,3,'Title of movie 122','Description of movie 383.2752','2017-10-14'),(123,4,'Title of movie 123','Description of movie 386.4168','2017-10-13'),(124,5,'Title of movie 124','Description of movie 389.5584','2017-10-12'),(125,4,'Title of movie 125','Description of movie 392.7','2017-10-11'),(126,1,'Title of movie 126','Description of movie 395.8416','2017-10-10'),(127,4,'Title of movie 127','Description of movie 398.9832','2017-10-09'),(128,3,'Title of movie 128','Description of movie 402.1248','2017-10-08'),(129,4,'Title of movie 129','Description of movie 405.2664','2017-10-07'),(130,5,'Title of movie 130','Description of movie 408.408','2017-10-06'),(131,2,'Title of movie 131','Description of movie 411.5496','2017-10-05'),(132,1,'Title of movie 132','Description of movie 414.6912','2017-10-04'),(133,3,'Title of movie 133','Description of movie 417.8328','2017-10-03'),(134,4,'Title of movie 134','Description of movie 420.9744','2017-10-02'),(135,4,'Title of movie 135','Description of movie 424.116','2017-10-01'),(136,2,'Title of movie 136','Description of movie 427.2576','2017-09-30'),(137,4,'Title of movie 137','Description of movie 430.3992','2017-09-29'),(138,2,'Title of movie 138','Description of movie 433.5408','2017-09-28'),(139,4,'Title of movie 139','Description of movie 436.6824','2017-09-27'),(140,2,'Title of movie 140','Description of movie 439.824','2017-09-26'),(141,2,'Title of movie 141','Description of movie 442.9656','2017-09-25'),(142,5,'Title of movie 142','Description of movie 446.1072','2017-09-24'),(143,3,'Title of movie 143','Description of movie 449.2488','2017-09-23'),(144,4,'Title of movie 144','Description of movie 452.3904','2017-09-22'),(145,5,'Title of movie 145','Description of movie 455.532','2017-09-21'),(146,2,'Title of movie 146','Description of movie 458.6736','2017-09-20'),(147,5,'Title of movie 147','Description of movie 461.8152','2017-09-19'),(148,1,'Title of movie 148','Description of movie 464.9568','2017-09-18'),(149,2,'Title of movie 149','Description of movie 468.0984','2017-09-17'),(150,2,'Title of movie 150','Description of movie 471.24','2017-09-16'),(151,2,'Title of movie 151','Description of movie 474.3816','2017-09-15'),(152,2,'Title of movie 152','Description of movie 477.5232','2017-09-14'),(153,4,'Title of movie 153','Description of movie 480.6648','2017-09-13'),(154,2,'Title of movie 154','Description of movie 483.8064','2017-09-12'),(155,3,'Title of movie 155','Description of movie 486.948','2017-09-11'),(156,2,'Title of movie 156','Description of movie 490.0896','2017-09-10'),(157,3,'Title of movie 157','Description of movie 493.2312','2017-09-09'),(158,2,'Title of movie 158','Description of movie 496.3728','2017-09-08'),(159,4,'Title of movie 159','Description of movie 499.5144','2017-09-07'),(160,5,'Title of movie 160','Description of movie 502.656','2017-09-06'),(161,4,'Title of movie 161','Description of movie 505.7976','2017-09-05'),(162,1,'Title of movie 162','Description of movie 508.9392','2017-09-04'),(163,4,'Title of movie 163','Description of movie 512.0808','2017-09-03'),(164,2,'Title of movie 164','Description of movie 515.2224','2017-09-02'),(165,3,'Title of movie 165','Description of movie 518.364','2017-09-01'),(166,4,'Title of movie 166','Description of movie 521.5056','2017-08-31'),(167,3,'Title of movie 167','Description of movie 524.6472','2017-08-30'),(168,1,'Title of movie 168','Description of movie 527.7888','2017-08-29'),(169,2,'Title of movie 169','Description of movie 530.9304','2017-08-28'),(170,1,'Title of movie 170','Description of movie 534.072','2017-08-27'),(171,2,'Title of movie 171','Description of movie 537.2136','2017-08-26'),(172,5,'Title of movie 172','Description of movie 540.3552','2017-08-25'),(173,1,'Title of movie 173','Description of movie 543.4968','2017-08-24'),(174,3,'Title of movie 174','Description of movie 546.6384','2017-08-23'),(175,4,'Title of movie 175','Description of movie 549.78','2017-08-22'),(176,4,'Title of movie 176','Description of movie 552.9216','2017-08-21'),(177,5,'Title of movie 177','Description of movie 556.0632','2017-08-20'),(178,3,'Title of movie 178','Description of movie 559.2048','2017-08-19'),(179,5,'Title of movie 179','Description of movie 562.3464','2017-08-18'),(180,2,'Title of movie 180','Description of movie 565.488','2017-08-17'),(181,1,'Title of movie 181','Description of movie 568.6296','2017-08-16'),(182,1,'Title of movie 182','Description of movie 571.7712','2017-08-15'),(183,3,'Title of movie 183','Description of movie 574.9128','2017-08-14'),(184,1,'Title of movie 184','Description of movie 578.0544','2017-08-13'),(185,2,'Title of movie 185','Description of movie 581.196','2017-08-12'),(186,2,'Title of movie 186','Description of movie 584.3376','2017-08-11'),(187,4,'Title of movie 187','Description of movie 587.4792','2017-08-10'),(188,2,'Title of movie 188','Description of movie 590.6208','2017-08-09'),(189,5,'Title of movie 189','Description of movie 593.7624','2017-08-08'),(190,2,'Title of movie 190','Description of movie 596.904','2017-08-07'),(191,4,'Title of movie 191','Description of movie 600.0456','2017-08-06'),(192,3,'Title of movie 192','Description of movie 603.1872','2017-08-05'),(193,4,'Title of movie 193','Description of movie 606.3288','2017-08-04'),(194,2,'Title of movie 194','Description of movie 609.4704','2017-08-03'),(195,5,'Title of movie 195','Description of movie 612.612','2017-08-02'),(196,5,'Title of movie 196','Description of movie 615.7536','2017-08-01'),(197,3,'Title of movie 197','Description of movie 618.8952','2017-07-31'),(198,4,'Title of movie 198','Description of movie 622.0368','2017-07-30'),(199,2,'Title of movie 199','Description of movie 625.1784','2017-07-29'),(200,3,'Title of movie 200','Description of movie 628.32','2017-07-28'),(201,3,'string','string','2018-02-13'),(202,3,'string','string','2018-02-12'),(203,5,'fadfadf ad fad f','fad fad fad fad fad fa','2018-02-11'),(204,2,'fadfadf','fadfadfadf','2017-02-14'),(205,3,'fadfadf ddddd ','fadfadfadf  eeee ','2017-02-14');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watched_movies`
--

DROP TABLE IF EXISTS `watched_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watched_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` tinyint(2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_movies_idx` (`movie_id`),
  KEY `fk_categories_idx` (`category_id`),
  CONSTRAINT `fk_categories` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watched_movies`
--

LOCK TABLES `watched_movies` WRITE;
/*!40000 ALTER TABLE `watched_movies` DISABLE KEYS */;
INSERT INTO `watched_movies` VALUES (1,1,2,80);
/*!40000 ALTER TABLE `watched_movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-12 19:45:16
