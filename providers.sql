-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2018 a las 00:43:35
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

DROP DATABASE IF EXISTS cablesat;
CREATE DATABASE cablesat;
USE cablesat;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cablesat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providers`
--

CREATE TABLE `providers` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `nrc` varchar(10) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `giro` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `representante` varchar(45) NOT NULL,
  `cuenta_catalogo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `providers`
--

INSERT INTO `providers` (`id_proveedor`, `nombre`, `nit`, `nrc`, `direccion`, `giro`, `categoria`, `nacionalidad`, `telefono`, `correo_electronico`, `representante`, `cuenta_catalogo`) VALUES
(1, 'Proveedora PC visión', '0021-548556-663-7', '2001147', 'Colonia la cruz, Usulután, El Salvador', 'Tecnología', 'Monitores para PC', 'Nicaraguence', '7022-1905', 'proveedora@correo.com', 'Juan Martínez,  7896-6415', '1102'),
(2, 'Telmex S.A de C.V', '4632-123456-782-0', '896200', 'México CA', 'Artículos de limpieza', 'Artículos para limpiar ventanas', 'Mexicano', '7841-3362', 'eremas@hotmail.com', 'Manuel Menjivar, 2624-5611', '3322'),
(3, 'AT&T', '1487-587875-500-1', '00456-00dd', 'Washington D.C, Estados Unidos', 'Telecomunicaciones', 'Cables para modems', 'Estadounidense', '1800-400-02', 'ahorasi@gmail.com', 'Diego Herrera 7022-1905', '1120'),
(4, 'Cable Visión Usulután', '0024-540054-966-1', '879000', 'Barrio la Merced, Usulután', 'Telecomunicaciones', 'Antenas de recepción de señal', 'Salvadoreña', '2624-8300', 'cablesat@gmail.com', 'Diego Herrera 7022-1905', '3300'),
(5, 'Microsoft', '3994-0045-796-1', '8955000', 'Palo alto, california, Estados Unidos', 'Tecnología', 'Servidores', 'Estadounidense', '1900-445-05', 'microsoft@billgates.com', 'Bill Gates 899-000', '7711'),
(6, 'Apple inc', '0184-63200-266-2', '00145555', 'Cupertino, California', 'Tecnología', 'Smartphones', 'Estadounidense', '1800-8978', 'appleinc@gmail.com', 'Ana 1800457', '5590'),
(7, 'Google inc', '1221-480072-200-9', '12003366', 'Sillicon Valley', 'Tecnología', 'Robotica', 'Estadounidense', '7884-4551', 'googleinc@gmail.com', 'Antonio 78956630', '4455'),
(8, 'Confecciones Santa Lucía', '1234-567891-200-8', '200400', 'Jiquilisco, Usulután', 'Otros', 'Confección de uniformes de trabajo', 'Salvadoreña', '2624-8596', 'cofecciones@hotmail.com', 'N/A', '6644'),
(9, 'Juan Vazques', '', '200400', 'Jiquilisco, Usulután', 'Otros', 'Confección de uniformes de trabajo', 'Salvadoreña', '2624-8596', 'cofecciones@hotmail.com', 'N/A', '6644'),
(10, 'Textiles San José', '1234-123456-123-1', '0180055', 'Colonia el por venir, pasaje lozano, casa #10', 'Otros', 'Telas para confección', 'Salvadoreña', '26240086', 'textiles@sanjose.com', 'Enrique García 26248899', '1100');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `providers`
--
ALTER TABLE `providers`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
