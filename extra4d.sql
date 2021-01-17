-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2019 a las 19:28:29
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `extra4d`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `autor` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `genero` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idioma` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `resumen` text COLLATE utf8_spanish_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`, `genero`, `idioma`, `resumen`) VALUES
(2, 'La Isla Del Tesoro', 'Robert Louis Stevenson', 'Aventuras / Novelas / Literatura Juvenil / Cl�sico', 'Espa�ol', '\"Una ma�ana, un viejo marinero que ten�a la cara marcada con la cicatriz de un sable, lleg� hasta nuestra casa arrastrando un gastado ba�l. Era alto y fuerte y llevaba el pelo recogido en una trenza negra. Sus manos, con las u�as sucias y recomidas sujetaban un bast�n. Dentro de la posada, el viejo marinero pidi� un vaso de ron y, apur�ndolo de un solo trago, comenz� a hablar con mi madre.\"\r\n\r\nEl joven Jim Hawkins, hijo de la mesonera de un peque�o pueblo de la costa de Inglaterra, conoce a un viejo marinero borracho y malhumorado, que al morir deja el mapa de un tesoro: un codiciado alijo de oro y plata enterrado por el legendario pirata Flint en una lejana isla tropical.\r\n\r\nJim consigue abordar un barco para ir a la isla, pero, mezclada con la tripulaci�n, una banda de piratas capitaneados por John Silver tambi�n perseguir� el bot�n. Empieza la aventura.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `admin` char(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `password`, `nombre`, `correo`, `admin`) VALUES
(1, 'Jonathan', '1111', 'Usuario permitido para el sistema', 'telematica@ucol.mx', 'S');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
