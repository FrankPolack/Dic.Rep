-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2015 a las 01:45:48
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `primerparcial`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarVoto`(IN `paramId` INT)
    NO SQL
DELETE FROM voto WHERE id=paramId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarVoto`(IN `paramProv` VARCHAR(50), IN `paramPresi` VARCHAR(50), IN `paramSexo` VARCHAR(50), IN `paramDNI` VARCHAR(50), IN `paramDire` VARCHAR(50), IN `paramLoca` VARCHAR(50))
    NO SQL
INSERT INTO voto(id,provincia,presidente,sexo,dni,direccion, localidad)
VALUES (null,paramProv, paramPresi, paramSexo,paramDNI, paramDire, paramLoca)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarVoto`(IN `paramProv` VARCHAR(50), IN `paramPresi` VARCHAR(50), IN `paramSexo` VARCHAR(50), IN `paramDNI` VARCHAR(50), IN `paramDire` VARCHAR(50), IN `paramLoca` VARCHAR(50), IN `paramId` INT)
    NO SQL
UPDATE voto SET 
provincia=paramProv, 
presidente=paramPresi, 
sexo=paramSexo,
dni= paramDNI,
direccion= paramDire,
localidad= paramLoca
WHERE id=paramId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `TraerTodosLosVotos`()
    NO SQL
SELECT * FROM voto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `TraerVotoPorId`(IN `paramId` INT)
    NO SQL
SELECT * FROM voto where id=paramId$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voto`
--

CREATE TABLE IF NOT EXISTS `voto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(50) NOT NULL,
  `provincia` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `presidente` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Volcado de datos para la tabla `voto`
--

INSERT INTO `voto` (`id`, `dni`, `provincia`, `presidente`, `sexo`, `direccion`, `localidad`) VALUES
(78, '1000000', 'Buenos Aires', 'Massa', 'M', 'Mitre 6000', 'Avellaneda'),
(79, '1000000', 'Buenos Aires', 'Macri', 'F', 'Mitre 700', 'Avellaneda');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
