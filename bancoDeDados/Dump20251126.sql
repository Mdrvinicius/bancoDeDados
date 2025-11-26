-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `caixas`
--

DROP TABLE IF EXISTS `caixas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caixas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `funcionario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `funcionario_id` (`funcionario_id`),
  CONSTRAINT `caixas_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixas`
--

LOCK TABLES `caixas` WRITE;
/*!40000 ALTER TABLE `caixas` DISABLE KEYS */;
INSERT INTO `caixas` VALUES (1,5),(5,6),(2,7),(3,14),(4,20);
/*!40000 ALTER TABLE `caixas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Atendente'),(2,'Caixa'),(3,'Gerente'),(4,'Farmacêutico'),(5,'Auxiliar de Estoque');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Analgesicos'),(2,'Antibioticos'),(3,'Vitaminas'),(4,'Anti-inflamatórios'),(5,'Dermocosméticos'),(6,'Antialérgicos'),(7,'Gripe e Resfriado'),(8,'Higiene Pessoal'),(9,'Controle de Diabetes'),(10,'Sais de Reidratação');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Cliente 01','81990011001','cliente01@mail.com'),(2,'Cliente 02','81990011002','cliente02@mail.com'),(3,'Cliente 03','81990011003','cliente03@mail.com'),(4,'Cliente 04','81990011004','cliente04@mail.com'),(5,'Cliente 05','81990011005','cliente05@mail.com'),(6,'Cliente 06','81990011006','cliente06@mail.com'),(7,'Cliente 07','81990011007','cliente07@mail.com'),(8,'Cliente 08','81990011008','cliente08@mail.com'),(9,'Cliente 09','81990011009','cliente09@mail.com'),(10,'Cliente 10','81990011010','cliente10@mail.com'),(11,'Cliente 11','81990011011','cliente11@mail.com'),(12,'Cliente 12','81990011012','cliente12@mail.com'),(13,'Cliente 13','81990011013','cliente13@mail.com'),(14,'Cliente 14','81990011014','cliente14@mail.com'),(15,'Cliente 15','81990011015','cliente15@mail.com'),(16,'Cliente 16','81990011016','cliente16@mail.com'),(17,'Cliente 17','81990011017','cliente17@mail.com'),(18,'Cliente 18','81990011018','cliente18@mail.com'),(19,'Cliente 19','81990011019','cliente19@mail.com'),(20,'Cliente 20','81990011020','cliente20@mail.com'),(21,'Cliente 21','81990011021','cliente21@mail.com'),(22,'Cliente 22','81990011022','cliente22@mail.com'),(23,'Cliente 23','81990011023','cliente23@mail.com'),(24,'Cliente 24','81990011024','cliente24@mail.com'),(25,'Cliente 25','81990011025','cliente25@mail.com'),(26,'Cliente 26','81990011026','cliente26@mail.com'),(27,'Cliente 27','81990011027','cliente27@mail.com'),(28,'Cliente 28','81990011028','cliente28@mail.com'),(29,'Cliente 29','81990011029','cliente29@mail.com'),(30,'Cliente 30','81990011030','cliente30@mail.com'),(31,'Cliente 31','81990011031','cliente31@mail.com'),(32,'Cliente 32','81990011032','cliente32@mail.com'),(33,'Cliente 33','81990011033','cliente33@mail.com'),(34,'Cliente 34','81990011034','cliente34@mail.com'),(35,'Cliente 35','81990011035','cliente35@mail.com'),(36,'Cliente 36','81990011036','cliente36@mail.com'),(37,'Cliente 37','81990011037','cliente37@mail.com'),(38,'Cliente 38','81990011038','cliente38@mail.com'),(39,'Cliente 39','81990011039','cliente39@mail.com'),(40,'Cliente 40','81990011040','cliente40@mail.com'),(41,'Cliente 41','81990011041','cliente41@mail.com'),(42,'Cliente 42','81990011042','cliente42@mail.com'),(43,'Cliente 43','81990011043','cliente43@mail.com'),(44,'Cliente 44','81990011044','cliente44@mail.com'),(45,'Cliente 45','81990011045','cliente45@mail.com'),(46,'Cliente 46','81990011046','cliente46@mail.com'),(47,'Cliente 47','81990011047','cliente47@mail.com'),(48,'Cliente 48','81990011048','cliente48@mail.com'),(49,'Cliente 49','81990011049','cliente49@mail.com'),(50,'Cliente 50','81990011050','cliente50@mail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fornecedor_id` int DEFAULT NULL,
  `data_compra` date DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1,'2024-01-05',500.00),(2,2,'2024-01-12',780.00),(3,3,'2024-02-03',650.00),(4,4,'2024-02-20',410.00),(5,5,'2024-03-15',1200.00),(6,6,'2024-03-30',890.00),(7,7,'2024-04-10',300.00),(8,8,'2024-04-25',640.00),(9,9,'2024-05-08',720.00),(10,10,'2024-05-22',500.00),(11,1,'2024-06-03',1500.00),(12,2,'2024-06-28',320.00),(13,3,'2024-07-04',760.00),(14,4,'2024-07-27',530.00),(15,5,'2024-08-19',830.00),(16,6,'2024-08-30',920.00),(17,7,'2024-09-05',430.00),(18,8,'2024-09-18',380.00),(19,9,'2024-10-02',1200.00),(20,10,'2024-10-21',750.00),(21,1,'2024-11-05',920.00),(22,2,'2024-11-17',510.00),(23,3,'2024-11-29',680.00),(24,4,'2024-12-03',420.00),(25,5,'2024-12-07',1500.00),(26,6,'2024-12-11',330.00),(27,7,'2024-12-16',460.00),(28,8,'2024-12-20',210.00),(29,9,'2024-12-22',860.00),(30,10,'2024-12-28',990.00);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES (1,'EMS'),(2,'Eurofarma'),(3,'Aché'),(4,'Neo Química'),(5,'Cimed'),(6,'Pfizer'),(7,'Sanofi'),(8,'Bayer'),(9,'GSK'),(10,'Johnson & Johnson');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Distribuidora Saúde Mais','00000000000101','81990012001'),(2,'Farmabrasil Supply','00000000000102','81990012002'),(3,'Nordeste Pharma','00000000000103','81990012003'),(4,'BioMed Distribuidora','00000000000104','81990012004'),(5,'UniFarma Atacado','00000000000105','81990012005'),(6,'VitaPharma','00000000000106','81990012006'),(7,'MedCenter','00000000000107','81990012007'),(8,'DoseCerta Distribuição','00000000000108','81990012008'),(9,'SaúdeLog','00000000000109','81990012009'),(10,'Alpha Pharma','00000000000110','81990012010');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cargo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cargo_id` (`cargo_id`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Marcos Silva','11111111111','81990010001',1),(2,'João Pedro','11111111112','81990010002',1),(3,'Carlos Santos','11111111113','81990010003',1),(4,'Paulo Henrique','11111111114','81990010004',4),(5,'Fernanda Souza','11111111115','81990010005',2),(6,'Larissa Lima','11111111116','81990010006',5),(7,'Marina Castro','11111111117','81990010007',2),(8,'José Ricardo','11111111118','81990010008',1),(9,'Eduardo Alves','11111111119','81990010009',3),(10,'Patrícia Melo','11111111110','81990010010',5),(11,'Gabriel Costa','11111111121','81990010011',4),(12,'Arthur Silva','11111111122','81990010012',1),(13,'Ana Paula','11111111123','81990010013',1),(14,'Raquel Santos','11111111124','81990010014',2),(15,'Daniel Freitas','11111111125','81990010015',3),(16,'Clara Nunes','11111111126','81990010016',2),(17,'Renato Barros','11111111127','81990010017',1),(18,'Beatriz Souza','11111111128','81990010018',4),(19,'Thiago Ramos','11111111129','81990010019',5),(20,'Camila Victor','11111111130','81990010020',1),(21,'Lucas Martins','11111111131','81990010021',1),(22,'Fábio Cardoso','11111111132','81990010022',2),(23,'Viviane Costa','11111111133','81990010023',3),(24,'Sofia Almeida','11111111134','81990010024',4),(25,'Igor Rocha','11111111135','81990010025',5);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_compra`
--

DROP TABLE IF EXISTS `itens_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `compra_id` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `preco_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compra_id` (`compra_id`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `itens_compra_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`),
  CONSTRAINT `itens_compra_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_compra`
--

LOCK TABLES `itens_compra` WRITE;
/*!40000 ALTER TABLE `itens_compra` DISABLE KEYS */;
INSERT INTO `itens_compra` VALUES (1,1,1,50,7.00),(2,1,2,30,12.00),(3,1,3,40,5.20),(4,2,4,20,30.00),(5,2,5,25,17.50),(6,2,6,10,29.00),(7,3,7,30,10.00),(8,3,8,15,14.50),(9,3,9,20,13.00),(10,4,10,10,19.90),(11,4,11,5,78.00),(12,4,12,30,8.00),(13,5,13,40,34.00),(14,5,14,30,15.00),(15,5,15,25,22.00),(16,6,16,30,12.90),(17,6,17,20,14.00),(18,6,18,25,19.00),(19,7,19,40,10.00),(20,7,20,20,50.00),(21,7,21,15,19.00),(22,8,22,30,11.50),(23,8,23,15,21.00),(24,8,24,20,27.00),(25,9,25,10,30.00),(26,9,26,10,90.00),(27,9,27,20,22.00),(28,10,28,50,40.00),(29,10,29,90,4.00),(30,10,30,60,9.00),(31,11,31,15,14.00),(32,11,32,30,6.90),(33,11,33,25,22.00),(34,12,34,40,9.00),(35,12,35,20,13.00),(36,12,36,20,8.50),(37,13,37,40,19.90),(38,13,38,30,8.00),(39,13,39,50,10.00),(40,14,40,60,5.00),(41,14,41,50,1.50),(42,14,42,40,6.00),(43,15,43,25,10.50),(44,15,44,20,12.50),(45,15,45,30,7.50),(46,16,46,30,5.00),(47,16,47,20,6.50),(48,16,48,25,8.00),(49,17,49,40,4.00),(50,17,50,20,6.00),(51,17,51,40,1.90),(52,18,52,30,5.00),(53,18,53,10,12.00),(54,18,54,15,17.00),(55,19,55,50,6.90),(56,19,56,40,5.90),(57,19,57,25,12.50),(58,20,58,20,6.90),(59,20,59,50,1.90),(60,20,60,60,5.90),(61,21,61,20,5.50),(62,21,62,20,10.10),(63,21,63,20,8.50),(64,22,64,40,5.50),(65,22,65,20,12.00),(66,22,66,10,70.00),(67,23,67,30,17.00),(68,23,68,20,22.90),(69,23,69,40,4.90),(70,24,70,30,17.00),(71,24,71,20,40.00),(72,24,72,15,19.00),(73,25,73,20,24.00),(74,25,74,20,12.00),(75,25,75,25,6.90),(76,26,76,10,80.00),(77,26,77,20,6.90),(78,26,78,20,7.90),(79,27,79,10,26.00),(80,27,80,40,6.90),(81,27,1,40,7.00),(82,28,2,40,12.00),(83,28,3,40,5.20),(84,28,4,20,30.00),(85,29,5,40,18.00),(86,29,6,10,29.00),(87,29,7,30,10.00),(88,30,8,40,14.50),(89,30,9,30,13.00),(90,30,10,25,19.90);
/*!40000 ALTER TABLE `itens_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens_venda`
--

DROP TABLE IF EXISTS `itens_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens_venda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `venda_id` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `preco_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `venda_id` (`venda_id`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `itens_venda_ibfk_1` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`),
  CONSTRAINT `itens_venda_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens_venda`
--

LOCK TABLES `itens_venda` WRITE;
/*!40000 ALTER TABLE `itens_venda` DISABLE KEYS */;
INSERT INTO `itens_venda` VALUES (1,1,1,1,8.90),(2,1,3,1,6.99),(3,1,30,1,11.90),(4,2,4,1,38.90),(5,2,1,1,8.90),(6,2,9,1,16.50),(7,3,3,2,6.99),(8,3,7,1,12.50),(9,3,30,1,11.90),(10,4,1,2,8.90),(11,4,2,1,14.50),(12,4,13,1,42.50),(13,5,31,1,15.00),(14,5,10,1,24.90),(15,5,18,1,25.90),(16,6,11,1,89.90),(17,6,27,1,29.90),(18,6,40,1,6.90),(19,7,1,1,8.90),(20,7,34,1,29.90),(21,7,20,1,59.90),(22,8,22,1,27.00),(23,8,19,1,12.90),(24,8,10,1,24.90),(25,9,14,1,19.90),(26,9,30,1,11.90),(27,9,1,1,8.90),(28,10,3,1,6.99),(29,10,2,1,14.50),(30,10,17,1,17.90),(31,11,9,1,16.50),(32,11,10,1,24.90),(33,11,5,1,22.00),(34,12,22,1,27.00),(35,12,23,1,21.00),(36,12,11,1,89.90),(37,13,1,1,8.90),(38,13,17,1,17.90),(39,13,40,1,6.90),(40,14,30,1,11.90),(41,14,3,1,6.99),(42,14,12,1,9.90),(43,15,28,1,49.90),(44,15,5,1,22.00),(45,15,10,1,24.90),(46,16,32,1,6.90),(47,16,40,1,6.90),(48,16,13,1,42.50),(49,17,11,1,89.90),(50,17,26,1,99.00),(51,17,23,1,21.00),(52,18,1,1,8.90),(53,18,3,1,6.99),(54,18,7,1,12.50),(55,19,14,1,19.90),(56,19,10,1,24.90),(57,19,28,1,49.90),(58,20,1,1,8.90),(59,20,2,1,14.50),(60,20,3,1,6.99),(61,21,4,1,38.90),(62,21,1,1,8.90),(63,21,5,1,22.00),(64,22,7,1,12.50),(65,22,21,1,19.00),(66,22,2,1,14.50),(67,23,12,1,9.90),(68,23,19,1,12.90),(69,23,1,1,8.90),(70,24,3,1,6.99),(71,24,10,1,24.90),(72,24,14,1,19.90),(73,25,17,1,17.90),(74,25,29,1,5.90),(75,25,31,1,15.00),(76,26,2,1,14.50),(77,26,9,1,16.50),(78,26,30,1,11.90),(79,27,18,1,25.90),(80,27,1,1,8.90),(81,27,14,1,19.90),(82,28,10,1,24.90),(83,28,14,1,19.90),(84,28,1,1,8.90),(85,29,7,1,12.50),(86,29,3,1,6.99),(87,29,2,1,14.50),(88,30,4,1,38.90),(89,30,5,1,22.00),(90,30,7,1,12.50),(91,31,1,1,8.90),(92,31,2,1,14.50),(93,31,12,1,9.90),(94,32,26,1,99.00),(95,32,11,1,89.90),(96,32,40,1,6.90),(97,33,14,1,19.90),(98,33,12,1,9.90),(99,33,10,1,24.90),(100,34,1,1,8.90),(101,34,7,1,12.50),(102,34,22,1,27.00),(103,35,30,1,11.90),(104,35,5,1,22.00),(105,35,41,1,2.90),(106,36,3,1,6.99),(107,36,18,1,25.90),(108,36,40,1,6.90),(109,37,10,1,24.90),(110,37,5,1,22.00),(111,37,12,1,9.90),(112,38,28,1,49.90),(113,38,7,1,12.50),(114,38,1,1,8.90),(115,39,11,1,89.90),(116,39,30,1,11.90),(117,39,14,1,19.90),(118,40,9,1,16.50),(119,40,2,1,14.50),(120,40,1,1,8.90),(121,41,3,1,6.99),(122,41,7,1,12.50),(123,41,10,1,24.90),(124,42,5,1,22.00),(125,42,14,1,19.90),(126,42,1,1,8.90),(127,43,11,1,89.90),(128,43,30,1,11.90),(129,43,20,1,59.90),(130,44,7,1,12.50),(131,44,12,1,9.90),(132,44,10,1,24.90),(133,45,2,1,14.50),(134,45,3,1,6.99),(135,45,1,1,8.90),(136,46,18,1,25.90),(137,46,17,1,17.90),(138,46,6,1,35.90),(139,47,31,1,15.00),(140,47,29,1,5.90),(141,47,14,1,19.90),(142,48,30,1,11.90),(143,48,10,1,24.90),(144,48,3,1,6.99),(145,49,9,1,16.50),(146,49,5,1,22.00),(147,49,13,1,42.50),(148,50,14,1,19.90),(149,50,1,1,8.90),(150,50,30,1,11.90);
/*!40000 ALTER TABLE `itens_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `categoria_id` int DEFAULT NULL,
  `fabricante_id` int DEFAULT NULL,
  `estoque` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `fabricante_id` (`fabricante_id`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`fabricante_id`) REFERENCES `fabricantes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Paracetamol 500mg',8.90,1,1,100),(2,'Ibuprofeno 400mg',14.50,4,1,120),(3,'Dipirona 1g',6.99,1,2,200),(4,'Amoxicilina 500mg',38.90,2,3,80),(5,'Vitamina C 1g',22.00,3,4,150),(6,'Ômega 3',35.90,3,4,90),(7,'Anti-alérgico Loratadina',12.50,6,5,60),(8,'Pomada Dermatológica',18.90,5,6,50),(9,'Xarope Expect.',16.50,7,7,75),(10,'Creme Hidratante',24.90,5,8,40),(11,'Insulina Regular',89.90,9,7,20),(12,'Soro Reposição',9.90,10,6,90),(13,'Multivitamínico A-Z',42.50,3,9,45),(14,'Anti-inflamatório Nimesulida',19.90,4,2,110),(15,'Cloroquina 150mg',27.90,2,3,60),(16,'Cetirizina 10mg',14.90,6,4,80),(17,'Kit Curativo',17.90,8,8,200),(18,'Shampoo Anticaspa',25.90,8,10,70),(19,'Sabonete Líquido',12.90,8,10,130),(20,'Protetor Solar FPS 50',59.90,5,8,40),(21,'Água Micelar',22.90,5,8,60),(22,'Pomada Bactericida',18.50,5,6,45),(23,'Spray Nasal',27.00,7,7,70),(24,'Vitamina D3',32.90,3,9,55),(25,'Colágeno Hidrolisado',39.90,3,9,45),(26,'Insulina NPH',99.00,9,7,18),(27,'Termômetro Digital',29.90,8,10,50),(28,'Glicose Teste Tiras',49.90,9,10,30),(29,'Dipirona Gotas',5.90,1,2,200),(30,'Ibuprofeno Gotas',11.90,4,2,180),(31,'Manta Térmica',19.90,8,8,40),(32,'Protetor Labial',9.90,5,8,120),(33,'Xarope Infantil',17.90,7,7,70),(34,'Aspirina',13.90,1,8,140),(35,'Antisséptico Bucal',16.90,8,10,85),(36,'Vitamina B12',28.90,3,9,50),(37,'Creme para Assaduras',14.90,5,6,40),(38,'Gel Antisséptico',9.90,8,10,90),(39,'Lenço Umedecido',12.90,8,10,200),(40,'Solução Fisiológica 500ml',6.90,10,7,120),(41,'Xarope Antitussígeno',21.90,7,7,60),(42,'Seringa 10ml',2.90,8,10,300),(43,'Álcool 70%',7.90,8,6,250),(44,'Máscara Cirúrgica',14.90,8,10,500),(45,'Luvas Descartáveis',19.90,8,10,400),(46,'Curativo Adesivo',8.90,8,6,350),(47,'Gaze Estéril',6.90,8,6,320),(48,'Meias Compressão',39.90,8,9,60),(49,'Enxaguante Bucal',17.90,8,10,100),(50,'Desodorante Spray',18.90,8,10,70),(51,'Protetor Solar FPS 30',39.90,5,8,45),(52,'Sabonete Antisséptico',11.90,8,10,150),(53,'Pomada Anti-inflamatória',23.90,4,6,60),(54,'Spray Antialérgico',24.90,6,5,70),(55,'Vitamina E',21.90,3,9,55),(56,'Vitamina A',26.90,3,9,45),(57,'Complexo B',29.90,3,9,40),(58,'Colírio Hidratante',34.90,7,7,30),(59,'Colírio Antialérgico',29.90,6,7,25),(60,'Antiácido Pastilhas',17.90,1,6,90),(61,'Antiácido Líquido',15.90,1,6,110),(62,'Gengibre Pastilhas',12.90,7,7,90),(63,'Spray Desinfetante',14.90,8,10,120),(64,'Protetor Íntimo',9.90,8,10,150),(65,'Talco Antisséptico',13.90,8,10,65),(66,'Creme Anti-rugas',89.90,5,8,30),(67,'Hidratante Corporal',19.90,5,8,85),(68,'Gel para Pernas',24.90,5,8,45),(69,'Escova Dental',7.90,8,10,500),(70,'Fio Dental',6.90,8,10,400),(71,'Enema Adulto',19.90,7,7,25),(72,'Enema Infantil',17.90,7,7,20),(73,'Protetor Solar Infantil',49.90,5,8,30),(74,'Vitamina K',31.90,3,9,50),(75,'Vitamina B6',25.90,3,9,40),(76,'Hidratante Facial',29.90,5,8,70),(77,'Ácido Hialurônico',89.90,5,8,25),(78,'Colírio Lubrificante',27.90,7,7,35),(79,'Suplemento Whey',99.90,3,9,20),(80,'Barras de Cereal',7.90,3,9,200);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_controlados`
--

DROP TABLE IF EXISTS `produtos_controlados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_controlados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto_id` int DEFAULT NULL,
  `registro_ms` varchar(50) DEFAULT NULL,
  `receita_obrigatoria` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `produto_id` (`produto_id`),
  CONSTRAINT `produtos_controlados_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_controlados`
--

LOCK TABLES `produtos_controlados` WRITE;
/*!40000 ALTER TABLE `produtos_controlados` DISABLE KEYS */;
INSERT INTO `produtos_controlados` VALUES (1,11,'MS001',1),(2,12,'MS002',1),(3,15,'MS003',1),(4,26,'MS004',1),(5,40,'MS005',1),(6,33,'MS006',1),(7,31,'MS007',1),(8,23,'MS008',1),(9,14,'MS009',1),(10,4,'MS010',1),(11,1,'MS011',0),(12,2,'MS012',0);
/*!40000 ALTER TABLE `produtos_controlados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_fornecedores`
--

DROP TABLE IF EXISTS `produtos_fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_fornecedores` (
  `produto_id` int NOT NULL,
  `fornecedor_id` int NOT NULL,
  `preco_fornecido` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`produto_id`,`fornecedor_id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  CONSTRAINT `produtos_fornecedores_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  CONSTRAINT `produtos_fornecedores_ibfk_2` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_fornecedores`
--

LOCK TABLES `produtos_fornecedores` WRITE;
/*!40000 ALTER TABLE `produtos_fornecedores` DISABLE KEYS */;
INSERT INTO `produtos_fornecedores` VALUES (1,1,7.10),(2,1,12.00),(3,1,5.10),(4,1,30.00),(5,1,18.00),(6,2,29.00),(7,2,10.50),(8,2,14.90),(9,2,13.00),(10,2,19.90),(11,3,80.00),(12,3,8.00),(13,3,35.00),(14,3,15.70),(15,3,22.00),(16,4,12.90),(17,4,14.00),(18,4,19.00),(19,4,10.00),(20,4,50.00),(21,5,19.00),(22,5,12.00),(23,5,21.00),(24,5,27.00),(25,5,30.00),(26,6,90.00),(27,6,25.00),(28,6,40.00),(29,6,4.10),(30,6,9.90),(31,7,15.00),(32,7,6.90),(33,7,22.00),(34,7,10.00),(35,7,13.50),(36,8,9.00),(37,8,19.90),(38,8,8.50),(39,8,10.90),(40,8,5.50),(41,9,2.00),(42,9,6.50),(43,9,10.50),(44,9,12.90),(45,9,7.50),(46,10,5.00),(47,10,6.50),(48,10,8.50),(49,10,4.30),(50,10,6.90),(51,1,1.90),(52,1,5.90),(53,1,12.00),(54,1,17.00),(55,1,6.50),(56,2,5.90),(57,2,12.50),(58,2,6.90),(59,2,1.90),(60,2,5.90),(61,3,5.50),(62,3,10.10),(63,3,8.50),(64,3,5.90),(65,3,12.00),(66,4,70.00),(67,4,17.00),(68,4,22.90),(69,4,4.90),(70,4,17.90),(71,5,40.00),(72,5,19.00),(73,5,24.90),(74,5,12.90),(75,5,6.90),(76,6,80.00),(77,6,6.90),(78,6,7.90),(79,6,26.00),(80,6,6.90);
/*!40000 ALTER TABLE `produtos_fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `funcionario_id` int DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `funcionario_id` (`funcionario_id`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,1,1,'2024-01-10',20.00),(2,2,3,'2024-01-12',35.00),(3,3,7,'2024-01-15',19.90),(4,4,1,'2024-02-01',42.00),(5,5,8,'2024-02-03',15.00),(6,6,9,'2024-02-20',99.90),(7,7,10,'2024-02-28',17.00),(8,8,12,'2024-03-05',55.90),(9,9,14,'2024-03-18',47.00),(10,10,15,'2024-03-29',12.90),(11,11,16,'2024-04-02',33.00),(12,12,17,'2024-04-15',84.90),(13,13,18,'2024-04-27',21.00),(14,14,20,'2024-05-05',13.90),(15,15,22,'2024-05-08',35.90),(16,16,23,'2024-05-20',66.00),(17,17,24,'2024-06-03',89.00),(18,18,25,'2024-06-18',14.90),(19,19,1,'2024-06-22',39.90),(20,20,3,'2024-06-27',22.00),(21,21,4,'2024-07-02',55.00),(22,22,5,'2024-07-15',109.00),(23,23,6,'2024-07-28',48.90),(24,24,7,'2024-08-01',24.90),(25,25,8,'2024-08-09',31.90),(26,26,9,'2024-08-15',72.00),(27,27,10,'2024-08-20',54.90),(28,28,11,'2024-09-01',17.90),(29,29,12,'2024-09-05',18.90),(30,30,13,'2024-09-15',22.90),(31,31,14,'2024-10-02',12.50),(32,32,15,'2024-10-12',66.90),(33,33,16,'2024-10-29',79.90),(34,34,17,'2024-11-05',19.90),(35,35,18,'2024-11-18',44.00),(36,36,19,'2024-11-28',59.00),(37,37,20,'2024-12-01',21.50),(38,38,21,'2024-12-05',33.50),(39,39,22,'2024-12-10',41.90),(40,40,23,'2024-12-12',14.90),(41,41,24,'2024-12-14',17.90),(42,42,25,'2024-12-16',18.50),(43,43,1,'2024-12-18',55.50),(44,44,2,'2024-12-20',22.90),(45,45,3,'2024-12-21',28.90),(46,46,4,'2024-12-22',42.00),(47,47,5,'2024-12-23',12.00),(48,48,6,'2024-12-24',10.90),(49,49,7,'2024-12-25',14.90),(50,50,8,'2024-12-26',16.90);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-26  1:15:35
