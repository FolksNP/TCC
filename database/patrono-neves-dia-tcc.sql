-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 26-Maio-2023 às 14:11
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `patrononeves`
--
CREATE DATABASE IF NOT EXISTS `patrononeves` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `patrononeves`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `codAluno` int(11) NOT NULL AUTO_INCREMENT,
  `emailAluno` varchar(50) NOT NULL,
  `nomeAluno` varchar(50) NOT NULL,
  `senhaAluno` varchar(50) NOT NULL,
  `fotoAluno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codAluno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`codAluno`, `emailAluno`, `nomeAluno`, `senhaAluno`, `fotoAluno`) VALUES
(6, 'cursos@gmail.com', 'Kayky Cursos Tcc', '25d55ad283aa400af464c76d713c07ad', '../imgs/b839608d51ea0da41e97777f4fb90912.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

DROP TABLE IF EXISTS `atividades`;
CREATE TABLE IF NOT EXISTS `atividades` (
  `codAtividade` int(11) NOT NULL,
  `corTema` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codAtividade`),
  KEY `fk_Atividades_Conteudos1_idx` (`codAtividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

DROP TABLE IF EXISTS `aulas`;
CREATE TABLE IF NOT EXISTS `aulas` (
  `codAula` int(11) NOT NULL,
  `duracao` time NOT NULL,
  `video` varchar(100) NOT NULL,
  `referencias` varchar(100) DEFAULT NULL,
  `codCurso` int(11) NOT NULL,
  PRIMARY KEY (`codAula`),
  KEY `fkCursoCod_Aulas_idx` (`codCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
CREATE TABLE IF NOT EXISTS `avaliacoes` (
  `codComentario` int(11) NOT NULL AUTO_INCREMENT,
  `aluno` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `disponivel` tinyint(4) NOT NULL,
  `nota` int(11) NOT NULL,
  `publicacao` date NOT NULL,
  `texto` varchar(300) NOT NULL,
  PRIMARY KEY (`codComentario`),
  KEY `curso_idx` (`curso`),
  KEY `aluno_idx` (`aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `certificados`
--

DROP TABLE IF EXISTS `certificados`;
CREATE TABLE IF NOT EXISTS `certificados` (
  `codCertificado` int(11) NOT NULL AUTO_INCREMENT,
  `aluno` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `dataEmissao` date NOT NULL,
  PRIMARY KEY (`codCertificado`),
  KEY `aluno_idx` (`aluno`),
  KEY `curso_idx` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudos`
--

DROP TABLE IF EXISTS `conteudos`;
CREATE TABLE IF NOT EXISTS `conteudos` (
  `codConteudos` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `desc` varchar(120) NOT NULL,
  `numeracao` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  PRIMARY KEY (`codConteudos`),
  KEY `fkCursosCod_Conteudos_idx` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `codCurso` int(11) NOT NULL AUTO_INCREMENT,
  `tag` int(11) DEFAULT NULL,
  `professor` int(11) NOT NULL,
  `avaliacaoMedia` decimal(10,0) UNSIGNED ZEROFILL NOT NULL,
  `capaCurso` varchar(50) NOT NULL,
  `descCurso` varchar(500) NOT NULL,
  `nomeCurso` varchar(50) NOT NULL,
  `nivelCurso` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`codCurso`),
  UNIQUE KEY `idCurso_UNIQUE` (`codCurso`),
  KEY `fk_idx` (`professor`),
  KEY `fkTagsCod_Cursos_idx` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codCurso`, `tag`, `professor`, `avaliacaoMedia`, `capaCurso`, `descCurso`, `nomeCurso`, `nivelCurso`, `categoria`) VALUES
(34, NULL, 6, '0000000000', '../imgs/8aa2c7d30e8932026e871925e8c5ab30.jpg', 'O Curso de Manutenção de Controles é projetado para fornecer aos participantes o conhecimento prático e teórico necessário para reparar e arrumar diferentes tipos de controles de dispositivos eletrônicos. Seja um controle remoto de TV, console de videogame ou qualquer outro dispositivo com controle, este curso ensina as habilidades essenciais para solucionar problemas e restaurar o funcionamento adequado dos controles.', 'Conserto de Controle de Vídeo Game', 3, 'Manutenção'),
(40, NULL, 6, '0000000000', '../imgs/ab9ce0c984d99e50cc71e7b906ac2ac8.jpg', 'O curso \"Criação de Bordado de Roupa\" é projetado para ensinar os participantes as habilidades essenciais necessárias para bordar roupas de forma criativa e artística. Seja você um iniciante completo ou alguém com alguma experiência prévia em bordado, este curso oferece uma oportunidade para aprimorar suas técnicas e explorar novas possibilidades no mundo do bordado.', 'Criação de Bordado para Roupa', 1, 'Arte'),
(41, NULL, 6, '0000000000', '../imgs/d8b827f6a65dce1bcbfd4d0f5b1dc454.jpg', 'O curso de Criação de Churros é projetado para ensinar os participantes a dominar a arte de fazer churros deliciosos e irresistíveis. Durante o curso, os alunos serão conduzidos passo a passo por todo o processo de preparação da massa, recheio e coberturas, resultando em churros autênticos, crocantes por fora e macios por dentro.', 'Criação de churros', 2, 'Confeitaria'),
(42, NULL, 6, '0000000000', '../imgs/5b89caeab75675f726fc67e95519e47f.jpg', 'O curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Montador de Pequenos Móveis', 3, 'Marcenaria'),
(43, NULL, 6, '0000000000', '../imgs/fe6c7a98ee6411833014b9607eefb51b.jpg', 'O curso de Reparo de Fones de Ouvido é uma oportunidade para aprender as habilidades necessárias para consertar e solucionar problemas comuns em fones de ouvido. Este curso abrangente e prático oferece conhecimentos essenciais para lidar com os diferentes tipos de fones de ouvido disponíveis no mercado, desde modelos com fio até fones sem fio.', 'Conserto de Fone de Ouvido', 2, 'Manutenção'),
(44, NULL, 6, '0000000000', '../imgs/0c75ced14882354f823408f9cbdf3961.jpg', 'Nosso curso de tocar instrumentos musicais é projetado para aqueles que desejam aprender a tocar um instrumento de forma abrangente e eficaz. Seja você um iniciante completo ou alguém que já tenha alguma experiência, nosso curso abrange uma ampla variedade de instrumentos e estilos musicais para atender às suas preferências individuais.', 'Aprenda a Tocar Instrumentos', 1, 'Arte'),
(45, NULL, 6, '0000000000', '../imgs/b57c060dff68b23b0fc02f20d5450220.jpg', 'O curso de Churros Artesanais é um programa abrangente projetado para ensinar os participantes a dominar a arte de fazer churros deliciosos e irresistíveis. Durante o curso, os alunos serão conduzidos passo a passo por todo o processo de preparação da massa, recheio e coberturas, resultando em churros autênticos, crocantes por fora e macios por dentro.', 'Confecção de Pamonhas', 2, 'Confeitaria'),
(46, NULL, 6, '0000000000', '../imgs/283e2db65578f680159a52fcd5d404d8.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Criação de Bancos de Madeira', 1, 'Marcenaria'),
(47, NULL, 6, '0000000000', '../imgs/8b2e06cd167bf84edc09a79ca5b7499c.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Conserto de Computador', 1, 'Manutenção'),
(48, NULL, 6, '0000000000', '../imgs/6d1547d052bde2a3ccdfff6df9e36dd8.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Criação de Vaso de Flores', 1, 'Arte'),
(49, NULL, 6, '0000000000', '../imgs/7ca4abd86e58d63f67b0440f6d652398.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Confecção de Trufas', 1, 'Confeitaria'),
(50, NULL, 6, '0000000000', '../imgs/7702d5e0e9e75338eb939bb4cc34768e.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Criação de Barril De Vinharia', 1, 'Marcenaria'),
(51, NULL, 6, '0000000000', '../imgs/202a709303c5a9120106ba3312e8e3ac.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Limpeza de Computador', 1, 'Manutenção'),
(52, NULL, 6, '0000000000', '../imgs/ef61ee80227d64f8a99015224f9357e3.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Criação de Crochê', 1, 'Arte'),
(54, NULL, 6, '0000000000', '../imgs/b7376776eb5a395ec9ddc45378af0fd6.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Confecção de Bolo de Ninho de Morango', 1, 'Confeitaria'),
(55, NULL, 6, '0000000000', '../imgs/26828670ceccd4c8cdf751eac48edfb3.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Criação de Mesa Rústica', 1, 'Marcenaria'),
(56, NULL, 6, '0000000000', '../imgs/7753bb1ad331a3d9a8fcdc4112a807d3.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Conserto de Tomada', 2, 'Manutenção'),
(57, NULL, 6, '0000000000', '../imgs/72bf2b7188471d51685b54c63552f83a.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Criação de Gráfites', 2, 'Arte'),
(58, NULL, 6, '0000000000', '../imgs/4292a2abe6eaef67cc5edcf267915125.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Confecção de Pudim', 1, 'Confeitaria'),
(59, NULL, 6, '0000000000', '../imgs/f3e66e56273d34dcd10b279410fdb3cf.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Criação de Cerca de Madeira', 2, 'Marcenaria'),
(60, NULL, 6, '0000000000', '../imgs/30887bdf5047bc8c535b4bbddd129d99.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Conserto de Ventilador', 2, 'Manutenção'),
(61, NULL, 6, '0000000000', '../imgs/be9a69d8d8f49c4ca9efc8fc9385bacc.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Conceitos da Forográfia', 1, 'Arte'),
(62, NULL, 6, '0000000000', '../imgs/3ae0f11e36f81bd6573c8f1e8527a7da.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Confecção de Chocotone', 1, 'Confeitaria'),
(63, NULL, 6, '0000000000', '../imgs/705ac93a1865b1feea4dcec43ed3c066.jpg', '\r\nO curso de montador de pequenos móveis é projetado para ensinar habilidades práticas relacionadas à montagem e instalação de móveis de menor porte, como estantes, mesas, cadeiras, prateleiras, armários pequenos e outros itens similares. O objetivo principal do curso é capacitar os participantes a realizar a montagem correta e segura desses móveis, seguindo as instruções do fabricante e utilizando as ferramentas adequadas.', 'Criação de Canoa de Madeira', 1, 'Marcenaria'),
(65, NULL, 6, '0000000000', '../imgs/fe6c7a98ee6411833014b9607eefb51b.jpg', 'sd', 'teset', 1, 'Manutenção');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estatalunos`
--

DROP TABLE IF EXISTS `estatalunos`;
CREATE TABLE IF NOT EXISTS `estatalunos` (
  `codEstatAlunos` int(11) NOT NULL AUTO_INCREMENT,
  `aluno` int(11) NOT NULL,
  `aulasAssistidas` int(11) DEFAULT NULL,
  `descAluno` varchar(120) DEFAULT NULL,
  `exerciciosConcluidos` int(11) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `horasAssistidas` time DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `suportesAbertos` int(11) DEFAULT NULL,
  `youtube` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codEstatAlunos`),
  KEY `fkAlunoCod_InformacoesAdicionais_idx` (`aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estatcursos`
--

DROP TABLE IF EXISTS `estatcursos`;
CREATE TABLE IF NOT EXISTS `estatcursos` (
  `codEstatCurso` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `alunoAtivos` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `alunosGraduados` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `novosAlunos` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `totalAlunos` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `totalVizualizacao` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `mediaVizualizacao` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `vizualizacaoHoje` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `totalHorasAssistidas` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `notaMediaSeccao` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `mediaAvaliacoes` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `avaliacoesHoje` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `totalAvaliacoes` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  PRIMARY KEY (`codEstatCurso`),
  KEY `fkCursoCod_EstatCursos_idx` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE IF NOT EXISTS `matriculas` (
  `codMatricula` int(11) NOT NULL AUTO_INCREMENT,
  `matriculaAlunos` int(11) NOT NULL,
  `matriculaCursos` int(11) NOT NULL,
  `cursoProgresso` float UNSIGNED ZEROFILL NOT NULL,
  `dataMatricula` date NOT NULL,
  PRIMARY KEY (`codMatricula`),
  UNIQUE KEY `Matriculascol_UNIQUE` (`codMatricula`),
  KEY `matriculaAlunos_idx` (`matriculaAlunos`),
  KEY `matriculaCursos_idx` (`matriculaCursos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `moderadores`
--

DROP TABLE IF EXISTS `moderadores`;
CREATE TABLE IF NOT EXISTS `moderadores` (
  `codMod` int(11) NOT NULL AUTO_INCREMENT,
  `emailMod` varchar(50) NOT NULL,
  `senhaMod` varchar(50) NOT NULL,
  PRIMARY KEY (`codMod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `codProfessor` int(11) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `numAgencia` varchar(6) NOT NULL,
  `numConta` varchar(11) NOT NULL,
  PRIMARY KEY (`codProfessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`codProfessor`, `cpf`, `numAgencia`, `numConta`) VALUES
(6, '123.123.123-15', '5343-4', '4534643345');

-- --------------------------------------------------------

--
-- Estrutura da tabela `progressos`
--

DROP TABLE IF EXISTS `progressos`;
CREATE TABLE IF NOT EXISTS `progressos` (
  `codProgresso` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `seccao` int(11) NOT NULL,
  `dataConclusao` date DEFAULT NULL,
  PRIMARY KEY (`codProgresso`),
  KEY `matricula_idx` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `progressosatividades`
--

DROP TABLE IF EXISTS `progressosatividades`;
CREATE TABLE IF NOT EXISTS `progressosatividades` (
  `codProgressoAtividade` int(11) NOT NULL,
  `atividade` int(11) NOT NULL,
  `resposta` int(11) NOT NULL,
  PRIMARY KEY (`codProgressoAtividade`),
  KEY `fkAtividadeCod_idx` (`atividade`),
  KEY `fkRespostaCod_idx` (`resposta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `progressosaulas`
--

DROP TABLE IF EXISTS `progressosaulas`;
CREATE TABLE IF NOT EXISTS `progressosaulas` (
  `codProgressoAula` int(11) NOT NULL,
  `aula` int(11) NOT NULL,
  `progressaoVideo` float UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`codProgressoAula`),
  KEY `fkAulasCod_idx` (`aula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

DROP TABLE IF EXISTS `questoes`;
CREATE TABLE IF NOT EXISTS `questoes` (
  `codQuestao` int(11) NOT NULL,
  `atividade` int(11) NOT NULL,
  `explicacao` varchar(300) NOT NULL,
  `ordemQuestao` int(11) NOT NULL,
  `pergunta` varchar(300) NOT NULL,
  `tipo` varchar(12) NOT NULL,
  `imagem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codQuestao`),
  KEY `fk_codAtividade_idx` (`atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas`
--

DROP TABLE IF EXISTS `respostas`;
CREATE TABLE IF NOT EXISTS `respostas` (
  `codRespostas` int(11) NOT NULL,
  `questao` int(11) NOT NULL,
  `opcao` varchar(100) NOT NULL,
  `ordemResposta` int(11) NOT NULL,
  `respostaCorreta` tinyint(4) NOT NULL,
  PRIMARY KEY (`codRespostas`),
  KEY `questao_idx` (`questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `suportes`
--

DROP TABLE IF EXISTS `suportes`;
CREATE TABLE IF NOT EXISTS `suportes` (
  `codSuporte` int(11) NOT NULL,
  `moderador` int(11) NOT NULL,
  `topico` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `concluido` tinyint(4) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `disponivel` tinyint(4) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  PRIMARY KEY (`codSuporte`),
  KEY `mod_idx` (`moderador`),
  KEY `usuario_idx` (`usuario`),
  KEY `fkTopicosCod_Suportes_idx` (`topico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `codTag` int(11) NOT NULL,
  `descTags` varchar(120) NOT NULL,
  `tagNome` varchar(20) NOT NULL,
  PRIMARY KEY (`codTag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `topicos`
--

DROP TABLE IF EXISTS `topicos`;
CREATE TABLE IF NOT EXISTS `topicos` (
  `codTopicos` int(11) NOT NULL AUTO_INCREMENT,
  `descTopicos` varchar(120) NOT NULL,
  `topicosNome` varchar(20) NOT NULL,
  PRIMARY KEY (`codTopicos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atividades`
--
ALTER TABLE `atividades`
  ADD CONSTRAINT `fkConteudoCod_Atividades` FOREIGN KEY (`codAtividade`) REFERENCES `conteudos` (`codConteudos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `fkCursoCod_Aulas` FOREIGN KEY (`codCurso`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `fkAlunoCod_Avaliacoes` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`codAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkCursoCod_Avaliacoes` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `certificados`
--
ALTER TABLE `certificados`
  ADD CONSTRAINT `fkAlunoCod_Certificados` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`codAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkCursoCod_Certificados` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `conteudos`
--
ALTER TABLE `conteudos`
  ADD CONSTRAINT `fkCursosCod_Conteudos` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `fkProfessoresCod_Cursos` FOREIGN KEY (`professor`) REFERENCES `professores` (`codProfessor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkTagsCod_Cursos` FOREIGN KEY (`tag`) REFERENCES `tags` (`codTag`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `estatalunos`
--
ALTER TABLE `estatalunos`
  ADD CONSTRAINT `fkAlunoCod_InformacoesAdicionais` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`codAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `estatcursos`
--
ALTER TABLE `estatcursos`
  ADD CONSTRAINT `fkCursoCod_EstatCursos` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `fkAlunoCod_Matriculas` FOREIGN KEY (`matriculaAlunos`) REFERENCES `alunos` (`codAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkCursoCod_Matriculas` FOREIGN KEY (`matriculaCursos`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `fkAlunoCod_Professores` FOREIGN KEY (`codProfessor`) REFERENCES `alunos` (`codAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `progressos`
--
ALTER TABLE `progressos`
  ADD CONSTRAINT `fkMatriculaCod_Progressos` FOREIGN KEY (`matricula`) REFERENCES `matriculas` (`codMatricula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `progressosatividades`
--
ALTER TABLE `progressosatividades`
  ADD CONSTRAINT `fkAtividadeCod_ProgressosAtividades` FOREIGN KEY (`atividade`) REFERENCES `atividades` (`codAtividade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkProgressoAtividadeCod_ProgressosAtividades` FOREIGN KEY (`codProgressoAtividade`) REFERENCES `progressos` (`codProgresso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkRespostaCod_ProgressosAtividades` FOREIGN KEY (`resposta`) REFERENCES `respostas` (`codRespostas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `progressosaulas`
--
ALTER TABLE `progressosaulas`
  ADD CONSTRAINT `fkAulasCod_ProgressosAulas` FOREIGN KEY (`aula`) REFERENCES `aulas` (`codAula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkProgressoAulaCod_ProgressosAulas` FOREIGN KEY (`codProgressoAula`) REFERENCES `progressos` (`codProgresso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `questoes`
--
ALTER TABLE `questoes`
  ADD CONSTRAINT `fkCodAtividade_Questoes` FOREIGN KEY (`atividade`) REFERENCES `atividades` (`codAtividade`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `fkQuestaoCod_Respostas` FOREIGN KEY (`questao`) REFERENCES `questoes` (`codQuestao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `suportes`
--
ALTER TABLE `suportes`
  ADD CONSTRAINT `fkModCod_Suportes` FOREIGN KEY (`moderador`) REFERENCES `moderadores` (`codMod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkTopicosCod_Suportes` FOREIGN KEY (`topico`) REFERENCES `topicos` (`codTopicos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkUsuarioCod_Suportes` FOREIGN KEY (`usuario`) REFERENCES `alunos` (`codAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
