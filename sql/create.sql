-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server-Version:               11.3.2-MariaDB - mariadb.org binary distribution
-- Server-Betriebssystem:        Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank-Struktur für cake
CREATE DATABASE IF NOT EXISTS `cake` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cake`;

-- Exportiere Struktur von Tabelle cake.blog_posts
CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `modified` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle cake.blog_posts: ~2 rows (ungefähr)
INSERT INTO `blog_posts` (`id`, `name`, `created`, `modified`) VALUES
	(1, 'Robert update', '2024-04-22 07:38:41', '2024-04-22 10:18:03'),
	(2, 'ccc', '2024-04-22 10:19:04', '2024-04-22 10:19:44');

-- Exportiere Struktur von Tabelle cake.blog_posts_categories
CREATE TABLE IF NOT EXISTS `blog_posts_categories` (
  `category_id` int(11) NOT NULL,
  `blog_post_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`blog_post_id`),
  KEY `blog_post_id` (`blog_post_id`),
  CONSTRAINT `blog_posts_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `blog_posts_categories_ibfk_2` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle cake.blog_posts_categories: ~2 rows (ungefähr)
INSERT INTO `blog_posts_categories` (`category_id`, `blog_post_id`) VALUES
	(1, 1),
	(1, 2);

-- Exportiere Struktur von Tabelle cake.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `modified` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle cake.categories: ~2 rows (ungefähr)
INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
	(1, 'kategorie', '2024-04-22 09:52:39', '2024-04-23 09:12:40'),
	(2, 'kategorie ohne blog', '2024-04-22 09:55:21', '2024-04-22 09:55:21');

-- Exportiere Struktur von Tabelle cake.meta_fields
CREATE TABLE IF NOT EXISTS `meta_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` varchar(255) DEFAULT NULL,
  `blog_post_id` int(11) NOT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `modified` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `blog_post_id` (`blog_post_id`),
  CONSTRAINT `meta_fields_ibfk_1` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle cake.meta_fields: ~4 rows (ungefähr)
INSERT INTO `meta_fields` (`id`, `meta_key`, `meta_value`, `blog_post_id`, `created`, `modified`) VALUES
	(1, 'rrr', 'rrr', 1, '2024-04-22 07:38:41', '2024-04-22 07:38:41'),
	(2, 'sss', 'sss', 1, '2024-04-22 07:38:41', '2024-04-22 07:38:41'),
	(3, 'asd', 'asd', 2, '2024-04-22 10:19:04', '2024-04-22 10:19:04'),
	(4, 'asd', 'asd', 2, '2024-04-22 10:19:04', '2024-04-22 10:19:04');

-- Exportiere Struktur von Tabelle cake.phinxlog
CREATE TABLE IF NOT EXISTS `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle cake.phinxlog: ~0 rows (ungefähr)
INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
	(20240422105912, 'Test', '2024-04-22 09:03:29', '2024-04-22 09:03:29', 0);

-- Exportiere Struktur von Tabelle cake.test
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportiere Daten aus Tabelle cake.test: ~0 rows (ungefähr)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

SET GLOBAL sql_mode = '';
