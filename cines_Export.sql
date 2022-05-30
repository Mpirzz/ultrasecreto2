-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mariadb
-- Tiempo de generación: 30-05-2022 a las 11:38:24
-- Versión del servidor: 10.7.3-MariaDB-1:10.7.3+maria~focal
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cines`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE `actor` (
  `idActor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`idActor`) VALUES
(1),
(2),
(3),
(5),
(6),
(8),
(9),
(10),
(11),
(14),
(15),
(16),
(17),
(19),
(20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actua`
--

CREATE TABLE `actua` (
  `idActor` int(11) NOT NULL,
  `idPelicula` int(11) NOT NULL,
  `paper` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actua`
--

INSERT INTO `actua` (`idActor`, `idPelicula`, `paper`) VALUES
(1, 1, 'prota'),
(2, 1, 'secundari'),
(3, 1, 'prota'),
(5, 2, 'prota'),
(6, 2, 'secundari'),
(8, 3, 'prota'),
(9, 3, 'secundari'),
(10, 3, 'secundari'),
(11, 3, 'secundari'),
(14, 4, 'prota'),
(15, 4, 'secundari'),
(16, 4, 'secundari'),
(17, 4, 'secundari'),
(19, 5, 'prota'),
(20, 5, 'prota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Butaques`
--

CREATE TABLE `Butaques` (
  `idButaques` int(11) NOT NULL,
  `idSala` int(11) NOT NULL,
  `fila` varchar(255) NOT NULL,
  `columna` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Butaques`
--

INSERT INTO `Butaques` (`idButaques`, `idSala`, `fila`, `columna`) VALUES
(1, 1, '1', '1'),
(5, 2, '1', '1'),
(8, 3, '1', '1'),
(11, 4, '1', '1'),
(15, 5, '1', '1'),
(20, 6, '1', '1'),
(25, 8, '1', '1'),
(29, 9, '1', '1'),
(33, 11, '1', '1'),
(2, 1, '1', '2'),
(21, 6, '1', '2'),
(26, 8, '1', '2'),
(34, 11, '1', '2'),
(30, 10, '1', '3'),
(3, 1, '2', '1'),
(6, 2, '2', '1'),
(9, 3, '2', '1'),
(12, 4, '2', '1'),
(16, 5, '2', '1'),
(23, 7, '2', '1'),
(27, 8, '2', '1'),
(35, 11, '2', '1'),
(4, 1, '2', '2'),
(7, 2, '2', '2'),
(10, 3, '2', '2'),
(13, 4, '2', '2'),
(17, 5, '2', '2'),
(22, 7, '2', '2'),
(32, 10, '2', '2'),
(14, 4, '2', '3'),
(18, 5, '2', '3'),
(19, 5, '2', '4'),
(31, 10, '3', '1'),
(24, 7, '3', '3'),
(28, 8, '4', '4'),
(36, 11, '4', '4'),
(37, 11, '5', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cartellera`
--

CREATE TABLE `Cartellera` (
  `idCartellera` int(11) NOT NULL,
  `hora_inici` datetime NOT NULL,
  `idPelicula` int(11) NOT NULL,
  `idSala` int(11) NOT NULL,
  `preu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Cartellera`
--

INSERT INTO `Cartellera` (`idCartellera`, `hora_inici`, `idPelicula`, `idSala`, `preu`) VALUES
(1, '2022-05-22 16:00:00', 1, 1, 5),
(2, '2022-05-22 16:00:00', 2, 2, 5),
(3, '2022-05-22 16:00:00', 1, 3, 5),
(4, '2022-05-22 16:00:00', 3, 4, 5),
(5, '2022-05-22 16:00:00', 4, 5, 5),
(6, '2022-05-22 16:00:00', 5, 6, 5),
(7, '2022-05-22 16:00:00', 1, 7, 5),
(8, '2022-05-22 16:00:00', 3, 8, 5),
(9, '2022-05-22 16:00:00', 4, 9, 5),
(10, '2022-05-22 16:00:00', 2, 10, 5),
(11, '2022-05-22 16:00:00', 5, 11, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cine`
--

CREATE TABLE `cine` (
  `idCine` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `direccio` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `idCiutat` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gMaps` varchar(255) NOT NULL,
  `fotografia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cine`
--

INSERT INTO `cine` (`idCine`, `nom`, `direccio`, `telefon`, `idCiutat`, `email`, `gMaps`, `fotografia`) VALUES
(1, 'multicine Manacor', 'Carrer Bas', '971847256', 1, 'multicine@gmail.com', 'https://goo.gl/maps/AB7wELEJvYWGtDAW8', 'https://t2.salir.ltmcdn.com/es/places/2/0/0/cine-manacor-aficine_126002_0_600.jpg'),
(2, 'Ocimax', 'Bisbe Pere de Puigdorfila ', '971750673', 2, 'ocimax@gmail.com', 'https://goo.gl/maps/Z6SvRmsa7f3TNkZB9', 'https://www.cronicabalear.es/access/public/img/noticias/upload/0_1610382585.jpg'),
(3, 'Festival', 'autop-Palma-Inca', '971140925', 3, 'cinesa@gmail.com', 'https://goo.gl/maps/Burq1ksav2ugNNhVA', 'https://www.prospectosdecine.com/public/images/sala_cine/29102014154657.jpg'),
(4, 'Telefilm', 'Carrer des Teatre', '971963777', 4, 'telefilm@gmail.com', 'https://goo.gl/maps/z31xNUaDNirTSEQy7', 'https://mx.web.img3.acsta.net/r_654_368/newsv7/21/02/25/23/06/4858967.jpg'),
(5, 'Aficineaugusta', 'Avinguda del Gran i General Consell', '971752055', 5, 'augusta@gmail.com', 'https://goo.gl/maps/Wy72fGmRcyNifcve8', 'https://media.timeout.com/images/101562621/image.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ciutat`
--

CREATE TABLE `Ciutat` (
  `idCiutat` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Ciutat`
--

INSERT INTO `Ciutat` (`idCiutat`, `nom`) VALUES
(1, 'Manacor'),
(2, 'Palma'),
(3, 'Marratxi'),
(4, 'Inca'),
(5, 'Alcudia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacio`
--

CREATE TABLE `clasificacio` (
  `idGenere` int(11) NOT NULL,
  `idPelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clasificacio`
--

INSERT INTO `clasificacio` (`idGenere`, `idPelicula`) VALUES
(1, 1),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clients`
--

CREATE TABLE `Clients` (
  `idClient` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `ll1` varchar(255) NOT NULL,
  `ll2` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `DNI` varchar(255) NOT NULL,
  `CP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Clients`
--

INSERT INTO `Clients` (`idClient`, `nom`, `ll1`, `ll2`, `email`, `DNI`, `CP`) VALUES
(1, 'Joan', 'Enrique', 'Garcia', 'joanenrique@gmail,com', '23131DNI', '07500'),
(2, 'Marti', 'Marti', NULL, 'martimarti@gmail,com', '1031DNI', '07500'),
(3, 'Cris', 'Sergio', 'Lagos', 'sergiolagos@gmail,com', '231332DNI', '07500'),
(4, 'Maria', 'Cristina', 'Lopez', 'cricris@gmail,com', '2231131DNI', '07500'),
(5, 'Mari', 'Inglis', NULL, 'esinglis@gmail,com', '23133211DNI', '07500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Compra`
--

CREATE TABLE `Compra` (
  `idCompra` int(11) NOT NULL,
  `idCartellera` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `data_compra` time NOT NULL,
  `idPagament` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Compra`
--

INSERT INTO `Compra` (`idCompra`, `idCartellera`, `idClient`, `data_compra`, `idPagament`) VALUES
(1, 1, 1, '15:00:00', 1),
(2, 5, 2, '15:00:00', 2),
(3, 10, 3, '15:00:00', 3),
(4, 3, 4, '15:00:00', 4),
(5, 6, 5, '15:00:00', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `idDirector` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`idDirector`) VALUES
(4),
(7),
(12),
(13),
(18),
(21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirigeix`
--

CREATE TABLE `dirigeix` (
  `idPelicula` int(11) NOT NULL,
  `idDirector` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dirigeix`
--

INSERT INTO `dirigeix` (`idPelicula`, `idDirector`) VALUES
(1, 4),
(2, 7),
(3, 12),
(3, 13),
(4, 18),
(5, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Genere`
--

CREATE TABLE `Genere` (
  `idGenere` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Genere`
--

INSERT INTO `Genere` (`idGenere`, `nom`) VALUES
(1, ''),
(2, ''),
(3, ''),
(4, ''),
(5, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Idioma`
--

CREATE TABLE `Idioma` (
  `idIdioma` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Idioma`
--

INSERT INTO `Idioma` (`idIdioma`) VALUES
('AL'),
('CAT'),
('ES'),
('ING'),
('RUS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma_genere`
--

CREATE TABLE `idioma_genere` (
  `idGenere` int(11) NOT NULL,
  `idIdioma` varchar(10) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `idioma_genere`
--

INSERT INTO `idioma_genere` (`idGenere`, `idIdioma`, `nom`) VALUES
(1, 'ES', 'Accio'),
(2, 'ES', 'Aventura'),
(3, 'ES', 'Terror'),
(4, 'ES', 'Comedia'),
(5, 'ES', 'Fantasia'),
(1, 'ING', 'Action'),
(2, 'ING', 'Adventure'),
(3, 'ING', 'Terror'),
(4, 'ING', 'Comedy'),
(5, 'ING', 'Fancy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma_pais`
--

CREATE TABLE `idioma_pais` (
  `idIdioma` varchar(10) NOT NULL,
  `idPais` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `idioma_pais`
--

INSERT INTO `idioma_pais` (`idIdioma`, `idPais`, `nom`) VALUES
('ES', 1, 'Francia'),
('ES', 2, 'Norugea'),
('ES', 3, 'Egipto'),
('ES', 4, 'Australia'),
('ES', 5, 'Suecia'),
('ING', 1, 'France'),
('ING', 2, 'Norway'),
('ING', 3, 'Egypt'),
('ING', 4, 'Australia'),
('ING', 5, 'Sweden');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma_pelicula`
--

CREATE TABLE `idioma_pelicula` (
  `idPelicula` int(11) NOT NULL,
  `idIdioma` varchar(10) NOT NULL,
  `titol` varchar(255) NOT NULL,
  `argument` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `idioma_pelicula`
--

INSERT INTO `idioma_pelicula` (`idPelicula`, `idIdioma`, `titol`, `argument`) VALUES
(1, 'ES', 'El padrino', 'Es un argumento'),
(2, 'ES', 'Doce hombres sin piedad', 'Es un argumento'),
(3, 'ES', 'Gru mi villano favorito', 'Es un argumento'),
(4, 'ES', 'Los ángeles de Charlie', 'Es un argument'),
(5, 'ES', 'Dos rubias de pelo en pecho', 'Es un argument'),
(1, 'ING', 'The Godfather', 'is an argument'),
(2, 'ING', '12 Angry Men', 'is an argument'),
(3, 'ING', 'Despicable Me', 'is an argument'),
(4, 'ING', 'Charlies Angels', 'is an argument'),
(5, 'ING', 'White Chicks', 'is an argument');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma_persona`
--

CREATE TABLE `idioma_persona` (
  `idPersona` int(11) NOT NULL,
  `idIdioma` varchar(10) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `idioma_persona`
--

INSERT INTO `idioma_persona` (`idPersona`, `idIdioma`, `link`) VALUES
(4, 'ES', 'https://es.wikipedia.org/wiki/Francis_Ford_Coppola'),
(4, 'ING', 'https://en.wikipedia.org/wiki/Francis_Ford_Coppola'),
(7, 'ES', 'https://es.wikipedia.org/wiki/Sidney_Lumet'),
(7, 'ING', 'https://en.wikipedia.org/wiki/Sidney_Lumet'),
(12, 'ES', 'https://es.wikipedia.org/wiki/Pierre_Coffin'),
(12, 'ING', 'https://en.wikipedia.org/wiki/Pierre_Coffin'),
(13, 'ES', 'https://es.wikipedia.org/wiki/Chris_Renaud'),
(13, 'ING', 'https://en.wikipedia.org/wiki/Chris_Renaud'),
(18, 'ES', 'https://es.wikipedia.org/wiki/Joseph_McGinty_Nichol'),
(18, 'ING', 'https://en.wikipedia.org/wiki/Joseph_McGinty_Nichol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MPagament`
--

CREATE TABLE `MPagament` (
  `idPagament` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `MPagament`
--

INSERT INTO `MPagament` (`idPagament`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Multimedia`
--

CREATE TABLE `Multimedia` (
  `idMultimedia` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `prioritat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Multimedia`
--

INSERT INTO `Multimedia` (`idMultimedia`, `link`, `tipo`, `prioritat`) VALUES
(1, 'https://picsum.photos/200', 'PNG', 10),
(2, 'https://picsum.photos/1/picsum/200', 'PNG', 2),
(3, 'https://www.youtube.com/watch?v=WzgLBNOGMQQ', 'Video', 20),
(4, 'https://www.youtube.com/watch?v=85BSvdX2lac', 'Video', 4),
(5, 'https://www.youtube.com/watch?v=T6-lxsA-ld0', 'Video', 15),
(6, 'https://image.posterlounge.es/images/big/1878326.jpg', 'PNG', 0),
(7, 'https://www.ecartelera.com/carteles/6300/6388/002.jpg', 'PNG', 0),
(8, 'https://www.ecartelera.com/carteles/3700/3730/002.jpg', 'PNG', 0),
(9, 'https://es.web.img3.acsta.net/medias/nmedia/18/90/19/77/20085362.jpg', 'PNG', 0),
(10, 'https://www.ecartelera.com/carteles/10200/10266/001.jpg', 'PNG', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pais`
--

CREATE TABLE `Pais` (
  `idPais` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Pais`
--

INSERT INTO `Pais` (`idPais`, `nom`) VALUES
(1, ''),
(2, ''),
(3, ''),
(4, ''),
(5, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Paypal`
--

CREATE TABLE `Paypal` (
  `idPaypal` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Paypal`
--

INSERT INTO `Paypal` (`idPaypal`, `email`) VALUES
(1, 'esimail@gamil'),
(2, 'esosiesimel@gmail.com'),
(3, 'Arasiesimeil@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pelicula`
--

CREATE TABLE `Pelicula` (
  `idPelicula` int(11) NOT NULL,
  `data_estrena` date NOT NULL,
  `duracio` time NOT NULL,
  `puntuacio` int(11) NOT NULL,
  `idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Pelicula`
--

INSERT INTO `Pelicula` (`idPelicula`, `data_estrena`, `duracio`, `puntuacio`, `idPais`) VALUES
(1, '1972-10-20', '03:22:00', 9, 1),
(2, '1958-02-03', '01:58:00', 8, 2),
(3, '2010-10-08', '01:53:00', 7, 3),
(4, '2019-11-13', '02:03:00', 3, 4),
(5, '2004-10-15', '02:22:00', 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Persona`
--

CREATE TABLE `Persona` (
  `idPersona` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `cognom_1` varchar(255) NOT NULL,
  `cognom_2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Persona`
--

INSERT INTO `Persona` (`idPersona`, `nom`, `cognom_1`, `cognom_2`) VALUES
(1, 'Marlon', 'Brando', NULL),
(2, 'Alfredo James', 'Pacino', NULL),
(3, 'Gianni', 'Russo', NULL),
(4, 'Francis', 'Ford', 'Coppola'),
(5, 'Henry', 'Fonda', NULL),
(6, 'Lee', 'J.', 'Cobb'),
(7, 'Sidney', 'Lumet', NULL),
(8, 'Steve', 'Carell', NULL),
(9, 'Pierre', 'Coffin', NULL),
(10, 'Julie', 'Andrews', NULL),
(11, 'Dana', 'Gaier', NULL),
(12, 'Pierre', 'Coffin', NULL),
(13, 'Chris', 'Renaud', NULL),
(14, 'Cameron', 'Diaz', NULL),
(15, 'Lucy', 'Liu', NULL),
(16, 'Crispin', 'Glover', NULL),
(17, 'Matt', 'LeBlanc', NULL),
(18, 'Joseph', 'McGinty', 'Nichol'),
(19, 'Shawn', 'Wayans', NULL),
(20, 'Lochlyn', 'Munro', NULL),
(21, 'Kennen', 'Ivory', 'Wayans');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propaganda`
--

CREATE TABLE `propaganda` (
  `idPelicula` int(11) NOT NULL,
  `idMultimedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propaganda`
--

INSERT INTO `propaganda` (`idPelicula`, `idMultimedia`) VALUES
(1, 1),
(1, 6),
(2, 2),
(2, 7),
(3, 3),
(3, 8),
(4, 4),
(4, 9),
(5, 5),
(5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Rbutaca`
--

CREATE TABLE `Rbutaca` (
  `idButaca` int(11) NOT NULL,
  `idCompra` int(11) NOT NULL,
  `codiCompra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Rbutaca`
--

INSERT INTO `Rbutaca` (`idButaca`, `idCompra`, `codiCompra`) VALUES
(1, 1, 1),
(15, 4, 4),
(16, 5, 5),
(20, 3, 3),
(34, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sales`
--

CREATE TABLE `Sales` (
  `idSala` int(11) NOT NULL,
  `codiSala` int(11) NOT NULL,
  `idCine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Sales`
--

INSERT INTO `Sales` (`idSala`, `codiSala`, `idCine`) VALUES
(1, 1, 1),
(3, 1, 2),
(4, 1, 3),
(7, 1, 4),
(11, 1, 5),
(2, 2, 1),
(5, 2, 3),
(8, 2, 4),
(6, 3, 3),
(9, 3, 4),
(10, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TCredit`
--

CREATE TABLE `TCredit` (
  `idTCredit` int(11) NOT NULL,
  `NumTargeta` int(11) NOT NULL,
  `FCaducidad` varchar(255) NOT NULL,
  `NomCognoms` varchar(255) NOT NULL,
  `CVC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `TCredit`
--

INSERT INTO `TCredit` (`idTCredit`, `NumTargeta`, `FCaducidad`, `NomCognoms`, `CVC`) VALUES
(4, 13214213, '21/21', 'Crisitini', 212),
(5, 32134213, '12/18', 'Joan Mora', 333);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`idActor`);

--
-- Indices de la tabla `actua`
--
ALTER TABLE `actua`
  ADD PRIMARY KEY (`idActor`,`idPelicula`),
  ADD KEY `idPelicula` (`idPelicula`);

--
-- Indices de la tabla `Butaques`
--
ALTER TABLE `Butaques`
  ADD PRIMARY KEY (`idButaques`),
  ADD UNIQUE KEY `fila` (`fila`,`columna`,`idSala`),
  ADD KEY `idSala` (`idSala`);

--
-- Indices de la tabla `Cartellera`
--
ALTER TABLE `Cartellera`
  ADD PRIMARY KEY (`idCartellera`),
  ADD UNIQUE KEY `hora_inici` (`hora_inici`,`idPelicula`,`idSala`),
  ADD KEY `fkCPeli` (`idPelicula`),
  ADD KEY `fkCsala` (`idSala`);

--
-- Indices de la tabla `cine`
--
ALTER TABLE `cine`
  ADD PRIMARY KEY (`idCine`),
  ADD KEY `idCiutat` (`idCiutat`);

--
-- Indices de la tabla `Ciutat`
--
ALTER TABLE `Ciutat`
  ADD PRIMARY KEY (`idCiutat`);

--
-- Indices de la tabla `clasificacio`
--
ALTER TABLE `clasificacio`
  ADD PRIMARY KEY (`idGenere`,`idPelicula`),
  ADD KEY `idPelicula` (`idPelicula`);

--
-- Indices de la tabla `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`idClient`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indices de la tabla `Compra`
--
ALTER TABLE `Compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD UNIQUE KEY `uniqueComrpa` (`idClient`,`data_compra`,`idCartellera`),
  ADD KEY `fkPgCom` (`idPagament`),
  ADD KEY `fkCarCo` (`idCartellera`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`idDirector`);

--
-- Indices de la tabla `dirigeix`
--
ALTER TABLE `dirigeix`
  ADD PRIMARY KEY (`idPelicula`,`idDirector`),
  ADD KEY `idDirector` (`idDirector`);

--
-- Indices de la tabla `Genere`
--
ALTER TABLE `Genere`
  ADD PRIMARY KEY (`idGenere`);

--
-- Indices de la tabla `Idioma`
--
ALTER TABLE `Idioma`
  ADD PRIMARY KEY (`idIdioma`);

--
-- Indices de la tabla `idioma_genere`
--
ALTER TABLE `idioma_genere`
  ADD PRIMARY KEY (`idIdioma`,`idGenere`),
  ADD KEY `idGenere` (`idGenere`);

--
-- Indices de la tabla `idioma_pais`
--
ALTER TABLE `idioma_pais`
  ADD PRIMARY KEY (`idIdioma`,`idPais`),
  ADD KEY `idPais` (`idPais`);

--
-- Indices de la tabla `idioma_pelicula`
--
ALTER TABLE `idioma_pelicula`
  ADD PRIMARY KEY (`idIdioma`,`idPelicula`),
  ADD KEY `idPelicula` (`idPelicula`);

--
-- Indices de la tabla `idioma_persona`
--
ALTER TABLE `idioma_persona`
  ADD PRIMARY KEY (`idPersona`,`idIdioma`),
  ADD KEY `idIdioma` (`idIdioma`);

--
-- Indices de la tabla `MPagament`
--
ALTER TABLE `MPagament`
  ADD PRIMARY KEY (`idPagament`);

--
-- Indices de la tabla `Multimedia`
--
ALTER TABLE `Multimedia`
  ADD PRIMARY KEY (`idMultimedia`);

--
-- Indices de la tabla `Pais`
--
ALTER TABLE `Pais`
  ADD PRIMARY KEY (`idPais`);

--
-- Indices de la tabla `Paypal`
--
ALTER TABLE `Paypal`
  ADD KEY `fkPaPay` (`idPaypal`);

--
-- Indices de la tabla `Pelicula`
--
ALTER TABLE `Pelicula`
  ADD PRIMARY KEY (`idPelicula`),
  ADD KEY `idPais` (`idPais`);

--
-- Indices de la tabla `Persona`
--
ALTER TABLE `Persona`
  ADD PRIMARY KEY (`idPersona`);

--
-- Indices de la tabla `propaganda`
--
ALTER TABLE `propaganda`
  ADD PRIMARY KEY (`idPelicula`,`idMultimedia`),
  ADD KEY `idMultimedia` (`idMultimedia`);

--
-- Indices de la tabla `Rbutaca`
--
ALTER TABLE `Rbutaca`
  ADD PRIMARY KEY (`idButaca`,`idCompra`),
  ADD KEY `fkCarRb` (`idCompra`);

--
-- Indices de la tabla `Sales`
--
ALTER TABLE `Sales`
  ADD PRIMARY KEY (`idSala`),
  ADD UNIQUE KEY `codiSala` (`codiSala`,`idCine`),
  ADD KEY `idCine` (`idCine`);

--
-- Indices de la tabla `TCredit`
--
ALTER TABLE `TCredit`
  ADD KEY `fkPaTC` (`idTCredit`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Butaques`
--
ALTER TABLE `Butaques`
  MODIFY `idButaques` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `Cartellera`
--
ALTER TABLE `Cartellera`
  MODIFY `idCartellera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `cine`
--
ALTER TABLE `cine`
  MODIFY `idCine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Ciutat`
--
ALTER TABLE `Ciutat`
  MODIFY `idCiutat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Clients`
--
ALTER TABLE `Clients`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Compra`
--
ALTER TABLE `Compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Genere`
--
ALTER TABLE `Genere`
  MODIFY `idGenere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `MPagament`
--
ALTER TABLE `MPagament`
  MODIFY `idPagament` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Multimedia`
--
ALTER TABLE `Multimedia`
  MODIFY `idMultimedia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Pais`
--
ALTER TABLE `Pais`
  MODIFY `idPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Pelicula`
--
ALTER TABLE `Pelicula`
  MODIFY `idPelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Persona`
--
ALTER TABLE `Persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `Sales`
--
ALTER TABLE `Sales`
  MODIFY `idSala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actor`
--
ALTER TABLE `actor`
  ADD CONSTRAINT `actor_ibfk_1` FOREIGN KEY (`idActor`) REFERENCES `Persona` (`idPersona`);

--
-- Filtros para la tabla `actua`
--
ALTER TABLE `actua`
  ADD CONSTRAINT `actua_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `Pelicula` (`idPelicula`),
  ADD CONSTRAINT `actua_ibfk_2` FOREIGN KEY (`idActor`) REFERENCES `Actor` (`idActor`);

--
-- Filtros para la tabla `Butaques`
--
ALTER TABLE `Butaques`
  ADD CONSTRAINT `butaques_ibfk_1` FOREIGN KEY (`idSala`) REFERENCES `Sales` (`idSala`);

--
-- Filtros para la tabla `Cartellera`
--
ALTER TABLE `Cartellera`
  ADD CONSTRAINT `fkCPeli` FOREIGN KEY (`idPelicula`) REFERENCES `Pelicula` (`idPelicula`),
  ADD CONSTRAINT `fkCsala` FOREIGN KEY (`idSala`) REFERENCES `Sales` (`idSala`);

--
-- Filtros para la tabla `cine`
--
ALTER TABLE `cine`
  ADD CONSTRAINT `cine_ibfk_1` FOREIGN KEY (`idCiutat`) REFERENCES `Ciutat` (`idCiutat`);

--
-- Filtros para la tabla `clasificacio`
--
ALTER TABLE `clasificacio`
  ADD CONSTRAINT `clasificacio_ibfk_1` FOREIGN KEY (`idGenere`) REFERENCES `Genere` (`idGenere`),
  ADD CONSTRAINT `clasificacio_ibfk_2` FOREIGN KEY (`idPelicula`) REFERENCES `Pelicula` (`idPelicula`);

--
-- Filtros para la tabla `Compra`
--
ALTER TABLE `Compra`
  ADD CONSTRAINT `fkCarCo` FOREIGN KEY (`idCartellera`) REFERENCES `Cartellera` (`idCartellera`),
  ADD CONSTRAINT `fkCliCo` FOREIGN KEY (`idClient`) REFERENCES `Clients` (`idClient`),
  ADD CONSTRAINT `fkPgCom` FOREIGN KEY (`idPagament`) REFERENCES `MPagament` (`idPagament`);

--
-- Filtros para la tabla `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `director_ibfk_1` FOREIGN KEY (`idDirector`) REFERENCES `Persona` (`idPersona`);

--
-- Filtros para la tabla `dirigeix`
--
ALTER TABLE `dirigeix`
  ADD CONSTRAINT `dirigeix_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `Pelicula` (`idPelicula`),
  ADD CONSTRAINT `dirigeix_ibfk_2` FOREIGN KEY (`idDirector`) REFERENCES `Director` (`idDirector`);

--
-- Filtros para la tabla `idioma_genere`
--
ALTER TABLE `idioma_genere`
  ADD CONSTRAINT `idioma_genere_ibfk_1` FOREIGN KEY (`idIdioma`) REFERENCES `Idioma` (`idIdioma`),
  ADD CONSTRAINT `idioma_genere_ibfk_2` FOREIGN KEY (`idGenere`) REFERENCES `Genere` (`idGenere`);

--
-- Filtros para la tabla `idioma_pais`
--
ALTER TABLE `idioma_pais`
  ADD CONSTRAINT `idioma_pais_ibfk_1` FOREIGN KEY (`idIdioma`) REFERENCES `Idioma` (`idIdioma`),
  ADD CONSTRAINT `idioma_pais_ibfk_2` FOREIGN KEY (`idPais`) REFERENCES `Pais` (`idPais`);

--
-- Filtros para la tabla `idioma_pelicula`
--
ALTER TABLE `idioma_pelicula`
  ADD CONSTRAINT `idioma_pelicula_ibfk_1` FOREIGN KEY (`idIdioma`) REFERENCES `Idioma` (`idIdioma`),
  ADD CONSTRAINT `idioma_pelicula_ibfk_2` FOREIGN KEY (`idPelicula`) REFERENCES `Pelicula` (`idPelicula`);

--
-- Filtros para la tabla `idioma_persona`
--
ALTER TABLE `idioma_persona`
  ADD CONSTRAINT `idioma_persona_ibfk_1` FOREIGN KEY (`idIdioma`) REFERENCES `Idioma` (`idIdioma`),
  ADD CONSTRAINT `idioma_persona_ibfk_2` FOREIGN KEY (`idPersona`) REFERENCES `Persona` (`idPersona`);

--
-- Filtros para la tabla `Paypal`
--
ALTER TABLE `Paypal`
  ADD CONSTRAINT `fkPaPay` FOREIGN KEY (`idPaypal`) REFERENCES `MPagament` (`idPagament`);

--
-- Filtros para la tabla `Pelicula`
--
ALTER TABLE `Pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `Pais` (`idPais`);

--
-- Filtros para la tabla `propaganda`
--
ALTER TABLE `propaganda`
  ADD CONSTRAINT `propaganda_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `Pelicula` (`idPelicula`),
  ADD CONSTRAINT `propaganda_ibfk_2` FOREIGN KEY (`idMultimedia`) REFERENCES `Multimedia` (`idMultimedia`);

--
-- Filtros para la tabla `Rbutaca`
--
ALTER TABLE `Rbutaca`
  ADD CONSTRAINT `fkBuRb` FOREIGN KEY (`idButaca`) REFERENCES `Butaques` (`idButaques`),
  ADD CONSTRAINT `fkCarRb` FOREIGN KEY (`idCompra`) REFERENCES `Compra` (`idCompra`);

--
-- Filtros para la tabla `Sales`
--
ALTER TABLE `Sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`idCine`) REFERENCES `Cine` (`idCine`);

--
-- Filtros para la tabla `TCredit`
--
ALTER TABLE `TCredit`
  ADD CONSTRAINT `fkPaTC` FOREIGN KEY (`idTCredit`) REFERENCES `MPagament` (`idPagament`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
