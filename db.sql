-- MySQL dump 10.17  Distrib 10.3.16-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: damara
-- ------------------------------------------------------
-- Server version	10.3.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `edbinary`
--

DROP TABLE IF EXISTS `edbinary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edbinary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_shodan` int(10) NOT NULL,
  `ips` text NOT NULL,
  `file_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edbinary`
--

LOCK TABLES `edbinary` WRITE;
/*!40000 ALTER TABLE `edbinary` DISABLE KEYS */;
INSERT INTO `edbinary` VALUES (1,1,'110.181.229.205','{\"normalized_ip_score\":0.0,\"normalized_ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":0.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":0.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"results_detailed\":{\"torrents\":{\"result\":[{\"torrents\":false,\"score\":0.0}],\"score\":0.0},\"is_load_balancer\":false},\"ip_address\":\"110.181.229.205\"}','2019-07-15 15:03:43'),(2,1,'121.22.41.122','{\"normalized_ip_score\":2.9,\"normalized_ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":50.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":1.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"results_detailed\":{\"ports\":{\"open\":[8090],\"score\":1.0},\"cve\":{\"result\":[{\"port\":8090,\"cve\":[{\"cpe\":\"cpe:/a:apache:coyote_http_connector:1.1\",\"cve_list\":[],\"score\":0.0}],\"score\":0.0}],\"score\":0.0},\"torrents\":{\"result\":[{\"torrents\":false,\"score\":0.0}],\"score\":0.0},\"is_load_balancer\":false},\"ip_address\":\"121.22.41.122\"}','2019-07-15 15:03:43'),(3,1,'1.70.8.243','{\"normalized_ip_score\":0.0,\"normalized_ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":0.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":0.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"results_detailed\":{\"torrents\":{\"result\":[{\"torrents\":false,\"score\":0.0}],\"score\":0.0},\"is_load_balancer\":false},\"ip_address\":\"1.70.8.243\"}','2019-07-15 15:03:43'),(4,1,'183.55.168.101','{\"normalized_ip_score\":2.9,\"normalized_ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":50.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":1.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"results_detailed\":{\"ports\":{\"open\":[81],\"score\":1.0},\"torrents\":{\"result\":[{\"torrents\":false,\"score\":0.0}],\"score\":0.0},\"is_load_balancer\":false},\"ip_address\":\"183.55.168.101\"}','2019-07-15 15:03:43'),(5,3,'122.224.39.170','{\"normalized_ip_score\":0.0,\"normalized_ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":0.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":0.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"results_detailed\":{\"torrents\":{\"result\":[{\"torrents\":false,\"score\":0.0}],\"score\":0.0},\"is_load_balancer\":false},\"ip_address\":\"122.224.39.170\"}','2019-07-15 15:11:11'),(6,3,'60.242.213.18','{\"normalized_ip_score\":2.9,\"normalized_ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":50.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":1.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"results_detailed\":{\"ports\":{\"open\":[7547],\"score\":1.0},\"torrents\":{\"result\":[{\"torrents\":false,\"score\":0.0}],\"score\":0.0},\"is_load_balancer\":false},\"ip_address\":\"60.242.213.18\"}','2019-07-15 15:11:11'),(7,3,'46.219.27.146','{\"normalized_ip_score\":11.4,\"normalized_ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":50.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":100.0,\"torrents\":0.0},\"ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":1.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":3.0,\"torrents\":0.0},\"results_detailed\":{\"ports\":{\"open\":[8080],\"score\":1.0},\"cve\":{\"result\":[{\"port\":8080,\"cve\":{\"cpe\":[\"cpe:/h:tp-link:wr740n\"],\"cve_list\":\"no_version_provided\",\"score\":0.0},\"score\":0.0}],\"score\":0.0},\"web\":{\"result\":[{\"port\":8080,\"headers\":true,\"score\":3.0}],\"score\":3.0},\"torrents\":{\"result\":[{\"torrents\":false,\"score\":0.0}],\"score\":0.0},\"is_load_balancer\":false},\"ip_address\":\"46.219.27.146\"}','2019-07-15 15:11:11'),(8,3,'60.242.219.234','{\"normalized_ip_score\":5.7,\"normalized_ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":100.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"ip_score_detailed\":{\"cve\":0.0,\"attack_surface\":2.0,\"encryption\":0.0,\"rms\":0.0,\"storage\":0.0,\"web\":0.0,\"torrents\":0.0},\"results_detailed\":{\"ports\":{\"open\":[7547,5060],\"score\":2.0},\"torrents\":{\"result\":[{\"torrents\":false,\"score\":0.0}],\"score\":0.0},\"is_load_balancer\":false},\"ip_address\":\"60.242.219.234\"}','2019-07-15 15:11:11');
/*!40000 ALTER TABLE `edbinary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shodan`
--

DROP TABLE IF EXISTS `shodan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shodan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `model` text NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shodan`
--

LOCK TABLES `shodan` WRITE;
/*!40000 ALTER TABLE `shodan` DISABLE KEYS */;
INSERT INTO `shodan` VALUES (1,'HUAWEI','2019-07-12 02:08:15'),(2,'CISCO','2019-07-12 02:18:25'),(3,'TP-LINK','2019-07-15 15:11:11');
/*!40000 ALTER TABLE `shodan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-15 15:12:57
