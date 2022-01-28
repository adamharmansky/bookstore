-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB-debug

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) DEFAULT NULL,
  `author_country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Peter Griffin','Trolland'),(2,'Joe Biden','Another country'),(3,'Richard Stallman','United States');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `isbn` char(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `year_pub` char(4) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('0000000000','Test Book number 1',1,NULL,'1984',NULL),('0000000001','This is a test',1,NULL,'1985','Once upon a time there was a lovely princess. But she had an enchantment upon her of a fearful sort which could only be broken by love\'s first kiss. She was locked away in a castle guarded by a terrible fire-breathing dragon. Many brave knigts had attempted to free her from this dreadful prison, but non prevailed. She waited in the dragon\'s keep in the highest room of the tallest tower for her true love and true love\'s first kiss.'),('0000000002','Test Book number 3',2,NULL,'2069',NULL),('1254685326','data data data',1,0,'2022','I\'d just like to interject for a moment.  What you\'re referring to as Linux, is in fact, GNU/Linux, or as I\'ve recently taken to calling it, GNU plus Linux. Linux is not an operating system unto itself, but rather another free component of a fully functioning GNU system made useful by the GNU corelibs, shell utilities and vital system components comprising a full OS as defined by POSIX.  Many computer users run a modified version of the GNU system every day, without realizing it.  Through a peculiar turn of events, the version of GNU which is widely used today is often called \"Linux\", and many of its users are not aware that it is basically the GNU system, developed by the GNU Project.  There really is a Linux, and these people are using it, but it is just a part of the system they use.  Linux is the kernel: the program in the system that allocates the machine\'s resources to the other programs that you run. The kernel is an essential part of an operating system, but useless by itself; it can only function in the context of a complete operating system.  Linux is normally used in combination with the GNU operating system: the whole system is basically GNU with Linux added, or GNU/Linux.  All the so-called \"Linux\" distributions are really distributions of GNU/Linux.'),('4134134134','hjkl',1,0,'1996','<h1> does html work here? </h1> <p> lmao </p>'),('4567215681','M0r3 data pl3a5e',1,0,'1995','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed fermentum sem. Fusce eu augue cursus urna tincidunt interdum. Fusce feugiat sit amet odio quis tempus. Fusce a rhoncus velit. Vestibulum gravida nunc nulla, et pharetra dolor pellentesque quis. Curabitur sollicitudin scelerisque sapien. Mauris tempus at ipsum ut consectetur. '),('5555555555','Lorem Ipsum',2,0,'2020','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed fermentum sem. Fusce eu augue cursus urna tincidunt interdum. Fusce feugiat sit amet odio quis tempus. Fusce a rhoncus velit. Vestibulum gravida nunc nulla, et pharetra dolor pellentesque quis. Curabitur sollicitudin scelerisque sapien. Mauris tempus at ipsum ut consectetur. '),('6254529569','hjkl',1,0,'1996','I\'d just like to interject for a moment.  What you\'re referring to as Linux, is in fact, GNU/Linux, or as I\'ve recently taken to calling it, GNU plus Linux. Linux is not an operating system unto itself, but rather another free component of a fully functioning GNU system made useful by the GNU corelibs, shell utilities and vital system components comprising a full OS as defined by POSIX.  Many computer users run a modified version of the GNU system every day, without realizing it.  Through a peculiar turn of events, the version of GNU which is widely used today is often called \"Linux\", and many of its users are not aware that it is basically the GNU system, developed by the GNU Project.  There really is a Linux, and these people are using it, but it is just a part of the system they use.  Linux is the kernel: the program in the system that allocates the machine\'s resources to the other programs that you run. The kernel is an essential part of an operating system, but useless by itself; it can only function in the context of a complete operating system.  Linux is normally used in combination with the GNU operating system: the whole system is basically GNU with Linux added, or GNU/Linux.  All the so-called \"Linux\" distributions are really distributions of GNU/Linux.'),('6969696969','A parrot once had sex with me',3,NULL,'2014','A parrot once had sex with me. I did not recognize the act as sex until it was explained to me afterward, but being stroked on the hand by his soft belly feathers was so pleasurable that I yearn for another chance. I have a photo of that act; should I go to prison for it?');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-25 15:18:23
