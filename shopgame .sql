-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: shopgame
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `donmua`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopgame`.`donmua` (
  `Madonmua` int(11) NOT NULL AUTO_INCREMENT,
  `Mataikhoan` int(11) NOT NULL,
  `Manguoidung` varchar(50) NOT NULL,
  `Ngaymua` datetime NOT NULL,
  PRIMARY KEY (`Madonmua`),
  KEY `DONMUA_TAK_FK_idx` (`Mataikhoan`),
  KEY `DONMUA_NGD_FK_idx` (`Manguoidung`),
  CONSTRAINT `DONMUA_NGD_FK` FOREIGN KEY (`Manguoidung`) REFERENCES `nguoidung` (`Tendangnhap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DONMUA_TAK_FK` FOREIGN KEY (`Mataikhoan`) REFERENCES `taikhoan` (`Ma`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donmua`
--

LOCK TABLES `donmua` WRITE;
/*!40000 ALTER TABLE `donmua` DISABLE KEYS */;
/*!40000 ALTER TABLE `donmua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinhanh`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopgame`.`hinhanh` (
  `Mahinhanh` int(11) NOT NULL AUTO_INCREMENT,
  `Mataikhoan` int(11) NOT NULL,
  `Hinhanh` longblob,
  PRIMARY KEY (`Mahinhanh`),
  KEY `HINHANH_TAK_FK_idx` (`Mataikhoan`),
  CONSTRAINT `HINHANH_TAK_FK` FOREIGN KEY (`Mataikhoan`) REFERENCES `taikhoan` (`Ma`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinhanh`
--

LOCK TABLES `hinhanh` WRITE;
/*!40000 ALTER TABLE `hinhanh` DISABLE KEYS */;
/*!40000 ALTER TABLE `hinhanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopgame`.`nguoidung` (
  `Tendangnhap` varchar(50) NOT NULL,
  `Kichhoat` bit(1) NOT NULL,
  `Matkhau` varchar(50) NOT NULL,
  `Kieunguoidung` varchar(50) NOT NULL,
  `Tennguoidung` varchar(255) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Sodienthoai` varchar(50) NOT NULL,
  `Tien` double NOT NULL,
  PRIMARY KEY (`Tendangnhap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('Khai',_binary '','123','NGUOI_DUNG','Khai','Khai@gmail.com','036316311',2400000),('phu',_binary '','123','QUAN_TRI','Ng?c Phú','ngocphu@gmail.com','152121012',200000),('quat',_binary '','123','NGUOI_DUNG','H? Qu?t','hongocquat@gmail.com','365255375',73200000);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopgame`.`taikhoan` (
  `Ma` int(11) NOT NULL AUTO_INCREMENT,
  `Loai` varchar(255) NOT NULL,
  `Gia` double NOT NULL,
  `Vip` int(11) NOT NULL,
  `Mua` bit(1) DEFAULT NULL,
  `Tentaikhoan` varchar(255) NOT NULL,
  `Matkhautaikhoan` varchar(255) NOT NULL,
  `Thongtin` varchar(255) NOT NULL,
  `Cauhoibaomat` varchar(255) NOT NULL,
  `Cautraloibaomat` varchar(255) NOT NULL,
  `Emailtaikhoan` varchar(50) DEFAULT NULL,
  `CMND` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Ma`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-26  0:20:10
