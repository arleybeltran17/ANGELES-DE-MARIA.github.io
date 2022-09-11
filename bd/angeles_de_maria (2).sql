-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2022 a las 18:21:45
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `angeles_de_maria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `admi_codigo` int(11) NOT NULL,
  `admi_identificacion` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `admi_tipoidentificacion` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `admi_nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `admi_apellido` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `admi_celular` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `admi_direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usua_codigo_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`admi_codigo`, `admi_identificacion`, `admi_tipoidentificacion`, `admi_nombre`, `admi_apellido`, `admi_celular`, `admi_direccion`, `usua_codigo_fk`) VALUES
(1, '1098463856', 'cc', 'alejandro', 'perdomo', '3157690112', 'cra 2c#50 sur', 1),
(2, '0943651206', 'cc', 'mariana', 'gutierrez', '3125678902', 'carrera 3 #18-45', 2),
(3, '9517538246', 'cc', 'carlos', 'jimenez', '3015435698', 'calle 4 # 5-10', 3),
(4, '3287956410', 'cc', 'oscar', 'mejia', '3041236950', 'calle 11 # 4-14', 4),
(5, '1473698521', 'cc', 'yobana', 'melo', '3125698745', 'Calle 24 N° 5-60', 5),
(6, '3971648254', 'cc', 'paola', 'rodriguez', '3012365479', 'Av. Ciudad de Cali No. 6C-09', 6),
(7, '7915348267', 'cc', 'ernesto', 'galan', '3153297054', 'Calle 48b sur No. 21-13', 7),
(8, '8231507460', 'cc', 'david', 'alvarez', '3019703540', 'Avenida Cra. 60 No. 57-60', 8),
(9, '1762479801', 'cc', 'nicolas', 'castillo', '3045321753', 'Calle 11 No. 4-21 / 93', 9),
(10, '1478965231', 'cc', 'salome', 'castro', '3129735426', 'Calle 10 No. 5-22', 10),
(11, '0796401258', 'cc', 'felipe', 'diaz', '3032587469', 'Carrera 20 No. 37-54', 11),
(12, '4512369870', 'cc', 'mauricio', 'leon', '3023159744', 'Av. Calle 19 N° 2-49 Centro', 12),
(13, '0123697854', 'cc', 'brayan', 'fernandez', '3056300129', 'Cr.8a # 15-63', 13),
(14, '1239697548', 'cc', 'santiago', 'nuñez', '3011239755', 'Carrera 1 Este No. 17 01', 14),
(15, '123697458', '', 'andres', 'torres', '3045495828', 'Calle 12# 2-65', 15);

--
-- Disparadores `administrador`
--
DELIMITER $$
CREATE TRIGGER `actualizar_administrador` AFTER UPDATE ON `administrador` FOR EACH ROW INSERT INTO alarma (nombre) VALUE("SE ACTUALIZO UN ADMINISTRADOR")
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `eliminar_administrador` AFTER DELETE ON `administrador` FOR EACH ROW INSERT INTO alarma (nombre) VALUE("SE ELIMINO UN ADMINISTRADOR")
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertar_administrador` AFTER INSERT ON `administrador` FOR EACH ROW INSERT INTO alarma (nombre)VALUE ("SE INSERTO UN NUEVO ADMINISTRADOR")
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alarma`
--

CREATE TABLE `alarma` (
  `nombre` varchar(30) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alarma`
--

INSERT INTO `alarma` (`nombre`, `fecha`) VALUES
('SE INSERTO UN NUEVO ADMINISTRA', '2022-04-26 16:03:28'),
('SE ACTUALIZO UN ADMINISTRADOR', '2022-04-26 16:15:09'),
('SE ELIMINO UN ADMINISTRADOR', '2022-04-26 16:15:50'),
('SE INSERTO UN USUARIO', '2022-04-26 16:20:30'),
('SE ACTUALIZO UN USUARIO', '2022-04-26 16:20:30'),
('SE ELIMINO UN USUARIO', '2022-04-26 16:20:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clie_codigo` int(11) NOT NULL,
  `clie_identificacion` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clie_tipoidentificacion` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clie_nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clie_telefono` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clie_direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clie_telefono2` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `clie_correo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usua_codigo_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clie_codigo`, `clie_identificacion`, `clie_tipoidentificacion`, `clie_nombre`, `clie_telefono`, `clie_direccion`, `clie_telefono2`, `clie_correo`, `usua_codigo_fk`) VALUES
(1, '5036754139', 'CC', 'alejandro', '3057924618', 'calle10#5', '3045495247', 'alejandrog45@gmail.com', 1),
(2, '3164259784', 'CC', 'mariana', '312970546', 'Calle 53 No 10-60/46, Piso 2.', '0491 570 006', 'mariana09@gmail.com', 2),
(3, '3247931671', 'CC', 'carlos', '3042579315', 'Calle 9 # 9 – 62, Leticia, Barrio Centro', '0491 570 156', 'carlosn436@gmail.com', 3),
(4, '5244639101', 'CC', 'oscar', '3106547893', 'Carrera  21 # 17 -63', '1800 160 401', 'oscaran98@gmail.com', 4),
(5, '7103940648', 'CC', 'yobana', '3045631972', 'Carrera 42 # 54-77 Barrio El Recreo', '0491 577 644', 'yobanajl01@gmail.com', 5),
(6, '0317934682', 'CC', 'paola', '3120764325', 'Calle 100 # 11B-27 Bogotá', '3106479640', 'paorus78@gmail.com', 6),
(7, '1097364294', 'CC', 'ernesto', '30542948501', 'Carrera 20 B # 29-18. Barrio  Pie de la Popa.', '3106697852', 'ernestop097@gmail.com', 7),
(8, '0317964582', 'CC', 'david', '3147965214', 'Transversal 9 a No. 29 - 29 Barrio Maldonado', '3052540061', 'davidospina987@gmail.com', 8),
(9, '0136425970', 'CC', 'nicolas', '3120469753', 'Calle 53 # 25A-35', '3016798524', 'nicocap86@gmail.com', 9),
(10, '9674346810', 'CC', 'salome', '3108746315', 'Calle 7 # 19-35', '3346975150', 'salomesuaza16@gmail.com', 10),
(11, '1269735786', 'CC', 'felipe', '3049531702', 'Calle 4 norte # 10B-66 Barrio Modelo', '3149354682', 'felicla076@gmail.com', 11),
(12, '1236789545', 'CC', 'mauricio', '305486324', 'carrera 8 #15ª-19, Locales comerciales Santo Domin', '3094563791', 'mauricio09887@gmail.com', 12),
(13, '0132976545', 'CC', 'brayan', '3152097650', 'Calle 28 # 2-27 Barrio Centro', '1800 160 401', 'brayanjuan987@gmail.com', 13),
(14, '1100664405', 'CC', 'santiago', '3100269551', 'Calle 25 # 6-08', '0491 579 212', 'santigb098@gmail.com', 14),
(15, '4563281201', 'CC', 'andres', '3452697512', 'Calle 10 # 8-07', '1800 975 707', 'andresjt9034@gmail.com', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `deve_codigo` int(20) NOT NULL,
  `deve_subtotal` float DEFAULT NULL,
  `deve_cantidadproducto` float DEFAULT NULL,
  `prod_codigo_fk` int(20) DEFAULT NULL,
  `vent_codigo_fk` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`deve_codigo`, `deve_subtotal`, `deve_cantidadproducto`, `prod_codigo_fk`, `vent_codigo_fk`) VALUES
(1, 40000, 7, 9, 1),
(2, 500000, 70, 11, 2),
(3, 17000, 9, 10, 3),
(4, 9000, 7, 11, 4),
(5, 112000, 50, 3, 5),
(6, 9000, 3, 10, 6),
(7, 12000, 1, 4, 7),
(8, 500000, 80, 6, 8),
(9, 5000, 1, 8, 9),
(10, 90000, 50, 14, 10),
(11, 33000, 2, 11, 11),
(12, 500000, 500, 3, 12),
(13, 77000, 11, 6, 13),
(14, 18000, 2, 14, 14),
(15, 330000, 300, 1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `prod_codigo` int(20) NOT NULL,
  `prod_nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `prod_precioventa` float DEFAULT NULL,
  `prod_unidadmedida` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `prod_stock` float DEFAULT NULL,
  `prod_descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`prod_codigo`, `prod_nombre`, `prod_precioventa`, `prod_unidadmedida`, `prod_stock`, `prod_descripcion`) VALUES
(1, 'Tinte Plus color', 11000, 'unidades', 50, 'Pinturas para el cabello'),
(2, 'Tinte Lissia', 11000, 'unidades', 50, 'Pinturas para el cabello'),
(3, 'Tinte Visión color', 11000, 'unidades', 100, 'Pinturas para el cabello'),
(4, 'Aceite de naranja', 12000, 'unidades', 150, 'Aceite corporal'),
(5, 'Splash para el cabello', 14000, 'unidades', 400, 'Para bajar el friss de tu cabello'),
(6, 'Agua oxigenada', 2000, 'unidades', 350, 'Para aclarar tu cabello'),
(7, 'Esmaltes', 7000, 'unidades', 200, 'Pinturas para uñas'),
(8, 'Labiales', 5000, 'unidades', 250, 'Pintalabios'),
(9, 'Base para la cara', 8000, 'unidades', 100, 'Tapa tus imperfecciones'),
(10, 'Gel para el cabello', 3000, 'unidades', 50, 'Para lucir tu peinado'),
(11, 'Crema para el cuerpo', 16500, 'unidades', 500, 'Crema hidratante corporal'),
(12, 'Mascarillas de colores para el cabello', 3500, 'unidades', 550, 'Hidratante y cambiador de color'),
(13, 'Mascarilla para la cara', 12500, 'unidades', 600, ' Hidrata y humecta la piel'),
(14, 'Cera de depilación', 4000, 'unidades', 450, ' Retira bello corporal'),
(15, 'Desodorante', 12000, 'unidades', 350, 'Evita mal olor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usua_codigo` int(11) NOT NULL,
  `usua_nombre` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usua_clave` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usua_codigo`, `usua_nombre`, `usua_clave`) VALUES
(1, 'alejandro', 'alejo198'),
(2, 'mariana', 'jampier13'),
(3, 'carlos', 'hola56'),
(4, 'oscar', 'osc9a6'),
(5, 'yobana', 'yoba097'),
(6, 'paola', 'paola81'),
(7, 'ernesto', '902903'),
(8, 'david', 'davidc09'),
(9, 'nicolas', 'nicohl9876'),
(10, 'salome', 'salo0987'),
(11, 'felipe', 'luisfm41'),
(12, 'mauricio', 'mauror9087'),
(13, 'brayan', 'brayan90'),
(14, 'santiago', 'santigb901'),
(15, 'andres', 'andresklo09'),
(16, 'forestparadaise', 'macondo1234');

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `actualizar_usuario` AFTER UPDATE ON `usuario` FOR EACH ROW INSERT INTO alarma (nombre) VALUE("SE ACTUALIZO UN USUARIO")
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `eliminar_usuario` AFTER UPDATE ON `usuario` FOR EACH ROW INSERT INTO alarma (nombre) VALUE("SE ELIMINO UN USUARIO")
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertar_usuario` AFTER UPDATE ON `usuario` FOR EACH ROW INSERT INTO alarma (nombre) VALUE("SE INSERTO UN USUARIO")
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `vent_codigo` int(11) NOT NULL,
  `vent_fecha` date DEFAULT NULL,
  `vent_cantidad` float DEFAULT NULL,
  `vent_total` float DEFAULT NULL,
  `clie_codigo_fk` int(11) DEFAULT NULL,
  `deve_codigo_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`vent_codigo`, `vent_fecha`, `vent_cantidad`, `vent_total`, `clie_codigo_fk`, `deve_codigo_fk`) VALUES
(1, '2022-04-26', 17, 120000, 7, 1),
(2, '2022-04-05', 6, 100000, 9, 2),
(3, '2022-04-03', 1, 3000, 1, 3),
(4, '2022-04-30', 11, 200000, 3, 4),
(5, '2022-04-09', 5, 90000, 4, 5),
(6, '2022-04-18', 60, 1000000, 7, 6),
(7, '2022-04-17', 5, 30000, 15, 7),
(8, '2022-03-14', 35, 45, 6, 8),
(9, '2022-01-14', 40, 80000, 8, 9),
(10, '2021-11-06', 15, 70000, 10, 10),
(11, '2020-04-25', 50, 100000, 15, 11),
(12, '2021-05-30', 30, 300000, 14, 12),
(13, '2022-04-21', 17, 300000, 13, 13),
(14, '2021-12-08', 4, 10000, 4, 14),
(15, '2021-06-30', 80, 1000000, 15, 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`admi_codigo`),
  ADD KEY `usua_codigo_fk` (`usua_codigo_fk`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clie_codigo`),
  ADD KEY `usua_codigo_fk` (`usua_codigo_fk`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`deve_codigo`),
  ADD KEY `prod_codigo_fk` (`prod_codigo_fk`),
  ADD KEY `vent_codigo_fk` (`vent_codigo_fk`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`prod_codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usua_codigo`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`vent_codigo`),
  ADD KEY `clie_codigo_fk` (`clie_codigo_fk`),
  ADD KEY `deve_codigo_fk` (`deve_codigo_fk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `admi_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`usua_codigo_fk`) REFERENCES `usuario` (`usua_codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`usua_codigo_fk`) REFERENCES `usuario` (`usua_codigo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`prod_codigo_fk`) REFERENCES `producto` (`prod_codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`vent_codigo_fk`) REFERENCES `venta` (`vent_codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`clie_codigo_fk`) REFERENCES `cliente` (`clie_codigo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`deve_codigo_fk`) REFERENCES `detalle_venta` (`deve_codigo`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
