-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2015 a las 01:26:06
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `familia`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarFamiliares`(IN `pid` INT(11))
    NO SQL
DELETE FROM familiares WHERE id=pid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarFamiliares`(IN `dni` VARCHAR(50), IN `pro` VARCHAR(50), IN `nom` VARCHAR(50), IN `sexo` VARCHAR(50), IN `dire` VARCHAR(50), IN `loca` VARCHAR(50), IN `paren` VARCHAR(50))
    NO SQL
INSERT INTO familiares (dni,provincia,nombre,sexo,direccion,localidad,parentesco) VALUES (dni,pro,nom,sexo,dire,loca,paren)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarFamiliares`(IN `pid` INT(11), IN `pdni` VARCHAR(50), IN `ppro` VARCHAR(50), IN `pnom` VARCHAR(50), IN `psexo` VARCHAR(50), IN `pdire` VARCHAR(50), IN `ploca` VARCHAR(50), IN `pparen` VARCHAR(50))
    NO SQL
UPDATE familiares SET dni=pdni,provincia=ppro,nombre=pnom,sexo=psexo,direccion=pdire,localidad=ploca,parentesco=pparen WHERE id=pid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `TraerFamiliares`()
    NO SQL
SELECT * FROM familiares$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `TraerUnFamiliar`(IN `pid` INT(11))
    NO SQL
select * from familiares where id=pid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiares`
--

CREATE TABLE IF NOT EXISTS `familiares` (
`id` int(11) NOT NULL,
  `dni` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sexo` varchar(505) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `parentesco` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `familiares`
--

INSERT INTO `familiares` (`id`, `dni`, `provincia`, `nombre`, `sexo`, `direccion`, `localidad`, `parentesco`) VALUES
(28, '1000000', 'Buenos aires', 'Claudioooo', 'M', 'Alsina', 'Lomas', 'Primo'),
(29, '1000000', 'a', 'a', 'M', 'a', 'a', 'Mama');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `familiares`
--
ALTER TABLE `familiares`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `familiares`
--
ALTER TABLE `familiares`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
