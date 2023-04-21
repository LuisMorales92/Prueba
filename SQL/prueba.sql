-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-04-2023 a las 04:52:31
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `candidato_id` int(11) NOT NULL,
  `nombre_candidato` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`candidato_id`, `nombre_candidato`) VALUES
(1, 'Pablo Soto'),
(2, 'Maria Perez'),
(3, 'Julio Hernandez'),
(4, 'Carlos Mora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `comuna_id` int(11) NOT NULL,
  `nombre_comuna` text NOT NULL,
  `region_comuna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`comuna_id`, `nombre_comuna`, `region_comuna`) VALUES
(1, 'ARICA', 15),
(2, 'IQUIQUE', 1),
(3, 'HUARA', 1),
(4, 'PICA', 1),
(5, 'POZO ALMONTE', 1),
(6, 'TOCOPILLA', 2),
(7, 'ANTOFAGASTA', 2),
(8, 'MEJILLONES', 2),
(9, 'TALTAL', 2),
(10, 'CALAMA', 2),
(11, 'CHAÑARAL', 3),
(12, 'DIEGO DE ALMAGRO', 3),
(13, 'COPIAPO', 3),
(14, 'CALDERA', 3),
(15, 'TIERRA AMARILLA', 3),
(16, 'VALLENAR', 3),
(17, 'FREIRINA', 3),
(18, 'HUASCO', 3),
(19, 'LA SERENA', 4),
(20, 'LA HIGUERA', 4),
(21, 'COQUIMBO', 4),
(22, 'ANDACOLLO', 4),
(23, 'VICUÑA', 4),
(24, 'PAIHUANO', 4),
(25, 'OVALLE', 4),
(26, 'MONTE PATRIA', 4),
(27, 'PUNITAQUI', 4),
(28, 'RIO HURTADO', 4),
(29, 'COMBARBALA', 4),
(30, 'ILLAPEL', 4),
(31, 'CANELA', 4),
(32, 'SALAMANCA', 4),
(33, 'LOS VILOS', 4),
(34, 'VALPARAISO', 5),
(35, 'QUINTERO', 5),
(36, 'PUCHUNCAVI', 5),
(37, 'VIÃ‘A DEL MAR', 5),
(38, 'QUILPUE', 5),
(39, 'VILLA ALEMANA', 5),
(40, 'CASABLANCA', 5),
(41, 'ISLA DE PASCUA', 5),
(42, 'SAN ANTONIO', 5),
(43, 'SANTO DOMINGO', 5),
(44, 'ALGARROBO', 5),
(45, 'EL QUISCO', 5),
(46, 'CARTAGENA', 5),
(47, 'EL TABO', 5),
(48, 'QUILLOTA', 5),
(49, 'LA CRUZ', 5),
(50, 'LA CALERA', 5),
(51, 'HIJUELAS', 5),
(52, 'NOGALES', 5),
(53, 'LIMACHE', 5),
(54, 'OLMUE', 5),
(55, 'PETORCA', 5),
(56, 'CABILDO', 5),
(57, 'PAPUDO', 5),
(58, 'ZAPALLAR', 5),
(59, 'LA LIGUA', 5),
(60, 'SAN FELIPE', 5),
(61, 'PUTAENDO', 5),
(62, 'PANQUEHUE', 5),
(63, 'CATEMU', 5),
(64, 'SANTA MARIA', 5),
(65, 'LLAY LLAY', 5),
(66, 'LOS ANDES', 5),
(67, 'CALLE LARGA', 5),
(68, 'RINCONADA', 5),
(69, 'SAN ESTEBAN', 5),
(70, 'SANTIAGO CENTRO', 13),
(71, 'LAS CONDES', 13),
(72, 'PROVIDENCIA', 13),
(73, 'SANTIAGO OESTE', 13),
(75, 'CONCHALI', 13),
(76, 'COLINA', 13),
(77, 'RENCA', 13),
(78, 'LAMPA', 13),
(79, 'QUILICURA', 13),
(80, 'TIL-TIL', 13),
(81, 'QUINTA NORMAL', 13),
(82, 'PUDAHUEL', 13),
(83, 'CURACAVI', 13),
(84, 'SANTIAGO SUR', 13),
(85, 'PEÑAFLOR', 13),
(86, 'TALAGANTE', 13),
(87, 'ISLA DE MAIPO', 13),
(88, 'MELIPILLA', 13),
(89, 'EL MONTE', 13),
(90, 'MARIA PINTO', 13),
(91, 'ÑUÑOA', 13),
(92, 'LA REINA', 13),
(93, 'LA FLORIDA', 13),
(94, 'MAIPU', 13),
(95, 'SAN MIGUEL', 13),
(96, 'LA CISTERNA', 13),
(97, 'LA GRANJA', 13),
(98, 'SAN BERNARDO', 13),
(99, 'CALERA DE TANGO', 13),
(100, 'PUENTE ALTO', 13),
(101, 'PIRQUE', 13),
(102, 'SAN JOSE DE MAIPO', 13),
(103, 'BUIN', 13),
(104, 'PAINE', 13),
(105, 'RANCAGUA', 6),
(106, 'MACHALI', 6),
(107, 'GRANEROS', 6),
(108, 'SAN PEDRO', 13),
(109, 'ALHUE', 13),
(110, 'CODEGUA', 6),
(111, 'SAN FRANCISCO DE MOSTAZAL', 6),
(112, 'DOÃ‘IHUE', 6),
(113, 'COLTAUCO', 6),
(114, 'COINCO', 6),
(115, 'PEUMO', 6),
(116, 'LAS CABRAS', 6),
(117, 'SAN VICENTE', 6),
(118, 'PICHIDEGUA', 6),
(119, 'REQUINOA', 6),
(120, 'OLIVAR', 6),
(121, 'RENGO', 6),
(122, 'MALLOA', 6),
(123, 'QUINTA DE TILCOCO', 6),
(124, 'SAN FERNANDO', 6),
(125, 'CHIMBARONGO', 6),
(126, 'NANCAGUA', 6),
(127, 'PLACILLA', 6),
(128, 'SANTA CRUZ', 6),
(129, 'LOLOL', 6),
(130, 'PALMILLA', 6),
(131, 'PERALILLO', 6),
(132, 'CHEPICA', 6),
(133, 'PAREDONES', 6),
(134, 'MARCHIGUE', 6),
(135, 'PUMANQUE', 6),
(136, 'LITUECHE', 6),
(137, 'PICHILEMU', 6),
(138, 'NAVIDAD', 6),
(139, 'LA ESTRELLA', 6),
(140, 'CURICO', 7),
(141, 'ROMERAL', 7),
(142, 'TENO', 7),
(143, 'RAUCO', 7),
(144, 'HUALAÃ‘E', 7),
(145, 'LICANTEN', 7),
(146, 'VICHUQUEN', 7),
(147, 'MOLINA', 7),
(148, 'SAGRADA FAMILIA', 7),
(149, 'RIO CLARO', 7),
(150, 'TALCA', 7),
(151, 'SAN CLEMENTE', 7),
(152, 'PELARCO', 7),
(153, 'PENCAHUE', 7),
(154, 'MAULE', 7),
(155, 'CUREPTO', 7),
(156, 'SAN JAVIER', 7),
(157, 'CONSTITUCION', 7),
(158, 'EMPEDRADO', 7),
(159, 'LINARES', 7),
(160, 'YERBAS BUENAS', 7),
(161, 'COLBUN', 7),
(162, 'LONGAVI', 7),
(163, 'VILLA ALEGRE', 7),
(164, 'PARRAL', 7),
(165, 'RETIRO', 7),
(166, 'CAUQUENES', 7),
(167, 'CHANCO', 7),
(168, 'CHILLAN', 8),
(169, 'PINTO', 8),
(170, 'COIHUECO', 8),
(171, 'PORTEZUELO', 8),
(172, 'QUIRIHUE', 8),
(173, 'TREHUACO', 8),
(174, 'NINHUE', 8),
(175, 'COBQUECURA', 8),
(176, 'SAN CARLOS', 8),
(177, 'SAN GREGORIO DE Ã‘IQUEN', 8),
(178, 'SAN FABIAN', 8),
(179, 'SAN NICOLAS', 8),
(180, 'BULNES', 8),
(181, 'SAN IGNACIO', 8),
(182, 'QUILLON', 8),
(183, 'YUNGAY', 8),
(184, 'PEMUCO', 8),
(185, 'EL CARMEN', 8),
(186, 'COELEMU', 8),
(187, 'RANQUIL', 8),
(188, 'CONCEPCION', 8),
(189, 'TALCAHUANO', 8),
(190, 'TOME', 8),
(191, 'PENCO', 8),
(192, 'HUALQUI', 8),
(193, 'FLORIDA', 8),
(194, 'CORONEL', 8),
(195, 'LOTA', 8),
(196, 'SANTA JUANA', 8),
(197, 'CURANILAHUE', 8),
(198, 'ARAUCO', 8),
(199, 'LEBU', 8),
(200, 'LOS ALAMOS', 8),
(201, 'CAÃ‘ETE', 8),
(202, 'CONTULMO', 8),
(203, 'TIRUA', 8),
(204, 'LOS ANGELES', 8),
(205, 'SANTA BARBARA', 8),
(206, 'QUILLECO', 8),
(207, 'YUMBEL', 8),
(208, 'CABRERO', 8),
(209, 'TUCAPEL', 8),
(210, 'LAJA', 8),
(211, 'SAN ROSENDO', 8),
(212, 'NACIMIENTO', 8),
(213, 'NEGRETE', 8),
(214, 'MULCHEN', 8),
(215, 'QUILACO', 8),
(216, 'ANGOL', 9),
(217, 'PUREN', 9),
(218, 'LOS SAUCES', 9),
(219, 'RENAICO', 9),
(220, 'COLLIPULLI', 9),
(221, 'ERCILLA', 9),
(222, 'TRAIGUEN', 9),
(223, 'LUMACO', 9),
(224, 'VICTORIA', 9),
(225, 'CURACAUTIN', 9),
(226, 'LONQUIMAY', 9),
(227, 'TEMUCO', 9),
(228, 'VILCUN', 9),
(229, 'FREIRE', 9),
(230, 'CUNCO', 9),
(231, 'LAUTARO', 9),
(232, 'GALVARINO', 9),
(233, 'PERQUENCO', 9),
(234, 'NUEVA IMPERIAL', 9),
(235, 'CARAHUE', 9),
(236, 'PUERTO SAAVEDRA', 9),
(237, 'PITRUFQUEN', 9),
(238, 'GORBEA', 9),
(239, 'TOLTEN', 9),
(240, 'LONCOCHE', 9),
(241, 'VILLARRICA', 9),
(242, 'PUCON', 9),
(243, 'VALDIVIA', 14),
(244, 'CORRAL', 14),
(245, 'MARIQUINA', 14),
(246, 'MAFIL', 14),
(247, 'LOS LAGOS', 14),
(248, 'FUTRONO', 14),
(249, 'LANCO', 14),
(250, 'PANGUIPULLI', 14),
(251, 'LA UNION', 14),
(252, 'PAILLACO', 14),
(253, 'RIO BUENO', 14),
(254, 'LAGO RANCO', 14),
(255, 'OSORNO', 10),
(256, 'PUYEHUE', 10),
(257, 'SAN PABLO', 10),
(258, 'PUERTO OCTAY', 10),
(259, 'RIO NEGRO', 10),
(260, 'PURRANQUE', 10),
(261, 'PUERTO MONTT', 10),
(262, 'COCHAMO', 10),
(263, 'MAULLIN', 10),
(264, 'LOS MUERMOS', 10),
(265, 'CALBUCO', 10),
(266, 'PUERTO VARAS', 10),
(267, 'LLANQUIHUE', 10),
(268, 'FRESIA', 10),
(269, 'FRUTILLAR', 10),
(270, 'CASTRO', 10),
(271, 'CHONCHI', 10),
(272, 'QUEILEN', 10),
(273, 'QUELLON', 10),
(274, 'PUQUELDON', 10),
(275, 'QUINCHAO', 10),
(276, 'CURACO DE VELEZ', 10),
(277, 'ANCUD', 10),
(278, 'QUEMCHI', 10),
(279, 'DALCAHUE', 10),
(280, 'CHAITEN', 10),
(281, 'FUTALEUFU', 10),
(282, 'PALENA', 10),
(284, 'COYHAIQUE', 11),
(285, 'AYSEN', 11),
(286, 'CISNES', 11),
(287, 'CHILE CHICO', 11),
(288, 'RIO IBAÃ‘EZ', 11),
(289, 'COCHRANE', 11),
(290, 'PUNTA ARENAS', 12),
(291, 'PUERTO NATALES', 12),
(292, 'PORVENIR', 12),
(293, 'GENERAL LAGOS', 15),
(294, 'PUTRE', 15),
(295, 'CAMARONES', 15),
(296, 'CAMINA', 1),
(297, 'COLCHANE', 1),
(298, 'MARIA ELENA', 2),
(299, 'SIERRA GORDA', 2),
(300, 'OLLAGÃœE', 2),
(301, 'SAN PEDRO DE ATACAMA', 2),
(302, 'ALTO DEL CARMEN', 3),
(303, 'ANTUCO', 8),
(304, 'MELIPEUCO', 9),
(305, 'CURARREHUE', 9),
(306, 'TEODORO SCHMIDT', 9),
(307, 'SAN JUAN DE LA COSTA', 10),
(308, 'HUALAIHUE', 10),
(309, 'GUAITECAS', 11),
(310, 'OÂ´HIGGINS', 11),
(311, 'TORTEL', 11),
(312, 'LAGO VERDE', 11),
(313, 'TORRES DEL PAINE', 12),
(314, 'RIO VERDE', 12),
(315, 'SAN GREGORIO', 12),
(316, 'LAGUNA BLANCA', 12),
(317, 'PRIMAVERA', 12),
(318, 'TIMAUKEL', 12),
(319, 'NAVARINO', 12),
(320, 'PELLUHUE', 7),
(321, 'JUAN FERNANDEZ', 5),
(322, 'PEÃ‘ALOLEN', 13),
(323, 'MACUL', 13),
(324, 'CERRO NAVIA', 13),
(325, 'LO PRADO', 13),
(326, 'SAN RAMON', 13),
(327, 'LA PINTANA', 13),
(328, 'ESTACION CENTRAL', 13),
(329, 'RECOLETA', 13),
(330, 'INDEPENDENCIA', 13),
(331, 'VITACURA', 13),
(332, 'LO BARNECHEA', 13),
(333, 'CERRILLOS', 13),
(334, 'HUECHURABA', 13),
(335, 'SAN JOAQUIN', 13),
(336, 'PEDRO AGUIRRE CERDA', 13),
(337, 'LO ESPEJO', 13),
(338, 'EL BOSQUE', 13),
(339, 'PADRE HURTADO', 13),
(340, 'CONCON', 5),
(341, 'SAN RAFAEL', 7),
(342, 'CHILLAN VIEJO', 8),
(343, 'SAN PEDRO DE LA PAZ', 8),
(344, 'CHIGUAYANTE', 8),
(345, 'PADRE LAS CASAS', 9),
(346, 'ALTO HOSPICIO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `alias` text NOT NULL,
  `rut` text NOT NULL,
  `email` text NOT NULL,
  `region_id` int(11) NOT NULL,
  `comuna_id` int(11) NOT NULL,
  `candidato_id` int(11) NOT NULL,
  `web` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tv` text NOT NULL,
  `redes` text NOT NULL,
  `amigos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `region_id` int(11) NOT NULL,
  `nombre_region` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`region_id`, `nombre_region`) VALUES
(1, 'Región de Tarapacá'),
(2, 'Región de Antofagasta'),
(3, 'Región de Atacama'),
(4, 'Región de Coquimbo'),
(5, 'Región de Valparaiso'),
(6, 'Región del Libertador General Bernardo O Higgins'),
(7, 'Región del Maule'),
(8, 'Región del Bí­o-Bío'),
(9, 'Región de la Araucanía'),
(10, 'Región de Los Lagos'),
(11, 'Región de Aysén del General Carlos Ibáñez del Campo'),
(12, 'Región de Magallanes y la Antártica Chilena'),
(13, 'Región Metropolitana'),
(14, 'Región de Los Ríos'),
(15, 'Región de Arica y Parinacota');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`candidato_id`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`comuna_id`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`region_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `candidato_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `comuna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
