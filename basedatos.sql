-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2020 a las 17:19:12
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
-- Base de datos: `urgencia`
--
CREATE DATABASE IF NOT EXISTS `urgencia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `urgencia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivou`
--

CREATE TABLE `motivou` (
  `idMU` tinyint(4) NOT NULL,
  `descripMU` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria` varchar(2) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `motivou`
--

INSERT INTO `motivou` (`idMU`, `descripMU`, `categoria`) VALUES
(1, 'Accidente de tránsito', 'C1'),
(2, 'Caída de altura', 'C1'),
(3, 'Herida de bala', 'C1'),
(4, 'Fractura grave', 'C2'),
(5, 'Crisis convulsiva', 'C2'),
(6, 'Sangramiento profuso', 'C2'),
(7, ' Diabético descompensado', 'C3'),
(8, 'Asmático con crisis', 'C3'),
(9, ' Ingesta de fármaco', 'C3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `rut` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `direc` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fono` int(11) NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `motivoU` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`rut`, `nom`, `direc`, `fono`, `edad`, `motivoU`) VALUES
('1111', 'aaaa', 'ddddd', 2213123, 21, 'Crisis convulsiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistemasalud`
--

CREATE TABLE `sistemasalud` (
  `idS` tinyint(4) NOT NULL,
  `descripSS` varchar(12) COLLATE utf8_spanish2_ci NOT NULL,
  `porcPago` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sistemasalud`
--

INSERT INTO `sistemasalud` (`idS`, `descripSS`, `porcPago`) VALUES
(1, 'Fonasa A', 0),
(2, 'Fonasa B', 0.2),
(3, 'Fonasa C', 0.4),
(4, 'Fonasa D', 0.6),
(5, 'Isapre', 0.8),
(6, 'Particular', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `motivou`
--
ALTER TABLE `motivou`
  ADD PRIMARY KEY (`idMU`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `sistemasalud`
--
ALTER TABLE `sistemasalud`
  ADD PRIMARY KEY (`idS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
