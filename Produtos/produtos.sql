-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/05/2026 às 14:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--
CREATE DATABASE IF NOT EXISTS `produtos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `categoria`, `descricao`) VALUES
(1, 'Eletrônico', 'Aparelhos eletrônicos, câmeras, tablets, notebooks, computadores e etc...'),
(2, 'Limpeza', 'Produtos e itens para limpeza'),
(3, 'Decoração', 'Itens para decoração'),
(4, 'Alimentos', 'Itens alimentícios para consumo'),
(5, 'Congelados', 'Itens congelados para consumo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens`
--

CREATE TABLE `itens` (
  `idproduto` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `datacadastro` date NOT NULL,
  `ativo` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itens`
--

INSERT INTO `itens` (`idproduto`, `idcategoria`, `nomeproduto`, `preco`, `quantidade`, `datacadastro`, `ativo`) VALUES
(1, 1, 'Celular', 989.00, 20, '2026-05-27', b'1'),
(2, 2, 'Cif', 14.00, 2, '2026-05-27', b'1'),
(3, 3, 'Planta Decorativa', 19.00, 1, '2026-05-27', b'1'),
(4, 4, 'Macarrão', 3.00, 3, '2026-05-30', b'1'),
(5, 5, 'Pão de Queijo', 16.00, 1, '2026-05-30', b'1'),
(6, 1, 'Notebook', 1200.00, 4, '2026-05-30', b'1'),
(7, 1, 'Tablet', 2.00, 2, '2026-05-30', b'1'),
(8, 2, 'Sabão em Pó', 22.00, 3, '2026-05-30', b'1'),
(9, 2, 'Água Sanitária', 3.00, 7, '2026-05-30', b'1'),
(10, 3, 'Cortina de Janela', 495.00, 10, '2026-05-30', b'1'),
(11, 3, 'Luminária', 25.00, 1, '2026-05-30', b'1'),
(12, 4, 'Arroz', 35.00, 3, '2026-05-30', b'1'),
(13, 4, 'Feijão', 10.00, 2, '2026-05-30', b'1'),
(14, 5, 'Pizza', 26.00, 3, '2026-05-30', b'1'),
(15, 5, 'Lasanha', 30.00, 1, '2026-05-30', b'1');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices de tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `itens_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
