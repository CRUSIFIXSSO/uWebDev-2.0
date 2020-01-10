-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.5.62-0ubuntu0.14.04.1 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ecomdb
CREATE DATABASE IF NOT EXISTS `ecomdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ecomdb`;

-- Dumping structure for table ecomdb.ecommerce
CREATE TABLE IF NOT EXISTS `ecommerce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(128) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table ecomdb.ecommerce: ~5 rows (approximately)
/*!40000 ALTER TABLE `ecommerce` DISABLE KEYS */;
INSERT IGNORE INTO `ecommerce` (`id`, `subject`, `content`, `date`) VALUES
	(1, 'This is a php developement enviromentnt subject status', 'Ecommerce also know as electronic commerce or internet commerce', '2020-01-10 10:20:01'),
	(2, 'This is a new project', 'sportsshoes is a sports company that sells alot of shoes and sports product', '2020-01-10 10:24:33'),
	(3, 'This is going to be php7&5', 'php has evolved and php5 and 7 is widely used', '2020-01-10 10:53:52'),
	(4, 'This is a new php7.4', 'Adidas is a sports company that sells alot of shoes and sports product', '2020-01-10 10:47:33'),
	(5, 'Make E-commerce in th weekend.2015', 'Wow it worked', '2020-01-10 12:12:00');
/*!40000 ALTER TABLE `ecommerce` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
