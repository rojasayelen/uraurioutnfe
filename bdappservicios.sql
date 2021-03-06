-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2021 a las 17:56:26
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdappservicios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `cuit` bigint(20) NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `id_categoria_iva` int(11) NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `cuit`, `telefono`, `email`, `id_localidad`, `id_categoria_iva`, `direccion`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(1, 'cliente1 modif', 20339626724123, '250', 'cli1@gmail.com', 1, 2, 'Juan de Garay 1254', '2021-04-07 17:34:27', '2021-05-19 12:19:17', '2021-05-19 12:19:17', 2),
(3, 'CLIENTE 2', 0, '345851233', 'marquezemiliano1988@gmail.com', 2, 1, '25 de mayo 2778', '2021-04-07 17:34:27', NULL, NULL, 1),
(4, 'CLIENTE3', 0, '35231566', 'cliente3@gmail.com', 1, 1, 'san martin 2536', '2021-05-19 10:53:37', NULL, NULL, 3),
(5, 'cliente 4', 2021354565, '4203746', 'cliente4@gmail.com', 2, 2, 'gral lopez 2358', '2021-05-19 11:52:09', NULL, NULL, 3),
(6, 'cliente 6', 2021354565, '4203746', 'cliente6@gmail.com', 2, 2, 'gral lopez 2358', '2021-05-20 08:53:09', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `id_tipo_empleado` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `dni` bigint(20) NOT NULL,
  `cuit` bigint(20) DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `foto` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio_hora` float(5,1) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `id_tipo_empleado`, `nombre`, `telefono`, `dni`, `cuit`, `email`, `foto`, `precio_hora`, `id_user`, `id_localidad`, `direccion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'EMPLEADO1 modif', '', 33962672123, 20339626724123, 'emp1@emp.com', 'empleado1.jpg', 250.0, 2, 1, '', '2021-04-14 17:55:48', '2021-05-19 10:36:17', '2021-05-19 10:36:17'),
(2, 1, 'EMPLEADO2', '', 345852154, 213458521545, 'emp1@emp1.com', 'c://sistema/fotos/empleado2.jpg', 180.0, 3, 1, '', '2021-04-14 17:55:48', NULL, NULL),
(3, 2, 'EMPLEADO 3', '', 27852654, 20278526544, 'marquezemiliano1988@gmail.com.ar', '', 380.0, 3, 1, '', '2021-05-19 09:11:53', NULL, NULL),
(4, 1, 'empleado5', '', 21354567, 20213545657, 'empleado5@gmail.com', 'fotouser4.jpg', 435.0, 2, 1, '', '2021-05-19 09:42:24', '2021-05-18 09:49:13', '2021-05-13 09:49:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `id_categoria_iva` int(11) NOT NULL,
  `cuit` bigint(30) NOT NULL,
  `telefono` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nombre`, `id_categoria_iva`, `cuit`, `telefono`, `id_servicio`, `id_localidad`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SOFTWARE', 1, 30203654789, '3425942333', 1, 1, '2020-11-16 17:19:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'LIMPI APP', 1, 30155220089, '3415987456', 2, 2, '2021-04-21 15:51:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frecuencia_horaria`
--

CREATE TABLE `frecuencia_horaria` (
  `id_frecuencia_horaria` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `hora_ingreso_lunes_semana_1` time DEFAULT NULL,
  `hora_egreso_lunes_semana_1` time DEFAULT NULL,
  `lunes_semana_1_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_martes_semana_1` time DEFAULT NULL,
  `hora_egreso_martes_semana_1` time DEFAULT NULL,
  `martes_semana_1_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_miercoles_semana_1` time DEFAULT NULL,
  `hora_egreso_miercoles_semana_1` time DEFAULT NULL,
  `miercoles_semana_1_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_jueves_semana_1` time DEFAULT NULL,
  `hora_egreso_jueves_semana_1` time DEFAULT NULL,
  `jueves_semana_1_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_viernes_semana_1` time DEFAULT NULL,
  `hora_egreso_viernes_semana_1` time DEFAULT NULL,
  `viernes_semana_1_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_sabado_semana_1` time DEFAULT NULL,
  `hora_egreso_sabado_semana_1` time DEFAULT NULL,
  `sabado_semana_1_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_domingo_semana_1` time DEFAULT NULL,
  `hora_egreso_domingo_semana_1` time DEFAULT NULL,
  `domingo_semana_1_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_lunes_semana_2` time DEFAULT NULL,
  `hora_egreso_lunes_semana_2` time DEFAULT NULL,
  `lunes_semana_2_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_martes_semana_2` time DEFAULT NULL,
  `hora_egreso_martes_semana_2` time DEFAULT NULL,
  `martes_semana_2_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_miercoles_semana_2` time DEFAULT NULL,
  `hora_egreso_miercoles_semana_2` time DEFAULT NULL,
  `miercoles_semana_2_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_jueves_semana_2` time DEFAULT NULL,
  `hora_egreso_jueves_semana_2` time DEFAULT NULL,
  `jueves_semana_2_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_viernes_semana_2` time DEFAULT NULL,
  `hora_egreso_viernes_semana_2` time DEFAULT NULL,
  `viernes_semana_2_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_sabado_semana_2` time DEFAULT NULL,
  `hora_egreso_sabado_semana_2` time DEFAULT NULL,
  `sabado_semana_2_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_domingo_semana_2` time DEFAULT NULL,
  `hora_egreso_domingo_semana_2` time DEFAULT NULL,
  `domingo_semana_2_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_lunes_semana_3` time DEFAULT NULL,
  `hora_egreso_lunes_semana_3` time DEFAULT NULL,
  `lunes_semana_3_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_martes_semana_3` time DEFAULT NULL,
  `hora_egreso_martes_semana_3` time DEFAULT NULL,
  `martes_semana_3_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_miercoles_semana_3` time DEFAULT NULL,
  `hora_egreso_miercoles_semana_3` time DEFAULT NULL,
  `miercoles_semana_3_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_jueves_semana_3` time DEFAULT NULL,
  `hora_egreso_jueves_semana_3` time DEFAULT NULL,
  `jueves_semana_3_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_viernes_semana_3` time DEFAULT NULL,
  `hora_egreso_viernes_semana_3` time DEFAULT NULL,
  `viernes_semana_3_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_sabado_semana_3` time DEFAULT NULL,
  `hora_egreso_sabado_semana_3` time DEFAULT NULL,
  `sabado_semana_3_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_domingo_semana_3` time DEFAULT NULL,
  `hora_egreso_domingo_semana_3` time DEFAULT NULL,
  `domingo_semana_3_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_lunes_semana_4` time DEFAULT NULL,
  `hora_egreso_lunes_semana_4` time DEFAULT NULL,
  `lunes_semana_4_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_martes_semana_4` time DEFAULT NULL,
  `hora_egreso_martes_semana_4` time DEFAULT NULL,
  `martes_semana_4_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_miercoles_semana_4` time DEFAULT NULL,
  `hora_egreso_miercoles_semana_4` time DEFAULT NULL,
  `miercoles_semana_4_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_jueves_semana_4` time DEFAULT NULL,
  `hora_egreso_jueves_semana_4` time DEFAULT NULL,
  `jueves_semana_4_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_viernes_semana_4` time DEFAULT NULL,
  `hora_egreso_viernes_semana_4` time DEFAULT NULL,
  `viernes_semana_4_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_sabado_semana_4` time DEFAULT NULL,
  `hora_egreso_sabado_semana_4` time DEFAULT NULL,
  `sabado_semana_4_estado` tinyint(4) NOT NULL DEFAULT 1,
  `hora_ingreso_domingo_semana_4` time DEFAULT NULL,
  `hora_egreso_domingo_semana_4` time DEFAULT NULL,
  `domingo_semana_4_estado` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_usr` int(11) DEFAULT NULL,
  `asignado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `frecuencia_horaria`
--

INSERT INTO `frecuencia_horaria` (`id_frecuencia_horaria`, `id_cliente`, `id_empleado`, `hora_ingreso_lunes_semana_1`, `hora_egreso_lunes_semana_1`, `lunes_semana_1_estado`, `hora_ingreso_martes_semana_1`, `hora_egreso_martes_semana_1`, `martes_semana_1_estado`, `hora_ingreso_miercoles_semana_1`, `hora_egreso_miercoles_semana_1`, `miercoles_semana_1_estado`, `hora_ingreso_jueves_semana_1`, `hora_egreso_jueves_semana_1`, `jueves_semana_1_estado`, `hora_ingreso_viernes_semana_1`, `hora_egreso_viernes_semana_1`, `viernes_semana_1_estado`, `hora_ingreso_sabado_semana_1`, `hora_egreso_sabado_semana_1`, `sabado_semana_1_estado`, `hora_ingreso_domingo_semana_1`, `hora_egreso_domingo_semana_1`, `domingo_semana_1_estado`, `hora_ingreso_lunes_semana_2`, `hora_egreso_lunes_semana_2`, `lunes_semana_2_estado`, `hora_ingreso_martes_semana_2`, `hora_egreso_martes_semana_2`, `martes_semana_2_estado`, `hora_ingreso_miercoles_semana_2`, `hora_egreso_miercoles_semana_2`, `miercoles_semana_2_estado`, `hora_ingreso_jueves_semana_2`, `hora_egreso_jueves_semana_2`, `jueves_semana_2_estado`, `hora_ingreso_viernes_semana_2`, `hora_egreso_viernes_semana_2`, `viernes_semana_2_estado`, `hora_ingreso_sabado_semana_2`, `hora_egreso_sabado_semana_2`, `sabado_semana_2_estado`, `hora_ingreso_domingo_semana_2`, `hora_egreso_domingo_semana_2`, `domingo_semana_2_estado`, `hora_ingreso_lunes_semana_3`, `hora_egreso_lunes_semana_3`, `lunes_semana_3_estado`, `hora_ingreso_martes_semana_3`, `hora_egreso_martes_semana_3`, `martes_semana_3_estado`, `hora_ingreso_miercoles_semana_3`, `hora_egreso_miercoles_semana_3`, `miercoles_semana_3_estado`, `hora_ingreso_jueves_semana_3`, `hora_egreso_jueves_semana_3`, `jueves_semana_3_estado`, `hora_ingreso_viernes_semana_3`, `hora_egreso_viernes_semana_3`, `viernes_semana_3_estado`, `hora_ingreso_sabado_semana_3`, `hora_egreso_sabado_semana_3`, `sabado_semana_3_estado`, `hora_ingreso_domingo_semana_3`, `hora_egreso_domingo_semana_3`, `domingo_semana_3_estado`, `hora_ingreso_lunes_semana_4`, `hora_egreso_lunes_semana_4`, `lunes_semana_4_estado`, `hora_ingreso_martes_semana_4`, `hora_egreso_martes_semana_4`, `martes_semana_4_estado`, `hora_ingreso_miercoles_semana_4`, `hora_egreso_miercoles_semana_4`, `miercoles_semana_4_estado`, `hora_ingreso_jueves_semana_4`, `hora_egreso_jueves_semana_4`, `jueves_semana_4_estado`, `hora_ingreso_viernes_semana_4`, `hora_egreso_viernes_semana_4`, `viernes_semana_4_estado`, `hora_ingreso_sabado_semana_4`, `hora_egreso_sabado_semana_4`, `sabado_semana_4_estado`, `hora_ingreso_domingo_semana_4`, `hora_egreso_domingo_semana_4`, `domingo_semana_4_estado`, `created_at`, `updated_at`, `deleted_at`, `id_usr`, `asignado`) VALUES
(13, 3, 3, '16:00:00', '19:00:00', 1, '17:00:00', '20:00:00', 1, '08:00:00', '14:00:00', 1, '09:00:00', '15:00:00', 1, '17:30:00', '21:00:00', 1, '06:00:00', '12:00:00', 1, '09:00:00', '11:30:00', 1, '16:00:00', '19:00:00', 1, '17:00:00', '20:00:00', 1, '08:00:00', '14:00:00', 1, '09:00:00', '15:00:00', 1, '17:30:00', '21:00:00', 1, '06:00:00', '12:00:00', 1, '09:00:00', '11:30:00', 1, '16:00:00', '19:00:00', 1, '17:00:00', '20:00:00', 1, '08:00:00', '14:00:00', 1, '09:00:00', '15:00:00', 1, '17:30:00', '21:00:00', 1, '06:00:00', '12:00:00', 1, '09:00:00', '11:30:00', 1, '16:00:00', '17:00:00', 1, '17:00:00', '20:00:00', 1, '08:00:00', '14:00:00', 1, '09:00:00', '15:00:00', 1, '17:30:00', '21:00:00', 1, '06:00:00', '12:00:00', 1, '09:00:00', '11:30:00', 1, '2021-05-18 10:04:29', '2021-05-20 12:29:30', NULL, 3, 1),
(14, 1, 2, '07:00:00', '12:00:00', 1, '17:00:00', '20:00:00', 1, '08:00:00', '14:00:00', 1, '09:00:00', '15:00:00', 1, '17:30:00', '21:00:00', 1, '06:00:00', '12:00:00', 1, '09:00:00', '11:30:00', 1, '07:00:00', '12:00:00', 1, '17:00:00', '20:00:00', 1, '08:00:00', '14:00:00', 1, '09:00:00', '15:00:00', 1, '17:30:00', '21:00:00', 1, '06:00:00', '12:00:00', 1, '09:00:00', '11:30:00', 1, '07:00:00', '12:00:00', 1, '17:00:00', '20:00:00', 1, '08:00:00', '14:00:00', 1, '09:00:00', '15:00:00', 1, '17:30:00', '21:00:00', 1, '06:00:00', '12:00:00', 1, '09:00:00', '11:30:00', 1, '07:00:00', '12:00:00', 1, '17:00:00', '20:00:00', 1, '08:00:00', '14:00:00', 1, '09:00:00', '15:00:00', 1, '17:30:00', '21:00:00', 1, '06:00:00', '12:00:00', 1, '09:00:00', '11:30:00', 1, '2021-05-20 08:50:05', NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva_categoria`
--

CREATE TABLE `iva_categoria` (
  `id_categoria_iva` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `iva_categoria`
--

INSERT INTO `iva_categoria` (`id_categoria_iva`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'IVA RESPONSABLE INSCRIPTO', '2021-04-19 17:29:03', NULL, NULL),
(2, 'MONOTRIBUTO', '2021-04-27 17:29:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `id_localidad` int(11) NOT NULL,
  `cod_postal` int(6) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id_localidad`, `cod_postal`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3000, 'Santa Fe', '2021-04-12 15:55:02', NULL, NULL),
(2, 5000, 'Cordoba', '2021-04-21 15:55:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mes_calendario_x_empleado_semana1`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `mes_calendario_x_empleado_semana1` (
`deleted_at` datetime
,`asignado` tinyint(1)
,`id_frecuencia_horaria` int(11)
,`nombre` varchar(150)
,`id_empleado` int(11)
,`LUNES` varchar(23)
,`lunes_carga` decimal(10,1)
,`MARTES` varchar(23)
,`martes_carga` decimal(10,1)
,`MIERCOLES` varchar(23)
,`miercoles_carga` decimal(10,1)
,`JUEVES` varchar(23)
,`jueves_carga` decimal(10,1)
,`VIERNES` varchar(23)
,`viernes_carga` decimal(10,1)
,`SABADO` varchar(23)
,`sabado_carga` decimal(10,1)
,`DOMINGO` varchar(23)
,`domingo_carga` decimal(10,1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mes_calendario_x_empleado_semana2`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `mes_calendario_x_empleado_semana2` (
`deleted_at` datetime
,`asignado` tinyint(1)
,`id_frecuencia_horaria` int(11)
,`nombre` varchar(150)
,`id_empleado` int(11)
,`LUNES` varchar(23)
,`lunes_carga` decimal(10,1)
,`MARTES` varchar(23)
,`martes_carga` decimal(10,1)
,`MIERCOLES` varchar(23)
,`miercoles_carga` decimal(10,1)
,`JUEVES` varchar(23)
,`jueves_carga` decimal(10,1)
,`VIERNES` varchar(23)
,`viernes_carga` decimal(10,1)
,`SABADO` varchar(23)
,`sabado_carga` decimal(10,1)
,`DOMINGO` varchar(23)
,`domingo_carga` decimal(10,1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mes_calendario_x_empleado_semana3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `mes_calendario_x_empleado_semana3` (
`deleted_at` datetime
,`asignado` tinyint(1)
,`id_frecuencia_horaria` int(11)
,`nombre` varchar(150)
,`id_empleado` int(11)
,`LUNES` varchar(23)
,`lunes_carga` decimal(10,1)
,`MARTES` varchar(23)
,`martes_carga` decimal(10,1)
,`MIERCOLES` varchar(23)
,`miercoles_carga` decimal(10,1)
,`JUEVES` varchar(23)
,`jueves_carga` decimal(10,1)
,`VIERNES` varchar(23)
,`viernes_carga` decimal(10,1)
,`SABADO` varchar(23)
,`sabado_carga` decimal(10,1)
,`DOMINGO` varchar(23)
,`domingo_carga` decimal(10,1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mes_calendario_x_empleado_semana4`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `mes_calendario_x_empleado_semana4` (
`deleted_at` datetime
,`asignado` tinyint(1)
,`id_frecuencia_horaria` int(11)
,`nombre` varchar(150)
,`id_empleado` int(11)
,`LUNES` varchar(23)
,`lunes_carga` decimal(10,1)
,`MARTES` varchar(23)
,`martes_carga` decimal(10,1)
,`MIERCOLES` varchar(23)
,`miercoles_carga` decimal(10,1)
,`JUEVES` varchar(23)
,`jueves_carga` decimal(10,1)
,`VIERNES` varchar(23)
,`viernes_carga` decimal(10,1)
,`SABADO` varchar(23)
,`sabado_carga` decimal(10,1)
,`DOMINGO` varchar(23)
,`domingo_carga` decimal(10,1)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ADMINISTRADOR SUPER USUARIO', '2021-04-14 16:04:38', NULL, NULL),
(2, 'SUPERVISOR', '2021-04-15 16:07:43', NULL, NULL),
(3, 'OPERADOR', '2021-04-13 16:07:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LIMPIEZA', '2021-04-12 15:56:25', NULL, NULL),
(2, 'ALQUILER MAQUINAS DE CAFETERIA', '2021-04-19 15:56:25', NULL, NULL),
(3, 'SOFTWARE', '2021-04-20 17:41:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleado`
--

CREATE TABLE `tipo_empleado` (
  `id_tipo_empleado` int(11) NOT NULL,
  `tipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `id_usr` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`id_tipo_empleado`, `tipo`, `id_usr`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SUPERVISOR', 3, '2021-04-19 18:01:45', '0000-00-00 00:00:00', NULL),
(2, 'OPERARIO', 3, '2021-04-19 18:01:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_user`, `name`, `password`, `email`, `id_empresa`, `id_rol`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '$2a$10$lVeTuQAvd425g1n9NXt.A.pCh/MLqoe2zw12PzFmXiU./7tO6E8Ii', 'admin@admin.com', 1, 1, '2021-04-12 15:55:02', '2021-05-13 19:33:25', NULL),
(2, 'user', '$2a$10$ArQ3AY1ozcuqXEXfZALxE.q7nI4Z6vM.oH85.rQDWC0QbGszxsTFy', 'user@user.com', 2, 3, '2021-04-12 17:24:47', NULL, NULL),
(3, 'adminlimpiapp', '$2a$10$IQ9W2m11/vtBqnCrPvc9yetYhW0uTJZpQVZIOafk46WCd5rsKsbry', 'adminlimpiapp@gmail.com', 2, 2, '2021-04-27 17:43:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura para la vista `mes_calendario_x_empleado_semana1`
--
DROP TABLE IF EXISTS `mes_calendario_x_empleado_semana1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mes_calendario_x_empleado_semana1`  AS  select `frecuencia_horaria`.`deleted_at` AS `deleted_at`,`frecuencia_horaria`.`asignado` AS `asignado`,`frecuencia_horaria`.`id_frecuencia_horaria` AS `id_frecuencia_horaria`,`cliente`.`nombre` AS `nombre`,`frecuencia_horaria`.`id_empleado` AS `id_empleado`,concat(`frecuencia_horaria`.`hora_ingreso_lunes_semana_1`,' a ',`frecuencia_horaria`.`hora_egreso_lunes_semana_1`) AS `LUNES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_lunes_semana_1`,`frecuencia_horaria`.`hora_ingreso_lunes_semana_1`)) / (60 * 60) as decimal(10,1)) AS `lunes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_martes_semana_1`,' a ',`frecuencia_horaria`.`hora_egreso_martes_semana_1`) AS `MARTES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_martes_semana_1`,`frecuencia_horaria`.`hora_ingreso_martes_semana_1`)) / (60 * 60) as decimal(10,1)) AS `martes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_miercoles_semana_1`,' a ',`frecuencia_horaria`.`hora_egreso_miercoles_semana_1`) AS `MIERCOLES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_miercoles_semana_1`,`frecuencia_horaria`.`hora_ingreso_miercoles_semana_1`)) / (60 * 60) as decimal(10,1)) AS `miercoles_carga`,concat(`frecuencia_horaria`.`hora_ingreso_jueves_semana_1`,' a ',`frecuencia_horaria`.`hora_egreso_jueves_semana_1`) AS `JUEVES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_jueves_semana_1`,`frecuencia_horaria`.`hora_ingreso_jueves_semana_1`)) / (60 * 60) as decimal(10,1)) AS `jueves_carga`,concat(`frecuencia_horaria`.`hora_ingreso_viernes_semana_1`,' a ',`frecuencia_horaria`.`hora_egreso_viernes_semana_1`) AS `VIERNES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_viernes_semana_1`,`frecuencia_horaria`.`hora_ingreso_viernes_semana_1`)) / (60 * 60) as decimal(10,1)) AS `viernes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_sabado_semana_1`,' a ',`frecuencia_horaria`.`hora_egreso_sabado_semana_1`) AS `SABADO`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_sabado_semana_1`,`frecuencia_horaria`.`hora_ingreso_sabado_semana_1`)) / (60 * 60) as decimal(10,1)) AS `sabado_carga`,concat(`frecuencia_horaria`.`hora_ingreso_domingo_semana_1`,' a ',`frecuencia_horaria`.`hora_egreso_domingo_semana_1`) AS `DOMINGO`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_domingo_semana_1`,`frecuencia_horaria`.`hora_ingreso_domingo_semana_1`)) / (60 * 60) as decimal(10,1)) AS `domingo_carga` from ((`empleado` join `frecuencia_horaria` on(`frecuencia_horaria`.`id_empleado` = `empleado`.`id_empleado`)) join `cliente` on(`frecuencia_horaria`.`id_cliente` = `cliente`.`id_cliente`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `mes_calendario_x_empleado_semana2`
--
DROP TABLE IF EXISTS `mes_calendario_x_empleado_semana2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mes_calendario_x_empleado_semana2`  AS  select `frecuencia_horaria`.`deleted_at` AS `deleted_at`,`frecuencia_horaria`.`asignado` AS `asignado`,`frecuencia_horaria`.`id_frecuencia_horaria` AS `id_frecuencia_horaria`,`cliente`.`nombre` AS `nombre`,`frecuencia_horaria`.`id_empleado` AS `id_empleado`,concat(`frecuencia_horaria`.`hora_ingreso_lunes_semana_2`,' a ',`frecuencia_horaria`.`hora_egreso_lunes_semana_2`) AS `LUNES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_lunes_semana_2`,`frecuencia_horaria`.`hora_ingreso_lunes_semana_2`)) / (60 * 60) as decimal(10,1)) AS `lunes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_martes_semana_2`,' a ',`frecuencia_horaria`.`hora_egreso_martes_semana_2`) AS `MARTES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_martes_semana_2`,`frecuencia_horaria`.`hora_ingreso_martes_semana_2`)) / (60 * 60) as decimal(10,1)) AS `martes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_miercoles_semana_2`,' a ',`frecuencia_horaria`.`hora_egreso_miercoles_semana_2`) AS `MIERCOLES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_miercoles_semana_2`,`frecuencia_horaria`.`hora_ingreso_miercoles_semana_2`)) / (60 * 60) as decimal(10,1)) AS `miercoles_carga`,concat(`frecuencia_horaria`.`hora_ingreso_jueves_semana_2`,' a ',`frecuencia_horaria`.`hora_egreso_jueves_semana_2`) AS `JUEVES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_jueves_semana_2`,`frecuencia_horaria`.`hora_ingreso_jueves_semana_2`)) / (60 * 60) as decimal(10,1)) AS `jueves_carga`,concat(`frecuencia_horaria`.`hora_ingreso_viernes_semana_2`,' a ',`frecuencia_horaria`.`hora_egreso_viernes_semana_2`) AS `VIERNES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_viernes_semana_2`,`frecuencia_horaria`.`hora_ingreso_viernes_semana_2`)) / (60 * 60) as decimal(10,1)) AS `viernes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_sabado_semana_2`,' a ',`frecuencia_horaria`.`hora_egreso_sabado_semana_2`) AS `SABADO`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_sabado_semana_2`,`frecuencia_horaria`.`hora_ingreso_sabado_semana_2`)) / (60 * 60) as decimal(10,1)) AS `sabado_carga`,concat(`frecuencia_horaria`.`hora_ingreso_domingo_semana_2`,' a ',`frecuencia_horaria`.`hora_egreso_domingo_semana_2`) AS `DOMINGO`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_domingo_semana_2`,`frecuencia_horaria`.`hora_ingreso_domingo_semana_2`)) / (60 * 60) as decimal(10,1)) AS `domingo_carga` from ((`empleado` join `frecuencia_horaria` on(`frecuencia_horaria`.`id_empleado` = `empleado`.`id_empleado`)) join `cliente` on(`frecuencia_horaria`.`id_cliente` = `cliente`.`id_cliente`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `mes_calendario_x_empleado_semana3`
--
DROP TABLE IF EXISTS `mes_calendario_x_empleado_semana3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mes_calendario_x_empleado_semana3`  AS  select `frecuencia_horaria`.`deleted_at` AS `deleted_at`,`frecuencia_horaria`.`asignado` AS `asignado`,`frecuencia_horaria`.`id_frecuencia_horaria` AS `id_frecuencia_horaria`,`cliente`.`nombre` AS `nombre`,`frecuencia_horaria`.`id_empleado` AS `id_empleado`,concat(`frecuencia_horaria`.`hora_ingreso_lunes_semana_3`,' a ',`frecuencia_horaria`.`hora_egreso_lunes_semana_3`) AS `LUNES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_lunes_semana_3`,`frecuencia_horaria`.`hora_ingreso_lunes_semana_3`)) / (60 * 60) as decimal(10,1)) AS `lunes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_martes_semana_3`,' a ',`frecuencia_horaria`.`hora_egreso_martes_semana_3`) AS `MARTES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_martes_semana_3`,`frecuencia_horaria`.`hora_ingreso_martes_semana_3`)) / (60 * 60) as decimal(10,1)) AS `martes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_miercoles_semana_3`,' a ',`frecuencia_horaria`.`hora_egreso_miercoles_semana_3`) AS `MIERCOLES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_miercoles_semana_3`,`frecuencia_horaria`.`hora_ingreso_miercoles_semana_3`)) / (60 * 60) as decimal(10,1)) AS `miercoles_carga`,concat(`frecuencia_horaria`.`hora_ingreso_jueves_semana_3`,' a ',`frecuencia_horaria`.`hora_egreso_jueves_semana_3`) AS `JUEVES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_jueves_semana_3`,`frecuencia_horaria`.`hora_ingreso_jueves_semana_3`)) / (60 * 60) as decimal(10,1)) AS `jueves_carga`,concat(`frecuencia_horaria`.`hora_ingreso_viernes_semana_3`,' a ',`frecuencia_horaria`.`hora_egreso_viernes_semana_3`) AS `VIERNES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_viernes_semana_3`,`frecuencia_horaria`.`hora_ingreso_viernes_semana_3`)) / (60 * 60) as decimal(10,1)) AS `viernes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_sabado_semana_3`,' a ',`frecuencia_horaria`.`hora_egreso_sabado_semana_3`) AS `SABADO`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_sabado_semana_3`,`frecuencia_horaria`.`hora_ingreso_sabado_semana_3`)) / (60 * 60) as decimal(10,1)) AS `sabado_carga`,concat(`frecuencia_horaria`.`hora_ingreso_domingo_semana_3`,' a ',`frecuencia_horaria`.`hora_egreso_domingo_semana_3`) AS `DOMINGO`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_domingo_semana_3`,`frecuencia_horaria`.`hora_ingreso_domingo_semana_3`)) / (60 * 60) as decimal(10,1)) AS `domingo_carga` from ((`empleado` join `frecuencia_horaria` on(`frecuencia_horaria`.`id_empleado` = `empleado`.`id_empleado`)) join `cliente` on(`frecuencia_horaria`.`id_cliente` = `cliente`.`id_cliente`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `mes_calendario_x_empleado_semana4`
--
DROP TABLE IF EXISTS `mes_calendario_x_empleado_semana4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mes_calendario_x_empleado_semana4`  AS  select `frecuencia_horaria`.`deleted_at` AS `deleted_at`,`frecuencia_horaria`.`asignado` AS `asignado`,`frecuencia_horaria`.`id_frecuencia_horaria` AS `id_frecuencia_horaria`,`cliente`.`nombre` AS `nombre`,`frecuencia_horaria`.`id_empleado` AS `id_empleado`,concat(`frecuencia_horaria`.`hora_ingreso_lunes_semana_4`,' a ',`frecuencia_horaria`.`hora_egreso_lunes_semana_4`) AS `LUNES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_lunes_semana_4`,`frecuencia_horaria`.`hora_ingreso_lunes_semana_4`)) / (60 * 60) as decimal(10,1)) AS `lunes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_martes_semana_4`,' a ',`frecuencia_horaria`.`hora_egreso_martes_semana_4`) AS `MARTES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_martes_semana_4`,`frecuencia_horaria`.`hora_ingreso_martes_semana_4`)) / (60 * 60) as decimal(10,1)) AS `martes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_miercoles_semana_4`,' a ',`frecuencia_horaria`.`hora_egreso_miercoles_semana_4`) AS `MIERCOLES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_miercoles_semana_4`,`frecuencia_horaria`.`hora_ingreso_miercoles_semana_4`)) / (60 * 60) as decimal(10,1)) AS `miercoles_carga`,concat(`frecuencia_horaria`.`hora_ingreso_jueves_semana_4`,' a ',`frecuencia_horaria`.`hora_egreso_jueves_semana_4`) AS `JUEVES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_jueves_semana_4`,`frecuencia_horaria`.`hora_ingreso_jueves_semana_4`)) / (60 * 60) as decimal(10,1)) AS `jueves_carga`,concat(`frecuencia_horaria`.`hora_ingreso_viernes_semana_4`,' a ',`frecuencia_horaria`.`hora_egreso_viernes_semana_4`) AS `VIERNES`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_viernes_semana_4`,`frecuencia_horaria`.`hora_ingreso_viernes_semana_4`)) / (60 * 60) as decimal(10,1)) AS `viernes_carga`,concat(`frecuencia_horaria`.`hora_ingreso_sabado_semana_4`,' a ',`frecuencia_horaria`.`hora_egreso_sabado_semana_4`) AS `SABADO`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_sabado_semana_4`,`frecuencia_horaria`.`hora_ingreso_sabado_semana_4`)) / (60 * 60) as decimal(10,1)) AS `sabado_carga`,concat(`frecuencia_horaria`.`hora_ingreso_domingo_semana_4`,' a ',`frecuencia_horaria`.`hora_egreso_domingo_semana_4`) AS `DOMINGO`,cast(time_to_sec(timediff(`frecuencia_horaria`.`hora_egreso_domingo_semana_4`,`frecuencia_horaria`.`hora_ingreso_domingo_semana_4`)) / (60 * 60) as decimal(10,1)) AS `domingo_carga` from ((`empleado` join `frecuencia_horaria` on(`frecuencia_horaria`.`id_empleado` = `empleado`.`id_empleado`)) join `cliente` on(`frecuencia_horaria`.`id_cliente` = `cliente`.`id_cliente`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_localidad` (`id_localidad`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_categoria_iva` (`id_categoria_iva`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_tipo_empleado` (`id_tipo_empleado`),
  ADD KEY `id_localidad` (`id_localidad`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD KEY `id_localidad` (`id_localidad`),
  ADD KEY `id_servicio` (`id_servicio`),
  ADD KEY `id_categoria_iva` (`id_categoria_iva`);

--
-- Indices de la tabla `frecuencia_horaria`
--
ALTER TABLE `frecuencia_horaria`
  ADD PRIMARY KEY (`id_frecuencia_horaria`),
  ADD KEY `id_usr` (`id_usr`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `iva_categoria`
--
ALTER TABLE `iva_categoria`
  ADD PRIMARY KEY (`id_categoria_iva`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id_localidad`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD PRIMARY KEY (`id_tipo_empleado`),
  ADD KEY `id_usr` (`id_usr`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `frecuencia_horaria`
--
ALTER TABLE `frecuencia_horaria`
  MODIFY `id_frecuencia_horaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `iva_categoria`
--
ALTER TABLE `iva_categoria`
  MODIFY `id_categoria_iva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `id_localidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  MODIFY `id_tipo_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`id_localidad`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id_user`),
  ADD CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`id_categoria_iva`) REFERENCES `iva_categoria` (`id_categoria_iva`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id_user`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_tipo_empleado`) REFERENCES `tipo_empleado` (`id_tipo_empleado`),
  ADD CONSTRAINT `empleado_ibfk_3` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`id_localidad`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`id_localidad`),
  ADD CONSTRAINT `empresa_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`),
  ADD CONSTRAINT `empresa_ibfk_3` FOREIGN KEY (`id_categoria_iva`) REFERENCES `iva_categoria` (`id_categoria_iva`);

--
-- Filtros para la tabla `frecuencia_horaria`
--
ALTER TABLE `frecuencia_horaria`
  ADD CONSTRAINT `frecuencia_horaria_ibfk_1` FOREIGN KEY (`id_usr`) REFERENCES `usuario` (`id_user`),
  ADD CONSTRAINT `frecuencia_horaria_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `frecuencia_horaria_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD CONSTRAINT `tipo_empleado_ibfk_1` FOREIGN KEY (`id_usr`) REFERENCES `usuario` (`id_user`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
