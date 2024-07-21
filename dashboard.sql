-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/04/2024 às 21:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dashboard`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_cliente`
--

CREATE TABLE `cadastro_cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpfcnpj` varchar(30) NOT NULL,
  `login` varchar(40) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `cadastro` datetime NOT NULL,
  `email` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_config`
--

CREATE TABLE `cadastro_config` (
  `id` int(11) NOT NULL,
  `CNPJ` varchar(30) NOT NULL,
  `razao_social` varchar(120) NOT NULL,
  `fantasia` varchar(120) NOT NULL,
  `proprietario` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `ULTIMA_ATUALIZACAO_APP` datetime NOT NULL,
  `intervalo` varchar(5) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_empresa`
--

CREATE TABLE `cadastro_empresa` (
  `id` int(11) NOT NULL,
  `CNPJ` varchar(14) NOT NULL,
  `razao_social` varchar(200) NOT NULL,
  `fanstasia` varchar(200) DEFAULT NULL,
  `proprietario` varchar(200) DEFAULT NULL,
  `email` varchar(400) DEFAULT NULL,
  `pass` varchar(120) DEFAULT NULL,
  `ULTIMA_ATUALIZACAO_APP` datetime DEFAULT NULL,
  `JSON_APP` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_info`
--

CREATE TABLE `cadastro_info` (
  `id` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `datain` datetime DEFAULT NULL,
  `datafin` datetime DEFAULT NULL,
  `info` varchar(150) DEFAULT NULL,
  `obs` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_produto`
--

CREATE TABLE `cadastro_produto` (
  `id` int(11) NOT NULL,
  `barra` varchar(20) DEFAULT NULL,
  `nome` varchar(120) NOT NULL,
  `valor` varchar(20) NOT NULL,
  `atribuicao1` varchar(100) DEFAULT NULL,
  `atribuicao2` varchar(100) DEFAULT NULL,
  `atribuicao3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_usuario`
--

CREATE TABLE `cadastro_usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `data` datetime NOT NULL,
  `foto` blob DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_vendas`
--

CREATE TABLE `cadastro_vendas` (
  `id` int(11) NOT NULL,
  `codvenda` varchar(20) DEFAULT NULL,
  `codcliente` varchar(20) DEFAULT NULL,
  `codproduto` varchar(20) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `datavendain` datetime DEFAULT NULL,
  `datavendafin` datetime DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro_cliente`
--
ALTER TABLE `cadastro_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_config`
--
ALTER TABLE `cadastro_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_empresa`
--
ALTER TABLE `cadastro_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_info`
--
ALTER TABLE `cadastro_info`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_produto`
--
ALTER TABLE `cadastro_produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_usuario`
--
ALTER TABLE `cadastro_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_vendas`
--
ALTER TABLE `cadastro_vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_cliente`
--
ALTER TABLE `cadastro_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastro_config`
--
ALTER TABLE `cadastro_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastro_empresa`
--
ALTER TABLE `cadastro_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastro_info`
--
ALTER TABLE `cadastro_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastro_produto`
--
ALTER TABLE `cadastro_produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastro_usuario`
--
ALTER TABLE `cadastro_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastro_vendas`
--
ALTER TABLE `cadastro_vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
