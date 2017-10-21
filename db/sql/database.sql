SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Estrutura da tabela `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `name_ptbr` varchar(60) DEFAULT NULL,
  `initials` varchar(2) DEFAULT NULL,
  `bacen_code` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Países e Nações';

--
-- Estrutura da tabela `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `initials` varchar(2) DEFAULT NULL,
  `ibge_code` int(2) DEFAULT NULL,
  `sl` int(3) DEFAULT NULL,
  `ddd` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Unidades Federativas';

--
-- Estrutura da tabela `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `uf` int(2) DEFAULT NULL,
  `ibge_code` int(7) DEFAULT NULL,
  FOREIGN KEY (uf) REFERENCES states(id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Municipios das Unidades Federativas';
