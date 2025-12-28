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
-- Table structure for table `tb_cursos`
--

DROP TABLE IF EXISTS `tb_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cursos` (
  `idCurso` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `descripcion` text NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `profesor` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `duracion` int NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cursos`
--

LOCK TABLES `tb_cursos` WRITE;
/*!40000 ALTER TABLE `tb_cursos` DISABLE KEYS */;
INSERT INTO `tb_cursos` VALUES (1,'HTML y CSS desde cero','Aprende a crear páginas web modernas usando HTML5 y CSS3.','Desarrollo Web','https://facialix.com/wp-content/uploads/2022/11/3201160_e33c_2.jpg','https://www.youtube.com/embed/ELSm-G201Ls','Carlos Pérez',90.00,20,1),(2,'JavaScript moderno','Domina JavaScript, ES6+ y programación orientada a la web.','Desarrollo Web','https://i.ytimg.com/vi/DAkQ_2xmmg8/maxresdefault.jpg','https://www.youtube.com/embed/z95mZVUcJ-E','Ana Torres',120.00,25,1),(3,'Diseño gráfico con Canva','Aprende principios básicos de diseño gráfico usando Canva.','Diséño','https://marketplace.canva.com/EAE76tEPGKY/1/0/1600w/canva-presentaci%C3%B3n-dise%C3%B1o-geometr%C3%ADa-minimalista-roja-verde-azul--vWadnOoSc8.jpg','https://www.youtube.com/embed/pQRyKB75Uk4','Lucía Gómez',80.00,15,1),(4,'UX/UI para principiantes','Diseña interfaces centradas en el usuario.','Diséño','https://imgproxy.domestika.org/unsafe/rs:fill/plain/src://course-images/000/055/620/55620-original.jpg?1743166108','https://www.youtube.com/embed/XtysRVCNLT0','Miguel Rojas',110.00,18,1),(5,'Marketing digital desde cero','Estrategias de marketing digital para redes sociales.','Marketing','https://i.ytimg.com/vi/YnhJNZxAH7A/maxresdefault.jpg','https://www.youtube.com/embed/v17EXDu3t0E','Paola Medina',95.00,16,1),(6,'Publicidad en redes sociales','Aprende a crear campañas efectivas en Facebook e Instagram.','Marketing','https://i.ytimg.com/vi/YepIJeODF2k/maxresdefault.jpg','https://www.youtube.com/embed/e3qH2LBoz5E','Jimy santi',10.00,10,1);
/*!40000 ALTER TABLE `tb_cursos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28  0:54:11
