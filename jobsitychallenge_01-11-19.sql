# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.12)
# Base de datos: challenge
# Tiempo de Generación: 2019-11-02 05:51:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `entries`;

CREATE TABLE `entries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entries_user_id_foreign` (`user_id`),
  CONSTRAINT `entries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;

INSERT INTO `entries` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`)
VALUES
	(1,1,'In ex et nulla.','Ut nemo error hic odit sit sed aut. Neque possimus animi repudiandae ut blanditiis illum rerum porro. Placeat at quasi et dolore libero et et.','2019-10-30 19:37:46','2019-10-30 19:37:46'),
	(2,1,'Non voluptatibus in qui.','Et quia eligendi sed consequuntur sequi. Reprehenderit quo autem quo consequatur doloremque. Aut similique praesentium quisquam odio. Ad repellendus et consequuntur non molestiae.','2019-10-30 19:39:51','2019-10-31 14:27:07'),
	(3,1,'In ex et nulla.','Et quia eligendi sed consequuntur sequi. Reprehenderit quo autem quo consequatur doloremque. Aut similique praesentium quisquam odio. Ad repellendus et consequuntur non molestiae.','2019-10-30 22:20:06','2019-10-31 13:55:33'),
	(4,1,'other thing edited','Voluptates dolores et eius consequatur. Alias illo illum nesciunt est. Quia aut doloribus quia perspiciatis velit itaque culpa.','2019-10-31 14:38:10','2019-10-31 14:38:10'),
	(5,1,'In ex et nulla.','Voluptates dolores et eius consequatur. Alias illo illum nesciunt est. Quia aut doloribus quia perspiciatis velit itaque culpa.','2019-10-31 14:44:57','2019-10-31 14:44:57'),
	(6,1,'other thing edited','Ut nemo error hic odit sit sed aut. Neque possimus animi repudiandae ut blanditiis illum rerum porro. Placeat at quasi et dolore libero et et.','2019-10-31 15:13:37','2019-10-31 15:13:37'),
	(7,1,'In ex et nulla.','Voluptates dolores et eius consequatur. Alias illo illum nesciunt est. Quia aut doloribus quia perspiciatis velit itaque culpa.','2019-10-31 15:15:33','2019-10-31 15:15:33'),
	(8,1,'In ex et nulla.','Ut nemo error hic odit sit sed aut. Neque possimus animi repudiandae ut blanditiis illum rerum porro. Placeat at quasi et dolore libero et et.','2019-10-31 15:15:39','2019-10-31 15:15:39'),
	(9,1,'In ex et nulla.','Voluptates dolores et eius consequatur. Alias illo illum nesciunt est. Quia aut doloribus quia perspiciatis velit itaque culpa.','2019-10-31 15:24:15','2019-10-31 15:24:15'),
	(10,1,'New validation edited','Ut nemo error hic odit sit sed aut. Neque possimus animi repudiandae ut blanditiis illum rerum porro. Placeat at quasi et dolore libero et et.','2019-10-31 15:24:34','2019-10-31 15:37:22'),
	(11,1,'With create','Voluptates dolores et eius consequatur. Alias illo illum nesciunt est. Quia aut doloribus quia perspiciatis velit itaque culpa.','2019-10-31 15:46:35','2019-10-31 15:46:35'),
	(12,1,'Entry with create','Ut nemo error hic odit sit sed aut. Neque possimus animi repudiandae ut blanditiis illum rerum porro. Placeat at quasi et dolore libero et et.','2019-10-31 15:49:12','2019-10-31 15:49:12'),
	(13,1,'Entry with create','Voluptates dolores et eius consequatur. Alias illo illum nesciunt est. Quia aut doloribus quia perspiciatis velit itaque culpa.','2019-10-31 15:50:06','2019-10-31 15:50:06'),
	(14,1,'Works again','Ut nemo error hic odit sit sed aut. Neque possimus animi repudiandae ut blanditiis illum rerum porro. Placeat at quasi et dolore libero et et.','2019-10-31 15:58:38','2019-10-31 15:58:38'),
	(15,1,'other thing edited','Voluptates dolores et eius consequatur. Alias illo illum nesciunt est. Quia aut doloribus quia perspiciatis velit itaque culpa.','2019-10-31 16:07:35','2019-10-31 16:08:08'),
	(16,7,'In ex et nulla.','Ut nemo error hic odit sit sed aut. Neque possimus animi repudiandae ut blanditiis illum rerum porro. Placeat at quasi et dolore libero et et.','2019-11-01 01:15:48','2019-11-01 23:14:03'),
	(17,8,'In ex et nulla.','Voluptates dolores et eius consequatur. Alias illo illum nesciunt est. Quia aut doloribus quia perspiciatis velit itaque culpa.','2019-11-01 01:15:48','2019-11-01 01:15:48'),
	(18,9,'Quis commodi eum magni necessitatibus ut.','Et quia eligendi sed consequuntur sequi. Reprehenderit quo autem quo consequatur doloremque. Aut similique praesentium quisquam odio. Ad repellendus et consequuntur non molestiae.','2019-11-01 01:15:48','2019-11-01 01:15:48'),
	(19,1,'New entry with new template','This is the content with the new template','2019-11-01 23:42:32','2019-11-01 23:42:32'),
	(20,1,'Other one','Other one','2019-11-01 23:43:34','2019-11-01 23:43:34');

/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla hidden_tweets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hidden_tweets`;

CREATE TABLE `hidden_tweets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `tw_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hidden_tweets_user_id_foreign` (`user_id`),
  CONSTRAINT `hidden_tweets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `hidden_tweets` WRITE;
/*!40000 ALTER TABLE `hidden_tweets` DISABLE KEYS */;

INSERT INTO `hidden_tweets` (`id`, `user_id`, `tw_id`, `status`, `created_at`, `updated_at`)
VALUES
	(1,1,1190477395607732225,0,'2019-11-02 03:59:06','2019-11-02 03:59:06'),
	(2,1,1190478830768537600,1,'2019-11-02 04:01:06','2019-11-02 04:06:26'),
	(3,1,1190484130263207936,0,'2019-11-02 04:25:27','2019-11-02 04:25:27'),
	(4,1,1190490571678388230,0,'2019-11-02 04:48:01','2019-11-02 04:48:01'),
	(5,1,1190490532209922049,0,'2019-11-02 04:48:03','2019-11-02 04:48:03'),
	(6,1,1190504602233384960,1,'2019-11-02 05:44:58','2019-11-02 05:45:43'),
	(7,1,1190504438424915968,0,'2019-11-02 05:44:59','2019-11-02 05:44:59'),
	(8,1,1190504416337694721,0,'2019-11-02 05:45:01','2019-11-02 05:45:01'),
	(9,1,1190504325149184005,0,'2019-11-02 05:45:03','2019-11-02 05:45:03');

/*!40000 ALTER TABLE `hidden_tweets` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(8,'2014_10_12_000000_create_users_table',1),
	(9,'2014_10_12_100000_create_password_resets_table',1),
	(10,'2019_08_19_000000_create_failed_jobs_table',1),
	(11,'2019_10_28_192238_create_entries_table',1),
	(12,'2019_11_02_023822_create_hidden_tweets_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `twitter_username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Pablo Isaac López Jaimes','kabos.lee@gmail.com',NULL,NULL,'$2y$10$rukwbZpNJmyV1EVxXpM/GuhEioFuq94kyBxb9VuBXK/5sjsTfSnLq','xhzNrVSiHYQ0G64mTKUFaMS75z6sBsCbcvHrCe9TwsEmPmqYC2ijWzkw42ME','2019-10-28 19:46:22','2019-10-28 19:46:22'),
	(2,'Dr. Amely Heidenreich III','shirley.green@example.com',NULL,'2019-11-01 00:37:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','UAg5KKKgcN','2019-11-01 00:37:43','2019-11-01 00:37:43'),
	(3,'Prof. Maudie Hartmann','wilbert80@example.com',NULL,'2019-11-01 00:37:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qPiJDqXnnV','2019-11-01 00:37:43','2019-11-01 00:37:43'),
	(4,'Miss Delphine Gorczany III','virginia.rempel@example.com',NULL,'2019-11-01 00:41:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cgBLkz7bBT','2019-11-01 00:41:42','2019-11-01 00:41:42'),
	(5,'Neva Thompson','rhett21@example.net',NULL,'2019-11-01 00:41:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1c8gYQSJdO','2019-11-01 00:41:42','2019-11-01 00:41:42'),
	(6,'Dr. Reanna Quigley DVM','claire58@example.net',NULL,'2019-11-01 00:41:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YEnxN8Q1gOOpmk0Z6mXmPexkoqxY3sd5aREPEyjkfkJaiUM5aNCKcVoJZEbe','2019-11-01 00:41:42','2019-11-01 00:41:42'),
	(7,'Zackery Kessler III','name30@example.com',NULL,'2019-11-01 01:15:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Qgmb5DMVs6','2019-11-01 01:15:48','2019-11-01 01:15:48'),
	(8,'Zelma Paucek','manuel.lynch@example.org',NULL,'2019-11-01 01:15:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RzuobLvD8h','2019-11-01 01:15:48','2019-11-01 01:15:48'),
	(9,'Ms. Claudine Kemmer MD','zkilback@example.net',NULL,'2019-11-01 01:15:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','82rGN7g9Z7','2019-11-01 01:15:48','2019-11-01 01:15:48'),
	(10,'Jose Juan','peruvian@machu.com',NULL,NULL,'$2y$10$FE/PP7X9mpSOTMWteNXdAu4fnaD5pB3TDiuY/NgIX5eFG84JJ9SBW',NULL,'2019-11-02 00:34:01','2019-11-02 00:34:01'),
	(11,'Martin Lutero','martinluter@gmail.com',NULL,NULL,'$2y$10$GDWNPFzvMFNSp84N3C/qY.7.gtnkHRbmF9KuejMi9It0Ik7IBBRoe',NULL,'2019-11-02 00:47:20','2019-11-02 00:47:20');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
