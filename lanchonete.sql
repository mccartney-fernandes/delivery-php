-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Abr-2019 às 19:34
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lanchonete`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `id_bairro` int(11) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `preco` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome`) VALUES
(2, 'Pizzas'),
(4, 'Caldos'),
(5, 'Bebidas'),
(6, 'Doses'),
(7, 'Refrigerantes'),
(8, 'água e Sucos'),
(9, 'Peixes'),
(10, 'Porções'),
(11, 'Lanches');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `cidade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id_cidade`, `cidade`) VALUES
(1, 'PETROLINA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id_conf`, `empresa`, `telefone`, `pgarcon`, `ativo`) VALUES
(0, 'Pizzaria Online', '(31) 8728-5451', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cozinha`
--

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cozinha`
--

INSERT INTO `cozinha` (`id`, `produto`, `qtd`) VALUES
(1, 'BRAHMA', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `id` int(11) NOT NULL,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `destino` int(1) NOT NULL,
  `entregue` int(1) NOT NULL,
  `feito` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `garcon`
--

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `garcon`
--

INSERT INTO `garcon` (`idGarcon`, `nomeGarcon`, `login`, `senha`, `nv`) VALUES
(1, 'Administrador', 'admin', '1234', 0),
(10, 'garcom', 'garcom', '1234', 1),
(8, 'administrador', 'mccartney', '123478mc', 0),
(9, 'israela', 'israela', '1234', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `numero`, `idGarcon`, `situacao`) VALUES
(4, 4, '', 0),
(2, 2, '', 0),
(3, 3, '', 0),
(1, 1, '', 0),
(5, 5, '', 0),
(6, 6, '', 0),
(7, 7, '', 0),
(8, 8, '', 0),
(9, 9, '', 0),
(10, 10, '', 0),
(11, 11, '', 0),
(12, 12, '', 0),
(13, 13, '', 0),
(14, 14, '', 0),
(15, 15, '', 0),
(16, 16, '', 0),
(17, 17, '', 0),
(18, 18, '', 0),
(19, 19, '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_mesa` int(10) NOT NULL,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numerocasa` varchar(20) DEFAULT NULL,
  `detalhes` longtext,
  `preco` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id_mesa`, `numero`, `idGarcon`, `situacao`, `email`, `nome`, `sobrenome`, `telefone`, `bairro`, `rua`, `numerocasa`, `detalhes`, `preco`) VALUES
(46, 12, '', 0, 'teste@gmail.com', 'CARLA COSTA', '', '(87) 99546-5798', 'GIOVANINI', 'AV. PURUS ', '540', 'SANTA MARIA DA BOA VISTA', '5,00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_carrinho`
--

CREATE TABLE `tbl_carrinho` (
  `id` int(11) NOT NULL,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `destino` int(1) NOT NULL,
  `entregue` int(1) NOT NULL,
  `feito` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_carrinho`
--

INSERT INTO `tbl_carrinho` (`id`, `cod`, `nome`, `preco`, `qtd`, `comanda`, `data`, `time`, `id_mesa`, `situacao`, `idGarcon`, `status`, `destino`, `entregue`, `feito`) VALUES
(49, 2, 'teste2', '300.00', 1, 0, '2013-07-10', '23:40:00', 9, 0, '2', 1, 0, 1, 0),
(53, 2, 'teste2', '300.00', 1, 0, '2014-12-02', '22:34:00', 8, 0, '15', 0, 0, 0, 0),
(161, 18, 'Á Moda', '38.00', 1, 0, '2015-09-25', '12:33:00', 6, 0, '0', 0, 0, 0, 0),
(162, 14, 'Frango', '35.00', 1, 0, '2015-09-25', '12:33:00', 6, 0, '0', 0, 1, 0, 0),
(163, 27, 'BRAHMA', '6.40', 1, 0, '2015-09-25', '12:33:00', 6, 0, '0', 0, 0, 0, 0),
(164, 29, 'Cerveja Lata', '3.50', 1, 0, '2015-09-25', '12:33:00', 6, 0, '0', 0, 0, 0, 0),
(165, 28, 'ANTARTICA', '5.50', 1, 0, '2015-09-26', '02:32:00', 1, 0, '10', 1, 0, 1, 0),
(166, 18, 'Á Moda', '38.00', 1, 0, '2015-09-26', '02:33:00', 1, 0, '10', 1, 0, 1, 0),
(167, 43, '2 Litros', '7.00', 1, 0, '2015-09-26', '02:35:00', 1, 0, '10', 1, 0, 1, 0),
(168, 18, 'Á Moda', '38.00', 1, 0, '2015-09-26', '02:39:00', 4, 0, '10', 1, 0, 1, 0),
(169, 26, 'SKOL', '6.50', 1, 0, '2015-09-25', '22:13:00', 4, 0, '10', 1, 1, 1, 0),
(170, 51, 'água c/ Gás', '2.00', 1, 0, '2015-09-26', '04:18:00', 11, 0, '10', 0, 0, 0, 0),
(171, 50, 'Pinto', '10.00', 1, 0, '2015-09-26', '04:18:00', 11, 0, '10', 0, 1, 0, 1),
(172, 53, 'X-Bacon', '10.00', 1, 0, '2015-09-25', '23:41:00', 11, 0, '10', 0, 1, 0, 1),
(173, 51, 'água c/ Gás', '2.00', 1, 0, '2019-04-09', '11:12:00', 1, 0, '8', 0, 0, 0, 0),
(174, 51, 'água c/ Gás', '2.00', 1, 0, '2019-04-09', '11:12:00', 1, 0, '8', 0, 0, 0, 0),
(175, 51, 'água c/ Gás', '2.00', 1, 0, '2019-04-09', '11:12:00', 1, 0, '8', 0, 0, 0, 0),
(176, 0, 'Taxa Entrega', '5,00', 1, 0, '2019-04-09', '11:13:00', 46, 0, '', 0, 0, 0, 0),
(180, 28, 'ANTARTICA', '5.50', 1, 0, '2019-04-09', '11:13:00', 46, 0, '', 0, 0, 0, 0),
(179, 28, 'ANTARTICA', '5.50', 1, 0, '2019-04-09', '11:13:00', 46, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_produtos`
--

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_produtos`
--

INSERT INTO `tbl_produtos` (`cod`, `nome`, `img`, `preco`, `id_categoria`, `destino`) VALUES
(9, 'Traíra Completa', '', '74.90', 9, 1),
(10, 'Traíra Média', '', '64.90', 9, 1),
(11, 'Traíra Pequena', '', '54.90', 9, 1),
(12, 'Moqueca Capixaba', '', '65.00', 9, 1),
(13, 'Portuguesa', '', '35.00', 2, 1),
(14, 'Frango', '', '35.00', 2, 1),
(15, 'Frango c/ Catupiry', '', '35.00', 2, 1),
(16, 'Calabresa', '', '35.00', 2, 1),
(17, 'Bacon', '', '35.00', 2, 1),
(18, 'Á Moda', '', '38.00', 2, 0),
(19, 'Filé c/ Fritas', '', '37.00', 10, 1),
(20, 'Lombo c/ Fritas', '', '32.00', 10, 1),
(21, 'Língua ao Molho Madeira', '', '15.00', 10, 1),
(22, 'Arroz', '', '6.00', 10, 1),
(23, 'Pirão', '', '6.00', 10, 1),
(24, 'Fritas', '', '12.00', 10, 1),
(25, 'Salada Completa', '', '15.00', 10, 1),
(26, 'SKOL', '', '6.50', 5, 0),
(27, 'BRAHMA', '', '6.40', 5, 0),
(28, 'ANTARTICA', '', '5.50', 5, 0),
(29, 'Cerveja Lata', '', '3.50', 5, 0),
(30, 'Ice', '', '5.50', 5, 0),
(31, 'Whisk', '', '15.00', 6, 0),
(33, 'Bacardi', '', '8.00', 6, 0),
(34, 'Martini', '', '8.00', 6, 0),
(35, 'Campari', '', '8.00', 6, 0),
(36, 'Conhaque', '', '6.00', 6, 0),
(37, 'Vodka', '', '8.00', 6, 0),
(38, 'Licor de Menta', '', '6.00', 6, 0),
(39, 'Cachaça', '', '4.00', 6, 0),
(40, 'Cuba', '', '10.00', 6, 0),
(41, 'Caipirinha', '', '9.00', 6, 0),
(42, 'Amarula', '', '10.00', 6, 0),
(43, '2 Litros', '', '7.00', 7, 0),
(44, '1,25 Litros', '', '6.00', 7, 0),
(45, '1 Litro', '', '5.00', 7, 0),
(46, '600 ML', '', '4.50', 7, 0),
(47, '500 ML', '', '4.50', 7, 0),
(48, 'Lata 350 ML', '', '3.50', 7, 0),
(49, 'Feijão', '', '10.00', 4, 1),
(50, 'Pinto', '', '10.00', 4, 1),
(51, 'água c/ Gás', '', '2.00', 8, 0),
(52, 'Água sem Gás', '', '2.00', 8, 0),
(53, 'X-Bacon', '', '10.00', 11, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUser` int(10) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUser`, `nome`, `email`, `login`, `senha`) VALUES
(1, 'Seu Nome', '', 'aidecb', '8520');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`id_bairro`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id_cidade`);

--
-- Indexes for table `cozinha`
--
ALTER TABLE `cozinha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garcon`
--
ALTER TABLE `garcon`
  ADD PRIMARY KEY (`idGarcon`);

--
-- Indexes for table `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indexes for table `tbl_carrinho`
--
ALTER TABLE `tbl_carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_produtos`
--
ALTER TABLE `tbl_produtos`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bairro`
--
ALTER TABLE `bairro`
  MODIFY `id_bairro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cozinha`
--
ALTER TABLE `cozinha`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;

--
-- AUTO_INCREMENT for table `garcon`
--
ALTER TABLE `garcon`
  MODIFY `idGarcon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_mesa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_carrinho`
--
ALTER TABLE `tbl_carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `tbl_produtos`
--
ALTER TABLE `tbl_produtos`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
