-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2018 a las 05:31:03
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `localidades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `nombre`) VALUES
(1, 'Usulután'),
(2, 'San Miguel'),
(3, 'San Salvador'),
(4, 'San Vicente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipies`
--

CREATE TABLE `municipies` (
  `idMunicipio` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipies`
--

INSERT INTO `municipies` (`idMunicipio`, `nombre`, `id`) VALUES
(1, 'Jiquilisco', 1),
(4, 'Chinameca', 2),
(5, 'Chirilagua', 2),
(6, 'Ereguayquin', 1),
(7, 'Santiago de María', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `neighborhood`
--

CREATE TABLE `neighborhood` (
  `idColonia` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `idMunicipio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `neighborhood`
--

INSERT INTO `neighborhood` (`idColonia`, `nombre`, `idMunicipio`) VALUES
(1, 'Barrio la mercerd', 1),
(2, 'Colonia el cocal', 1),
(3, 'San Isidro', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipies`
--
ALTER TABLE `municipies`
  ADD PRIMARY KEY (`idMunicipio`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `neighborhood`
--
ALTER TABLE `neighborhood`
  ADD PRIMARY KEY (`idColonia`),
  ADD KEY `idMunicipio` (`idMunicipio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `municipies`
--
ALTER TABLE `municipies`
  MODIFY `idMunicipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `neighborhood`
--
ALTER TABLE `neighborhood`
  MODIFY `idColonia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipies`
--
ALTER TABLE `municipies`
  ADD CONSTRAINT `municipies_ibfk_1` FOREIGN KEY (`id`) REFERENCES `departments` (`id`);

--
-- Filtros para la tabla `neighborhood`
--
ALTER TABLE `neighborhood`
  ADD CONSTRAINT `neighborhood_ibfk_1` FOREIGN KEY (`idMunicipio`) REFERENCES `municipies` (`idMunicipio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
