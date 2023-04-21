-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Abr-2023 às 16:52
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tempestoriginal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `avaliacao_jogo` float NOT NULL,
  `data_avaliacao` datetime NOT NULL,
  `comentario_jogo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `id` int(11) NOT NULL,
  `nome_jogo` varchar(100) NOT NULL,
  `descricao_jogo` varchar(300) NOT NULL,
  `genero_jogo` varchar(50) NOT NULL,
  `duracao_media_jogo` time NOT NULL,
  `subgenero_jogo` varchar(50) NOT NULL,
  `plataforma_jogo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`id`, `nome_jogo`, `descricao_jogo`, `genero_jogo`, `duracao_media_jogo`, `subgenero_jogo`, `plataforma_jogo`) VALUES
(3, 'Red Dead Redemption 2', 'A história se passa em 1899 em uma representação ficcional do oeste, meio-oeste e sul dos Estados Unidos e acompanha o fora da lei Arthur Morgan, que precisa lidar com o declínio do Velho Oeste e sobreviver à perseguição de forças governamentais, gangues rivais e outros adversários.', 'Aventura', '80:00:00', 'Mundo-Aberto', 'PC, PlayStation, Xbox'),
(4, 'Doom Eternal', 'Doom Eternal é um jogo eletrônico de tiro em primeira pessoa desenvolvido pela id Software e publicado pela Bethesda Softworks. Foi lançado em 20 de março de 2020 para Google Stadia, Microsoft Windows, PlayStation 4 e Xbox One e em 08 de dezembro de 2020 para Nintendo Switch.', 'Tiro', '20:00:00', 'Primeira-Pessoa', 'PC, PlayStation, Xbox, Switch'),
(5, 'Call of Duty: Modern Warfare II', 'O Modern Warfare® II é lançado com uma campanha global para um jogador, combate Multijogador imersivo e um modo melhorado de jogo de Operações Especiais trazendo jogabilidade tática cooperativa. Você também consegue acesso ao Call of Duty®: Warzone™ 2.0, a mais nova experiência Battle Royale.', 'Tiro', '10:00:00', 'Primeira-Pessoa', 'PC, PlayStation, Xbox'),
(6, 'God of War Ragnarok', 'Um dos jogos mais esperados do ano, God of War: Ragnarök já está disponível para PS4 e PS5. O game da Sony, produzido pelo Santa Monica Studio, traz a mais nova aventura de Kratos, o Deus da Guerra, e seu filho, Atreus, tentando impedir o fim dos Nove Reinos, que tem relação com deuses e entidades d', 'Aventura', '39:00:00', 'Hack and Slash', 'PlayStation'),
(7, 'Portal 2', 'Portal 2 é um livro digital que te leva às profundezas dos escritórios secretos da Valve, para um visão clara do processo criativo por trás do Portal 2.', 'Plataforma', '13:00:00', 'Puzzle', 'PC, PlayStation, Xbox, Switch'),
(8, 'Limbo', 'O menino procura sua irmã desaparecida, e encontra apenas alguns personagens humanos que atacam e fogem dele.', 'Plataforma', '04:00:00', 'Puzzle', 'PC, PlayStation, Xbox, Switch'),
(9, 'Left 4 Dead 2', 'Left 4 Dead começa na Pensilvânia, após o surto de um vírus letal conhecido apenas como \"Green Flu\", um vírus altamente transmissível que se manifesta no indivíduo contaminado causando extrema agressão, com um aumento maciço de violência e com a perda de muitas das funções cerebrais superiores da su', 'Tiro', '24:00:00', 'Horror', 'PC, Xbox'),
(10, 'Five Nights at Freddy’s Security Breach', 'Em Five Nights at Freddy\'s: Security Breach, você joga como Gregory, um garotinho que ficou preso à noite no Freddy Fazbear\'s Mega Pizzaplex. Com a ajuda do próprio Freddy, Gregory deve desvendar os segredos do Pizzaplex, descobrir a verdade e sobreviver até o amanhecer.', 'Horror', '16:00:00', 'Puzzle', 'PC, PlayStation'),
(11, 'Friday the 13th: The Game', 'Friday the 13th é um jogo de horror e sobrevivência em terceira pessoa. Nele, os jogadores estarão na pele de um adolescente ou na pele de Jason Voorhees. Você e outros seis jogadores vão fazer o que for possível para escapar e sobreviver enquanto um assassino te persegue para te matar.', 'Sobrevivência', '39:00:00', 'Horror', 'PC, PlayStation, Xbox, Switch'),
(12, 'Minecraft', 'Minecraft é um jogo eletrônico lançado em 2009 que consiste em sobreviver em um mundo formado (majoritariamente) por blocos cúbicos. Steve, o personagem controlado pelo jogador, inicia o jogo em um ambiente repleto de árvores, montanhas, rios.', 'Sobrevivência', '170:00:00', 'Aventura', 'PC, PlayStation, Xbox, Switch'),
(13, 'The Forest', 'O The Forest é um jogo de terror e suspense. Depois de um acidente de avião, o jogador se vê em uma ilha aparentemente deserta. O dilema pela sobrevivência vira terror quando ele descobre que não está sozinho na ilha.', 'Sobrevivência', '28:00:00', 'Horror', 'PC, PlayStation'),
(14, 'Hogwarts Legacy', 'Hogwarts Legacy é um RPG de ação e mundo aberto ambientado no mundo apresentado nos livros de Harry Potter. Agora você pode assumir o controle da ação e criar sua própria aventura.', 'Aventura', '42:00:00', 'Mundo-Aberto', 'PC, PlayStation, Xbox, Switch'),
(15, 'Street Fighter V', 'Anos depois que ele se sacrificou para impedir M. Bison, Charlie Nash acorda em um túmulo e é instruído por uma jovem chamada Helen a recuperar um item de seu velho amigo Guile que o ajudará a destruir Bison.', 'Luta', '20:00:00', '', 'PC, PlayStation'),
(16, 'Mortal Kombat 11', 'Dois anos após os evento de Mortal Kombat X, Kronika, a Titã do Tempo e mãe do deus Shinnok, põe em prática um plano de reiniciar a história usando a Ampulheta, um artefato capaz de controlar livremente o tempo, motivada pela mudança que Raiden causou na linha do tempo com a mensagem \"Ele deve vence', 'Luta', '17:00:00', 'Horror', 'PC, PlayStation, Xbox, Switch'),
(17, 'Hollow Knight', 'O título traz um pequeno cavaleiro em uma jornada para selar uma infecção maléfica capaz de destruir todo o seu mundo.', 'Plataforma', '41:00:00', 'Aventura', 'PC, PlayStation, Xbox, Switch'),
(18, 'Cyberpunk 2077', 'Cyberpunk 2077 é uma história de ação e aventura de mundo aberto ambientada em Night City, uma megalópole obcecada por poder, glamour e biomodificações. Você joga como V, um mercenário fora da lei atrás de um implante único que carrega a chave da imortalidade.', 'Tiro', '60:00:00', 'RPG', 'PC, PlayStation, Xbox'),
(19, 'The Legend of Zelda: Breath of the Wild', 'No passado, por repetidas vezes, o mal conhecido como Calamity Ganon ameaçou o Reino de Hyrule, sempre sendo derrotado pela princesa Zelda, descendente da deusa Hylia, com a ajuda de seu fiel protetor Link.', 'Aventura', '98:00:00', 'Mundo-Aberto', 'Switch'),
(20, 'Persona 5 Royal', 'Persona 5 apresenta, em sua história, um grupo de justiceiros chamados Phantom Thieves, os ladrões de corações. Eles têm o poder sobrenatural de invadir a mente das pessoas, fisicamente, que são apresentadas em formato de palácios, com inimigos e outros desafios. Estes palácios mostram o verdadeiro ', 'Ação', '123:00:00', 'RPG', 'PC, PlayStation, Xbox, Switch'),
(21, 'Stardew Valley', 'Stardew Valley é um RPG sem fim da vida no campo! Você herdou a antiga fazenda de seu avô no Vale do Orvalho. Equipado com ferramentas de segunda mão e algumas moedas, você irá começar sua nova vida.', 'Aventura', '90:00:00', 'RPG', 'PC, PlayStation, Xbox, Switch'),
(22, 'Nier: Automata', 'Nier: Automata é um RPG eletrônico de ação que se passa em uma Terra pós-apocalíptica milhares de anos depois do Nier original. O jogador assume o controle de androides de combate em um ambiente de mundo aberto.', 'Ação', '37:00:00', 'Hack and Slash', 'PC, PlayStation, Xbox, Switch');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `avatar` blob NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_perfil` (`id_perfil`),
  ADD KEY `id_jogo` (`id_jogo`);

--
-- Índices para tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id`),
  ADD CONSTRAINT `avaliacao_ibfk_2` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
