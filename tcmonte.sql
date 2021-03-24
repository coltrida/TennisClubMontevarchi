-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: tcmontevarchi
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint unsigned DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_user`
--

DROP TABLE IF EXISTS `booking_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_user_booking_id_foreign` (`booking_id`),
  KEY `booking_user_user_id_foreign` (`user_id`),
  CONSTRAINT `booking_user_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`),
  CONSTRAINT `booking_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_user`
--

LOCK TABLES `booking_user` WRITE;
/*!40000 ALTER TABLE `booking_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `giorno` date NOT NULL,
  `orainizio` tinyint unsigned NOT NULL,
  `tipo` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campo` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_giorno_index` (`giorno`),
  KEY `bookings_orainizio_index` (`orainizio`),
  KEY `bookings_campo_index` (`campo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disponibile` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'Campo1',1,NULL,NULL),(2,'Campo2',1,NULL,NULL),(3,'Campo3',1,NULL,NULL),(4,'Campo4',1,NULL,NULL),(5,'Campo5',1,NULL,NULL);
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_03_09_130529_create_bookings_table',1),(5,'2021_03_09_130745_booking_user',1),(6,'2021_03_14_154000_create_jobs_table',1),(7,'2021_03_15_102544_create_fields_table',1),(8,'2021_03_17_164609_create_activity_log_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soci`
--

DROP TABLE IF EXISTS `soci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soci` (
  `user` varchar(12) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `anno` int NOT NULL,
  `soprannome` varchar(20) NOT NULL,
  `classifica` varchar(3) NOT NULL,
  `stile` varchar(20) NOT NULL,
  `risultato` text NOT NULL,
  `gratis` int NOT NULL,
  `illimitati` int NOT NULL,
  `ricaricato` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soci`
--

LOCK TABLES `soci` WRITE;
/*!40000 ALTER TABLE `soci` DISABLE KEYS */;
INSERT INTO `soci` VALUES ('admin','Circolo','Montevarchi',1930,'','','','',0,1,0),('guga','Marco','Catania',1975,'catanga','D6','Pallettaro','',0,0,0),('mala','Alessandro','Malatesta',1966,'','','','',0,0,0),('lazze','Luca','Lazzerini',1960,'','','','',0,0,0),('giamma','Gianmarco','Guerrini',1965,'','',' ','',0,0,0),('romeo','Lido','Ghezzi',1949,'','','','',0,0,0),('anto61','Antonio','Francini',1961,'','','','',0,0,0),('super','Mario','Felloni',1967,'spiderman','4/2','Attaccante da fondo','consiglio tutti i miei avversari di giocarmi sul diritto!! Il Righi è troppo forte per me ',0,0,0),('giacomo78','Giacomo','Stoppielli',1978,'','','','',0,0,0),('anto','Antonio','DeCristofaro',1965,'','','Serve And Volley','',0,0,0),('emanuele','Emanuele','Cresti',1966,'','','','',0,0,0),('ezio00','Matteo','Cavoto',2000,'','','','',0,0,0),('lucio69','Luciano','Cavoto',1969,'','','','',0,0,0),('sabri','Sabrina','Armi',1962,'','','','',0,0,0),('samuele66','Samuele','Baldini',1966,'','','','',0,0,0),('tommy76','Tommaso','Bargellini',1976,'','',' ','Vincitore Torneo Sociale Cat.NC 2010',0,0,0),('daniele','Daniele','Boni',1978,'','','','',0,0,0),('rapido','Marco','Mini',1962,'','','','',0,0,0),('hanzo_rsv','Jois','Manetti',1976,'','',' ','',0,1,0),('marco70','Marco','Paolacci',1970,'','','','',0,0,0),('riccardino26','Riccardo','Paolacci',1999,'','','','',0,0,0),('renzim','Massimiliano','Renzi',1970,'','4/6','Completo','',0,0,0),('ale','Alessandro','Righi',1975,'manodepetra','4.5','Completo','righi b. jois 6/4 5-0\r\nrighi/rossi b. jois fabbrini 6/3 5/7 6/3 6/4\r\nrighi ribatte jois 6/3 3/2\r\nrighi batte antinori 6/1 2/1 in 45 minuti',0,0,0),('lucio','Luciano','Rossetti',1951,'','','','',0,0,0),('pitena','Romano','Scala',1954,'','','','',0,0,0),('bigamore','Moreno','Bigazzi',1954,'','','','',0,0,0),('baco 54','Stefano','Casini',1954,'','NC.','Pallettaro','',1,0,0),('c83.stella','Chiara','Gonnelli',1983,'','','','',1,0,0),('maurino','Mauro','Nardi',1983,'Maurinchio','4.1',' ','alla ricerca di un 4.1...',0,1,0),('alex','Alessandro','Rosichetti',1978,'','','','',0,0,0),('pagliai','Roberto','Pagliai',1954,'','','','',1,0,0),('pieralli','Franco','Pieralli',1953,'tarango','ex ',' ','sono il giocatore piu corretto del circolo!!!!e sono il secondo diritto piu forte del circolo dopo \"il Taccari (Alberto)\"....',0,1,0),('dona','Massimo','Donati',1973,'','','','',0,1,0),('coscine','Maurizio','Inghilesi',1961,'','','','',0,0,0),('manolo','Mauro','Manetti',1946,'','','','',0,0,0),('nalda','Andrea','Naldini',1964,'','',' ','',0,0,0),('vale','Valerio','Viticchi',1940,'','','','',0,0,0),('nadal','Alessandro','Aliverti',1985,'**RAFA**','4.5','Attaccante da fondo','',0,0,0),('fainacorso','Federico','Corsini',1976,'','','Attaccante da fondo','',0,0,0),('delfus','Delfo','Neri',1936,'','','','',0,0,0),('pampa','Mauro','Pampaloni',1976,'il pampa','4nc','Attaccante da fondo','1turno torneo sociale c\r\n\r\n',0,0,0),('brax1983','Francesco','Brandi',1983,'','','','',0,0,0),('ricca','Riccardo','Mazzoni',1970,'','',' ','',0,0,0),('giorgia','Giorgia','Mascolo',2000,'','',' ','',0,0,1),('mascolo','Riccardo','Mascolo',1968,'','',' ','',0,0,1),('gaggia','Piero','Gaggiani',1948,'','',' ','',0,0,0),('fernando','Fernando','Fabbrini',1965,'Gambesecche','nc','Pallettaro','',0,0,0),('carlino','Carlo','Dolfi',1956,'','',' ','',0,0,0),('marcus21','Alberto','Rossi',1973,'','','','',0,0,0),('keef','Lorenzo','Crociani',1995,'','',' ','',0,0,0),('elisaedario','Elisa','Zamboni',1973,'','','','',0,0,0),('liso','Alessandro','Antinori',1972,'','','','',0,0,0),('elia2000','Elia','Baldini',2000,'','',' ','',0,0,0),('angela','Angela','Barone',1973,'','','','',0,0,0),('marco','Marco','Casini',2001,'','',' ','',0,0,0),('kalle','Luca','Bazzanti',1964,'','',' ','',0,0,0),('pietro','Pietro','Bencini',1951,'','',' ','',0,0,0),('mabene','Mariano','Capasso',1948,'','','Attaccante da fondo','',0,0,0),('sergio','Sergio','Carsughi',1956,'','',' ','',0,0,0),('alessandro','Alessandro','Mazzucco',1992,'','',' ','',0,0,0),('serena','Serena','Gaggiani',1990,'','','','',0,0,0),('almer','Alessandro','Merli',1959,'','',' ','',0,0,0),('mugnai','Stefano','Mugnai',1969,'','',' ','',0,0,1),('gabri','Gabriele','Mugnai',1998,'','',' ','',0,0,1),('guest3','OSPITE','NONSOCIO',1990,'','','','',0,1,0),('renzigal','Galeazzo','Renzi',1943,'','',' ','',0,0,0),('andrearapacc','Andrea','Rapaccini',1951,'','','','',0,0,0),('romignano','Riccardo','Rossi',1961,'','',' ','',0,0,0),('tiziano','Tiziano','Sandroni',1973,'tizzy','',' ','gioco merc/ven pausa pranzo\r\n3357213320',0,0,0),('simonti','Leonardo','Simonti',1973,'','',' ','',0,0,1),('sinattiroger','Matteo','Sinatti',1979,'','',' ','',0,0,0),('massi','Massimiliano','Tassi',1976,'','4.2','Completo','Istruttore 1° grado, diploma Isef,     \r\n',0,0,1),('matri','Stefano','Toti',1960,'','',' ','',0,0,0),('raffa','Raffaella','Verdi',1970,'','',' ','',0,0,0),('marghe','Margherita','Casprini',2001,'','',' ','',0,0,0),('mirio','Mirio','ButtiFratini',1945,'','',' ','',0,0,0),('chella','Mario','Chellini',1940,'','',' ','',0,0,0),('ampelio','PierGiorgio','Peri',1946,'','',' ','',0,0,0),('et','Emanuele','Tortoli',1983,'','',' ','',0,1,0),('ale73','Alessandro','Bianchi',1973,'','','','',0,0,0),('bartu','Sergio','Bartucci',1952,'','',' ','ora come ora vinco solo con il baco.......',0,1,0),('dosmo','Dosmo','Borgioli',1985,'','','Pallettaro','',1,0,0),('francescaban','Francesca','Bani',1972,'','','','',0,0,0),('filippo.nomp','Filippo','Nompari',1975,'','','','',0,0,0),('banicarlo','Carlo','Bani',1977,'','','','',0,0,0),('cappelletti','Luciano','Cappelletti',1954,'','','','',1,0,0),('claudioc','Claudio','Chiassai',1950,'','',' ','',1,0,0),('cora','Alessandro','Coradeschi',1957,'','',' ','',1,0,0),('cristofani','Alberto','Cristofani',1953,'','',' ','',1,0,0),('mgrifoni','Marco','Grifoni',1976,'','','','',0,0,0),('giamma25','Giammarco','Sicuro',1983,'','',' ','',1,0,0),('falcio','Francesco','Falcioni',1969,'','',' ','',1,0,0),('cristina03','Cristina','Bardelloni',1975,'','','','',0,0,0),('mazinga','Giovanni','Guerrini',1960,'','',' ','',0,1,0),('villapetrea','Rodolfo','Mannini',1946,'','',' ','',0,1,0),('flamig','Flavia','Migliorini',1971,'','',' ','',0,1,0),('manfri','Rudi','Migliorini',1958,'','',' ','',1,0,0),('jocri','Johnny','Caneschi',1971,'','','','',0,0,0),('numerouno','Leonardo','Paterniti',1957,'','',' ','',1,0,0),('giomax','Massimiliano','Renai',1973,'','',' ','',0,1,0),('patagonia','PaoloAntonio','Ricci',1958,'','',' ','',1,0,0),('quercia','Andrea','Rossi',1970,'','','Serve And Volley','',0,1,0),('fitodado','Corrado','Salvini',1966,'','',' ','',1,0,0),('buccia86','Alberto','Buccianti',1986,'','','','',0,0,0),('vucinic','Alberto','Taccari',1989,'scott','3.1','Attaccante da fondo','sul diritto... del bassini maiiiii....gaaaaaaaaaaaaaaaaaaa!!!',0,1,0),('corrado','Corrado','Cattabiani',1959,'','',' ','',0,0,0),('dudano4','Giuliano','Franceschetti',1942,'','',' ','',0,0,1),('verdelli','Roberto','Verdelli',1946,'','',' ','',0,0,0),('batigol','Alfredo','Ferrini',1968,'','',' ','',0,0,0),('sauro56','Sauro','Innocenti',1956,'','',' ','',0,0,0),('riccardocion','Riccardo','Cioncolini',1975,'','','','',0,0,0),('mosconi','Francesca','Mosconi',1972,'','',' ','',0,0,0),('fabio','Fabio','Nizzoli',1964,'','',' ','',0,0,0),('viviana','Vivenz','Nesi',1976,'','','','',0,0,0),('gianmarco','gianmarco','rosseti',1978,'','','','',0,0,0),('MonteTinacci','Alessandro','Tinacci',1968,'','','','',0,0,0),('','Riccardo','Cioncolini',1930,'','','','',0,0,0),('150965','Daniele','Visani',1965,'','4/4','Completo','',0,0,0),('tommi','Tommaso','Fei',1999,'','',' ','',0,0,0),('gino','Daniele ','Bernacchioni',1982,'','4.6',' ','',0,0,0),('gnnterranova','Giovanni','Terranova',1959,'','',' ','',0,0,0),('elena','Elena','Romoli',1997,'','',' ','',0,0,0),('guest1','NonSocio','Under',2011,'','','','',0,0,0),('guest2','NonSocio','Over',1945,'','','','',0,0,0),('guest3','OSPITE','NONSOCIO',1990,'','','','',0,0,0),('baro','Roberto','Barone',1960,'','','','',0,1,0),('calvettina','Margherita','Calvetti',1998,'','','','',0,0,0),('alberto3','Tennis','2',1975,'','','','',0,1,0),('more','Moreno','Capanni',1957,'','','','',0,0,0),('allen','allenamento','agonistica',1975,'','','','',0,1,0),('matteo87','Matteo','Leggio',1987,'','','','',0,0,0),('albe2','Tennis','Junior',1969,'','','','',0,1,0),('albe1','Tennis','Adulti',1969,'','','','',0,1,0),('alberto','Tennis','1',1969,'','','','',0,1,0),('spigola','Paolo','Panichi',1940,'','','','',0,0,0),('laura','Laura','Carbonai',1974,'','','','',0,0,0),('ricca94','Riccardo','Guerrini',2004,'','',' ','',0,0,0),('valeria','Valeria','Pieralli',1994,'','','','',0,1,0),('scatenotti','Andrea','Tata',1963,'','','','',0,0,0),('','Andjelic','Mia',1999,'','','','',0,0,0),('lori','Lorenzo','Matteini',2000,'','','','',0,0,0),('lala','Alice','Ferrini',2001,'','','','',0,0,0),('massimo70','Massimo','Vilardi',1970,'','','Pallettaro','',0,0,0),('serenella','Roberto','Lucaccini',1950,'','','','',0,0,0),('rossi94','Jacopo','Rossi',1994,'','','','',0,0,0),('rossi61','Maurizio','Rossi',1961,'','','','',0,0,0),('fede','Federico','Ariano',1968,'','','','',0,0,0),('prova','prova','prova',1975,'','','','',0,0,0),('Chiara','Chiara','Scarnicci',1975,'','','','',0,0,0),('oliva','Oliva','Primo',1948,'','','','',0,0,0),('edoardo','Edoardo','Templari',1993,'','4.6',' ','',0,0,0),('andjelic','Mia','Andjelic',1999,'','','','',0,0,0),('france','Francesco','Barone',1997,'','','','',1,0,0),('andrea1976','Andrea','Morbidelli',1976,'','','','',0,0,0),('pier','Piergiovanni','Rossi',2007,'','','','',1,0,0),('fabrizio ','Fabrizio','Renzi',1972,'','','','',0,0,0),('niki','Niccolò','Rossi',1998,'','','','',0,0,0),('fiorentina','Paolo','Donzellini',1950,'','','','',0,1,0),('gago','Leonardo','BaldiniTosi',1970,'','','','',0,0,0),('toro','Giancarlo','Nardi',1948,'','','','',1,0,0),('giulina89','Giulia','Baldi',1989,'','','','',0,0,0),('veronica','Veronica','Mascolo',2002,'','','','',0,0,0),('brodo','Mario','Baldini',1955,'','','','',0,0,0),('loredero','Lorenzo','Derobertis',1969,'','','','',0,0,0),('fededero','Federico','Derobertis',2006,'','','','',0,0,0),('bex64','Stefano','Berti',1964,'','','','',0,0,0),('paolino','Paolo','Menci',1982,'','','','',0,0,0),('armchen','Guido','Braccini',2005,'','',' ','',0,0,0),('ferdi','Ferdinando','Bianchi',2002,'','','','',0,0,0),('lcu24','Luca','Arrotini',1965,'','','','',0,0,0),('armchen2','Roberto','Braccini',1967,'','','','',0,0,0),('lucapini','Luca','Pinizzotto',1984,'','','','',0,0,0),('fm77','Francesca','Mazziotti',1977,'','','','',0,0,0),('claudiodelv','Claudio','Delvita',1968,'','','','',0,0,0),('','Gianluca','Biagioni',0,'','','','',0,0,0),('bubu','Gianluca','Biagioni',2005,'','','','',0,0,0),('federico bru','Federico','Bruschi',1976,'','','','',0,0,0),('bronzi marco','Marco','Bronzi',1984,'','','','',0,0,0),('paolo arturo','Paolo','Calvo',1946,'','','','',0,0,0),('alberto74','Stefano','Calvo',1974,'','','','',0,0,0),('richelieu','Marco','Taccari',1953,'','','','',0,1,0),('losiflores','Lorenzo','Losi',1991,'','','','',0,0,0),('lollo','Lorenzo','Dolfi',1981,'','','','',0,0,0),('logan86','Tiziano','Meoni',1986,'','','','',0,0,0),('ina','Valentina','Billi',1984,'','','','',0,0,0),('tlin','Andrea','Otelli',1981,'','','','',0,0,0),('sere','Serena','Bonechi',1985,'','','','',0,0,0),('taribo','Massimo','Rinaldi',1968,'','','','',0,0,0),('lobrill','Lorenzo','Brilli',1971,'','','','',0,0,0),('viola','Giorgio','Biagianti',1959,'','','','',0,0,0),('fabry7','Fabrizio','Frosinini',1973,'','','','',0,0,0),('paolo','Paolo','Pieraccini',1955,'','','','',0,0,0),('gatto','marco','faenzi',1959,'','','','',1,0,0),('kkimi','Alessandro','Innocenti',1971,'','','','',0,0,0),('melissa','Francesco','Tronci',1944,'','','','',0,0,0),('trinità','Simone','Becattini',1969,'','','','',0,0,0),('cambo','Marco','Camiciottoli',1976,'','','','',0,0,0),('milan','Luciano','Fabbri',1961,'','','','',0,0,0),('maurizio','Maurizio','Ciabatti',1965,'','','','',0,0,0),('cristian296','Cristian','Ravagni',1976,'','','','',0,0,0),('mario','Mario','Soldani',1971,'','','','',0,0,0),('geppetto','Marco','Serboli',1976,'','','','',0,0,0),('fgobbini','Fabrizio','Gobbini',1974,'','3.5','Attaccante da fondo','',0,0,0),('igala','Tommaso','Galassini',1981,'','','','',0,0,0),('roberto','Roberto','Corsini',1962,'','','','',0,0,0),('alex1','Alessandro','Biagioni',1966,'','','','',0,0,0),('paolos','Paolo','Semplici',1966,'','','','',0,0,0),('giocoli','Marco','Cannoni',1975,'','','','',0,0,0),('claudia','Alessio','Fantini',1981,'','','','',0,0,0),('','CurrÃ²','Aldo',1957,'','','','',0,0,0),('nizzoli','Niccolò','Nizzoli',1999,'','','','',0,0,0),('','Aldo','Curro\'',1957,'','','','',0,0,0),('febo79','Andrea','Ferrini',1979,'','','','',0,0,0),('marcociolli','Marco','Ciolli',1969,'','','','',0,0,0),('tobia','Marcello','Merlini',1947,'','','','',0,0,1),('melissa','Francesco','Tronci',1944,'','','','',0,0,0),('matteto','Angela','Caraccia',1974,'','','','',0,0,0),('fatai','Marco','Fatai',1966,'','','','',0,0,0),('fiaffia','simone','fabianelli',1992,'','','','',0,0,0),('leo','Raffaella','Rossi',1974,'','','','',0,0,0),('jek','Giacomo','Buffoni',1976,'','','','',1,0,0),('max1','Massimo','Gaggiani',1957,'','','','',0,0,0),('miniati1970','Samuele','Miniati',1970,'','','','',0,0,0),('gallo','Mario','Galletti',1946,'','','','',1,0,0),('matteto','Angela','Caraccia',1974,'','','','',0,0,0),('albe68','Alberto','Corsi',1968,'','','','',0,0,0),('pmolinu','Pietro','Molinu',1958,'','','','',0,0,0),('lanini','Fabio','Lanini',1969,'','','','',0,0,0),('mumelter','Romano','Mumelter',1963,'','','','',0,0,0),('tborgia','Teresa','Borgia',1956,'','','','',0,1,0),('giovanna','Giovanna','Matteini',1958,'','','','',0,0,0),('andrearapacc','Andrea','Rapaccini',1951,'','','','',0,0,0),('lucab','Luca','Bencini',1966,'','','','',0,0,0),('afranci','Alessandro','Franci',1973,'','','','',0,0,0),('jayjay70','Luigi','Matteini',1970,'','','','',0,0,0),('mstennis','Marco','Sani',1982,'','','','',0,0,0),('fil.tan','Filippo','Tanzi',1979,'','','','',0,0,0),('badii','Francesco','Badii',1970,'','','','',0,0,0),('deasystem','Andrea','Fratini',1979,'','','','',0,0,0),('robertoboyer','Roberto','Boyer',1947,'','','','',0,1,0),('kandokan','Maurizio','Baldi',1970,'','','','',0,0,0),('','Fei','Annalisa',1988,'','','','',0,0,0),('annalisa','Annalisa','Fei',1988,'','','','',0,0,0),('andrea','Andrea','Rossi',1984,'','','','',0,0,0),('fiorai','Giorgio','Fiorai',2004,'','','','',0,0,0),('fiorai1','Franco','Fiorai',1967,'','','','',0,0,0),('banchelli','Massimo','Banchelli',1959,'','','','',0,0,0),('zoe','Giovanni','Tracchi',1957,'','','','',0,0,0),('tiezzi','Filippo','Tiezzi',1974,'','','','',0,0,0),('Massimo','Massimo','Maccioni',1969,'','','','',0,0,0),('gracesanto7','Graziano','Santopietro',1984,'','','','',0,0,0),('LStennis','Lorenzo','Sani',1989,'','','','',0,0,0),('','Ilaria','Mannini',1974,'','','','',0,1,0),('sampdoria','Andrea','Evangelisti',1972,'','','','',0,0,0),('saniste','Stefano','Sani',1981,'','','','',0,0,0),('carresi','Stefano','Carresi',1961,'','','','',0,0,0),('alessandro71','Alessandro','Tosi',1971,'','','','',0,0,0),('alfonso','Alfonso','Pecoraro',1970,'','','','',0,0,0),('mcappe19','Margherita','Cappelletti',1989,'','','','',0,1,0),('albertoricci','Alberto','Ricci',1984,'','','','',0,0,0),('rome.61@libe','Fulvia','Romei',1961,'','','','',0,0,0),('emanuelepala','Emanuele','Palai',1992,'','','','',0,0,0),('massi72','Massimiliano','Sargentelli',1972,'','','','',0,0,0),('torricelli','Maurizio','Torricelli',1973,'','','','',0,0,0),('rine','Rinaldo','Melzi',1957,'','','','',0,0,0),('bea','Beatrice','Panichi',1970,'','','','',0,0,0),('Tassi88','Francesco','Tassi',1988,'','','','',0,0,0),('rapa','Lorenzo','Rapaccini',1981,'','','','',0,0,0),('greme','Riccardo','Grementieri',1986,'','','','',0,0,0),('petramazzo','Petra','Mazzola',1981,'','','','',0,0,0),('lorenzo','Lorenzo','Albizzi',1993,'','','','',0,0,0),('borri','Stefano','Borri',1978,'','','','',0,0,0),('stella','Stella','Scarnicci',1972,'','','','',0,0,0),('max3','Max','Gaggiani',1957,'','','','',0,0,0),('peter','Pietro Antonio','Molinu',1958,'','','','',0,0,0),('','Maurizio','Ciabatti',1965,'','','','',0,0,0),('ciabatti','Eleonora','Ciabatti',2001,'','','','',0,0,0),('lapo','Lapo','Prisinzano',2003,'','','','',0,0,0),('trava','Daniele','Travaglini',1964,'','','','',0,0,0),('andreap','Andrea','Patricolo',1999,'','','','',0,0,0),('ggioli','Gianluca','Gioli',1977,'','','','',0,0,0),('teo76','Matteo','Del Sala',1976,'','','','',0,0,0),('rotesi','Elisabetta','Rotesi',1963,'','','','',0,0,0),('vannini','Alessio','Vannini',1987,'','','','',0,0,0),('bardelloni','Luca','bardelloni',1972,'','','','',0,0,0),('rubrigi','Nilo','Rubrigi',1947,'','','','',0,0,0),('meucci','Leonardo','Meucci',2002,'','','','',0,0,0),('matteini','Francesco','Matteini',1989,'','','','',0,0,0),('','Simona','Agostini',1930,'','','','',0,0,0),('agostini','Simona','Agostini',1972,'','','','',0,0,0),('innocenti','Gianluca','Innocenti',1988,'','','','',0,0,0),('massini','Lorenzo','Massini',1988,'','','','',0,0,0),('orlandi','Ugo','Orlandi',1963,'','','','',0,0,0),('mannini','Simona','Mannini',1980,'','','','',0,1,0),('','roberto','corsini',1962,'','','','',0,0,0),('minatti','Nicola','Minatti',1991,'','','','',0,0,0),('bencivenni','Gian Carlo','Bencivenni',1955,'','','','',0,0,0),('ornani','Alfonso','Ornani',1985,'','','','',0,0,0),('scop66','Massimo','Scopelliti',1966,'','','','',0,0,0),('cirigni','Alessandro','Cirigni',1987,'','','','',0,0,0),('lalli','Massimiliano','Lalli',1990,'','','','',0,0,0),('valenti','Matteo','Valenti',1994,'','','','',0,0,0),('delvita','Claudio ','Del Vita',1968,'','','','',0,0,0),('forzoni','Mario','Forzoni',1962,'','','','',0,0,0),('leone','Mauro','Leone',1986,'','','','',0,0,0),('desantis','marco','de santis',1984,'','','','',0,0,0),('mosca','Matteo','Mosca',1976,'','','','',0,0,0),('chienni','Marco','Chienni',1981,'','','','',0,0,0),('grassi','Tommaso','Grassi',1971,'','','','',0,0,0),('','Evmorfiadis','Emmanouil',1986,'','','','',0,0,0),('mevmo86','Emmanouil','Evmorfiadis',1986,'','','','',0,0,0),('gianni ','Gianni','Cappelletti',1981,'','','','',1,0,0),('parivir','Mattia','Parivir',1991,'','','','',0,0,0),('parivir','Mattia','Parivir',1991,'','','','',0,0,0),('giovanni','Giovanni','Taccari',1991,'','','','',0,0,0),('riccardo','Riccardo','Orlandi',1985,'','','','',0,0,0),('righeschi','Mirko','Righeschi',1973,'','','','',0,0,0);
/*!40000 ALTER TABLE `soci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anno` smallint unsigned NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci,
  `ore_privilegi` tinyint unsigned,
  `credito` double(8,2),
  `scadenzaCertificato` date,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--



--
-- Table structure for table `utentiold`
--

DROP TABLE IF EXISTS `utentiold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utentiold` (
  `ob_username` varchar(30) NOT NULL,
  `ob_password` varchar(12) NOT NULL,
  `ob_nome` varchar(20) NOT NULL,
  `ob_cognome` varchar(20) NOT NULL,
  `ob_indirizzo_email` varchar(40) NOT NULL,
  `telefono` varchar(14) NOT NULL,
  `credito` float NOT NULL,
  `ob_amici` int NOT NULL,
  `ob_anno_nascita` int NOT NULL,
  `privilegi` int NOT NULL,
  `prenota` int NOT NULL,
  `certificato` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utentiold`
--

LOCK TABLES `utentiold` WRITE;
/*!40000 ALTER TABLE `utentiold` DISABLE KEYS */;
INSERT INTO `utentiold` VALUES ('admin','11752','Circolo','Montevarchi','tennisclubmontevarchi@gmail.com','0559102248',0.5,0,1930,0,12,NULL),('pagliai','Robino','Roberto','Pagliai','pagliai.roberto@virgilio.it','3392736210',42,1,1954,0,0,'2020-09-19'),('guga','coltricat','Marco','Catania','coltricat75@gmail.com','393 5078790',0,1,1975,0,0,'2019-09-24'),('giamma','gefar','Gianmarco','Guerrini','g.guerrini@gefar.it','',15,0,1965,0,0,'2019-09-20'),('mala','123456','Alessandro','Malatesta','alessandromalatesta123@gmail.com','393 9723599',24.5,0,1966,0,0,NULL),('pieralli','broccolo','Franco','Pieralli','pieralli.franco@gmail.com','3473436616',0,1,1953,2,0,'2020-04-08'),('hanzo_rsv','apriliarsv','Jois','Manetti','hanzo_rsv@yahoo.it','3289434972',-1.75,1,1976,0,0,NULL),('nalda','170225','Andrea','Naldini','a.naldini@areassociati.it','3473788531',1,1,1964,0,0,'2021-04-03'),('super','mario','Mario','Felloni','fellonimario@gmail.com','3483864931',44.5,1,1967,0,0,'2020-01-25'),('tommy76','feliciano76','Tommaso','Bargellini','tbpersonal@virgilio.it','',8,0,1976,0,0,NULL),('marco70','wilson70','Marco','Paolacci','marchino240170@gmail.com','329/8570763',41,1,1970,0,0,'2020-03-15'),('dona','donatennis','Massimo','Donati','donati6060@gmail.com','3356119334',1,1,1973,2,0,'2020-03-07'),('lazze','lela61','Luca','Lazzerini','lazzeriniluca@alice.it','335/5422487',29.5,1,1960,0,0,'2020-06-27'),('baco 54','11081954','Stefano','Casini','stefano-casini@alice.it','335361255',0,1,1954,7,0,'2019-10-01'),('delfus','1936','Delfo','Neri','delfus1936@gmail.com','3381579923',0,1,1936,0,0,NULL),('daniele','extreme','Daniele','Boni','daniele.boni@hotmail.it','3470855898',39.5,1,1978,0,0,'2020-03-11'),('bigamore','FINESTRA','Moreno','Bigazzi','moreno.bigazzi@yahoo.it','3474490200',27,1,1954,0,0,'2020-09-29'),('ale','1231975','Alessandro','Righi','righialessandro752@gmail.com','349/3058928',27.5,1,1975,0,0,'2022-01-08'),('romeo','4649','Lido','Ghezzi','tania1955@libero.it','3490960269',1.5,1,1949,0,0,'2019-10-10'),('nadal','#rafa#','Alessandro','Aliverti','Oliva85@katamail.com','3483659608',0,1,1985,0,0,'2019-09-11'),('brax1983','figa123','Francesco','Brandi','brax83@hotmail.it','3498956632',1,1,1983,0,0,NULL),('pampa','mauro1976','Mauro','Pampaloni','mauropampaloni@hotmail.com','338/8852878',6,1,1976,0,0,NULL),('coscine','allegra1','Maurizio','Inghilesi','maurizio.inghilesi@enel.com','3208440539',13.5,1,1961,0,0,NULL),('renzim','Blu232','Massimiliano','Renzi','massimiliano.renzi@power-one.com','335-1007937',20.5,1,1970,0,0,'2020-05-12'),('lucio','210251','Luciano','Rossetti','rossetti.luci@tiscali.it','335/7703530',38,1,1951,0,0,'2019-09-24'),('rapido','rapidissimo','Marco','Mini','marcomini62@libero.it','3396623957',1,1,1962,0,0,NULL),('anto61','17031961','Antonio','Francini','antonio.francini@coldiretti.it','055981207',1.5,0,1961,0,0,NULL),('manolo','rodica72','Mauro','Manetti','mauro-manetti@libero.it','3383557119',17.5,0,1946,0,0,'2020-10-09'),('c83.stella','ciuchino','Chiara','Gonnelli','chiara.gonnelli@gmail.com','3397206706',0,1,1983,7,0,NULL),('vale','123','Valerio','Viticchi','viticchivalerio@yahoo.it','055.940651',24.5,1,1940,0,0,'2020-06-04'),('lucio69','astor','Luciano','Cavoto','cavoto@libero.it','3483825369',26,1,1969,0,0,'2020-10-03'),('ezio00','auditore','Matteo','Cavoto','cavoto69@gmail.com','3483825369',6,1,2000,0,0,'2020-06-11'),('samuele66','elisasiro','Samuele','Baldini','samuele.baldini@alice.it','3351846447',8.5,1,1966,0,0,NULL),('maurino','mau6240','Mauro','Nardi','Mauronardi1@gmail.com','3936933693',0.5,1,1983,4,0,NULL),('guest3','GUEST','OSPITE','NONSOCIO','TENNISCLUBMONTEVARCHI@ALICE.IT','',0,0,1990,0,0,NULL),('liso','liso72','Alessandro','Antinori','a.antinori@nuovautospa.com','347/1434833',28.5,1,1972,0,0,'2020-02-13'),('angela','260497','Angela','Barone','angygianca5@aliceposta.it','3287633196',0,1,1973,0,0,NULL),('giomax','wilson73','Massimiliano','Renai','info@villaggioparadiso.it','',-9.5,1,1973,0,0,'2019-11-07'),('mabene','488764','Mariano','Capasso','soluzionimutuo@capassomariano.191.it','333/7664709',0,1,1948,0,0,NULL),('alberto','francalanci1','Tennis','1','hjghjhjgj@tin.it','3933361183',0,0,1969,7,0,NULL),('albe1','franca2','Tennis','Adulti','sdfsadf@tin.it','',0,0,1969,0,0,'2020-10-30'),('albe2','franca3','Tennis','Junior','asdw@tin.it','',0,0,1969,3,0,NULL),('carlino','carlino56','Carlo','Dolfi','eccomiqua3@libero.it','393/5656777',0,1,1956,0,0,'2019-10-08'),('giovanna','matteini','Giovanna','Matteini','andrea.rapaccini@gmail.com','3356218461',0.5,0,1958,0,0,'2019-10-09'),('allen','123','allenamento','agonistica','dffòtin.it','',0,0,1975,7,0,NULL),('alberto3','francalanci4','Tennis','2','sfaFRWE@TIN.IT','',0,0,1975,7,0,NULL),('mirio','230645','Mirio','ButtiFratini','mibutti.@virgilio.it','3475767111',0,1,1945,0,0,'2020-10-06'),('bartu','sergi','Sergio','Bartucci','s.bartucci1@alice.it','3291104815',5.5,0,1952,0,0,'2020-07-04'),('more','inter','Moreno','Capanni','moreno.capanni@libero.it','3357764048',10.5,0,1957,0,0,'2020-05-07'),('et','mipiace','Emanuele','Tortoli','r_tortoli@yahoo.it','3288135054',50,1,1983,0,0,NULL),('cristofani','piccia44','Alberto','Cristofani','alberto.cristofani@alice.it','3355204125',3.5,1,1953,4,0,NULL),('mugnai','28121969','Stefano','Mugnai','stefano.mugnai@libero.it','3346809830',1,1,1969,0,0,'2020-03-18'),('massi','050176','Massimiliano','Tassi','tassi.massimiliano76@gmail.com','328/4784507',2,1,1976,0,0,'2020-09-03'),('corrado','catta','Corrado','Cattabiani','corrado.cattabiani@vegatech.it','',0,1,1959,0,0,'2019-10-26'),('dosmo','23051985','Dosmo','Borgioli','b.dosmo85@virgilio.it','334/6859128',0,1,1985,7,0,NULL),('renzigal','renzigal','Galeazzo','Renzi','renzigal@libero.it','3332935582',0,1,1943,0,0,NULL),('vucinic','squalene','Alberto','Taccari','180289@virgilio.it','3472287071',2,1,1989,1,0,'2020-01-11'),('matri','faregoal','Stefano','Toti','sabina.massetti@saponartfi.it','055/958263',61.5,1,1960,0,0,'2020-01-15'),('spigola','orata','Paolo','Panichi','panichi.paolo@gmail.com','3357764171',25.5,1,1940,0,0,'2020-10-29'),('mascolo','giorgia','Riccardo','Mascolo','r.mascolo@findomestic.com','3355767784',22.5,1,1968,0,0,NULL),('villapetrea','130946','Rodolfo','Mannini','info@villapetrea.com','347/3323537',0.5,1,1946,1,0,'2019-10-12'),('ampelio','barabba','PierGiorgio','Peri','pg.peri@alice.it','335/6914168',28,1,1946,0,0,'2019-10-17'),('ricca','16021970','Riccardo','Mazzoni','rcr.mazzoni@gmail.com','333/2652870',1,1,1970,0,0,'2020-03-08'),('laura','niccolo','Laura','Carbonai','laura.carbonai@carifirenze.it','338/9600129',17,1,1974,0,0,'2022-02-04'),('scatenotti','pantera11','Andrea','Tata','a.tata@inwind.it','3313695268',33,1,1963,0,0,'2020-08-08'),('150965','230609','Daniele','Visani','visani@parigi-spa.it','3394298588',11,1,1965,0,0,NULL),('valeria','tennis94','Valeria','Pieralli','vapieralli@gmail.com','3482528338',0,1,1994,0,0,'2020-05-24'),('patagonia','patagonia','PaoloAntonio','Ricci','pricci3@yahoo.it','338/8878718',16.5,1,1958,0,0,NULL),('gnnterranova','giacomett','Giovanni','Terranova','gnn.terranova@gmail.com','3355248421',5.75,1,1959,0,0,'2019-10-01'),('verdelli','bobo','Roberto','Verdelli','verdellibobo@gmail.com','3498121396',21.5,1,1946,0,0,'2019-07-06'),('sinattiroger','quiquosk79','Matteo','Sinatti','sinatti@gmail.com','3287436399',13.5,1,1979,0,0,NULL),('baro','redevil','Roberto','Barone','baroner@aou-careggi.toscana.it','328/1755190',-1,1,1960,2,0,'2020-09-25'),('tiziano','juventus','Tiziano','Sandroni','tizianosandroni@yahoo.it','3357213320',6.5,1,1973,0,0,NULL),('mazinga','blucerchiato','Giovanni','Guerrini','giovanni.guerrini@gmail.com','',0,1,1960,0,0,'2019-09-27'),('simonti','Simonti18','Leonardo','Simonti','leonardo.simonti@gmail.com','3355996390',20.5,1,1973,0,0,'2019-09-28'),('claudioc','tenniscc50','Claudio','Chiassai','studio@chiassaiclaudio.it','3292255079',16,0,1950,0,0,'2020-05-27'),('kalle','tennis5486','Luca','Bazzanti','lucabazzanti@alice.it','3333422927',4.5,0,1964,0,0,NULL),('manfri','manfri','Rudi','Migliorini','info@italianaccessori.com','335/306445',37.75,1,1958,0,0,NULL),('sergio','23011956','Sergio','Carsughi','sergio.carsughi@gmail.com','329/8151563',7.5,1,1956,0,0,'2020-09-24'),('tborgia','tennis','Teresa','Borgia','mtb56@libero.it','3405439373',0,0,1956,3,0,NULL),('romignano','romignano','Riccardo','Rossi','romignano@gmail.com','329/2161691',0.5,1,1961,0,0,NULL),('batigol','af290168','Alfredo','Ferrini','alfredoferrini@alice.it','3381751352',8.5,1,1968,0,0,'2019-11-01'),('almer','lavoro3','Alessandro','Merli','photoshop@libero.it','3475831089',15.5,1,1959,0,0,'2020-01-30'),('numerouno','leopat','Leonardo','Paterniti','leopat@inwind.it','055901523',22.5,1,1957,0,0,NULL),('giamma25','giamma2501','Giammarco','Sicuro','Giammarcosicuro@gmail.com','3288694768',0,1,1983,6,0,NULL),('elia2000','25092000','Elia','Baldini','elia.baldini@gmail.com','3404556468',7.5,1,2000,0,0,'2022-01-29'),('keef','bonzinamia','Lorenzo','Crociani','dipxi@hotmail.it','',4,0,1995,0,0,'2019-09-18'),('cora','123','Alessandro','Coradeschi','adfgtre@tre.it','',44.5,0,1957,0,0,NULL),('mosconi','Ginetta','Francesca','Mosconi','francesca.mosconi@alice.it','3356613313',-5,1,1972,0,0,'2021-10-24'),('pietro','cristina','Pietro','Bencini','pietrobencini@.it','347/4840170',0,1,1951,0,0,'2019-10-02'),('flamig','26101971','Flavia','Migliorini','flaviamigliorini@studiocantinimigliorini','3356001109',17,1,1971,2,0,'2020-09-25'),('sauro56','105610','Sauro','Innocenti','sauro.inno@libero.it','',60.5,1,1956,0,0,'2020-09-30'),('buccia86','bucciabro','Alberto','Buccianti','dilanvega21@gmail.com','3382690200',0,0,1986,0,0,NULL),('mgrifoni','Daddy-08','Marco','Grifoni','mgrifoni76@gmail.com','3488858092',29,0,1976,0,0,'2019-03-16'),('lanini','22052003','Fabio','Lanini','falcolanarius@gmail.com','3393405597',-11,0,1969,0,0,NULL),('falcio','123','Francesco','Falcioni','treygfe@tre.it','',0,0,1969,7,0,NULL),('rossi61','wolf2005','Maurizio','Rossi','mrossi@edbusiness.it','',49.5,1,1961,0,0,NULL),('alessandro','nanopiombo','Alessandro','Mazzucco','alessandromazzucco92@gmail.com','3934079809',41,1,1992,0,0,NULL),('fitodado','camomilla','Corrado','Salvini','Info@farmaciasoldanisalvini.it','0559707127',23.5,0,1966,0,0,'2020-09-26'),('fede','gemelli','Federico','Ariano','fariano@studiocosmo.it','335/5739227',34.5,1,1968,0,0,'2020-06-07'),('oliva','oliva','Oliva','Primo','faifaifoite@tre.it','',8.5,0,1948,0,0,'2020-09-24'),('edoardo','72750372310','Edoardo','Templari','templariedoardo@hotmail.it','3474537732',14,1,1993,0,0,'2020-02-27'),('gago','Bubbole','Leonardo','BaldiniTosi','gago@me.com','3356812270',25,1,1970,0,0,'2019-09-24'),('jek','jekpass','Giacomo','Buffoni','jekmail@tin.it','3939090389',99.5,1,1976,0,0,NULL),('gatto','123','marco','faenzi','dfghh@tri.it','',0,1,1959,5,0,'2020-03-18'),('kkimi','corally29','Alessandro','Innocenti','corally29@alice.it','3338265383',29.5,1,1971,0,0,'2020-02-17'),('fabry7','055942436','Fabrizio','Frosinini','frosa7@libero.it','3404006036',19.5,1,1973,0,0,'2022-01-27'),('melissa','imola2011','Francesco','Tronci','f.tronci@alice.it','335/6681073',0,1,1944,0,0,'2020-01-14'),('andrea1976','REBECCAEVIOL','Andrea','Morbidelli','andrea@mcmsrl.com','3355776615',16.5,1,1976,0,0,NULL),('cristian296','siamaia','Cristian','Ravagni','r.cristian296@virgilio.it','3386860729',15.5,1,1976,0,0,'2019-10-03'),('mario','Superuno11','Mario','Soldani','Essebi.bombardi@alice.it','3398349496',40.25,1,1971,0,0,'2020-04-26'),('fabrizio','fedone','Fabrizio','Renzi','fabrirenzi@yahoo.it','055973481',-0.5,1,1972,0,0,NULL),('alex1','bubu0306','Alessandro','Biagioni','agenziabiagioni@gmail.com','3355890252',47.5,1,1966,0,0,'2020-01-06'),('fatai','michy2009','Marco','Fatai','marco.fatai@libero.it','338/5959275',29,1,1966,0,0,'2020-10-18'),('paolos','donoratico76','Paolo','Semplici','paolos66@hotmail.com','3473436619',22,1,1966,0,0,'2020-09-27'),('roberto','corsini','Roberto','Corsini','tennisclubmontevarchi@virgilio.it','000000000',10,0,1962,0,0,NULL),('igala','tg.13.phoo','Tommaso','Galassini','tommaso.galassini@gmail.com','3465036380',47,1,1981,0,0,'2020-01-02'),('fgobbini','15071974','Fabrizio','Gobbini','fago1507@gmail.com','3355723012',2.5,1,1974,0,0,'2020-01-24'),('giocoli','Sciupamost0','Marco','Cannoni','info@poderegiocoli','3896894737',0.5,1,1975,0,0,NULL),('mstennis','mstennis','Marco','Sani','sani.marco@alice.it','3345294738',21.5,1,1982,0,0,'2020-02-13'),('lobrill','musica','Lorenzo','Brilli','lobrill9@gmail.com','393/3358137',0,1,1971,0,0,NULL),('lorenzo','albizzi','Lorenzo','Albizzi','lorenzo.albizzi@gmail.com','3335731448',5,1,1993,0,0,'2019-11-21'),('viola','111159','Giorgio','Biagianti','biagiantigiorgio@gmail.com','335/5229656',27,1,1959,0,0,NULL),('loredero','bmwr1200gsad','Lorenzo','Derobertis','avvlorenzoderobertis@gmail.com','3387661462',28.5,1,1969,0,0,'2019-11-07'),('federico bru','Lindatiamo3','Federico','Bruschi','federico.bruschi@gmsrl.it','349-6629758',0,1,1976,0,0,NULL),('miniati1970','memello','Samuele','Miniati','miniati1970@alice.it','347/2410916',16.5,1,1970,0,0,'2021-11-12'),('richelieu','forzamilan53','Marco','Taccari','marcotaccari@virgilio.it','',18.5,1,1953,2,0,NULL),('pmolinu','oliverino','Pietro','Molinu','pietromolinu@hotmail.it','335/7764156',41.5,1,1958,0,0,'2022-01-22'),('albe68','alberto','Alberto','Corsi','acorsi68@alice.it','347/8309081',2.5,1,1968,0,0,'2020-02-08'),('Massimo','1969','Massimo','Maccioni','massimo.maccioni@bnlmail.com','3346065321',29.5,1,1969,0,0,NULL),('bronzi marco','giulio','Marco','Bronzi','marco.bronzi84@gmsrl.it','3929105579',16.5,1,1984,0,0,NULL),('jocri','kimkim','Johnny','Caneschi','johcaneschi@gmail.com','366/3203097',-59.5,1,1971,0,0,'2020-07-27'),('cristina03','jocri','Cristina','Bardelloni','bardelloni.cristina@gmail.com','328/0684441',-2.5,1,1975,0,0,'2020-06-21'),('emanuelepala','emanuelepala','Emanuele','Palai','emanuele.palai@yahoo.it','3925849309',0,1,1992,0,0,NULL),('milan','cinzia','Luciano','Fabbri','fuminojunior@tiscali.it','3475762561',20,1,1961,0,0,'2019-06-29'),('cambo','pietro2013','Marco','Camiciottoli','marcocamiciottoli1@gmail.com','333/2347679',8,1,1976,0,0,NULL),('gino','040882','Daniele ','Bernacchioni','bernacchionidaniele@gmail.com ','3290672094',15.5,1,1982,0,0,NULL),('matteo87','gora37','Matteo','Leggio','matteo.leggio132@gmail.com','3335753177',-0.5,1,1987,0,0,NULL),('taribo','181268','Massimo','Rinaldi','massimo.rinaldi@ymail.com','338/6961103',37.5,1,1968,0,0,'2021-05-14'),('sere','labonechi','Serena','Bonechi','bonechi.serena@gmail.com','3282785525',0,1,1985,0,0,'2019-11-17'),('fm77','261175','Francesca','Mazziotti','francesca.mazziotti@gmail.com','3406013115',3.5,0,1977,0,0,NULL),('sampdoria','sampdoria','Andrea','Evangelisti','evangelistiandrea1972@gmail.com','3473354940',20,1,1972,0,0,'2019-10-24'),('bex64','fiorello6','Stefano','Berti','stefanoberti111@gmail.com','',0.5,1,1964,0,0,'2019-10-26'),('alberto74','475070','Stefano','Calvo','stefano.cp@fattoriadirimaggio.it','3331148075',99,1,1974,0,0,NULL),('paolo arturo','896331','Paolo','Calvo','calvopa@fattoriadirimaggio.it','3483205310',0,1,1946,0,0,NULL),('max3','max3','Max','Gaggiani','massimo.gaggiani@gmail.com','3356611442',12,1,1957,0,0,NULL),('armchen','lcbcc000','Guido','Braccini','armchen@alice.it','393397288585',27,1,2005,0,0,'2019-12-04'),('armchen2','lcbcc000','Roberto','Braccini','armchen@me.com','3473226803',42.25,1,1967,0,0,'2019-12-21'),('lcu24','24965luca','Luca','Arrotini','luca.arrotini@alice.it','3339721752',23.75,1,1965,0,0,'2020-10-01'),('tlin','aaOeLa13','Andrea','Otelli','geotelli@libero.it','3392114135',12,1,1981,0,0,'2020-04-01'),('torricelli','torricelli','Maurizio','Torricelli','commerciale@torricellisrl.com','3402358063',-1,1,1973,0,0,'2019-09-23'),('banicarlo','sabax1','Carlo','Bani','banicarlo@gmail.com','338/8318208',1.75,1,1977,0,0,'2019-12-26'),('giulina89','24121989','Giulia','Baldi','baldi.giulia@virgilio.it','3281970564',0.75,0,1989,0,0,'2019-11-10'),('toro','carlo6240','Giancarlo','Nardi','info@pellicceriaeva.it','338/6022869',208,1,1948,0,0,'2021-05-19'),('fiorentina','03061972','Paolo','Donzellini','magialpa@gmail.com','3471964642',0,1,1950,7,0,NULL),('fededero','bmwr1200gsad','Federico','Derobertis','daliaefede@gmail.com','3387661462',9.5,1,2006,0,0,'2020-05-19'),('brodo','1234','Mario','Baldini','mario.baldini@astrazeneca.com','3351323466',41,1,1955,0,0,'2020-08-01'),('paolino','300582','Paolo','Menci','paolo.menci@alice.it','346/2175141',13.5,1,1982,0,0,NULL),('afranci','pomodoro','Alessandro','Franci','afranci1973@gmail.com','3487634192',8,1,1973,0,0,'2020-11-08'),('lucab','SIRIO','Luca','Bencini','luca66bencini@gmail.com','3358353594',17,1,1966,0,0,NULL),('viviana','viviana','Vivenz','Nesi','vivenz76@libero.it','3703182027',44,0,1976,0,0,'2020-01-14'),('MonteTinacci','68Tina17','Alessandro','Tinacci','tinaccialessandro@aliceposta.it','3356151468',1,1,1968,0,0,'2020-05-20'),('riccardocion','090975','Riccardo','Cioncolini','riccardo.cioncolini@gmail.com','3385291347',15,1,1975,0,0,NULL),('claudia','210881','Alessio','Fantini','alessio.fantini81@alice.it','3332489742',13.5,1,1981,0,0,NULL),('marcus21','margherita','Alberto','Rossi','tecnodesigneracing@gmail.com','3929286219',62,0,1973,0,0,NULL),('giacomo78','virginia','Giacomo','Stoppielli','giacomo.s1978@libero.it','3478029719',1,1,1978,0,0,NULL),('andjelic','andjelic','Mia','Andjelic','mia.andjelic@yahoo.it','3921012569',0,1,1999,0,0,NULL),('logan86','Oldmilo86','Tiziano','Meoni','tizianom86@hotmail.it','3204110290',16,1,1986,0,0,NULL),('febo79','posterda79','Andrea','Ferrini','feforini79@hotmail.com','3332645323',9.5,1,1979,0,0,NULL),('marcociolli','marcociolli','Marco','Ciolli','marcociolli@alice.it','3470529855',17,1,1969,0,0,NULL),('gallo','gallo73','Mario','Galletti','alessandroeangela@virgilio.it','3288260900',0,1,1946,7,0,NULL),('zoe','zoe','Giovanni','Tracchi','tracchi1957@gmail.com','33513452703',12,1,1957,0,0,'2020-10-06'),('serenella','1924','Roberto','Lucaccini','lucaccini@val.it','3396415982',20,1,1950,0,0,'2020-10-13'),('lucapini','030911','Luca','Pinizzotto','piniz.luca@gmail.com','3666392022',23.5,1,1984,0,0,'2020-06-21'),('deasystem','deasystem','Andrea','Fratini','a.fratini@fratini.net','3483310923',5,1,1979,0,0,NULL),('losiflores','losiflores','Lorenzo','Losi','lorenzo@losiflores.com','0559789366',0,0,1991,0,0,NULL),('jayjay70','sixxsixx','Luigi','Matteini','tabaccheria.matteini@gmail.it','3336644777',4,1,1970,0,0,NULL),('fil.tan','martind35','Filippo','Tanzi','filippo.tanzi@aifin.it','3482519614',8,1,1979,0,0,'2019-09-24'),('badii','badii','Francesco','Badii','badii.francesco@gmail.com','3476669217',7,1,1970,0,0,'2019-09-27'),('kandokan','kandokan','Maurizio','Baldi','maurizio@tipografialazecca.it','3398940594',30,1,1970,0,0,NULL),('annalisa','tennis','Annalisa','Fei','annalisafei@gmail.com','3479459017',0,1,1988,0,0,NULL),('andrea','tennis','Andrea','Rossi','arossi14@inwind.it','3280570032',-0.5,1,1984,0,0,NULL),('fiorai1','fiorai1','Franco','Fiorai','francofiorai@virgilio.it','3421770490',27.5,0,1967,0,0,'2019-11-26'),('banchelli','banchelli','Massimo','Banchelli','fvmeba@tin.it','3939638064',39,1,1959,0,0,'2019-10-01'),('tiezzi','tiezzi','Filippo','Tiezzi','tiezzifilippo@gmail.com','3474929363',20,1,1974,0,0,'2020-09-29'),('gracesanto7','grace1984','Graziano','Santopietro','santopietro.graziano7@gmail.com','3347817899',3,1,1984,0,0,'2020-03-11'),('carresi','carresi','Stefano','Carresi','carresistefano@gmail.com','3492660773',12,1,1961,0,0,'2020-04-29'),('saniste','saniste','Stefano','Sani','saniste@msn.com','3334869190',20,1,1981,0,0,NULL),('alessandro71','alessandro71','Alessandro','Tosi','alessandrotosi1971@libero.it','3357672729',39.5,1,1971,0,0,'2021-05-14'),('alfonso','realmadrid','Alfonso','Pecoraro','realfonso70@virgiio.it','3921911883',19,1,1970,0,0,NULL),('albertoricci','albertoricci','Alberto','Ricci','ricci.alberto1984@icloud.com','3348075866',58.5,1,1984,0,0,'2019-09-25'),('rome.61@libe','cesarino','Fulvia','Romei','rome.61@libero.it','3355915024',7.5,1,1961,0,0,NULL),('bea','bea','Beatrice','Panichi','bea5370@libero.it','349300000000',0,1,1970,0,0,'2020-06-26'),('massi72','12345','Massimiliano','Sargentelli','massisarge@gmail.com','3356956590',0,1,1972,0,0,NULL),('Tassi88','Batistuta192','Francesco','Tassi','tassi1926@gmail.com','3337144531',43.5,1,1988,0,0,'2020-02-27'),('rine','100657','Rinaldo','Melzi','rinaldo.melzi6@gmail.com','3285315824',18.5,1,1957,0,0,'2020-03-29'),('greme','greme','Riccardo','Grementieri','riccardo.grementieri@gmail.it','3337283267',15.5,1,1986,0,0,'2019-10-31'),('petramazzo','petramazzo','Petra','Mazzola','petramazzo@hotmail.it','3382685765',5.5,1,1981,0,0,'2019-07-02'),('borri','borri','Stefano','Borri','stefanoborri78@gmail.com','3498048702',30,1,1978,0,0,'2019-10-09'),('stella','stella','Stella','scarnicci','avvstellascarnicci@gmail.com','3332652870',15,1,1972,0,0,'2020-10-26'),('lapo','lapo','Lapo','Prisinzano','lapoprisinzano@gmail','3776879757',36,1,2003,0,0,NULL),('chienni','neroblu7','Marco','Chienni','marco.chienni@gmail.com','3398758282',0,1,1981,0,0,NULL),('andreap','andrea','Andrea','Patricolo','andreapatricolo.99@gmail.com','3311370197',8.5,1,1999,0,0,NULL),('valenti','matteo','Matteo','Valenti','matteovalenti8@gmail.com','3337658504',0,0,1994,0,0,NULL),('ciabatti','ciabatti','Eleonora','Ciabatti','lauramagi13@me.com','3381008683',46,1,2001,0,0,NULL),('rotesi','elisabetta','Elisabetta','Rotesi','elisabettina18@gmail.com','3396160519',0,0,1963,0,0,NULL),('leone','mauro','Mauro','Leone','leonem86@hotmail.it','3295622896',20,0,1986,0,0,NULL),('trava','trava','Daniele','Travaglini','travadani@libero.it','3391065860',21,1,1964,0,0,NULL),('righeschi','mirko','Mirko','Righeschi','mirkorigheschi@gmail.com','3278287236',0,0,1973,0,0,NULL),('riccardo','orlandi','Riccardo','Orlandi','riccardo.orlandi@advisors.it','3397679744',5.5,0,1985,0,0,NULL),('ggioli','Gianluca77','Gianluca','Gioli','gianluca.gioli@outlook.it','3489999074',44,1,1977,0,0,NULL),('bardelloni','luca','Luca','bardelloni','luca.bardelloni@gmail.com','3920250738',5,0,1972,0,0,NULL),('teo76','teo76','Matteo','Del Sala','teo76ds@gmail.com','3355835784',-4,1,1976,0,0,NULL),('vannini','alessio','Alessio','Vannini','alessino22@hotmail.it','3491615900',0,0,1987,0,0,NULL),('lalli','massimiliano','Massimiliano','Lalli','massimilianolalli@gmail.com','3355909688',0,0,1990,0,0,NULL),('meucci','leonardo','Leonardo','Meucci','leonardomeucci2019@libero.it','3317481824',16.5,0,2002,0,0,NULL),('matteini','francesco','Francesco','Matteini','matte13sgv@hotmail.it','3339724768',24.5,0,1989,0,0,NULL),('orlandi','ugo','Ugo','Orlandi','ugoorlandi@fastwebnet.it','3397390705',17,1,1963,0,0,NULL),('agostini','simona','Simona','Agostini','simonagostini6@gmail.com','3395484550',0,0,1972,0,0,NULL),('massini','lorenzo','Lorenzo','Massini','gino425@hotmail.it','3490718949',0,0,1988,0,0,NULL),('innocenti','gianluca','Gianluca','Innocenti','gianlucainnocenti@libero.it','3928284570',10,0,1988,0,0,NULL),('mannini','simona','Simona','Mannini','manninisimona@virgilio.it','3473323537',41,1,1980,6,0,NULL),('minatti','nicola','Nicola','Minatti','nicola@logintegra.it','3356630740',52.5,1,1991,0,0,NULL),('ornani','alfonso','Alfonso','Ornani','alfonsoornani@live.it','3332789389',4.5,0,1985,0,0,NULL),('bencivenni','giancarlo','Gian Carlo','Bencivenni','giancarlo.bencivenni@gmail.com','3357055326',0,0,1955,0,0,NULL),('scop66','scop66','Massimo','Scopelliti','m.scop66@gmail.com','3345343422',39,1,1966,0,0,NULL),('cirigni','alessandro','Alessandro','Cirigni','alecirigni@gmail.com','3312996694',13,0,1987,0,0,NULL),('delvita','claudio','Claudio ','Del Vita','claudio@studiodelvita.it','3933353780',29.5,0,1968,0,0,NULL),('forzoni','mario','Mario','Forzoni','mforzoni@yahoo.it','335273549',58.75,0,1962,0,0,NULL),('desantis','desantis','marco','de santis','marco.desantis84@gmail.com','3356693307',-0.5,1,1984,0,0,NULL),('mosca','tennisteo','Matteo','Mosca','mattmos76@tin.it','3355807579',10,1,1976,0,0,NULL),('giovanni','taccari','Giovanni','Taccari','giovannitaccari@gmail.com','3206631942',11,0,1991,0,0,NULL),('grassi','tommaso','Tommaso','Grassi','grassi.tommaso71@gmail.com','3398182480',14.5,0,1971,0,0,'2021-11-18'),('mevmo86','40Dpeqi6','Emmanouil','Evmorfiadis','mevmorfiadis@gmail.com','3282163114',45,1,1986,0,0,NULL),('gianni ','07Ventitre','Gianni','Cappelletti','gianni.cappelletti@gmail.com','3357371957',38,0,1981,0,0,NULL),('parivir','mattia','Mattia','Parivir','mattia.parivir@live.it','3498074519',0,0,1991,0,0,NULL);
/*!40000 ALTER TABLE `utentiold` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-23 15:49:46
