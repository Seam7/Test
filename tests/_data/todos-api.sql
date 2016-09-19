-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2016 a las 00:35:10
-- Versión del servidor: 5.7.9
-- Versión de PHP: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `todos-api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_24_033216_create_todos_table', 1),
('2016_08_25_182747_add_user_id_to_todos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `todos`
--

DROP TABLE IF EXISTS `todos`;
CREATE TABLE IF NOT EXISTS `todos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `task` text COLLATE utf8_unicode_ci NOT NULL,
  `is_done` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todos_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `todos`
--

INSERT INTO `todos` (`id`, `task`, `is_done`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Culpa commodi quisquam itaque.', 0, '2016-09-19 04:34:33', '2016-09-19 04:34:33', 2),
(2, 'Et aut commodi.', 0, '2016-09-19 04:34:33', '2016-09-19 04:34:33', 9),
(3, 'Dolor consequuntur occaecati pariatur iure reprehenderit at.', 0, '2016-09-19 04:34:33', '2016-09-19 04:34:33', 10),
(4, 'Velit maxime reiciendis enim quaerat cupiditate doloribus.', 0, '2016-09-19 04:34:33', '2016-09-19 04:34:33', 12),
(5, 'Molestiae provident in repellat.', 0, '2016-09-19 04:34:33', '2016-09-19 04:34:33', 12),
(6, 'Aut perferendis.', 0, '2016-09-19 04:34:33', '2016-09-19 04:34:33', 13),
(7, 'Molestiae doloribus est excepturi et laudantium et.', 0, '2016-09-19 04:34:33', '2016-09-19 04:34:33', 14),
(8, 'Enim tempora voluptas nulla.', 1, '2016-09-19 04:34:33', '2016-09-19 04:34:33', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bessie Goldner V', 'chad56@example.net', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'GnO4fkciqK', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(2, 'Isom Larson', 'koepp.leonora@example.org', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'anhDTxIdmA', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(3, 'Maribel Hahn', 'zgreen@example.com', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'NVo8R5AiN7', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(4, 'Dr. Shea Feeney DVM', 'gschowalter@example.com', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'QeJyAqRXJe', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(5, 'Mr. Rowland Gerhold', 'fay.maritza@example.org', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'e3ehvBI7ut', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(6, 'Aylin Turcotte', 'dledner@example.com', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'fIKIfvQdW9', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(7, 'Alda Altenwerth', 'pjacobs@example.com', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'VSbac0z67E', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(8, 'Mr. Gay Davis', 'kuvalis.anderson@example.com', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'EYKJkBm434', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(9, 'Bridget Hermiston', 'douglas.jules@example.com', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'yrg77RCcGY', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(10, 'Skylar Wisoky PhD', 'lila52@example.net', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'ouQFZhpZqy', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(11, 'Corrine Haag', 'antoinette20@example.net', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'ZolgZ81ivb', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(12, 'Dariana Schultz', 'tfisher@example.org', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'MuwhlLtpsq', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(13, 'Hertha Stanton', 'jonathan46@example.org', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'Ug4omP3RRL', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(14, 'Quinn Langosh', 'vklocko@example.com', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', 'NqQJKQz1sQ', '2016-09-19 04:34:33', '2016-09-19 04:34:33'),
(15, 'Abel Trantow III', 'devin.reichert@example.net', '$2y$10$wLO.F2wOZbKkT7t4FkRHau2VocAnmY8uNNjvwLiLeKNcQAlKZ6KOm', '7nYSgyKnlV', '2016-09-19 04:34:33', '2016-09-19 04:34:33');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
