-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               8.0.27 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for aplikacija
DROP DATABASE IF EXISTS `aplikacija`;
CREATE DATABASE IF NOT EXISTS `aplikacija` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aplikacija`;

-- Dumping structure for table aplikacija.administrator
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `administrator_id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `password_hash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`administrator_id`),
  UNIQUE KEY `uq_administrator_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.administrator: ~4 rows (approximately)
DELETE FROM `administrator`;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` (`administrator_id`, `username`, `password_hash`) VALUES
	(1, 'Test1', '7F9C48A06C3E9B6769A6D22ACAE01F81D0CAB83B30B8EB9E229EB0DE7314F314F981F0DB2DCF0408EB4ED30C30B0B769A22626133048D33FD29575ECB630BBDA'),
	(2, 'Test2', 'testtest2'),
	(3, 'pperic', '0E7E25380CC1E5F1F9DE6C5BA087ABB8C1C34B824547BD95ADAE91D961C207D4956B7407815AD029FB676E7EF76EE90C4B07751538B48F7F11EC1527348FF9FE'),
	(5, 'mlilic', '261C91C6290E1A5C59B83D4BDC4C2D51849CCA234FFF90A626E53E025859405BF9E3736C5D66519B5D19F7C9A98516E7D7FF153564D1C72EE99C5CECE8D704AD');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;

-- Dumping structure for table aplikacija.article
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `category_id` int unsigned NOT NULL DEFAULT '0',
  `excerpt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('available','visible','hidden') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `is_promoted` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`article_id`),
  KEY `fk_article_category_id` (`category_id`),
  CONSTRAINT `fk_article_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.article: ~39 rows (approximately)
DELETE FROM `article`;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`article_id`, `name`, `category_id`, `excerpt`, `description`, `status`, `is_promoted`, `created_at`) VALUES
	(1, 'ACME HDD 512GB', 5, 'Kratak opis', 'Detaljan opis', 'available', 0, '2022-02-12 18:14:52'),
	(2, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 19:38:34'),
	(3, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 19:39:35'),
	(4, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 19:59:32'),
	(5, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:01:14'),
	(6, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:01:15'),
	(7, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:01:17'),
	(8, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:01:18'),
	(9, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:03:18'),
	(10, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:03:20'),
	(11, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:03:59'),
	(12, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:15:38'),
	(13, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:15:51'),
	(14, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:19:27'),
	(15, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:20:00'),
	(16, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:32:44'),
	(17, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:33:37'),
	(18, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:43:14'),
	(19, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 20:48:03'),
	(20, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 21:01:30'),
	(21, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 21:07:36'),
	(22, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 21:10:06'),
	(23, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-15 21:12:05'),
	(24, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 00:34:25'),
	(25, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 01:03:00'),
	(26, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 01:25:30'),
	(27, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 01:25:31'),
	(28, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 01:25:32'),
	(29, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 01:25:33'),
	(30, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 01:25:33'),
	(31, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 01:33:10'),
	(32, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 12:02:30'),
	(33, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 22:47:38'),
	(34, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 23:42:19'),
	(35, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 23:46:55'),
	(36, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 23:57:02'),
	(37, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-16 23:59:09'),
	(38, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-19 00:22:51'),
	(39, 'ACME HD11 1TB', 5, 'Kratak opis..', 'Detaljan opis', 'available', 0, '2022-02-21 00:25:45');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- Dumping structure for table aplikacija.article_feature
DROP TABLE IF EXISTS `article_feature`;
CREATE TABLE IF NOT EXISTS `article_feature` (
  `article_feature_id` int unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int unsigned NOT NULL DEFAULT '0',
  `feature_id` int unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_feature_id`),
  UNIQUE KEY `uq_article_feature_article_id_feature_id` (`article_id`,`feature_id`) USING BTREE,
  KEY `fk_article_feature_feature_id` (`feature_id`) USING BTREE,
  CONSTRAINT `fk_article_feature_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_article_feature_feature_id` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`feature_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.article_feature: ~3 rows (approximately)
DELETE FROM `article_feature`;
/*!40000 ALTER TABLE `article_feature` DISABLE KEYS */;
INSERT INTO `article_feature` (`article_feature_id`, `article_id`, `feature_id`, `value`) VALUES
	(1, 1, 1, '512'),
	(2, 1, 2, 'SATA3'),
	(3, 1, 3, 'SSD');
/*!40000 ALTER TABLE `article_feature` ENABLE KEYS */;

-- Dumping structure for table aplikacija.article_price
DROP TABLE IF EXISTS `article_price`;
CREATE TABLE IF NOT EXISTS `article_price` (
  `article_price_id` int unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`article_price_id`),
  KEY `fk_article_price_article_id` (`article_id`),
  CONSTRAINT `fk_article_price_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.article_price: ~3 rows (approximately)
DELETE FROM `article_price`;
/*!40000 ALTER TABLE `article_price` DISABLE KEYS */;
INSERT INTO `article_price` (`article_price_id`, `article_id`, `price`, `created_at`) VALUES
	(1, 1, 45.00, '2022-02-12 18:30:20'),
	(2, 1, 41.00, '2022-02-12 18:36:10'),
	(7, 1, 46.55, '2022-02-12 19:05:44');
/*!40000 ALTER TABLE `article_price` ENABLE KEYS */;

-- Dumping structure for table aplikacija.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`),
  KEY `fk_cart_user_id` (`user_id`),
  CONSTRAINT `fk_cart_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.cart: ~0 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table aplikacija.cart_article
DROP TABLE IF EXISTS `cart_article`;
CREATE TABLE IF NOT EXISTS `cart_article` (
  `cart_article_id` int unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int unsigned NOT NULL DEFAULT '0',
  `article_id` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cart_article_id`),
  UNIQUE KEY `uq_cart_article_cart_id_article_id` (`cart_id`,`article_id`),
  KEY `fk_cart_article_article_id` (`article_id`),
  CONSTRAINT `fk_cart_article_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_cart_article_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.cart_article: ~0 rows (approximately)
DELETE FROM `cart_article`;
/*!40000 ALTER TABLE `cart_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_article` ENABLE KEYS */;

-- Dumping structure for table aplikacija.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image_path` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `parent__category_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `uq_category_name` (`name`),
  UNIQUE KEY `uq_category_image_path` (`image_path`),
  KEY `fk_category_parent__category_id` (`parent__category_id`) USING BTREE,
  CONSTRAINT `fk_category_parent__category_id` FOREIGN KEY (`parent__category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.category: ~5 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`, `name`, `image_path`, `parent__category_id`) VALUES
	(1, 'Racunarske komponente', 'assets/pc.jpg', NULL),
	(2, 'Kucna elektronika', 'assets/home.jpg', NULL),
	(3, 'Laptop racunari', 'assets/pc/laptop.jpg', 1),
	(4, 'Memorijski mediji', 'assets/pc/memory.jpg', 1),
	(5, 'Hard diskovi', 'assets/pc/memory/hdd.jpg', 4);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table aplikacija.feature
DROP TABLE IF EXISTS `feature`;
CREATE TABLE IF NOT EXISTS `feature` (
  `feature_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `category_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feature_id`),
  UNIQUE KEY `uq_feature_name_category_id` (`name`,`category_id`),
  KEY `fk_feature_category_id` (`category_id`),
  CONSTRAINT `fk_feature_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.feature: ~3 rows (approximately)
DELETE FROM `feature`;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` (`feature_id`, `name`, `category_id`) VALUES
	(1, 'Kapacitet', 5),
	(3, 'Tehnologija', 5),
	(2, 'Tip', 5);
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;

-- Dumping structure for table aplikacija.order
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cart_id` int unsigned NOT NULL DEFAULT '0',
  `status` enum('rejected','accepted','shipped','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `uq_order_cart_id` (`cart_id`),
  CONSTRAINT `fk_order_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.order: ~0 rows (approximately)
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Dumping structure for table aplikacija.photo
DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `photo_id` int unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int unsigned NOT NULL DEFAULT '0',
  `image_path` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`photo_id`),
  UNIQUE KEY `uq_photo_image_path` (`image_path`),
  KEY `fk_photo_article_id` (`article_id`),
  CONSTRAINT `fk_photo_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.photo: ~2 rows (approximately)
DELETE FROM `photo`;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` (`photo_id`, `article_id`, `image_path`) VALUES
	(1, 1, 'images/1/front.jpeg'),
	(2, 1, 'images/1/label.jpeg');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;

-- Dumping structure for table aplikacija.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `password_hash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `forename` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `surname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone_number` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `postal_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uq_user_email` (`email`),
  UNIQUE KEY `uq_user_phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aplikacija.user: ~0 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
