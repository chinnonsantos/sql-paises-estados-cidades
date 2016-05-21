-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Maio-2016 às 02:13
-- Versão do servidor: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `UF_ID` int(11) NOT NULL,
  `UF_NOME` varchar(75) DEFAULT NULL,
  `UF_UF` varchar(2) DEFAULT NULL,
  `UF_IBGE` int(2) DEFAULT NULL,
  `UF_SL` int(3) DEFAULT NULL,
  `UF_DDD` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Unidades Federativas';

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`UF_ID`, `UF_NOME`, `UF_UF`, `UF_IBGE`, `UF_SL`, `UF_DDD`) VALUES
(1, 'Acre', 'AC', 12, 1, '68'),
(2, 'Alagoas', 'AL', 27, 1, '82'),
(3, 'Amazonas', 'AM', 13, 1, '97,92'),
(4, 'Amapá', 'AP', 16, 1, '96'),
(5, 'Bahia', 'BA', 29, 1, '77,75,73,74,71'),
(6, 'Ceará', 'CE', 23, 1, '88,85'),
(7, 'Distrito Federal', 'DF', 53, 1, '61'),
(8, 'Espírito Santo', 'ES', 32, 1, '28,27'),
(9, 'Goiás', 'GO', 52, 1, '62,64,61'),
(10, 'Maranhão', 'MA', 21, 1, '99,98'),
(11, 'Minas Gerais', 'MG', 31, 1, '34,37,31,33,35,38,32'),
(12, 'Mato Grosso do Sul', 'MS', 50, 1, '67'),
(13, 'Mato Grosso', 'MT', 51, 1, '65,66'),
(14, 'Pará', 'PA', 15, 1, '91,94,93'),
(15, 'Paraíba', 'PB', 25, 1, '83'),
(16, 'Pernambuco', 'PE', 26, 1, '81,87'),
(17, 'Piauí', 'PI', 22, 1, '89,86'),
(18, 'Paraná', 'PR', 41, 1, '43,41,42,44,45,46'),
(19, 'Rio de Janeiro', 'RJ', 33, 1, '24,22,21'),
(20, 'Rio Grande do Norte', 'RN', 24, 1, '84'),
(21, 'Rondônia', 'RO', 11, 1, '69'),
(22, 'Roraima', 'RR', 14, 1, '95'),
(23, 'Rio Grande do Sul', 'RS', 43, 1, '53,54,55,51'),
(24, 'Santa Catarina', 'SC', 42, 1, '47,48,49'),
(25, 'Sergipe', 'SE', 28, 1, '79'),
(26, 'São Paulo', 'SP', 35, 1, '11,12,13,14,15,16,17,18,19'),
(27, 'Tocantins', 'TO', 17, 1, '63'),
(99, 'Exterior', 'EX', 99, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`UF_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `UF_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
