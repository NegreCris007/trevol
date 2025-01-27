-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2025 a las 21:17:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `invenalokosto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `puerto` varchar(255) NOT NULL,
  `generacion` varchar(255) NOT NULL,
  `memoriaram` varchar(255) NOT NULL,
  `memoriarom` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombre`, `codigo`, `descripcion`, `marca`, `modelo`, `puerto`, `generacion`, `memoriaram`, `memoriarom`, `categoria`) VALUES
(1, 'Moden', '1111', 'moden', 'wrye44', 'dmfe3', '1', '6', '23324', '23432', 'Caja de clavos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `descripcion`, `codigo`) VALUES
(1, 'caja 3', '1234'),
(4, 'caja 4', '12345'),
(6, 'caja 4', '123455'),
(7, 'Ropa', '3333'),
(9, 'caja', '22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(45) NOT NULL,
  `Cedula` int(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `departamento` varchar(45) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete_at` timestamp NULL DEFAULT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `Cedula`, `nombre`, `departamento`, `create_at`, `update_at`, `delete_at`, `password`) VALUES
(4, 2234567, 'victori', 'refri', '2025-01-23 19:21:52', '2025-01-23 19:21:52', NULL, '$2y$10$SoP4zBmESHNEaD83Vc7lWuf.7krmb0WelbPJAWyquPMpWfhH43/Sa'),
(5, 24196774, 'Cristian', 'informática', '2025-01-23 19:24:28', '2025-01-23 19:24:28', NULL, '$2y$10$1PDJn.IN.n5sxEUPy5HHXuqET2jauVTp.81TS4xmwNibdXNzitPaC'),
(6, 34678097, 'juan', 'informática', '2025-01-23 19:58:52', '2025-01-23 19:58:52', NULL, '$2y$10$6s8OGDvzjNCOsLm0.L6TFePizz/nm9BUA0MP3lIEKLyP3.PmJ5Wny'),
(7, 2156789, 'Fernando', 'Logistica', '2025-01-24 21:46:42', '2025-01-24 21:46:42', NULL, '$2y$10$NtX2GipjRQwYh8ZXDXWUkOL3pYPQVjWnIn8hCB5wo16EmTNmIM1KG');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
