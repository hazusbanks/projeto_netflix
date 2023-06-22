-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db_netflix
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tb_catalogo`
--

DROP TABLE IF EXISTS `tb_catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_catalogo` (
  `id_catalogo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `imagem_capa` bit(1) DEFAULT NULL,
  `idioma_original` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `duracao` time NOT NULL,
  `ano_lancamento` date NOT NULL,
  `pais_origem` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `avaliacao` int NOT NULL,
  `idioma_disponivel` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sinopse` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `qtd_episodio` int NOT NULL,
  `oscar` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_classificacao` int NOT NULL,
  `id_idioma` int NOT NULL,
  `id_filme` int NOT NULL,
  `id_episodio` int NOT NULL,
  `id_serie` int NOT NULL,
  `id_ator` int NOT NULL,
  PRIMARY KEY (`id_catalogo`),
  KEY `fk_id_classificacao` (`id_classificacao`),
  KEY `fk_id_idioma` (`id_idioma`),
  KEY `fk_id_id_filme` (`id_filme`),
  KEY `fk_id_episodio` (`id_episodio`),
  KEY `fk_id_serie` (`id_serie`),
  KEY `fk_id_ator` (`id_ator`),
  CONSTRAINT `fk_id_ator` FOREIGN KEY (`id_ator`) REFERENCES `tb_ator` (`id_ator`),
  CONSTRAINT `fk_id_classificacao` FOREIGN KEY (`id_classificacao`) REFERENCES `tb_classificacao` (`id_classificacao`),
  CONSTRAINT `fk_id_episodio` FOREIGN KEY (`id_episodio`) REFERENCES `tb_episodio` (`id_episodio`),
  CONSTRAINT `fk_id_id_filme` FOREIGN KEY (`id_filme`) REFERENCES `tb_filme` (`id_filme`),
  CONSTRAINT `fk_id_idioma` FOREIGN KEY (`id_idioma`) REFERENCES `tb_idioma` (`id_idioma`),
  CONSTRAINT `fk_id_serie` FOREIGN KEY (`id_serie`) REFERENCES `tb_serie` (`id_serie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_catalogo`
--

LOCK TABLES `tb_catalogo` WRITE;
/*!40000 ALTER TABLE `tb_catalogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_catalogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-21 23:28:18
