-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.38 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных shop
CREATE DATABASE IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `shop`;

-- Дамп структуры для таблица shop.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы shop.category: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `category_name`, `active`) VALUES
	(1, 'Телефон', 1),
	(2, 'Ноутбук', 1),
	(3, 'Телевизор', 1),
	(4, 'Планшет', 1),
	(5, 'Холодильник', 1),
	(6, 'Компьютер', 1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Дамп структуры для таблица shop.country
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы shop.country: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`country_id`, `country_name`) VALUES
	(1, 'Қазақстан'),
	(2, 'Қытай'),
	(3, 'Ресей'),
	(4, 'АҚШ');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Дамп структуры для таблица shop.Images
CREATE TABLE IF NOT EXISTS `Images` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_link` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы shop.Images: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` (`img_id`, `img_link`, `product_id`) VALUES
	(1, 'best_1.png', 6),
	(2, 'banner_2_product.png', 2);
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;

-- Дамп структуры для таблица shop.model
CREATE TABLE IF NOT EXISTS `model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы shop.model: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` (`model_id`, `model_name`) VALUES
	(1, 'LG'),
	(2, 'SAMSUNG'),
	(3, 'APPLE'),
	(4, 'NOKIA'),
	(5, 'SONY'),
	(6, 'ACER');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;

-- Дамп структуры для таблица shop.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` bigint(20) NOT NULL DEFAULT '0',
  `product_country_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `product_year` year(4) NOT NULL DEFAULT '0000',
  `product_category_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `product_model_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `product_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы shop.product: ~12 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_country_id`, `product_year`, `product_category_id`, `product_model_id`, `product_count`) VALUES
	(1, 'Ноутбук Асер', 250000, 2, '2017', 2, 6, 10),
	(2, 'Ноутбук samsung', 360000, 2, '2019', 2, 2, 3),
	(3, 'Телевизор samsung', 500000, 2, '2019', 3, 2, 8),
	(5, 'Телефон Нокиа', 75000, 2, '2018', 1, 4, 10),
	(6, 'Телефон Samsung', 199999, 1, '2019', 1, 2, 7),
	(8, 'Телефон apple', 4545, 4, '2019', 1, 3, 5),
	(9, 'Телефон LG', 150000, 2, '2019', 1, 0, 0),
	(10, 'Телефон Sony', 95000, 2, '2018', 1, 0, 0),
	(11, 'Холодильник LG', 422000, 5, '2019', 5, 0, 0),
	(12, 'Холодильник Sumsung', 360000, 5, '2017', 5, 0, 0),
	(13, 'Телевизор Lg', 260000, 2, '0000', 0, 0, 0),
	(14, 'Ноутбук Apple', 600000, 2, '0000', 2, 0, 0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
