-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 07-Fev-2025 às 18:09
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `annasoaresestoque`
--
CREATE DATABASE IF NOT EXISTS `annasoaresestoque` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `annasoaresestoque`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL COMMENT 'armazena o código do cliente',
  `nome_cliente` varchar(50) NOT NULL COMMENT 'armazena o nome do cliente',
  `endereço` varchar(50) NOT NULL COMMENT 'armazena o endereço do cliente',
  `cidade` varchar(50) NOT NULL COMMENT 'armazena a cidade do cliente',
  `cep` varchar(10) NOT NULL COMMENT 'armazena o cep do cliente',
  `cnpj` varchar(30) NOT NULL COMMENT 'armazena o cnpj do cliente',
  `uf` char(2) NOT NULL COMMENT 'armazena a unidade federativa do cliente',
  `ie` int(11) NOT NULL COMMENT 'armazena o inscrição estadual do cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cod_cliente`, `nome_cliente`, `endereço`, `cidade`, `cep`, `cnpj`, `uf`, `ie`) VALUES
(7, 'Ana', 'Rua 17 n. 19', 'Niteroi', '24358310', '12113197.000000000', 'RJ', 2134),
(10, 'Jorge', 'Rua Caiapó 13', 'Curitiba', '30078500', '1451276498349', 'PR', 0),
(13, 'Edmar', 'Rua da Prais s/n', 'Salvador', '30079300', '234632842349', 'BA', 7121),
(20, 'Beth', 'Av Climério n. 45', 'São Paulo', '25679300', '3248512673268', 'SP', 9280),
(21, 'Beth', 'Av Climério n. 45', 'São Paulo', '25679300', '3248512673268', 'SP', 9280),
(22, 'Lúcia', 'Rua Itabira 123 loja 09', 'Belo Horizonte', '22124391', '2831521393488', 'MG', 2985),
(41, 'Rodolfo', 'Largo da Lapa 27 sobrado', 'Rio de Janeiro', '30078900', '1283512823469', 'RJ', 7431),
(57, 'Paulo', 'Tv. Moraes c/3', 'Londrina', '', '328482233242', 'PR', 1923),
(70, 'Flavio', 'Av. Pres Vargas 10', 'São Paulo', '22763931', '2253412693879', 'SP', 4631),
(80, 'Livio', 'Av. Beira Mar n.1256', 'Florianópolis', '30077500', '1273657123474', 'SC', 0),
(110, 'Jorge', 'Rua Caiapó 13', 'Curitiba', '30078500', '1451276498349', 'PR', 0),
(111, 'Jorge', 'Rua Caiapó 13', 'Curitiba', '30078500', '1451276498349', 'PR', 0),
(130, 'Edmar', 'Rua da Prais s/n', 'Salvador', '30079300', '234632842349', 'BA', 7121),
(131, 'Edmar', 'Rua da Prais s/n', 'Salvador', '30079300', '234632842349', 'BA', 7121),
(157, 'Paulo', 'Tv. Moraes c/3', 'Londrina', '', '328482233242', 'PR', 1923),
(158, 'Paulo', 'Tv. Moraes c/3', 'Londrina', '', '328482233242', 'PR', 1923),
(180, 'Livio', 'Av. Beira Mar n.1256', 'Florianópolis', '30077500', '1273657123474', 'SC', 0),
(181, 'Livio', 'Av. Beira Mar n.1256', 'Florianópolis', '30077500', '1273657123474', 'SC', 0),
(222, 'Lúcia', 'Rua Itabira 123 loja 09', 'Belo Horizonte', '22124391', '2831521393488', 'MG', 2985),
(223, 'Lúcia', 'Rua Itabira 123 loja 09', 'Belo Horizonte', '22124391', '2831521393488', 'MG', 2985),
(233, 'José', 'Quadra 3 bl. 3 sl 1003', 'Brasilia', '22841650', '2176357612323', 'DF', 2931),
(234, 'José', 'Quadra 3 bl. 3 sl 1003', 'Brasilia', '22841650', '2176357612323', 'DF', 2931),
(235, 'José', 'Quadra 3 bl. 3 sl 1003', 'Brasilia', '22841650', '2176357612323', 'DF', 2931),
(260, 'Susana', 'Rua Lopes Mendes 12', 'Niterói', '30046500', '217635712329', 'RJ', 2530),
(261, 'Susana', 'Rua Lopes Mendes 12', 'Niterói', '30046500', '217635712329', 'RJ', 2530),
(269, 'Susana', 'Rua Lopes Mendes 12', 'Niterói', '30046500', '217635712329', 'RJ', 2530),
(270, 'Beth', 'Av Climério n. 45', 'São Paulo', '25679300', '3248512673268', 'SP', 9280),
(290, 'Renato', 'Rua Meireles n. 123 bl.2 sl.345', 'São Paulo', '30225900', '1327657112314', 'SP', 1820),
(291, 'Renato', 'Rua Meireles n. 123 bl.2 sl.345', 'São Paulo', '30225900', '1327657112314', 'SP', 1820),
(298, 'Renato', 'Rua Meireles n. 123 bl.2 sl.345', 'São Paulo', '30225900', '1327657112314', 'SP', 1820),
(390, 'Sebastião', 'Rua da Igreja n. 10', 'Uberaba', '30438700', '321765472133', 'MG', 9071),
(391, 'Sebastião', 'Rua da Igreja n. 10', 'Uberaba', '30438700', '321765472133', 'MG', 9071),
(394, 'Sebastião', 'Rua da Igreja n. 10', 'Uberaba', '30438700', '321765472133', 'MG', 9071),
(410, 'Rodolfo', 'Largo da Lapa 27 sobrado', 'Rio de Janeiro', '30078900', '1283512823469', 'RJ', 7431),
(411, 'Rodolfo', 'Largo da Lapa 27 sobrado', 'Rio de Janeiro', '30078900', '1283512823469', 'RJ', 7431),
(720, 'Ana', 'Rua 17 n. 19', 'Niteroi', '24358310', '12113197.000000000', 'RJ', 2134),
(721, 'Ana', 'Rua 17 n. 19', 'Niteroi', '24358310', '12113197.000000000', 'RJ', 2134),
(730, 'Mauricio', 'Av Paulista 1236 sl/2345', 'São Paulo', '3012683', '3281698574656', 'SP', 9343),
(830, 'Mauricio', 'Av Paulista 1236 sl/2345', 'São Paulo', '3012683', '3281698574656', 'SP', 9343),
(831, 'Mauricio', 'Av Paulista 1236 sl/2345', 'São Paulo', '3012683', '3281698574656', 'SP', 9343),
(870, 'Flavio', 'Av. Pres Vargas 10', 'São Paulo', '22763931', '2253412693879', 'SP', 4631),
(871, 'Flavio', 'Av. Pres Vargas 10', 'São Paulo', '22763931', '2253412693879', 'SP', 4631);

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_de_pedido`
--

CREATE TABLE `item_de_pedido` (
  `pedido_num_pedido` int(11) NOT NULL,
  `produto_cod_produto` int(11) NOT NULL,
  `quantidade_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `num_pedido` int(11) NOT NULL,
  `prazo_entrega` int(10) DEFAULT NULL,
  `cod_cliente` int(11) NOT NULL,
  `Cod_vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `cod_produto` int(11) NOT NULL,
  `unid_produto` varchar(10) NOT NULL,
  `dedc_produto` varchar(50) NOT NULL,
  `valor_unit` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `Cod_vendedor` int(11) NOT NULL,
  `Nome_vendedor` varchar(50) DEFAULT NULL,
  `Sal_fixo` decimal(15,2) DEFAULT NULL,
  `FaixaComissao` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Índices para tabela `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD KEY `Fk_pedido_num_pedido` (`pedido_num_pedido`),
  ADD KEY `Fk_produto_cod_produto` (`produto_cod_produto`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`num_pedido`),
  ADD KEY `FK_CLIENTE_PEDIDO` (`cod_cliente`),
  ADD KEY `FK_VENDEDOR_PEDIDO` (`Cod_vendedor`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod_produto`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`Cod_vendedor`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD CONSTRAINT `Fk_pedido_num_pedido` FOREIGN KEY (`pedido_num_pedido`) REFERENCES `pedido` (`num_pedido`),
  ADD CONSTRAINT `Fk_produto_cod_produto` FOREIGN KEY (`produto_cod_produto`) REFERENCES `produto` (`cod_produto`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_CLIENTE_PEDIDO` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  ADD CONSTRAINT `FK_VENDEDOR_PEDIDO` FOREIGN KEY (`Cod_vendedor`) REFERENCES `vendedor` (`Cod_vendedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
