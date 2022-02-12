-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: katchaka2
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` bigint NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` bigint NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interet`
--

DROP TABLE IF EXISTS `interet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interet` (
  `id` bigint NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interet`
--

LOCK TABLES `interet` WRITE;
/*!40000 ALTER TABLE `interet` DISABLE KEYS */;
/*!40000 ALTER TABLE `interet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invitation` (
  `id` bigint NOT NULL,
  `date_envoi` datetime(6) DEFAULT NULL,
  `date_lecture` datetime(6) DEFAULT NULL,
  `est_accepte` bit(1) DEFAULT NULL,
  `destinataire_id` bigint DEFAULT NULL,
  `expediteur_id` bigint DEFAULT NULL,
  `vie_commune_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp9yhygxd7b90ai6jetuto6phj` (`destinataire_id`),
  KEY `FKlx7axuc2x203658bitemj15d8` (`expediteur_id`),
  KEY `FKlh9lvf1sav4vchex90bvaaxe2` (`vie_commune_id`),
  CONSTRAINT `FKlh9lvf1sav4vchex90bvaaxe2` FOREIGN KEY (`vie_commune_id`) REFERENCES `vie_commune` (`id`),
  CONSTRAINT `FKlx7axuc2x203658bitemj15d8` FOREIGN KEY (`expediteur_id`) REFERENCES `personne` (`id`),
  CONSTRAINT `FKp9yhygxd7b90ai6jetuto6phj` FOREIGN KEY (`destinataire_id`) REFERENCES `personne` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint NOT NULL,
  `contenu` varchar(255) DEFAULT NULL,
  `date_envoi` date DEFAULT NULL,
  `date_lecture` date DEFAULT NULL,
  `destinataire_id` bigint DEFAULT NULL,
  `expediteur_id` bigint DEFAULT NULL,
  `vie_commune_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7p9kwtm8asjdgtfqnl8m7il30` (`destinataire_id`),
  KEY `FKicthmy1nyitju084kvh8xj9qo` (`expediteur_id`),
  KEY `FKemg1nksla3hilv9cto870yxga` (`vie_commune_id`),
  CONSTRAINT `FK7p9kwtm8asjdgtfqnl8m7il30` FOREIGN KEY (`destinataire_id`) REFERENCES `personne` (`id`),
  CONSTRAINT `FKemg1nksla3hilv9cto870yxga` FOREIGN KEY (`vie_commune_id`) REFERENCES `vie_commune` (`id`),
  CONSTRAINT `FKicthmy1nyitju084kvh8xj9qo` FOREIGN KEY (`expediteur_id`) REFERENCES `personne` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personne`
--

DROP TABLE IF EXISTS `personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personne` (
  `id` bigint NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `est_fumeur` bit(1) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `nb_credits` int NOT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  `genre_id` bigint DEFAULT NULL,
  `genre_recherche_id` bigint DEFAULT NULL,
  `statut_id` bigint DEFAULT NULL,
  `ville_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK47vwc3exi8yc0phf8j6uphg4d` (`statut_id`),
  KEY `FKq36hgg99a3t0jsxxbwprx445r` (`ville_id`),
  KEY `FKowygc5xypok0vpt391x8rfl3j` (`genre_id`),
  KEY `FK3pvw5mui042aa9bfna65jgwf3` (`genre_recherche_id`),
  CONSTRAINT `FK3pvw5mui042aa9bfna65jgwf3` FOREIGN KEY (`genre_recherche_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `FK47vwc3exi8yc0phf8j6uphg4d` FOREIGN KEY (`statut_id`) REFERENCES `statut` (`id`),
  CONSTRAINT `FK7kjmxfjq6vov7dhtqind79l0u` FOREIGN KEY (`genre_recherche_id`) REFERENCES `genre` (`id`),
  CONSTRAINT `FKe248orrxo6gvccxq5apikjgfh` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  CONSTRAINT `FKowygc5xypok0vpt391x8rfl3j` FOREIGN KEY (`genre_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `FKq36hgg99a3t0jsxxbwprx445r` FOREIGN KEY (`ville_id`) REFERENCES `ville` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personne`
--

LOCK TABLES `personne` WRITE;
/*!40000 ALTER TABLE `personne` DISABLE KEYS */;
/*!40000 ALTER TABLE `personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personne_interets`
--

DROP TABLE IF EXISTS `personne_interets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personne_interets` (
  `personnes_id` bigint NOT NULL,
  `interets_id` bigint NOT NULL,
  KEY `FK28dxwriijv208qq10x833y1mp` (`interets_id`),
  KEY `FKs9w7y6ljnw3pgc1svst0mculf` (`personnes_id`),
  CONSTRAINT `FK28dxwriijv208qq10x833y1mp` FOREIGN KEY (`interets_id`) REFERENCES `interet` (`id`),
  CONSTRAINT `FKs9w7y6ljnw3pgc1svst0mculf` FOREIGN KEY (`personnes_id`) REFERENCES `personne` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personne_interets`
--

LOCK TABLES `personne_interets` WRITE;
/*!40000 ALTER TABLE `personne_interets` DISABLE KEYS */;
/*!40000 ALTER TABLE `personne_interets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut`
--

DROP TABLE IF EXISTS `statut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statut` (
  `id` bigint NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut`
--

LOCK TABLES `statut` WRITE;
/*!40000 ALTER TABLE `statut` DISABLE KEYS */;
/*!40000 ALTER TABLE `statut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vie_commune`
--

DROP TABLE IF EXISTS `vie_commune`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vie_commune` (
  `id` bigint NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `nb_credits` int NOT NULL,
  `invitation_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7sld8yloshqmhrlst6u6fbxte` (`invitation_id`),
  CONSTRAINT `FK7sld8yloshqmhrlst6u6fbxte` FOREIGN KEY (`invitation_id`) REFERENCES `invitation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vie_commune`
--

LOCK TABLES `vie_commune` WRITE;
/*!40000 ALTER TABLE `vie_commune` DISABLE KEYS */;
/*!40000 ALTER TABLE `vie_commune` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ville`
--

DROP TABLE IF EXISTS `ville`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ville` (
  `id` bigint NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ville`
--

LOCK TABLES `ville` WRITE;
/*!40000 ALTER TABLE `ville` DISABLE KEYS */;
/*!40000 ALTER TABLE `ville` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-12  3:25:35
