-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: ballast.proxy.rlwy.net    Database: railway
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `rol` varchar(20) DEFAULT 'USUARIO',
  `estado` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` VALUES (1,'jojo','jojo@gmail.com','$2a$10$1iwKT6IURNNQFQ6FaRcKCeGr9k.Gp7IA1QurajGuaUZs.NvTcfKb2','Perú','','','Admin',1,'2025-12-26 22:23:36'),(2,'santana','santana@gmail.com','$2a$10$WESPPsxIxN5iecne1sylcuO/Z8LuFvRUh2lzquuZ8WxhCR6C0Xk8y','Argentina',NULL,NULL,'Admin',1,'2025-12-27 01:11:00'),(3,'josueaaa','josueobed13@gmail.com','$2a$10$vA/HeWn5KaIYYxtIXyNZWO8maC92Piw1zreBexpRnTtxyF44pWGyS','Perú',NULL,NULL,'Admin',1,'2025-12-27 01:33:14'),(4,'eduardo','eduardo@gmial.com','$2a$10$iXLkEkwmbV9br6s1YOGdBeuQbwgdes/28pyrUZXb1XHC3nMreFn3.','Peru',NULL,NULL,'usuario',0,'2025-12-27 04:12:53'),(5,'Ana Torres','anatorres@gmail.com','$2a$10$duKADICKe6coCVTUhvZcx.Yc8WLA6L7u20Ery3FgUkRhHceQtM9J.','Perú',NULL,NULL,'usuario',1,'2025-12-27 08:08:00'),(6,'Luis Ramírez','luisramirez@gmail.com','$2a$10$u6vVKcUICEgPhjEPyp5GvuIE.KE9FgRLH/zTGWRKyewpLQoF41l4O','Perú',NULL,NULL,'usuario',0,'2025-12-27 08:11:02'),(7,'Carla Mendoza','carla.mendoza@gmail.com','$2a$10$POOaObqKKyyZPH3lJXPDIOEmoJLuXIHhu7619iiN4dXHVBPUfgEH.','Argentina',NULL,NULL,'usuario',1,'2025-12-27 08:12:08'),(8,'Diego Salazar','diego.salazar@gmail.com','$2a$10$1/Ou58JadEIQLVVtEa/zaOO.e9YN4w7laWU2Zi/5/Sygkbn9kEmay','Argentina',NULL,NULL,'usuario',1,'2025-12-27 08:12:32'),(9,'María López','maria.lopez@gmail.com','$2a$10$mPvda6VtRrmVIJgbSBaKNeabPiZWw.2x1uB8XCANrcgZ31GBaJOWi','Colombia',NULL,NULL,'usuario',0,'2025-12-27 08:13:00'),(10,'José Pérez','jose.perez@gmail.com','$2a$10$u2rW8UsaBYvD8gxGpZwnsO8yVDxBpaj.gYCKv/d8.rr5y74G0LPz6','Colombia',NULL,NULL,'usuario',0,'2025-12-27 08:13:21'),(13,'Fernanda Ruiz','fernanda.ruiz@gmail.com','$2a$10$g89dyUMUaOMU7.R2TsHoVeMvKkjknOeABhq0lgKQwqWgUrbe0wLFm','Colombia',NULL,NULL,'usuario',1,'2025-12-27 08:14:23'),(14,'Carlos Vega','carlos.vega@gmail.com','$2a$10$Gsgz47Lk0XgB60aiN4xkh.9yDmEx1veOL34Btpu2Z8Lq3OHwt89iy','Colombia',NULL,NULL,'usuario',1,'2025-12-27 08:14:43'),(42,'Otniel','otnielparra@hotmail.com','$2a$10$rW2bmKkN5GKn819knEGmqu3snrDBH2upQI0NizP.yzOHtKERrECGu','Ven',NULL,NULL,'Admin',1,'2025-12-27 14:46:29'),(43,'Jeane','jeane@gmail.com','$2a$10$fdKZklDVTDqu9Lr2ViTxeenLFSremBPH7bvj4Kq1krX0xF6BtlFk2','Perú',NULL,NULL,'Admin',1,'2025-12-27 16:21:35'),(51,'Josefina','josefina@gmail.com','$2a$10$QMOjDvhPD82G70B9Art2O.yKxR0dE6bOq0RwIcUorPcsFPXKyufs6','Argentina',NULL,NULL,'usuario',1,'2025-12-27 21:57:06'),(56,'prueba2','prueba2@gmail.com','$2a$10$R7gcK/P9Kxdc8WGZFfY/SOdUcBFj1CVWnuMJD5pbN.4uMF8dGelJS','peru',NULL,NULL,'usuario',1,'2025-12-28 01:46:16'),(57,'prueba3@gmail.com','prueba3@gmail.com','$2a$10$4H5LnCMJzOr8Bi.CkVLP1OhTBbHrWsPEEAuSBi0uCnZPRQ88IZ.n6','peru',NULL,NULL,'usuario',1,'2025-12-28 05:39:00');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28  0:54:05
