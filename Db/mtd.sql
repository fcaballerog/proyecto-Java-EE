-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2017 a las 20:02:48
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mtd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canalizacion`
--

CREATE TABLE `canalizacion` (
  `idTitular` int(11) NOT NULL,
  `Descripcion` varchar(15) DEFAULT NULL,
  `Dimension` int(5) DEFAULT NULL,
  `Modo` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `idTitular` int(11) NOT NULL,
  `idNaturaleza` int(10) DEFAULT NULL,
  `idAislamiento` int(10) DEFAULT NULL,
  `idClase` int(10) DEFAULT NULL,
  `idSeccion` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instaladores`
--

CREATE TABLE `instaladores` (
  `id_instaladores` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `n_carnet` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `instaladores`
--

INSERT INTO `instaladores` (`id_instaladores`, `nombre`, `n_carnet`) VALUES
(1, 'Francisco', 123456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `potencias`
--

CREATE TABLE `potencias` (
  `idTitular` int(11) NOT NULL,
  `Instalada` int(10) DEFAULT NULL,
  `Prevista` int(10) DEFAULT NULL,
  `idTension` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `idTitular` int(11) NOT NULL,
  `PotenciaAlumbrado` int(10) DEFAULT NULL,
  `PotenciaHidro` int(10) DEFAULT NULL,
  `PotenciaOtros` int(10) DEFAULT NULL,
  `PotenciaTotal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titular`
--

CREATE TABLE `titular` (
  `idTitular` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `doi_Cif` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `TM` varchar(15) DEFAULT NULL,
  `isla` varchar(15) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `CodigoPostal` varchar(5) DEFAULT NULL,
  `SuperficieUtil` double NOT NULL,
  `UsoDestino` varchar(200) NOT NULL,
  `NumeroPlatas` int(11) NOT NULL,
  `Creatte` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Updatte` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FechaProyecto` date NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viviendas`
--

CREATE TABLE `viviendas` (
  `idTitular` int(11) NOT NULL,
  `GradoElectrificacion` varchar(100) DEFAULT NULL,
  `NumeroViviendas` varchar(255) DEFAULT NULL,
  `SuperficieUtil` float DEFAULT NULL,
  `PotenciaVivienda` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canalizacion`
--
ALTER TABLE `canalizacion`
  ADD PRIMARY KEY (`idTitular`);

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`idTitular`);

--
-- Indices de la tabla `instaladores`
--
ALTER TABLE `instaladores`
  ADD PRIMARY KEY (`id_instaladores`),
  ADD UNIQUE KEY `n_carnet` (`n_carnet`);

--
-- Indices de la tabla `potencias`
--
ALTER TABLE `potencias`
  ADD PRIMARY KEY (`idTitular`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`idTitular`);

--
-- Indices de la tabla `titular`
--
ALTER TABLE `titular`
  ADD PRIMARY KEY (`idTitular`);

--
-- Indices de la tabla `viviendas`
--
ALTER TABLE `viviendas`
  ADD PRIMARY KEY (`idTitular`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `instaladores`
--
ALTER TABLE `instaladores`
  MODIFY `id_instaladores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
