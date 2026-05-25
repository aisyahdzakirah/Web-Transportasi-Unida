-- MySQL dump 10.13  Distrib 8.4.6, for Win64 (x86_64)
--
-- Host: localhost    Database: transportasi_unida
-- ------------------------------------------------------
-- Server version	8.4.6

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dokumen_peminjaman`
--

DROP TABLE IF EXISTS `dokumen_peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dokumen_peminjaman` (
  `id` int NOT NULL AUTO_INCREMENT,
  `peminjaman_id` int DEFAULT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokumen_peminjaman`
--

LOCK TABLES `dokumen_peminjaman` WRITE;
/*!40000 ALTER TABLE `dokumen_peminjaman` DISABLE KEYS */;
/*!40000 ALTER TABLE `dokumen_peminjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemesanan`
--

DROP TABLE IF EXISTS `pemesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemesanan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_pemesan` varchar(100) DEFAULT NULL,
  `kendaraan` varchar(50) DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `status` enum('pending','disetujui','ditolak') DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan`
--

LOCK TABLES `pemesanan` WRITE;
/*!40000 ALTER TABLE `pemesanan` DISABLE KEYS */;
INSERT INTO `pemesanan` VALUES (1,'Aisyah','Hiace','Pak Budi','2026-01-25','08:00:00','Bandara','disetujui'),(2,'Amira','Avanza','Pak Ahmad','2026-01-26','13:00:00','Ponorogo','ditolak');
/*!40000 ALTER TABLE `pemesanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman`
--

DROP TABLE IF EXISTS `peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peminjaman` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `kategori_kendaraan` varchar(50) DEFAULT NULL,
  `kendaraan` varchar(50) DEFAULT NULL,
  `penumpang` int DEFAULT NULL,
  `tgl_berangkat` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `keperluan` text,
  `status` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman`
--

LOCK TABLES `peminjaman` WRITE;
/*!40000 ALTER TABLE `peminjaman` DISABLE KEYS */;
/*!40000 ALTER TABLE `peminjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajuan`
--

DROP TABLE IF EXISTS `pengajuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengajuan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `tujuan` text,
  `keperluan` text,
  `file_persyaratan` varchar(255) DEFAULT NULL,
  `status` enum('menunggu','disetujui','ditolak') DEFAULT 'menunggu',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuan`
--

LOCK TABLES `pengajuan` WRITE;
/*!40000 ALTER TABLE `pengajuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengajuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_kampus`
--

DROP TABLE IF EXISTS `price_list_kampus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_list_kampus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(100) NOT NULL,
  `apv` int DEFAULT '0',
  `elf` int DEFAULT '0',
  `innova` int DEFAULT '0',
  `pickup` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_kampus`
--

LOCK TABLES `price_list_kampus` WRITE;
/*!40000 ALTER TABLE `price_list_kampus` DISABLE KEYS */;
INSERT INTO `price_list_kampus` VALUES (1,'Sambirejo',50000,50000,50000,0),(2,'Mantingan',50000,50000,50000,0),(3,'Bandaran',75000,100000,50000,0),(4,'Widodaren',75000,100000,100000,75000),(5,'Giriklancar',75000,100000,100000,75000),(6,'Madiun',450000,550000,550000,325000),(7,'Magetan',450000,550000,550000,325000),(8,'Ngawi',350000,450000,375000,250000),(9,'Surabaya',950000,1250000,1150000,800000),(10,'Semarang',500000,600000,600000,375000),(11,'Ponorogo',550000,700000,750000,425000),(12,'Nganjuk',550000,700000,700000,425000),(13,'Kediri',750000,950000,950000,700000),(14,'Malang',950000,1250000,1150000,800000),(15,'Surabaya',950000,1250000,1150000,800000),(16,'Gresik',850000,1200000,1050000,700000),(17,'Jogjakarta',650000,800000,850000,550000),(18,'Semarang',750000,900000,950000,650000),(19,'Magelang',700000,850000,950000,650000),(20,'Bojonegoro',550000,700000,750000,450000),(21,'Salatiga',550000,700000,700000,450000),(22,'Lamongan',850000,1050000,1000000,800000),(23,'Bandara Solo',450000,550000,550000,325000),(24,'Bandara Jogja',800000,950000,950000,600000),(25,'Bandara Semarang',750000,900000,900000,650000),(26,'Bandara Surabaya',950000,1250000,1150000,800000),(27,'Pati',550000,750000,750000,450000),(28,'Tulung Agung',850000,1100000,1000000,750000),(29,'Karanganyar',800000,1000000,950000,750000);
/*!40000 ALTER TABLE `price_list_kampus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_luar`
--

DROP TABLE IF EXISTS `price_list_luar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_list_luar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(100) NOT NULL,
  `kendaraan_kecil` int DEFAULT '0',
  `elf_short` int DEFAULT '0',
  `elf_long` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_luar`
--

LOCK TABLES `price_list_luar` WRITE;
/*!40000 ALTER TABLE `price_list_luar` DISABLE KEYS */;
INSERT INTO `price_list_luar` VALUES (1,'Mantingan',50000,75000,100000),(2,'Banaran',75000,100000,150000),(3,'Walikukun Gp 3',100000,150000,150000),(4,'Godang',100000,150000,150000),(5,'Sragen',300000,350000,400000),(6,'Ngawi',300000,350000,400000),(7,'Jogorogo, Hargo Dumilah',350000,400000,500000),(8,'Ngawi (2)',350000,400000,500000),(9,'Magetan',450000,500000,600000),(10,'Solo',450000,500000,600000),(11,'Bandara Solo',550000,600000,650000),(12,'Madiun, Caruban',550000,600000,650000),(13,'Tawangmangu',600000,650000,800000),(14,'Sarangani',650000,700000,850000),(15,'Ponorogo',600000,650000,750000),(16,'Salatiga',650000,700000,800000),(17,'Nganjuk',650000,700000,850000),(18,'Wonogiri',650000,700000,850000),(19,'Bojonegoro',700000,750000,900000),(20,'Jogja',650000,700000,850000),(21,'Bandara Jogja (Kulon Progo)',900000,950000,1100000),(22,'Kediri',800000,850000,1000000),(23,'Kandangan (Gp 5)',850000,900000,1050000),(24,'Tawanggunung',900000,950000,1100000),(25,'Semarang',800000,850000,1050000),(26,'Trenggalek',800000,850000,1050000),(27,'Pacitan',900000,950000,1100000),(28,'Tulungagung',900000,950000,1150000),(29,'Mojokerto',900000,950000,1100000),(30,'Lamongan',950000,1000000,1200000),(31,'Blitar',950000,1000000,1200000),(32,'Wonosobo',950000,1000000,1200000),(33,'Malang',1000000,1050000,1250000),(34,'Surabaya',1000000,1050000,1250000),(35,'Gresik',1000000,1050000,1250000),(36,'Pasuruan',1050000,1100000,1300000),(37,'Probolinggo',1300000,1350000,1500000),(38,'Lumajang',1550000,1600000,1700000),(39,'Madura',1700000,1750000,1900000),(40,'Bondowoso',2100000,2150000,2300000),(41,'Jember',2100000,2150000,2300000);
/*!40000 ALTER TABLE `price_list_luar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_yayasan`
--

DROP TABLE IF EXISTS `price_list_yayasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_list_yayasan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(100) NOT NULL,
  `luxio` int DEFAULT '0',
  `elf_long` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_yayasan`
--

LOCK TABLES `price_list_yayasan` WRITE;
/*!40000 ALTER TABLE `price_list_yayasan` DISABLE KEYS */;
INSERT INTO `price_list_yayasan` VALUES (1,'Mantingan, Banaran',75000,100000),(2,'Walikukun Gp 3',100000,150000),(3,'Godang',100000,150000),(4,'Sragen',350000,450000),(5,'Ngawi',350000,450000),(6,'Jogorogo, Hargo Dumilah',400000,500000),(7,'Ngawi',400000,500000),(8,'Magetan',500000,650000),(9,'Solo',500000,650000),(10,'Bandara Solo',600000,700000),(11,'Madiun, Caruban',600000,700000),(12,'Tawangmangu',650000,900000),(13,'Sarangani',700000,1000000),(14,'Ponorogo',700000,1000000),(15,'Salatiga',700000,1000000),(16,'Nganjuk',700000,1000000),(17,'Wonogiri',700000,1000000),(18,'Bojonegoro',800000,1050000),(19,'Jogja',800000,1050000),(20,'Bandara Jogja (Kulon Progo)',1050000,1300000),(21,'Kediri',900000,1150000),(22,'Kandangan (Gp 5)',900000,1250000),(23,'Tawanggunung',1000000,1250000),(24,'Semarang',900000,1150000),(25,'Trenggalek',900000,1150000),(26,'Pacitan',1050000,1300000),(27,'Tulungagung',1050000,1300000),(28,'Mojokerto',1000000,1300000),(29,'Lamongan',1100000,1350000),(30,'Blitar',1100000,1350000),(31,'Wonosobo',1100000,1350000),(32,'Malang',1150000,1450000),(33,'Surabaya',1150000,1450000),(34,'Gresik',1150000,1500000),(35,'Pasuruan',1250000,1500000),(36,'Probolinggo',1550000,1800000),(37,'Lumajang',1950000,2200000),(38,'Madura',2100000,2350000),(39,'Bondowoso',2450000,2750000),(40,'Jember',2450000,2750000);
/*!40000 ALTER TABLE `price_list_yayasan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'adminunida','21232f297a57a5a743894a0e4a801fc3','admin'),(2,'aisyah','26bb533df5747c7a3f2a9cc48a8cf3ee','user'),(3,'amira','0ae39049910b110bea964228da2c9faa','user');
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

-- Dump completed on 2026-01-29 19:55:47
