-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2022 a las 02:17:42
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdstreamingservice`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptor`
--

CREATE TABLE `suscriptor` (
  `id` int(11) NOT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `estatus` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` varchar(50) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `servicio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `suscriptor`
--

INSERT INTO `suscriptor` (`id`, `apellido_materno`, `apellido_paterno`, `estatus`, `fecha_nacimiento`, `nombre`, `plan`, `servicio`) VALUES
(1, 'Flores', 'Magon', 'Activo', '2022-05-10 11:33:34', 'Ricardo', 'Basico', 'Streaming'),
(3, 'Sanchez', 'Ramirez', 'Activo', '20-07-1994', 'Daniel', 'Premium', 'Streaming'),
(5, 'Zambrano', 'Marin ', 'Activo', '15-15-1990', 'Roman', 'Basico', 'Streaming'),
(6, 'Gonzalez', 'Gonzalez', 'Activo', '20-12-1991', 'Susana', 'Estandar', 'Streaming'),
(7, 'Garcia', 'Rodriguez', 'Activo', '03-02-2001', 'Federico', 'Premium', 'Streaming'),
(8, 'Lopez', 'Romero', 'Activo', '12-24-1980', 'Ivan', 'Estandar', 'Streaming'),
(9, 'Fernandez', 'Diaz', 'Activo', '10-01-1975', 'Soledad', 'Premium', 'Streaming'),
(10, 'Ortega', 'Luna', 'Activo', '15-05-1998', 'Iliana', 'Basico', 'Streaming');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tplanes`
--

CREATE TABLE `tplanes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `importe` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tplanes`
--

INSERT INTO `tplanes` (`id`, `nombre`, `importe`) VALUES
(1, 'Basico', '140.00'),
(2, 'Estandar', '220.00'),
(3, 'Premium', '299.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsuscriptores`
--

CREATE TABLE `tsuscriptores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidoPaterno` varchar(25) NOT NULL,
  `apellidoMaterno` varchar(25) NOT NULL,
  `servicio` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `plan` varchar(30) NOT NULL,
  `estatus` varchar(30) NOT NULL,
  `idPlanes` int(11) NOT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tsuscriptores`
--

INSERT INTO `tsuscriptores` (`id`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `servicio`, `fechaNacimiento`, `plan`, `estatus`, `idPlanes`, `apellido_materno`, `apellido_paterno`, `fecha_nacimiento`) VALUES
(1, 'Federico', 'Barrera', 'Alvarez', 'Streaming', '1990-02-01', 'Basico', 'Activo', 1, NULL, NULL, NULL),
(2, 'Lilia', 'Ortega', 'Luna', 'Streaming', '1985-05-15', 'Estandar', 'Activo', 2, NULL, NULL, NULL),
(4, 'Jorge', 'Godinez', 'Jimenez', 'Streaming', '1988-09-30', 'Premium', 'Activo', 3, NULL, NULL, NULL),
(5, 'Daniel', 'Ramiez', 'Sanchez', 'Streaming', '1994-07-01', 'Premium', 'Activo', 3, NULL, NULL, NULL),
(6, 'Carmen', 'Benitez ', 'Chavez', 'Streaming', '1999-02-28', 'Basico', 'Activo', 3, NULL, NULL, NULL),
(7, 'Denise', 'Gutierrez', 'Quintana', 'Streaming', '1995-08-24', 'Premium', 'Activo', 3, NULL, NULL, NULL),
(8, 'Pablo', 'Fernandez', 'Perez', 'Streaming', '2001-12-12', 'Estandar', 'Activo', 3, NULL, NULL, NULL),
(9, 'Miguel Angel', 'Vivanco', 'Gallardo', 'Streaming', '1980-08-25', 'Estandar', 'Activo', 3, NULL, NULL, NULL),
(10, 'Araceli liliana', 'Cabello', 'Gonzalez', 'Streaming', '2002-01-30', 'Basico', 'Activo', 3, NULL, NULL, NULL),
(11, 'Prueba', 'Last name', '...', 'Streaming', '1900-01-01', 'Basico', 'Inactivo', 3, NULL, NULL, NULL),
(15, 'Alberto', 'Cano', 'Diaz', 'Streaming', '1994-05-18', 'Basico', 'Activo', 3, NULL, NULL, NULL),
(16, 'a', 'a', 'a', 'Streaming', '2000-05-01', 'Basico', 'Inactivo', 3, NULL, NULL, NULL),
(17, 'Alberto', 'Montero', 'Vera', 'Streaming', '2022-05-16', 'Basico', 'Activo', 3, NULL, NULL, NULL),
(18, 'Juan', 'PÃ©rez', 'Nolasco', 'Streaming', '1962-05-22', 'Basico', 'Activo', 3, NULL, NULL, NULL),
(19, 'b', 'b', 'b', 'Streaming', '2022-05-04', 'Basico', 'Activo', 3, NULL, NULL, NULL),
(20, 'c', 'c', 'c', 'Streaming', '2022-05-01', 'Basico', 'Activo', 3, NULL, NULL, NULL),
(21, 'd', 'd', 'd', 'Streaming', '2000-05-09', 'Basico', 'Activo', 3, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `suscriptor`
--
ALTER TABLE `suscriptor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tplanes`
--
ALTER TABLE `tplanes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tsuscriptores`
--
ALTER TABLE `tsuscriptores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPlanes` (`idPlanes`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `suscriptor`
--
ALTER TABLE `suscriptor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tsuscriptores`
--
ALTER TABLE `tsuscriptores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tsuscriptores`
--
ALTER TABLE `tsuscriptores`
  ADD CONSTRAINT `tsuscriptores_ibfk_1` FOREIGN KEY (`idPlanes`) REFERENCES `tplanes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
