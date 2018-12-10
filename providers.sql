-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2018 a las 00:29:22
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

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
  `nacionalidad` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `representante` varchar(45) NOT NULL,
  `cuenta_catalogo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `providers`
--

INSERT INTO `providers` (`id_proveedor`, `nombre`, `nit`, `nrc`, `direccion`, `giro`, `nacionalidad`, `telefono`, `correo_electronico`, `representante`, `cuenta_catalogo`) VALUES
(6, 'Proveedora PC visión', '452139-78', '2001147', 'Colonia la cruz, Usulután, El Salvador', 'Tecnología', 'Nicaraguence', '7022-1905', 'proveedora@correo.com', 'Juan Martínez,  7896-6415', '1102'),
(7, 'Telmex S.A de C.V', '14896321-200', '896200', 'México CA', 'Artículos de limpieza', 'Mexicano', '7841-3362', 'eremas@hotmail.com', 'Manuel Menjivar, 2624-5611', '3322'),
(8, 'AT&T', '1800254-00', '00456-00', 'Washington D.C, Estados Unidos', 'Telecomunicaciones', 'Estadounidense', '1800-400-02', 'ahorasi@gmail.com', 'Diego Herrera 7022-1905', '1120'),
(9, 'Cable Visión Usulután', '10025862-2200', '879000', 'Barrio la Merced, Usulután', 'Telecomunicaciones', 'Salvadoreña', '2624-8300', 'cablesat@gmail.com', 'Diego Herrera 7022-1905', '3300'),
(10, 'Microsoft', '789566-001', '8955000', 'Palo alto california, Estados Unidos', 'Tecnología', 'Estadounidense', '1900-445-05', 'microsoft@billgates.com', 'Bill Gates 899-000', '7711');

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
