-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2025 a las 02:03:25
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artisacanciones`
--

INSERT INTO `artisacanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 3, 23),
(2, 3, 20),
(3, 3, 22),
(4, 3, 24),
(5, 8, 1),
(6, 8, 3),
(7, 8, 4),
(8, 6, 47),
(9, 6, 51),
(10, 6, 50),
(11, 1, 7),
(12, 1, 9),
(13, 1, 8),
(14, 2, 15),
(15, 2, 16),
(16, 2, 17),
(17, 4, 25),
(18, 4, 26),
(19, 4, 27),
(20, 5, 32),
(21, 5, 33),
(22, 5, 34),
(23, 7, 41),
(24, 7, 42),
(25, 7, 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'tyler the creator', 'rap'),
(2, 'cartel de santa', 'rap'),
(3, 'bob marley', 'reggae'),
(4, 'kiss', 'metal'),
(5, 'kendrick lamar', 'rap'),
(6, 'big money P', 'rap'),
(7, 'sabrina carpenter', 'pop'),
(8, 'natanael cano', 'regional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'amor tumbado', 4, '00:02:32', '2012-02-20', 1, 'amortumbado.jpg'),
(2, 'eldrip', 4, '00:05:00', '2013-04-17', 1, 'eldrip.jpg'),
(3, 'carlitos', 4, '00:04:00', '2020-02-15', 1, 'carlitos.jpg'),
(4, 'elazul', 4, '00:02:32', '2015-02-19', 1, 'elazul.jpg'),
(5, 'elf', 4, '00:05:00', '2014-04-17', 1, 'elf.jpg'),
(6, '300noches', 4, '00:03:53', '2020-02-15', 1, '300noches.jpg'),
(7, 'gonegonety', 6, '00:02:32', '2020-02-15', 1, 'gonegonety.jpg'),
(8, 'sticky', 6, '00:07:00', '2014-04-17', 1, 'sticky.jpg'),
(9, 'see you again', 6, '00:03:53', '2022-05-15', 1, 'seeyouagain.jpg'),
(10, 'darlink eye', 6, '00:09:00', '2023-06-26', 1, 'darlinkeye.jpg'),
(11, 'secret of my memories', 6, '00:07:00', '2025-02-20', 1, 'secretsofmymemories.jpg'),
(12, 'pensylvania', 6, '00:03:53', '2025-02-13', 1, 'pensylvania.jpg'),
(13, 'volar volar', 6, '00:04:00', '2010-02-20', 1, 'volarvolar.jpg'),
(14, 'shoryparty', 6, '00:04:26', '2022-02-27', 1, 'shortyparty.jpg'),
(15, 'todas mueren por mi', 6, '00:09:00', '2025-02-12', 1, 'todasmuerenpormi.jpg'),
(16, 'bombos y tarolas', 6, '00:04:00', '2025-02-13', 1, 'bombosytarolas.jpg'),
(17, 'brbujas de cristal', 6, '00:09:00', '2000-02-05', 1, 'burbujasdecristal.jpg'),
(18, 'leve', 6, '00:02:00', '2011-07-21', 1, 'leve.jpg'),
(19, 'waiting in vain', 10, '00:02:32', '1995-02-20', 1, 'waintinginvain.jpg'),
(20, 'buffalo soldier', 10, '00:04:26', '1998-02-05', 1, 'buffalosoldier.jpg'),
(21, 'get up ', 10, '00:03:53', '1985-02-12', 1, 'getup.jpg'),
(22, 'could you be loved', 10, '00:04:26', '1998-02-05', 1, 'couldyoubeloved.jpg'),
(23, 'is this love', 10, '00:03:53', '1983-07-21', 1, 'isthislove.jpg'),
(24, 'war', 10, '00:04:26', '1998-02-05', 1, 'war.jpg'),
(25, 'forever', 9, '00:02:32', '1985-02-20', 1, 'forever.jpg'),
(26, 'love gun', 9, '00:04:26', '1998-02-05', 1, 'lovegun.jpg'),
(27, 'beth', 9, '00:02:00', '1990-02-20', 1, ''),
(29, 'rockandrollallnight', 9, '00:02:32', '1985-02-12', 1, 'rockandrollallnight.jpg'),
(30, 'lick it up', 9, '00:04:26', '1998-02-05', 1, 'lickitup,jpg'),
(31, 'crazy crazy night', 9, '00:04:00', '1985-02-12', 1, 'crazycrazynight.jpg'),
(32, 'not like us', 6, '00:04:00', '2025-02-13', 1, 'notlikeus.jpg'),
(33, 'moneythrees', 6, '00:04:26', '2015-02-05', 1, 'moneythrees.jpg'),
(34, 'Humble', 6, '00:05:00', '2020-02-15', 1, 'humble.jpg'),
(38, 'pride', 6, '00:02:32', '2022-05-15', 1, 'pride.jpg'),
(39, 'badblood', 6, '00:04:26', '2015-02-05', 1, 'badblood.jpg'),
(40, 'DNA', 6, '00:02:00', '2010-02-20', 1, 'dna.jpg'),
(41, 'on my  way', 5, '00:03:53', '2022-05-15', 1, 'onmyway.jpg'),
(42, 'espresso', 5, '00:04:26', '2015-02-05', 1, 'espresso'),
(43, 'look at me', 5, '00:02:32', '2025-02-13', 1, 'lookatme.jpg'),
(44, 'feather', 5, '00:04:26', '2015-02-05', 1, 'feather.jpg'),
(45, 'nonsense', 5, '00:03:53', '2025-02-12', 1, 'nonsense.jpg'),
(46, 'please please please', 5, '00:04:26', '2015-02-05', 1, 'pleasepleaseplease'),
(47, 'big moneyP song', 6, '00:09:08', '2025-02-21', 1, 'big moneyP song.jpg'),
(48, 'big moneyP song2', 6, '00:09:08', '2025-02-21', 1, 'big moneyP song2.jpg'),
(49, 'big moneyP song3', 6, '00:09:08', '2025-02-21', 1, 'big moneyP song3.jpg'),
(50, 'big moneyP song4', 6, '00:09:08', '2025-02-21', 1, 'big moneyP song4.jpg'),
(51, 'big moneyP song5', 6, '00:09:08', '2025-02-21', 1, 'big moneyP song5.jpg'),
(52, 'big moneyP song6', 6, '00:09:08', '2025-02-21', 1, 'big moneyP song6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 1, 6),
(2, 1, 31),
(3, 1, 22),
(4, 2, 1),
(5, 2, 2),
(6, 2, 6),
(7, 3, 4),
(8, 3, 7),
(9, 3, 8),
(10, 4, 21),
(11, 4, 15),
(12, 4, 17),
(13, 5, 48),
(14, 5, 3),
(15, 5, 31),
(16, 6, 50),
(17, 6, 13),
(18, 6, 2),
(19, 7, 2),
(20, 7, 39),
(21, 7, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'rock'),
(2, 'bachata'),
(3, 'salsa'),
(4, 'regional'),
(5, 'pop'),
(6, 'rap'),
(7, 'jazz'),
(8, 'country'),
(9, 'metal'),
(10, 'reggae');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'premium familiar', 199),
(2, 'premium individual', 129),
(3, 'premium duo', 169),
(4, 'premium estudiantes', 69),
(5, 'free', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'playlist1', 1, '52:00:17', 300, 'lol', 0),
(2, 'playlistloca', 2, '59:00:00', 300, 'pos nomas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `ususario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `playlist_id`, `canciones_id`, `ususario_id`) VALUES
(1, 1, 27, 1),
(2, 2, 22, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'guillermo wong', 'nosuboprietas666@gmail.com', 1),
(2, 'horus uzueta', 'thefoxtrot@gmail.com', 3),
(3, 'paolo valdez', 'nichos08@gmail.com', 1),
(4, 'said hernandez', 'polloloco@hotmail.com', 4),
(5, 'luis carlos', 'luison777@gmail.com', 3),
(6, 'paola bernal', 'paolitaa88@gmail', 4),
(7, 'julio camacho', 'proplayer777@gmail.com', 4),
(8, 'enrique parroquias', 'parroquin77@hotmail.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `ususario_id` (`ususario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`ususario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
