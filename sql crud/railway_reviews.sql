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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `idReview` int NOT NULL AUTO_INCREMENT,
  `idCurso` int NOT NULL,
  `idUsuario` int NOT NULL,
  `comentario` text,
  `valoracion` int DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint DEFAULT '1',
  PRIMARY KEY (`idReview`),
  KEY `idCurso` (`idCurso`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `tb_cursos` (`idCurso`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `tb_usuarios` (`idUsuario`),
  CONSTRAINT `reviews_chk_1` CHECK ((`valoracion` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (5,2,1,'¡Excelente curso! Me ha ayudado a comprender las novedades de ES6+ y cómo aplicarlas en proyectos reales. Las explicaciones sobre funciones flecha, promesas y módulos fueron claras y prácticas. Recomiendo este curso para cualquier persona que quiera dominar JavaScript y mejorar su programación web.\r\n',5,'2025-12-27 07:26:47',1),(6,2,2,'Un curso muy completo para quienes quieren entender JavaScript de verdad y no solo copiar código. Explica desde las bases hasta conceptos modernos de ES6+, usando ejemplos claros y aplicados a la web real.',5,'2025-12-27 08:16:53',1),(7,2,3,'Este curso es una muy buena puerta de entrada al JavaScript actual, el que realmente se usa en proyectos web hoy. Va directo a lo importante: ES6+, lógica de programación y trabajo con el navegador.\r\n\r\nLas clases son prácticas y fáciles de seguir, con ejemplos reales como manejo del DOM, eventos, funciones modernas y código más limpio y ordenado. Ayuda bastante a entender cómo funciona JavaScript “por dentro” y no solo a hacer que las cosas funcionen.',5,'2025-12-27 08:19:39',1),(8,1,4,'Un curso perfecto para empezar en el mundo del desarrollo web desde cero, sin necesidad de experiencia previa. Explica de forma clara cómo funciona HTML5 para la estructura y CSS3 para el diseño, con ejemplos prácticos desde la primera clase.',4,'2025-12-27 08:20:41',1),(9,3,5,'Un curso práctico y fácil de seguir para aprender diseño gráfico desde cero sin complicarse con programas difíciles. Enseña los principios básicos del diseño como colores, tipografías, composición y jerarquía visual, usando Canva como herramienta principal.',4,'2025-12-27 08:21:19',1),(24,2,4,'El curso ayuda a entender JavaScript moderno usando ES6+. Los ejemplos son claros y prácticos.',4,'2025-12-27 08:33:39',1),(25,1,4,'Muy buen curso para empezar desde cero. Explica HTML y CSS de forma clara y ordenada.',4,'2025-12-27 08:33:39',1),(26,2,1,'Contenido bien explicado que permite comprender JavaScript moderno y aplicarlo en la web.',4,'2025-12-27 08:33:39',1),(27,1,3,'Excelente curso para aprender HTML y CSS desde cero. Ideal para principiantes.',5,'2025-12-27 08:33:39',1),(28,3,7,'Curso práctico y sencillo. Canva se aprende rápido y los resultados son muy buenos.',2,'2025-12-27 08:33:39',1),(29,4,3,'Muy buena introducción al UX/UI. Explica conceptos clave como usabilidad y experiencia de usuario.',4,'2025-12-27 08:33:39',1),(30,5,2,'Curso completo para entender los fundamentos del marketing digital desde cero.',2,'2025-12-27 08:33:39',1),(31,6,1,'Muy útil para aprender a crear publicidad efectiva en redes sociales.',3,'2025-12-27 08:33:39',1),(32,2,8,'Curso bien estructurado para reforzar JavaScript moderno.',3,'2025-12-27 08:33:39',1),(33,3,2,'Canva explicado de forma clara y práctica. Ideal para diseño rápido.',5,'2025-12-27 08:33:39',1),(34,2,7,'Buen curso para entender JavaScript moderno y ES6+.',2,'2025-12-27 08:33:39',1),(35,1,8,'Muy recomendable para quienes empiezan en desarrollo web.',4,'2025-12-27 08:33:39',1),(77,5,43,'Buen curso :) =P',4,'2025-12-27 21:15:27',1),(78,5,57,'lo máximo',5,'2025-12-28 05:39:42',1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28  0:54:08
