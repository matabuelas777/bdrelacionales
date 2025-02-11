-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:12:12
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
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `num_control` varchar(20) NOT NULL,
  `facha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellido`, `num_control`, `facha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(5, 'Àngel Guillermo', 'Wong Valenzuela', '23325061070565', '2008-09-20', 1, 'angel.wong23@cetis107.edu.mx', '6672523097'),
(6, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-10-30', 1, 'paolo.valdez23@cetis107.edu.mx', '6675412714'),
(7, 'Victor Manuel', 'Diaz Gastelum', '23325061070728', '2008-09-28', 1, 'vicotr.diaz23@cetis107.edu.mx', '6677911274'),
(8, 'Frida Sofia ', 'Sanchez Valenzuela ', '23325061070611', '2008-01-10', 0, 'frida.sanchez23Qcetis107.edu.mx', '6674087474'),
(9, 'Juan Alberto', 'Trejo Alvarado', '23325061070715', '2008-08-22', 1, 'juan.trejo23@cetis107.edu.mx', '6671522722'),
(10, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '2008-08-26', 1, 'angel.loaiza23@cetos107.edu.mx', '6674589578'),
(11, 'Bayron Uriel', 'Estrada Camcacho', '233250610703758', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx', '+1(909)516-0134'),
(12, 'Luis Angel', 'Moya Preciado', '23325061070393', '2008-12-29', 1, 'luis.moya23@cetis107.edu.mx', '6674502292'),
(13, 'Diego Joan', 'Dominguez Lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez23@cetis107.edu.mx', '667412966'),
(14, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'santiago.lopez23@cetis107.edu.mx', '6673309322');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programacion', 'La formación que ofrece la carrera de Técnico en Programación permite al egresado, a través de la articulación de saberes de diversos campos,\r\nrealizar actividades dirigidas al desarrollo de software de aplicación en plataformas de escritorio, Web y móviles, utilizando los paradigmas de\r\nprogramació'),
(2, 'Contabilidad', 'La formación que ofrece la carrera de Técnico en contabilidad permite al egresado, a través de la articulación de saberes de diversos campos,\r\nrealizar actividades dirigidas a:\r\n• Registrar operaciones contables de empresas comerciales y de servicios\r\n• Operar los procesos contables dentro de un sis'),
(3, 'Ofimatica', 'La carrera de Técnico en Ofimática permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos ámbitos\r\nque promueven la formación integral, sustentada en las genéricas, disciplinares y profesionales, complementadas con las de productividad y\r\nempleabilidad'),
(4, 'Diseño Grafico', 'El diseño gráfico es una profesión, ​ disciplina académica​​ y arte aplicada, ​ cuya actividad consiste en proyectar comunicaciones visuales destinadas a transmitir mensajes específicos a grupos sociales con objetivos determinados, donde es habitual el uso de texto y gráficos para comunicarse visual'),
(5, 'Construccion', 'La carrera de Técnico en Construcción permite a los estudiantes, a lo largo del bachillerato, la adquisición de competencias desde distintos\r\námbitos que promueven la formación integral, sustentada en las genéricas, disciplinares y profesionales, complementadas con las de\r\nproductividad y empleabili'),
(6, 'Electronica', 'La formación que ofrece la carrera de Técnico en Electrónica permite al egresado, a través de la articulación de saberes de diversos campos,\r\nrealizar actividades dirigidas al:\r\n• Mantenimiento de sistemas eléctricos y electrónicos\r\n• Mantenimiento de circuitos electrónicos de control\r\n• Mantenimien');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'ingles IV', 4),
(2, 'BD relacionales', 4),
(3, 'BD no relacionales', 4),
(4, 'Historia', 4),
(5, 'Temas matematicos 1', 4),
(6, 'Reacciones Quimicas', 4),
(7, 'Tutorias', 4),
(8, 'Ciencias Sociales III', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
