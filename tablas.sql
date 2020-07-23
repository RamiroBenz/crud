-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-07-2020 a las 12:24:24
-- Versión del servidor: 5.7.14-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tablas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `email` varchar(64) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `registrado` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `telefono`, `email`, `direccion`, `registrado`) VALUES
(1, 'Luis Ramon Aguilar', '2250-6000', 'info@sist.com', 'Ituzaigo', '2017-06-19 04:39:09'),
(2, 'Manuel Ayala', '7058-8899', 'info@gmail.com', 'Claromeco', '2017-06-19 04:39:37'),
(3, 'Jose Luis Aguilar', '6060-6060', 'info@aguilar.net', 'Saavedra 2536', '2017-06-19 04:40:18'),
(6, 'Edith Coreas', '6250-2000', 'edith@gmail.com', 'Olavarria', '2017-06-19 04:44:42'),
(7, 'Karen Lopez', '7070-7070', 'karen@gmail.com', 'Jose C Paz 3011', '2017-06-19 04:45:15'),
(9, 'Maria Luisa Amaya', '7070-9999', 'may@gmal.com', 'Av General Paz 26.000', '2017-06-19 04:46:22'),
(10, 'Esmeralda Juarez', '9090-99000', 'esme@gmail.com', 'Jujuy 3553', '2017-06-19 04:47:12'),
(11, 'Carmen Fuentes', '2650-2520', 'carmen@yahoo.es', 'Av Santa Ana 240', '2017-06-19 04:52:38'),
(12, 'Arcade S.A.', '546522366', 'nojeda@arcade.com.ar', 'Francia 323, San Martín, Buenos Aires', '2018-02-26 14:29:16'),
(14, 'Millanel Cosmetica', '546452225', 'rodolfosanteiro@millanelcosmetica.com.ar', 'Av General Mosconi 3011', '2018-08-21 16:32:27'),
(16, 'Roberto Perfume', '555333475', 'rperfumemio@administrador.com', 'calle cerrada 123', '2018-08-23 11:25:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL,
  `codigo` int(20) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(10) NOT NULL,
  `stock` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `descripcion`, `precio`, `stock`) VALUES
(1, 2354, 'Conjunto Cruzado Estampado T.100', 50, 50),
(2, 23545555, 'Conjunto Cruzado Estampado T.120', 50, 250),
(4, 2222, 'Conjunto de Ejemplo', 21, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(55) NOT NULL,
  `pass` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `email`, `fecha`) VALUES
(1, 'administrador', 'admin', 'admin@admin.com.ar', '2018-08-04'),
(2, 'administrador', 'admin', 'admin@admin.com.ar', '2018-08-04');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
