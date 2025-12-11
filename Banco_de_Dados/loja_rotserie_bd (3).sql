-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/11/2025 às 01:53
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
-- Banco de dados: `loja_rotserie_bd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cardapio_tb`
--

CREATE TABLE `cardapio_tb` (
  `id_item` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cardapio_tb`
--

INSERT INTO `cardapio_tb` (`id_item`, `id_produto`, `preco`, `categoria`) VALUES
(1, 1, 31.20, 'carnes'),
(2, 2, 45.00, 'caldos'),
(3, 3, 25.50, 'caldos'),
(4, 4, 35.50, 'carnes'),
(5, 5, 32.50, 'carnes'),
(6, 6, 28.00, 'massas'),
(8, 8, 34.00, 'massas'),
(9, 9, 36.50, 'massas'),
(10, 10, 8.50, 'acompanhamentos'),
(11, 11, 7.50, 'acompanhamentos'),
(12, 12, 12.00, 'acompanhamentos'),
(13, 13, 9.00, 'sobremesas'),
(14, 14, 22.50, 'sobremesas'),
(15, 15, 9.50, 'bebidas'),
(16, 16, 6.50, 'bebidas'),
(17, 17, 3.50, 'bebidas'),
(18, 18, 27.90, 'carnes'),
(19, 19, 33.50, 'carnes'),
(20, 20, 29.00, 'carnes'),
(21, 21, 26.90, 'carnes'),
(22, 22, 31.90, 'massas'),
(23, 23, 22.50, 'massas'),
(24, 24, 39.90, 'massas'),
(25, 25, 34.50, 'massas'),
(26, 26, 7.00, 'acompanhamentos'),
(27, 27, 8.50, 'acompanhamentos'),
(29, 29, 7.50, 'acompanhamentos'),
(30, 30, 10.00, 'sobremesas'),
(31, 31, 12.00, 'sobremesas'),
(32, 32, 4.00, 'sobremesas'),
(33, 33, 8.00, 'sobremesas'),
(34, 34, 6.00, 'bebidas'),
(35, 35, 5.50, 'bebidas'),
(36, 36, 5.00, 'bebidas'),
(37, 37, 10.00, 'bebidas'),
(41, 41, 39.90, 'massas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_tb`
--

CREATE TABLE `clientes_tb` (
  `id_clientes` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numWhats` varchar(20) DEFAULT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes_tb`
--

INSERT INTO `clientes_tb` (`id_clientes`, `nome`, `email`, `numWhats`, `senha`) VALUES
(1, 'Cliente Teste', '1@outlook.com', '1199999999', '1234'),
(2, 'Cliente Teste', '2@outlook.com', '11999999999', '1234'),
(3, 'Cliente Teste', '3@outlook.com', '11999999999', '1234'),
(4, 'guilherme', '4@outlook.com', '11976549697', 'sem_senha'),
(5, 'guilherme', '5@outlook.com', '11976549697', 'sem_senha'),
(6, 'guilherme', '6@outlook.com', '11976549697', 'sem_senha'),
(7, 'guilherme', '7@outlook.com', '11976549697', 'sem_senha'),
(8, 'guilherme', '8@outlook.com', '11976549697', 'sem_senha'),
(9, 'guilherme', '9@outlook.com', '11976549697', 'sem_senha'),
(10, 'guilherme', '10@outlook.com', '11976549697', 'sem_senha'),
(11, 'guilherme', '11@outlook.com', '11976549697', 'sem_senha'),
(12, 'a', '12@outlook.com', '', 'sem_senha'),
(13, 'a', '13@outlook.com', '', 'sem_senha'),
(14, 'a', '14@outlook.com', '', 'sem_senha'),
(15, 'a', '15@outlook.com', '', 'sem_senha'),
(16, 'a', '16@outlook.com', '', 'sem_senha'),
(17, 'a', '17@outlook.com', '', 'sem_senha'),
(18, 'a', '18@outlook.com', '', 'sem_senha'),
(19, 'a', '19@outlook.com', '', 'sem_senha'),
(20, 'a', '20@outlook.com', '', 'sem_senha'),
(21, 'a', '21@outlook.com', '', 'sem_senha'),
(22, 'a', '22@outlook.com', '', 'sem_senha'),
(23, 'a', '23@outlook.com', '', 'sem_senha'),
(24, 'a', '24@outlook.com', '', 'sem_senha'),
(25, 'a', '25@outlook.com', '', 'sem_senha'),
(26, 'a', '26@outlook.com', '', 'sem_senha'),
(27, 'a', '27@outlook.com', '', 'sem_senha'),
(28, 'a', '28@outlook.com', '', 'sem_senha'),
(29, 'a', '29@outlook.com', '', 'sem_senha'),
(30, 'a', '30@outlook.com', '', 'sem_senha'),
(31, 'cleb', '31@outlook.com', '', 'sem_senha'),
(32, 'cleb', '32@outlook.com', '', 'sem_senha'),
(33, 'cleb', '33@outlook.com', '', 'sem_senha'),
(34, 'a', '34@outlook.com', '', 'sem_senha'),
(35, 'a', '35@outlook.com', '', 'sem_senha'),
(36, 'a', '36@outlook.com', '', 'sem_senha'),
(37, 'a', '37@outlook.com', '', 'sem_senha'),
(38, 'a', '38@outlook.com', '', 'sem_senha'),
(39, 'a', '39@outlook.com', '', 'sem_senha'),
(40, 'a', '40@outlook.com', '', 'sem_senha'),
(51, 'a', '51@outlook.com', '', 'sem_senha'),
(52, 'a', '52@outlook.com', '', 'sem_senha'),
(53, 'a', '53@outlook.com', '', 'sem_senha'),
(54, 'a', '54@outlook.com', '', 'sem_senha'),
(55, 'a', '55@outlook.com', '', 'sem_senha'),
(56, 'a', '56@outlook.com', '11976549697', 'sem_senha'),
(57, 'a', '57@outlook.com', '11976549697', 'sem_senha'),
(58, 'a', '58@outlook.com', '11976549697', 'sem_senha'),
(59, '', '59@outlook.com', '', 'sem_senha'),
(60, '', '60@outlook.com', '', 'sem_senha'),
(65, 'a', '65@outlook.com', '11976549697', 'sem_senha'),
(66, 'a', '66@outlook.com', 'a', 'sem_senha'),
(67, 'a', '6@gmail.com', '11976549697', 'sem_senha'),
(68, 'a', '68@outlook.com', 'a', 'sem_senha'),
(69, 'a', '9@gmail.com', 'a', 'sem_senha'),
(77, 'Diogo', 'diogololiveira22@outlook.com', '+5511954947098', '$2y$10$vlMNhoem1qzzZTtXyhwUiuLIfdKdRWmXnh/WDk6cb8LYevmkIchu6'),
(79, 'digo', '123@outlook.com', '(11)95494-7098', '$2y$10$he1XzUPPnU94M9MNbvBl5eJq8c.1v.tX6Xpi2JulV31H0a7BCvfne'),
(81, 'diog', '123@gmail.com', '(11)99999-9999', '$2b$12$QbS8oD//jM/U5CTpb8561eOjJiYSzaBQBf/81pH7piNE4rsp2doNy'),
(82, 'AAA', '12@12.com', '(11)99999-9999', '$2b$12$8eseedGdQ1SDdNvxOS179.fHAgjfM94GF/V.G3XuHtcdaNjIqrKm6');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itempedido_tb`
--

CREATE TABLE `itempedido_tb` (
  `id_pedido` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `qnt_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itempedido_tb`
--

INSERT INTO `itempedido_tb` (`id_pedido`, `id_item`, `qnt_item`) VALUES
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(11, 11, 1),
(11, 12, 1),
(12, 2, 1),
(13, 1, 1),
(13, 4, 1),
(13, 36, 1),
(14, 2, 2),
(15, 35, 1),
(16, 1, 1),
(16, 2, 2),
(17, 2, 2),
(18, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido_tb`
--

CREATE TABLE `pedido_tb` (
  `id_pedido` int(11) NOT NULL,
  `id_clientes` int(11) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  `Rua` varchar(50) DEFAULT NULL,
  `numCasa` int(11) DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `dataPedido` datetime NOT NULL,
  `tipoEntrega` varchar(20) NOT NULL,
  `observacao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido_tb`
--

INSERT INTO `pedido_tb` (`id_pedido`, `id_clientes`, `telefone`, `status`, `valorTotal`, `Rua`, `numCasa`, `Bairro`, `dataPedido`, `tipoEntrega`, `observacao`) VALUES
(2, 3, '', 'pendente', 31.20, 'Rua Teste', 0, 'Bairro Teste', '2025-11-15 22:58:03', '', NULL),
(3, 65, '11976549697', 'pendente', 31.20, NULL, NULL, NULL, '2025-11-16 01:33:12', 'retirada', 'a'),
(4, 66, 'a', 'pendente', 31.20, 'Rua Xingu', 365, 'val paraiso', '2025-11-16 01:37:07', 'entrega', 'a'),
(5, 67, '11976549697', 'pendente', 31.20, NULL, NULL, NULL, '2025-11-16 03:15:33', 'retirada', 'a'),
(6, 68, 'a', 'pronto', 31.20, NULL, NULL, NULL, '2025-11-16 11:31:32', 'retirada', 'a'),
(7, 69, 'a', 'em preparo', 31.20, 'Rua Xingu', 365, 'a', '2025-11-16 11:31:56', 'entrega', 'a'),
(11, 77, '+5511954947098', 'pendente', 19.50, NULL, NULL, NULL, '2025-11-17 20:54:16', '0', 'jalim'),
(12, 77, '+5511954947098', 'pendente', 45.00, NULL, NULL, NULL, '2025-11-17 20:56:22', '0', 'jalim'),
(13, 77, '+5511954947098', 'pendente', 71.70, NULL, NULL, NULL, '2025-11-17 20:57:42', '0', 'tira que eu vou cagar'),
(14, 79, '(11)95494-7098', 'pendente', 90.00, 'Auriverde', 58, '0', '2025-11-25 09:39:28', '0', 'Teste'),
(15, 77, '(11)95494-7098', 'pendente', 10.50, NULL, NULL, NULL, '2025-11-25 10:00:00', 'nao_especificado', NULL),
(16, 77, '(11)95494-7098', 'pendente', 121.20, NULL, NULL, NULL, '2025-11-24 10:00:00', 'nao_especificado', NULL),
(17, 77, '(11)95494-7098', 'pendente', 90.00, NULL, NULL, NULL, '2025-11-24 10:00:00', 'nao_especificado', NULL),
(18, 81, '(11)99999-9999', 'pendente', 90.00, NULL, NULL, NULL, '2025-11-24 10:00:00', 'nao_especificado', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_tb`
--

CREATE TABLE `produtos_tb` (
  `id_produto` int(11) NOT NULL,
  `nomeProduto` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `dt_Validade` date DEFAULT NULL,
  `dt_Fabricacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos_tb`
--

INSERT INTO `produtos_tb` (`id_produto`, `nomeProduto`, `descricao`, `imagem`, `dt_Validade`, `dt_Fabricacao`) VALUES
(1, 'Bifé à Milanesa', 'Marmita de bifé à milanesa crocante, acompanhada de arroz soltinho, feijão caseiro e batatas fritas douradas. O prato combina sabor e tradição, com aquele tempero de casa que desperta lembranças de almoço em família.', 'img/Milanesa.jpg', NULL, NULL),
(2, 'Dobradinha - 600g', 'Dobradinha preparada com cuidado, cozida lentamente em caldo encorpado com feijão-branco, paio e temperos selecionados. Um prato tradicional e marcante.', 'img/dobradinha.jpg', NULL, NULL),
(3, 'Omelete', 'Omelete leve e saborosa, feita com ovos frescos, queijo derretido e tomates selecionados, finalizado com cheiro-verde.', 'img/omelete.jpg', NULL, NULL),
(4, 'Bifé à Parmegiana', 'Nosso bifé à parmegiana é empanado com perfeição, coberto por molho artesanal e queijo derretido.', 'img/parmegiana_carne.jpg', NULL, NULL),
(5, 'Filé de Frango à Parmegiana', 'Filé de frango empanado e suculento, finalizado com queijo gratinado e molho sugo.', 'img/parmegiana_frango.jpg', NULL, NULL),
(6, 'Panqueca de Carne', 'Panquecas finas recheadas com carne moída bem temperada e molho vermelho caseiro.', 'img/panqueca_carne.jpg', NULL, NULL),
(7, 'Lasanha Presunto e Queijo', 'Camadas de massa com presunto, queijo e molho de tomate artesanal.', 'img/Lasanha.jpg', NULL, NULL),
(8, 'Nhoque ao Sugo', 'Nhoque artesanal leve e macio servido com molho sugo de tomates frescos.', 'img/nhoque.jpg', NULL, NULL),
(9, 'Rondelli 4 Queijos', 'Rondelli recheado com mistura de quatro queijos e gratinado ao forno.', 'img/rondelli.jpg', NULL, NULL),
(10, 'Arroz Branco', 'Arroz branco soltinho, temperado com alho e cebola dourados.', 'img/arroz.jpg', NULL, NULL),
(11, 'Feijão Carioca', 'Feijão caseiro cozido lentamente com temperos frescos.', 'img/feijao.jpg', NULL, NULL),
(12, 'Batata Frita', 'Batatas fritas crocantes e douradas, preparadas na hora.', 'img/batata.jpg', NULL, NULL),
(13, 'Pudim de Leite', 'Pudim cremoso com calda de caramelo dourada.', 'img/pudim.jpg', NULL, NULL),
(14, 'Bombom de Morango', 'Morango fresco envolto em brigadeiro branco e coberto com chocolate.', 'img/bombomdemorango.jpg', NULL, NULL),
(15, 'Refrigerante 2L', 'Refrigerante gelado de 2L. Coca-Cola, Guaraná ou Pepsi.', 'img/Refri2l.jpg', NULL, NULL),
(16, 'Suco Natural 500ml', 'Suco natural feito na hora, sem conservantes.', 'img/suco.jpg', NULL, NULL),
(17, 'Água Mineral 1.5L', 'Água mineral pura, gelada e refrescante.', 'img/agua.jpg', NULL, NULL),
(18, 'Frango Grelhado', 'Filé de frango grelhado com tempero caseiro leve.', 'img/frango_grelhado.jpeg', NULL, NULL),
(19, 'Carne de Panela', 'Carne cozida lentamente com legumes, extremamente macia.', 'img/carne_panela.jpg', NULL, NULL),
(20, 'Bife Acebolado', 'Bife bovino com cebolas caramelizadas.', 'img/bife-acebolado.jfif', NULL, NULL),
(21, 'Frango à Passarinho', 'Cortes crocantes de frango temperado, perfeito para compartilhar.', 'img/Frango-a-Passarinho.webp', NULL, NULL),
(22, 'Espaguete à Bolonhesa', 'Espaguete com molho bolonhesa caseiro.', 'img/espaguete_bolonhesa.jpeg', NULL, NULL),
(23, 'Macarrão Alho e Óleo', 'Macarrão simples e saboroso salteado no alho.', 'img/alho_oleo.png', NULL, NULL),
(24, 'Lasanha de Frango com Catupiry', 'Lasanha artesanal recheada com frango e catupiry cremoso.', 'img/lasanha_frango_catupiry.jfif', NULL, NULL),
(25, 'Canelone Presunto e Queijo', 'Canelone com recheio tradicional e molho branco.', 'img/canelone_presunto.jpg', NULL, NULL),
(26, 'Farofa Caseira', 'Farofa crocante com bacon e temperos.', 'img/farofa_caseira.jpg', NULL, NULL),
(27, 'Salada de Maionese', 'Salada cremosa com batata, cenoura e ervilhas.', 'img/salada_maionese.jfif', NULL, NULL),
(28, 'Legumes Refogados', 'Legumes frescos salteados no azeite.', 'img/legumes_refogados.webp', NULL, NULL),
(29, 'Purê de Batata', 'Purê cremoso com manteiga e noz-moscada.', 'img/pure_batata.jpg', NULL, NULL),
(30, 'Mousse de Maracujá', 'Mousse leve de maracujá com calda especial.', 'img/mousse_maracuja.jfif', NULL, NULL),
(31, 'Torta de Limão', 'Torta com base crocante e merengue dourado.', 'img/torta_limao.jfif', NULL, NULL),
(32, 'Brigadeiro Tradicional', 'Brigadeiro clássico com granulado.', 'img/brigadeiro.jpg', NULL, NULL),
(33, 'Romeu e Julieta', 'Goiabada com queijo fresco, clássico brasileiro.', 'img/romeu_julieta.jpg', NULL, NULL),
(34, 'Suco de Laranja Natural', 'Suco 100% laranja feito na hora.', 'img/suco_laranja.webp', NULL, NULL),
(35, 'Coca-Cola Lata 350ml', 'Coca-Cola gelada na lata.', 'img/coca-cola-lata.webp', NULL, NULL),
(36, 'Guaraná Antarctica Lata', 'Guaraná Antarctica gelado.', 'img/guarana_lata.webp', NULL, NULL),
(37, 'Cerveja Heineken Long Neck', 'Cerveja long neck puro malte.', 'img/cerveja.jfif', NULL, NULL),
(38, 'cca', 'cacaaa', '<br /><b>Warning</b>:  Undefined array key ', NULL, NULL),
(39, 'Lasanha Presunto e Queijo', 'Lasanha Presunto e Queijo', 'img/Lasanha.jpg', NULL, NULL),
(40, 'Lasanha Presunto e Queijo', 'Lasanha Presunto e Queijo', 'img/Lasanha.jpg', NULL, NULL),
(41, 'Lasanha Presunto e Queijo', 'Lasanha Presunto e Queijo', 'img/Lasanha.jpg', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cardapio_tb`
--
ALTER TABLE `cardapio_tb`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices de tabela `clientes_tb`
--
ALTER TABLE `clientes_tb`
  ADD PRIMARY KEY (`id_clientes`),
  ADD UNIQUE KEY `idx_email_unico` (`email`);

--
-- Índices de tabela `itempedido_tb`
--
ALTER TABLE `itempedido_tb`
  ADD PRIMARY KEY (`id_pedido`,`id_item`),
  ADD KEY `id_item` (`id_item`);

--
-- Índices de tabela `pedido_tb`
--
ALTER TABLE `pedido_tb`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_clientes` (`id_clientes`);

--
-- Índices de tabela `produtos_tb`
--
ALTER TABLE `produtos_tb`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cardapio_tb`
--
ALTER TABLE `cardapio_tb`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `clientes_tb`
--
ALTER TABLE `clientes_tb`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de tabela `pedido_tb`
--
ALTER TABLE `pedido_tb`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `produtos_tb`
--
ALTER TABLE `produtos_tb`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cardapio_tb`
--
ALTER TABLE `cardapio_tb`
  ADD CONSTRAINT `cardapio_tb_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos_tb` (`id_produto`);

--
-- Restrições para tabelas `itempedido_tb`
--
ALTER TABLE `itempedido_tb`
  ADD CONSTRAINT `itempedido_tb_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido_tb` (`id_pedido`),
  ADD CONSTRAINT `itempedido_tb_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `cardapio_tb` (`id_item`);

--
-- Restrições para tabelas `pedido_tb`
--
ALTER TABLE `pedido_tb`
  ADD CONSTRAINT `pedido_tb_ibfk_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes_tb` (`id_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
