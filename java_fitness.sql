-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04-Jan-2016 às 21:37
-- Versão do servidor: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_fitness`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `matricula` int(3) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `dataMatricula` date DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `interesse` varchar(20) DEFAULT NULL,
  `altura` double NOT NULL,
  `peso` double NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`matricula`, `nome`, `dataMatricula`, `nascimento`, `sexo`, `interesse`, `altura`, `peso`, `senha`) VALUES
(1, 'mario', '2015-12-23', '1983-12-15', 'm', 'hipertrofia', 1.72, 75, '1f7fba3effa2c638be90884bb4eb84c3'),
(2, 'ivo', '2015-12-28', '1996-04-24', 'm', 'emagrecer', 1.98, 105.13, '44be00b4bf41e8e4185a3b0e6e8d619f'),
(3, 'john', '2015-12-29', '1993-05-08', 'm', 'aerobico', 2.1, 49, '2a92b401f527c2929203e2d6c6af9dff'),
(4, 'eva', '2015-12-29', '1999-05-23', 'f', 'aerobico', 1.5, 56.3, 'f854d276f2e7001a484d416a9165aa0a'),
(13, 'ana', '2015-12-29', '1977-10-20', 'f', 'aerobico', 1.2, 55, '1c3b516f5275a17a345e9d1e3c460f2e'),
(15, 'cico', '2016-01-04', '1992-07-08', 'm', 'emagrecer', 1.79, 98, 'b6a1fc9fa02bef5a3a2b7b58abcf7efd'),
(16, 'tom', '2016-01-04', '1976-12-14', 'm', 'hipertrofia', 1.72, 76.83, '43e33ab475ec53b47beced3e64a96c5e'),
(18, 'novo', '2016-01-04', '1992-07-14', 'f', 'aerobico', 2.98, 120.45, 'c3f4322a7de9af16b43b20118d251e78');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id` int(5) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`id`, `data`) VALUES
(1, '2016-01-29'),
(4, '2016-01-19'),
(5, '2016-01-30'),
(6, '2016-03-09'),
(7, '2016-03-09'),
(8, '2016-03-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `matricula` int(3) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `admissao` date NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`matricula`, `nome`, `admissao`, `tipo`, `senha`) VALUES
(1, 'mario-instrutor', '2015-12-27', 'instrutor', '70eb91b1507ee2e9ecb41c690161e278'),
(2, 'mario-cordenacao', '2015-12-28', 'cordenacao', 'eeb92697e6c1eb7b4b6426823f9c3624'),
(3, 'jow', '2015-12-29', 'instrutor', 'ebc92e8d08e067970d9fdf91d9170242'),
(4, 'jun', '2015-12-29', 'cordenacao', '68053af2923e00204c3ca7c6a3150cf7'),
(6, 'zica', '2016-01-04', 'instrutor', 'f35ecbc3e3fcd1e76550e37bbc72afdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `programa`
--

CREATE TABLE `programa` (
  `matriculaAluno` int(3) NOT NULL,
  `grupoMuscular` varchar(20) NOT NULL,
  `exercicio` varchar(20) NOT NULL,
  `tempo` int(3) NOT NULL,
  `series` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `programa`
--

INSERT INTO `programa` (`matriculaAluno`, `grupoMuscular`, `exercicio`, `tempo`, `series`) VALUES
(1, 'peito', 'supino-reto', 100, 3),
(1, 'peito', 'supino-inclinado', 100, 3),
(1, 'peito', 'voador', 100, 3),
(1, 'costas', 'puxada-frente', 100, 3),
(1, 'costas', 'puxada-costas', 100, 3),
(1, 'costas', 'remada-baixa', 100, 3),
(1, 'bíceps', 'rosca-direta', 100, 3),
(1, 'bíceps', 'scott', 100, 3),
(1, 'bíceps', 'rosca-inversa', 100, 3),
(1, 'tríceps', 'puxada-corda', 100, 3),
(1, 'tríceps', 'puxada-lateral', 100, 3),
(1, 'tríceps', 'puxada-inversa', 100, 3),
(1, 'pernas', 'agachamento', 100, 3),
(1, 'pernas', 'abducao', 100, 3),
(1, 'pernas', 'aducao', 100, 3),
(1, 'peito', 'supino-reto', 100, 3),
(1, 'peito', 'supino-inclinado', 100, 3),
(1, 'peito', 'voador', 100, 3),
(1, 'costas', 'puxada-frente', 100, 3),
(1, 'costas', 'puxada-costas', 100, 3),
(1, 'costas', 'remada-baixa', 100, 3),
(1, 'bíceps', 'rosca-direta', 100, 3),
(1, 'bíceps', 'scott', 100, 3),
(1, 'bíceps', 'rosca-inversa', 100, 3),
(1, 'tríceps', 'puxada-corda', 100, 3),
(1, 'tríceps', 'puxada-lateral', 100, 3),
(1, 'tríceps', 'puxada-inversa', 100, 3),
(1, 'pernas', 'agachamento', 100, 3),
(1, 'pernas', 'abducao', 100, 3),
(1, 'pernas', 'aducao', 100, 3),
(4, 'peito', 'supino-inclinado', 3, 3),
(4, 'bíceps', 'scott', 3, 3),
(4, 'tríceps', 'puxada-corda', 3, 3),
(4, 'tríceps', 'puxada-inversa', 3, 3),
(3, 'peito', 'supino-reto', 100, 4),
(3, 'bíceps', 'rosca-direta', 100, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`matricula`),
  ADD UNIQUE KEY `matricula` (`matricula`);

--
-- Indexes for table `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`matricula`),
  ADD UNIQUE KEY `matricula` (`matricula`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `matricula` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `matricula` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
