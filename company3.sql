-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 21:44:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `company3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_22_104218_create_tareas_table', 1),
(6, '2024_10_22_104328_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 1, 'API TOKEN', '2ffa0ebf3cca974a15c841be971b2b5ce2e7170603e90ddf593b1514419ef537', '[\"*\"]', NULL, NULL, '2024-10-22 23:14:23', '2024-10-22 23:14:23'),
(6, 'App\\Models\\User', 1, 'API TOKEN', 'e157f7a0dd56de642d39cb10d834bb1be47288686861967fb8078aa9784204e6', '[\"*\"]', '2024-10-22 23:16:52', NULL, '2024-10-22 23:15:21', '2024-10-22 23:16:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Council', '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(2, 'Financial Examiner', '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(3, 'Photoengraving Machine Operator', '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(4, 'Butcher', '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(5, 'Personal Service Worker', '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(6, 'Licensing Examiner and Inspector', '2024-10-22 15:25:23', '2024-10-22 15:25:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'luiesteban', 'email@example.com', NULL, '$2y$10$BkgkH7w1LrF/t1BYWRHLweptSZQ2rWa5SCBrWo/0tKPfwEh8cHz.C', NULL, '2024-10-22 20:25:49', '2024-10-22 20:25:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `tarea_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `email`, `phone`, `tarea_id`, `created_at`, `updated_at`) VALUES
(1, 'Mertie Gusikowski Jr.', 'oswald.oreilly@yahoo.com', '+12487583913', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(2, 'Zelda Paucek', 'price.kshlerin@yahoo.com', '+16813479285', 1, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(3, 'Terry Barton', 'khoeger@gmail.com', '+16573910565', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(4, 'Kimberly Donnelly', 'dagmar93@goodwin.com', '+18319452886', 6, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(5, 'Humberto Schimmel', 'simonis.sharon@witting.com', '+13518807607', 4, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(6, 'Casandra O\'Hara', 'kemmer.lue@yahoo.com', '+17143291859', 5, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(7, 'Mr. Johnny Thompson IV', 'mschultz@cummerata.com', '+18622871027', 5, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(8, 'Abagail Yundt DVM', 'breitenberg.dalton@pfeffer.com', '+12707338260', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(9, 'Prof. Josiane Rice II', 'ugerhold@yahoo.com', '+15164559719', 4, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(10, 'Aditya Harris', 'elwyn.kunde@hotmail.com', '+12812291794', 4, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(11, 'Mr. Jacques Mayer', 'vhahn@walter.com', '+13612968174', 2, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(12, 'Mr. Candido Cruickshank', 'dennis17@maggio.com', '+15599599969', 2, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(13, 'Dr. Hope Feeney', 'pboyle@hotmail.com', '+18049553523', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(14, 'Carol Schumm', 'kuhic.roger@cronin.com', '+18433803086', 2, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(15, 'Mr. Fern Bogan', 'jake20@wisozk.com', '+19869215298', 4, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(16, 'Mrs. Princess Sporer', 'bill.gerhold@howell.com', '+16108255081', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(17, 'Dallin Deckow', 'carter.janis@waters.net', '+16893397274', 4, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(18, 'Dr. Elijah Ernser', 'ecruickshank@bergstrom.com', '+13199850330', 6, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(19, 'Humberto Fahey', 'hill.albina@gmail.com', '+15416830819', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(20, 'Dr. Evelyn Kirlin', 'sid.tromp@gmail.com', '+18577807113', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(21, 'Travis Rolfson I', 'watsica.mandy@gutmann.com', '+15803672197', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(22, 'Prof. Wade Gorczany', 'federico.heaney@yahoo.com', '+15736713862', 3, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(23, 'Prof. Howell Ferry', 'dubuque.kieran@gmail.com', '+18549786347', 2, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(24, 'Dr. Theresa Becker', 'terry.graciela@stoltenberg.com', '+17376188676', 5, '2024-10-22 15:25:23', '2024-10-22 15:25:23'),
(25, 'Nona Tillman', 'wokuneva@collins.biz', '+17018482456', 2, '2024-10-22 15:25:23', '2024-10-22 15:25:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_tarea_id_foreign` (`tarea_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_tarea_id_foreign` FOREIGN KEY (`tarea_id`) REFERENCES `tareas` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
