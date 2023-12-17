-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: finallapp
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `userID_idx` (`userID`),
  CONSTRAINT `userID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,2,'2023-12-15 00:00:00','đi làm '),(14,1,'2023-12-15 00:00:00','đi làm '),(15,3,'2023-12-15 00:00:00','đi làm '),(16,4,'2023-12-15 00:00:00','đi làm '),(17,5,'2023-12-15 00:00:00','đi làm '),(18,6,'2023-12-15 00:00:00','đi làm '),(19,7,'2023-12-15 00:00:00','đi làm '),(20,1,'2023-12-14 00:00:00','đi làm '),(21,2,'2023-12-14 00:00:00','đi làm '),(22,3,'2023-12-14 00:00:00','đi làm '),(23,4,'2023-12-14 00:00:00','đi làm '),(24,5,'2023-12-14 00:00:00','đi làm '),(25,6,'2023-12-14 00:00:00','đi làm '),(26,7,'2023-12-14 00:00:00','đi làm '),(27,1,'2023-09-29 00:00:00','đi làm '),(28,2,'2023-09-29 00:00:00','đi làm '),(29,3,'2023-09-29 00:00:00','đi làm '),(30,4,'2023-09-29 00:00:00','đi làm '),(31,5,'2023-09-29 00:00:00','đi làm '),(32,6,'2023-09-29 00:00:00','đi làm '),(33,7,'2023-09-29 00:00:00','đi làm '),(34,1,'2023-10-20 00:00:00','đi làm '),(35,5,'2023-10-23 00:00:00','đi làm '),(36,2,'2023-11-13 00:00:00','đi làm '),(37,1,'2023-11-20 00:00:00','đi làm '),(38,7,'2023-11-21 00:00:00','đi làm '),(39,4,'2023-12-01 00:00:00','đi làm '),(40,3,'2023-12-08 00:00:00','đi làm '),(41,2,'2023-12-09 00:00:00','đi làm '),(42,1,'2023-12-09 00:00:00','đi làm '),(43,3,'2023-12-09 00:00:00','đi làm '),(44,4,'2023-12-09 00:00:00','đi làm '),(45,5,'2023-12-09 00:00:00','đi làm '),(46,7,'2023-12-09 00:00:00','đi làm '),(47,1,'2023-12-10 00:00:00','đi làm '),(48,2,'2023-12-10 00:00:00','đi làm '),(49,3,'2023-12-10 00:00:00','đi làm '),(50,4,'2023-12-10 00:00:00','đi làm ');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Đồ ăn'),(2,'Đồ uống'),(3,'Khác');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donvitinh`
--

DROP TABLE IF EXISTS `donViTinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donViTinh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenDVT` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `tenDVT_UNIQUE` (`tenDVT`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donvitinh`
--

LOCK TABLES `donViTinh` WRITE;
/*!40000 ALTER TABLE `donvitinh` DISABLE KEYS */;
INSERT INTO `donViTinh` VALUES (4,'cái'),(5,'đĩa'),(2,'hộp'),(3,'lon'),(1,'phần');
/*!40000 ALTER TABLE `donvitinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` double NOT NULL,
  `createAt` datetime NOT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `tableID` int DEFAULT NULL,
  `invoiceNumber` varchar(45) NOT NULL,
  `userID` int DEFAULT NULL,
  `payMethod` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `uID_idx` (`userID`),
  CONSTRAINT `uID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (197,829000,'2023-12-15 15:29:05','Hoàng Ngọc Vương',1,'384962',4,1),(198,2908000,'2023-11-13 15:31:32','Hoàng Quốc Huy',5,'423139',2,1),(199,1650000,'2023-11-21 15:33:39','Phan Nguyễn Hoàng Phúc',7,'450766',7,2),(200,1305000,'2023-10-20 15:35:05','Đặng Thị Cẩm Tú',1,'306939',1,1),(201,1759000,'2023-12-14 15:38:25','Phan Nguyễn Hoàng Phúc',4,'217858',7,1),(202,2091000,'2023-12-09 15:43:24','Hoàng Quốc Huy',3,'357708',2,1),(203,2894000,'2023-12-08 15:44:49','Nguyễn Tấn Trung',2,'404810',5,1),(204,2648000,'2023-12-01 15:45:55','Hoàng Ngọc Vương',4,'322207',4,1),(205,699000,'2023-11-20 15:47:00','Đặng Thị Cẩm Tú',6,'431105',1,1),(206,1514000,'2023-12-15 15:47:36','Lưu Văn Vũ',8,'423281',6,1),(207,5395000,'2023-12-15 15:48:36','Nông Văn Thắng',9,'434429',2,1),(208,3114000,'2023-09-29 15:51:09','Phan Nguyễn Hoàng Phúc',12,'240016',7,1),(209,1380000,'2023-10-23 15:52:03','Nông Văn Thắng',11,'491198',2,1),(212,1006000,'2023-12-15 21:15:51','Hoàng Ngọc Vương',3,'329320',4,1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicedetails`
--

DROP TABLE IF EXISTS `invoicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicedetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoiceID` int NOT NULL,
  `poductName` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `totalAmount` double NOT NULL,
  `productID` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `invoice_idx` (`invoiceID`),
  KEY `prod_idx` (`productID`),
  CONSTRAINT `invoice` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`id`),
  CONSTRAINT `prod` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicedetails`
--

LOCK TABLES `invoicedetails` WRITE;
/*!40000 ALTER TABLE `invoicedetails` DISABLE KEYS */;
INSERT INTO `invoicedetails` VALUES (472,197,'Lẩu thập cẩm',1,780000,30),(473,197,'Cocacola',1,49000,31),(474,198,'Salad Rong Nho Trứng Cua',2,330000,4),(475,198,'Súp gà nấm hương',2,130000,12),(476,198,'Tôm sú nướng muối ớt',2,590000,16),(477,198,'Lẩu thái hải sản',2,1500000,28),(478,198,'Bia Sài Gòn Lager',1,260000,33),(479,198,'Cocacola',2,98000,31),(480,199,'Pepsi',10,100000,32),(481,199,'Lẩu cá tầm ',1,850000,27),(482,199,'Miến xào cua',3,285000,25),(483,199,'Mực Xào Hoa Quả',1,285000,19),(484,199,'Rau Muống Xào Tỏi',2,130000,7),(485,200,'Pepsi',5,50000,32),(486,200,'Cơm Chiên hải Sản Đặc Biệt',5,725000,26),(487,200,'Chân Giò Chiên Giòn',1,465000,22),(488,200,'Măng trúc xào bò',1,65000,9),(489,201,'Mực Chiên Bơ Tỏi',3,885000,18),(490,201,'Lẩu gà',1,650000,29),(491,201,'Bia Tiger Bạc',2,224000,35),(492,202,'Salad chanh giây rau',2,190000,1),(493,202,'Salad Rong Nho Trứng Cua',2,330000,4),(494,202,'Lẩu thái hải sản',1,750000,28),(495,202,'Miến xào cua',2,190000,25),(496,202,'Gà Ri Quay Mật Ong',1,485000,20),(497,202,'Bia 333',2,146000,34),(498,203,'Lẩu cá tầm ',1,850000,27),(499,203,'Pepsi',10,100000,32),(500,203,'Bia 333',1,269000,34),(501,203,'Gà Ri Hấp Mắm Nhĩ',1,495000,21),(502,203,'Mực Chiên Bơ Tỏi',2,590000,18),(503,203,'Tôm Sú Rang Muối',2,590000,15),(504,204,'Nộm Bò Bóp Thấu',2,290000,6),(505,204,'Nộm gà xé phay',2,290000,5),(506,204,'Salad Cá Ngừ Đại Dương',3,435000,3),(507,204,'Hàu nướng ngũ vị',2,480000,2),(508,204,'Súp kem bí đỏ',3,225000,10),(509,204,'Pepsi',2,98000,32),(510,204,'Hàu nướng ngũ vị',1,240000,2),(511,204,'Tôm Sú Chiên Hoàng Bào',2,590000,14),(512,205,'Lẩu gà',1,650000,29),(513,205,'Cocacola',1,49000,31),(514,206,'Salad Rong Nho Trứng Cua',2,330000,4),(515,206,'Nộm Bò Bóp Thấu',2,290000,6),(516,206,'Lẩu thái hải sản',1,750000,28),(517,206,'Bia Sài Gòn Lager',2,144000,33),(518,207,'Tôm Sú Chiên Hoàng Bào',2,590000,14),(519,207,'Súp gà nấm hương',2,130000,12),(520,207,'Hàu nướng ngũ vị',3,720000,2),(521,207,'Salad chanh giây rau',3,285000,1),(522,207,'Bia Tiger lon cao',1,350000,36),(523,207,'Lẩu thập cẩm',3,2340000,30),(524,207,'Miến xào cua',3,285000,25),(525,207,'Cơm Chiên hải Sản Đặc Biệt',3,435000,26),(526,207,'Mì Xào Hải Sản',4,260000,24),(527,208,'Salad Rong Nho Trứng Cua',5,825000,4),(528,208,'Pepsi',10,100000,32),(529,208,'Gà Ri Quay Mật Ong',2,970000,20),(530,208,'Tôm Sú Chiên Trứng Muối',3,885000,13),(531,208,'Súp hải sản',2,190000,11),(532,208,'Bia Sài Gòn Lager',2,144000,33),(533,209,'Nộm Bò Bóp Thấu',2,290000,6),(534,209,'Cải Chíp Xào Nấm',3,195000,8),(535,209,'Súp kem bí đỏ',1,75000,10),(536,209,'Pepsi',4,40000,32),(537,209,'Lẩu thập cẩm',1,780000,30),(540,212,'Salad chanh giây rau',3,285000,1),(541,212,'Hàu nướng ngũ vị',1,240000,2),(542,212,'Salad Cá Ngừ Đại Dương',1,145000,3),(543,212,'Cocacola',4,196000,31),(544,212,'Cocacola',14,140000,31);
/*!40000 ALTER TABLE `invoicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kho`
--

DROP TABLE IF EXISTS `kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productID` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `kho_prrod_idx` (`productID`),
  CONSTRAINT `kho_prrod` FOREIGN KEY (`productID`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kho`
--

LOCK TABLES `kho` WRITE;
/*!40000 ALTER TABLE `kho` DISABLE KEYS */;
INSERT INTO `kho` VALUES (54,31,280),(55,32,259),(56,35,601),(57,36,597),(58,34,597),(59,33,595);
/*!40000 ALTER TABLE `kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  `raw` varchar(210) DEFAULT NULL,
  `imageUrl` varchar(210) DEFAULT NULL,
  `sendBy` int NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FksendBy_idx` (`sendBy`),
  KEY `Fk_type_idx` (`type`),
  CONSTRAINT `Fk_type` FOREIGN KEY (`type`) REFERENCES `type_message` (`id`),
  CONSTRAINT `FksendBy` FOREIGN KEY (`sendBy`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhaphang`
--

DROP TABLE IF EXISTS `nhaphang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhaphang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productID` int DEFAULT NULL,
  `soLuong` int DEFAULT NULL,
  `donGia` double NOT NULL,
  `ngayNhap` datetime NOT NULL,
  `dvtID` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `nh_product_idx` (`productID`),
  KEY `nh_donViTinh_idx` (`dvtID`),
  CONSTRAINT `nh_donViTinh` FOREIGN KEY (`dvtID`) REFERENCES `donViTinh` (`id`),
  CONSTRAINT `nh_product` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhaphang`
--

LOCK TABLES `nhaphang` WRITE;
/*!40000 ALTER TABLE `nhaphang` DISABLE KEYS */;
INSERT INTO `nhaphang` VALUES (19,NULL,200,9000,'2023-08-29 21:23:15',1),(20,NULL,200,9000,'2023-08-29 21:23:26',1),(21,NULL,500,10000,'2023-08-30 09:28:55',5),(22,NULL,100,10000,'2023-08-30 09:29:17',5),(23,NULL,100,9000,'2023-10-18 20:54:00',1),(24,NULL,100,9000,'2023-10-18 20:54:02',1),(25,NULL,100,9000,'2023-10-18 20:54:02',1),(26,NULL,100,9000,'2023-10-18 20:54:02',1),(27,NULL,100,10000,'2023-10-18 21:16:54',5),(28,NULL,100,10000,'2023-10-18 21:17:13',5),(29,NULL,100,10000,'2023-10-18 21:18:40',5),(30,NULL,5000,10000,'2023-10-30 10:09:40',1),(31,NULL,5000,10000,'2023-10-30 10:09:45',1),(32,NULL,5000,10000,'2023-10-30 10:09:47',1),(33,NULL,5000,12000,'2023-10-30 20:57:26',1),(34,NULL,5000,12000,'2023-10-30 20:57:28',1),(35,NULL,200,2500000,'2023-10-31 17:08:39',5),(36,NULL,500,20000,'2023-10-31 17:09:14',1),(37,NULL,5000,25000,'2023-11-01 09:20:21',1),(38,NULL,500,500000,'2023-11-01 12:52:05',5),(39,NULL,2,44444,'2023-11-29 10:25:00',5),(40,NULL,1000,12000,'2023-11-29 10:27:17',5),(41,NULL,2222,20000,'2023-12-07 20:29:07',1),(42,NULL,3333,120000,'2023-12-07 20:56:05',3),(43,NULL,3333,120000,'2023-12-07 20:56:52',3),(44,NULL,12000,1200000,'2023-12-07 20:58:29',1),(45,NULL,12000,200000,'2023-12-07 20:59:06',3),(46,NULL,111,11111,'2023-12-07 21:10:49',1),(47,NULL,1000,120000,'2023-12-07 21:11:36',5),(48,NULL,0,111111,'2023-12-07 21:12:03',3),(49,NULL,0,111111,'2023-12-07 21:14:53',3),(50,NULL,0,240000,'2023-12-15 13:51:25',5),(51,NULL,0,145000,'2023-12-15 13:52:49',5),(52,NULL,0,165000,'2023-12-15 13:53:48',5),(53,NULL,0,145000,'2023-12-15 13:54:59',5),(54,NULL,0,145000,'2023-12-15 13:56:11',5),(55,NULL,0,65000,'2023-12-15 13:59:11',5),(56,NULL,0,65000,'2023-12-15 14:00:14',5),(57,NULL,0,65000,'2023-12-15 14:00:59',5),(58,NULL,0,75000,'2023-12-15 14:02:07',5),(59,NULL,0,95000,'2023-12-15 14:03:02',5),(60,NULL,0,295000,'2023-12-15 14:06:30',5),(61,NULL,0,295000,'2023-12-15 14:07:33',5),(62,NULL,0,295000,'2023-12-15 14:08:08',5),(63,NULL,0,295000,'2023-12-15 14:08:45',5),(64,NULL,0,295000,'2023-12-15 14:10:11',5),(65,NULL,0,295000,'2023-12-15 14:10:55',5),(66,NULL,0,285000,'2023-12-15 14:11:35',5),(67,NULL,0,485000,'2023-12-15 14:13:24',5),(68,NULL,0,495000,'2023-12-15 14:14:11',5),(69,NULL,0,465000,'2023-12-15 14:15:28',5),(70,NULL,0,750000,'2023-12-15 14:16:10',5),(71,NULL,0,65000,'2023-12-15 14:20:04',5),(72,NULL,0,95000,'2023-12-15 14:21:05',5),(73,NULL,0,145000,'2023-12-15 14:21:44',5),(74,NULL,0,850000,'2023-12-15 14:23:15',1),(75,NULL,0,750000,'2023-12-15 14:25:52',5),(76,NULL,0,650000,'2023-12-15 14:26:57',1),(77,NULL,0,780000,'2023-12-15 14:27:39',1),(78,NULL,20,0,'2023-12-15 14:34:06',3),(79,NULL,20,0,'2023-12-15 14:42:17',3),(80,NULL,0,0,'2023-12-15 14:44:50',3),(81,NULL,50,0,'2023-12-15 14:45:59',3),(82,NULL,20,0,'2023-12-15 14:47:57',3),(83,NULL,100,0,'2023-12-15 14:49:00',3),(84,31,300,10000,'2023-12-15 15:15:13',3),(85,32,300,10000,'2023-12-15 15:15:22',3),(86,35,600,15000,'2023-12-15 15:16:05',3),(87,36,600,15000,'2023-12-15 15:16:14',3),(88,34,600,10000,'2023-12-15 15:16:35',3),(89,33,600,10000,'2023-12-15 15:16:54',3);
/*!40000 ALTER TABLE `nhaphang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderID` int NOT NULL,
  `productID` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `subTotal` double DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `order_ID_idx` (`orderID`),
  KEY `product_order_idx` (`productID`),
  CONSTRAINT `order_ID` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_order` FOREIGN KEY (`productID`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=812 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `tableID` int DEFAULT NULL,
  `orderDate` datetime NOT NULL,
  `totalAmount` double DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `user_order_idx` (`userID`),
  KEY `table_order_idx` (`tableID`),
  CONSTRAINT `table_order` FOREIGN KEY (`tableID`) REFERENCES `tables` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `user_order` FOREIGN KEY (`userID`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=858 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_price`
--

DROP TABLE IF EXISTS `product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `products_size` int DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `producr_idx` (`product_id`),
  KEY `size_idx` (`products_size`),
  CONSTRAINT `producr` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `size` FOREIGN KEY (`products_size`) REFERENCES `product_size` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_price`
--

LOCK TABLES `product_price` WRITE;
/*!40000 ALTER TABLE `product_price` DISABLE KEYS */;
INSERT INTO `product_price` VALUES (10,31,4,10000),(11,31,6,49000),(12,36,5,350000),(13,36,6,102000),(14,36,4,18000),(15,33,5,260000),(16,33,6,72000),(17,33,4,12500),(18,35,5,385000),(19,35,6,112000),(20,35,4,19000),(21,34,5,269000),(22,34,6,73000),(23,34,4,12000),(24,32,4,10000),(25,32,6,49000);
/*!40000 ALTER TABLE `product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `size_name_UNIQUE` (`size_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (6,'Lốc (6)'),(3,'Lớn'),(4,'Lon (1)'),(1,'Nhỏ'),(5,'Thùng (24)'),(2,'Vừa');
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `category` int NOT NULL,
  `status` int DEFAULT NULL,
  `dvtID` int NOT NULL,
  `imgUrl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `category_idx` (`category`),
  KEY `status_idx` (`status`),
  KEY `donViTinh_idx` (`dvtID`),
  CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `category` (`id`),
  CONSTRAINT `status` FOREIGN KEY (`status`) REFERENCES `statusproduct` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Salad chanh giây rau',95000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623032899_salad-chanh-giay-rau.jpg?alt=media&token=12f66f0f-3353-4bab-8091-ccd52a5f1d76'),(2,'Hàu nướng ngũ vị',240000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623083169_hau-nuong-ngu-vi-510x408.jpg?alt=media&token=f2e78782-38c9-4d63-bffb-98821d5398be'),(3,'Salad Cá Ngừ Đại Dương',145000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623168280_salad-ca-ngu-510x340.jpeg?alt=media&token=4734d4b5-df84-42d2-939e-3fb8f2f7720d'),(4,'Salad Rong Nho Trứng Cua',165000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623227603_salad-rong-nho-trung-cua-510x287.jpeg?alt=media&token=ec0539d6-e46b-43a9-8f2c-0063cb322403'),(5,'Nộm gà xé phay',145000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623298036_cach-lam-nom-ga-xe-phay-510x287.jpg?alt=media&token=a4692519-effe-49b1-a736-f75008963a9e'),(6,'Nộm Bò Bóp Thấu',145000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623370842_nom-bo-bop-thau-510x340.jpeg?alt=media&token=2eaac09d-6a16-46db-abaf-459927e5a27a'),(7,'Rau Muống Xào Tỏi',65000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623550351_rau-muong-xao-toi-510x346.jpeg?alt=media&token=0829ee35-37ae-4700-b4f6-7f67a769d8ff'),(8,'Cải Chíp Xào Nấm',65000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623613169_cai-chip-xao-nam-1-510x306.jpeg?alt=media&token=8b4afde7-05a7-4e2c-953e-d4ff716836e6'),(9,'Măng trúc xào bò',65000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623657777_mang-truc-xao-nam-510x287.jpeg?alt=media&token=a3fb431a-e706-48c8-8420-8f3116265c11'),(10,'Súp kem bí đỏ',75000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623726177_sup-kem-bi-do-510x340.jpeg?alt=media&token=8daa9fac-f87a-430b-afad-ca51dbe2a8c0'),(11,'Súp hải sản',95000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623781158_sup-hai-san-510x291.jpeg?alt=media&token=cd675b67-c0a6-448f-861f-21a41a679760'),(12,'Súp gà nấm hương',65000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623853798_sup-ga-nam-huong-510x510.jpeg?alt=media&token=171a2ea3-cc3e-4c1c-8252-24007a046cd2'),(13,'Tôm Sú Chiên Trứng Muối',295000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702623988944_tom-rang-trung-muoi-510x340.jpeg?alt=media&token=9f4b0c3f-e212-4ec9-8700-90891969111b'),(14,'Tôm Sú Chiên Hoàng Bào',295000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624052610_tom-su-hoang-bao-510x374.jpeg?alt=media&token=f3435d1e-b3d0-4028-97ba-afdcd25fc74e'),(15,'Tôm Sú Rang Muối',295000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624086871_tom-rang-muoi-1-510x340.jpeg?alt=media&token=7cf996ee-9228-4744-9aaf-3267e3487d4c'),(16,'Tôm sú nướng muối ớt',295000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624124051_tom-nuong-muoi-ot-510x364.jpeg?alt=media&token=423f010d-b240-4c1d-8b03-0bca25ae19dd'),(17,'Mực nướng sa tế',295000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624210427_muc-nuong-sa-te.jpg?alt=media&token=0c93288a-b4d7-491e-9563-dac585b1dd61'),(18,'Mực Chiên Bơ Tỏi',295000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624254614_muc-chien-bo-toi-510x314.jpeg?alt=media&token=74cbdd75-9f2e-4a34-a875-b3e22950e0c7'),(19,'Mực Xào Hoa Quả',285000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624294828_muc-xao-sot-X.O-510x340.jpeg?alt=media&token=68eaf043-520f-4b80-9968-c47d987e5b96'),(20,'Gà Ri Quay Mật Ong',485000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624402920_ga-quay-mat-ong-tai-nha-hap-dan1-510x340.jpg?alt=media&token=f045009a-e304-4be1-919c-8a8ae3ca26cc'),(21,'Gà Ri Hấp Mắm Nhĩ',495000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624450446_ga-hap-mam-nhi-510x340.jpeg?alt=media&token=c93c1fd4-5055-42fd-9696-e04ca62dcde4'),(22,'Chân Giò Chiên Giòn',465000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624527215_T5_gioheochienmuoi_Hen-Restaurant-510x305.jpg?alt=media&token=5a149099-97be-47f7-8937-bd5a66ce053b'),(23,'Bò Okini Nhật nướng đá nóng',750000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624569509_bo-Nhat-nuong-da-nong-510x491.jpg?alt=media&token=a7760ffd-050e-472c-877c-2e91785c0f7e'),(24,'Mì Xào Hải Sản',65000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624803095_mi-xao-hai-san.jpg?alt=media&token=901700f8-bad3-4515-bd6a-a2ece4be80f5'),(25,'Miến xào cua',95000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624864624_mien-xao-cua-510x400.jpg?alt=media&token=e40e3dd2-9129-4222-8941-4274ea9971ef'),(26,'Cơm Chiên hải Sản Đặc Biệt',145000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624903489_comchienhaisan4-510x340.jpg?alt=media&token=de6687dd-2bd9-4e2f-b1f2-9d030f23d4bf'),(27,'Lẩu cá tầm ',850000,1,NULL,1,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702624994342_lau-ca-tam-510x383.jpg?alt=media&token=2655ac1f-a3d7-454d-a987-18704f4cb124'),(28,'Lẩu thái hải sản',750000,1,NULL,5,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702625151652_lau-thai-hai-san-510x340.jpg?alt=media&token=fdb0a825-558c-4d60-87d2-a71cfee7ead7'),(29,'Lẩu gà',650000,1,NULL,1,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702625215957_lau%20ga.jpg?alt=media&token=13e576aa-b0b1-48b1-80c7-da90f9ea0710'),(30,'Lẩu thập cẩm',780000,1,NULL,1,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702625258212_lau%20hai%20san.jpg?alt=media&token=e37d7458-96ec-4339-bba9-5bbd69653a6e'),(31,'Cocacola',0,2,NULL,3,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702625644438_loc-cocacola.jpg?alt=media&token=7ce9a488-a2cf-4fa6-a91c-f9ac62ec0e93'),(32,'Pepsi',0,2,NULL,3,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702626135767_pepsi.jpg?alt=media&token=05bc01b6-79ae-44cd-8edb-d6a70802f1c6'),(33,'Bia Sài Gòn Lager',0,2,NULL,3,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702626288257_bia-saigon.jpg?alt=media&token=4c59b032-cc9e-4a35-8d67-4de396cf1450'),(34,'Bia 333',0,2,NULL,3,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702626357897_thung-24-lon-bia-333-330ml-202003251341353307.jpg?alt=media&token=7eb395ec-1e45-485d-93af-acc7c564f5f6'),(35,'Bia Tiger Bạc',0,2,NULL,3,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702626475002_thung-24-lon-bia-tiger-crystal-330ml-202210281228326714.jpg?alt=media&token=aa2d6917-bbeb-4342-b18d-272c4de3310b'),(36,'Bia Tiger lon cao',0,2,NULL,3,'https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2F1702626538566_thung-24-lon-bia-tiger-lon-cao-330ml-202311041013335193.jpg?alt=media&token=05297722-d0a4-49bc-a8fb-d825449e3f42');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bankNumber` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'AZFOOD','BMT','0987654321','123456789');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusproduct`
--

DROP TABLE IF EXISTS `statusproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statusproduct` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusproduct`
--

LOCK TABLES `statusproduct` WRITE;
/*!40000 ALTER TABLE `statusproduct` DISABLE KEYS */;
INSERT INTO `statusproduct` VALUES (1,'Cn mn'),(2,'Ht mn');
/*!40000 ALTER TABLE `statusproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statustable`
--

DROP TABLE IF EXISTS `statustable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statustable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statustable`
--

LOCK TABLES `statustable` WRITE;
/*!40000 ALTER TABLE `statustable` DISABLE KEYS */;
INSERT INTO `statustable` VALUES (1,'Bàn có khách'),(2,'Bàn đã thanh toán'),(3,'Bàn đang  trống');
/*!40000 ALTER TABLE `statustable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `status_table_idx` (`status`),
  CONSTRAINT `status_table` FOREIGN KEY (`status`) REFERENCES `statustable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (1,'Bàn số 1',2),(2,'Bàn số 2',2),(3,'Bàn số 3',2),(4,'Bàn số 4',3),(5,'Bàn số 5',3),(6,'Bàn số 6',3),(7,'Bàn số 7',3),(8,'Bàn số 8',3),(9,'Bàn số 9',3),(10,'Bàn số 10',3),(11,'Bàn số 11',3),(12,'Bàn số 12',3);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_message`
--

DROP TABLE IF EXISTS `type_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_message`
--

LOCK TABLES `type_message` WRITE;
/*!40000 ALTER TABLE `type_message` DISABLE KEYS */;
INSERT INTO `type_message` VALUES (1,'Vn Bn'),(2,'Hnh nh'),(3,'m thanh');
/*!40000 ALTER TABLE `type_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `birtDay` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tu1234','7c4a8d09ca3762af61e59520943dc26494f8941b','Đặng Thị Cẩm Tú','admin','dag.cam.tu@gmail.com','0328645153','','https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2Fusersss%2F1702620182205_avt7.jpg?alt=media&token=7cb5c7d8-258d-4c39-af7b-c4f5831275a5',NULL,'14/08/2002'),(2,'huy123','7c4a8d09ca3762af61e59520943dc26494f8941b','Hoàng Quốc Huy','admin','huyhqpk02638@fpt.edu.vn','0354264060','','https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2Fusersss%2F1702620102024_avt2.jpg?alt=media&token=d3a081c8-b63e-49a5-8fa1-b13c92ff1770',NULL,''),(3,'trung1','7c4a8d09ca3762af61e59520943dc26494f8941b','Nguyễn Tấn Trung','admin','trungntpk02230@fpt.edu.vn','0972467646','','https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2Fusersss%2F1702620749759_avt5.jpg?alt=media&token=3bb011a1-0219-40b7-beeb-95296689a5f7',NULL,''),(4,'vuong1','7c4a8d09ca3762af61e59520943dc26494f8941b','Hoàng Ngọc Vương','admin','vuonghnpk02259@fpt.edu.vn','0972467646','','https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2Fusersss%2F1702620364286_avt3.jpg?alt=media&token=af6d0d19-ed45-489e-b070-9cd3c9eef8ec',NULL,''),(5,'thang1','7c4a8d09ca3762af61e59520943dc26494f8941b','Nông Văn Thắng','admin','thangnvpk01853@fpt.edu.vn','0383253638','','https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2Fusersss%2F1702620688147_avt1.jpg?alt=media&token=b3768ac5-e23a-4da0-a880-d57e47b80a9a','2023-10-19 22:31:22','12/09/2000'),(6,'vu12345','7c4a8d09ca3762af61e59520943dc26494f8941b','Lưu Văn Vũ','admin','vulvpk02300@fpt.edu.vn','0915934012','','https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2Fusersss%2F1702620810005_avt4.jpg?alt=media&token=aac22a45-b902-4754-a006-e56b4acd4aaf','2023-10-27 13:07:19',''),(7,'phuc12','7c4a8d09ca3762af61e59520943dc26494f8941b','Phan Nguyễn Hoàng Phúc','admin','phucpnhpk02508@fpt.edu.vn','0354264060','','https://firebasestorage.googleapis.com/v0/b/restaurant-manager-b9f86.appspot.com/o/files%2Fusersss%2F1702620899168_avt6.jpg?alt=media&token=fed8da47-e52b-4bca-9625-aa87a512de0e','2023-11-06 14:09:23','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15 22:10:30
