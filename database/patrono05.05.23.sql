-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 05-Maio-2023 às 20:30
-- Versão do servidor: 8.0.27
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
-- Estrutura da tabela `alocacoespacotes`
--

DROP TABLE IF EXISTS `alocacoespacotes`;
CREATE TABLE IF NOT EXISTS `alocacoespacotes` (
  `codAlocacaoCurso` int NOT NULL,
  `curso` int NOT NULL,
  `pacote` int NOT NULL,
  PRIMARY KEY (`codAlocacaoCurso`),
  KEY `curso_idx` (`curso`),
  KEY `pacote_idx` (`pacote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alocacoestags`
--

DROP TABLE IF EXISTS `alocacoestags`;
CREATE TABLE IF NOT EXISTS `alocacoestags` (
  `codAlocacaoTag` int NOT NULL,
  `curso` int NOT NULL,
  `tag` int NOT NULL,
  PRIMARY KEY (`codAlocacaoTag`),
  KEY `tag_idx` (`tag`),
  KEY `curso_idx` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `codAluno` int NOT NULL AUTO_INCREMENT,
  `emailAluno` varchar(50) NOT NULL,
  `nomeAluno` varchar(50) NOT NULL,
  `senhaAluno` varchar(50) NOT NULL,
  `fotoAluno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codAluno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`codAluno`, `emailAluno`, `nomeAluno`, `senhaAluno`, `fotoAluno`) VALUES
(1, 'kayky@gmail', 'kayyky', '202cb962ac59075b964b07152d234b70', '../imgs/2c95b6d15072473b01a5683aa9d45343.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

DROP TABLE IF EXISTS `atividades`;
CREATE TABLE IF NOT EXISTS `atividades` (
  `codAtividade` int NOT NULL,
  `corTema` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codAtividade`),
  KEY `fk_Atividades_Conteudos1_idx` (`codAtividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

DROP TABLE IF EXISTS `aulas`;
CREATE TABLE IF NOT EXISTS `aulas` (
  `codAula` int NOT NULL,
  `duracao` time NOT NULL,
  `video` varchar(100) NOT NULL,
  `referencias` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codAula`),
  KEY `fk_Aulas_Conteudos1_idx` (`codAula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
CREATE TABLE IF NOT EXISTS `avaliacoes` (
  `codComentario` int NOT NULL AUTO_INCREMENT,
  `aluno` int NOT NULL,
  `curso` int NOT NULL,
  `disponivel` tinyint NOT NULL,
  `nota` int NOT NULL,
  `publicacao` date NOT NULL,
  `texto` varchar(300) NOT NULL,
  PRIMARY KEY (`codComentario`),
  KEY `curso_idx` (`curso`),
  KEY `aluno_idx` (`aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `certificados`
--

DROP TABLE IF EXISTS `certificados`;
CREATE TABLE IF NOT EXISTS `certificados` (
  `codCertificado` int NOT NULL AUTO_INCREMENT,
  `aluno` int NOT NULL,
  `curso` int NOT NULL,
  `dataEmissao` date NOT NULL,
  PRIMARY KEY (`codCertificado`),
  KEY `aluno_idx` (`aluno`),
  KEY `curso_idx` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudos`
--

DROP TABLE IF EXISTS `conteudos`;
CREATE TABLE IF NOT EXISTS `conteudos` (
  `codConteudos` int NOT NULL,
  `seccao` int NOT NULL,
  `desc` varchar(120) NOT NULL,
  `numeracao` int NOT NULL,
  `titulo` varchar(50) NOT NULL,
  PRIMARY KEY (`codConteudos`),
  KEY `seccao_idx` (`seccao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `codCurso` int NOT NULL AUTO_INCREMENT,
  `avaliacaoMedia` decimal(10,0) UNSIGNED ZEROFILL NOT NULL,
  `capaCurso` varchar(50) NOT NULL,
  `comentarios` varchar(300) NOT NULL,
  `descCurso` varchar(300) NOT NULL,
  `nomeCurso` varchar(50) NOT NULL,
  `nivelCurso` int NOT NULL,
  PRIMARY KEY (`codCurso`),
  UNIQUE KEY `idCurso_UNIQUE` (`codCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codCurso`, `avaliacaoMedia`, `capaCurso`, `comentarios`, `descCurso`, `nomeCurso`, `nivelCurso`) VALUES
(1, '0000000000', '../imgs/e13fed4ca1869b93307b82894ba587e3.jpg', 'ameeeeeeei', 'Neste curso você irá aprender bla bla bla bla bla bla', 'Fundamentos JavaScript', 1),
(3, '0000000000', '../imgs/28be4cd2ccb54dfc21d6cfa700ab07cf.jpg', 'ameeeeeeei', 'Neste curso você irá aprender os fundamentos da linguagem de marcação HTML ', 'Fundamentos HTML', 1),
(4, '0000000000', '../imgs/9fc9e215becbdbaa1a9da77e704abc31.jpg', 'ameeeeeeei', 'Neste curso você irá aprender a estilizar o que fez no curso de HTML', 'Fundamentos CSS', 1),
(5, '0000000000', '../imgs/679f826f5bf60f46d8616a7cc7a7479c.jpg', 'ameeeeeeei', 'Neste curso você irá aprender os fundamentos da linguagem de lado servidor PHP', 'Fundamentos PHP', 2),
(8, '0000000000', '../imgs/21a7201a24a91725b7e36c4abd16bc70.jpg', 'ameeeeeeei', 'Neste curso você irá aprender a fazer aquele bolo de ninho que sempre sonhou!', 'Confecção de Bolo de Ninho', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estatalunos`
--

DROP TABLE IF EXISTS `estatalunos`;
CREATE TABLE IF NOT EXISTS `estatalunos` (
  `codEstatAlunos` int NOT NULL AUTO_INCREMENT,
  `aluno` int NOT NULL,
  `aulasAssistidas` int DEFAULT NULL,
  `descAluno` varchar(120) DEFAULT NULL,
  `exerciciosConcluidos` int DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `horasAssistidas` time DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `suportesAbertos` int DEFAULT NULL,
  `youtube` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codEstatAlunos`),
  KEY `fkAlunoCod_InformacoesAdicionais_idx` (`aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estatcursos`
--

DROP TABLE IF EXISTS `estatcursos`;
CREATE TABLE IF NOT EXISTS `estatcursos` (
  `codEstatCurso` int NOT NULL,
  `curso` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE IF NOT EXISTS `matriculas` (
  `codMatricula` int NOT NULL AUTO_INCREMENT,
  `matriculaAlunos` int NOT NULL,
  `matriculaCursos` int NOT NULL,
  `cursoProgresso` float UNSIGNED ZEROFILL NOT NULL,
  `dataMatricula` date NOT NULL,
  PRIMARY KEY (`codMatricula`),
  UNIQUE KEY `Matriculascol_UNIQUE` (`codMatricula`),
  KEY `matriculaAlunos_idx` (`matriculaAlunos`),
  KEY `matriculaCursos_idx` (`matriculaCursos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
CREATE TABLE IF NOT EXISTS `mensagens` (
  `codMensagem` int NOT NULL AUTO_INCREMENT,
  `aluno` int NOT NULL,
  `professor` int NOT NULL,
  `disponivel` tinyint NOT NULL,
  `texto` varchar(300) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  PRIMARY KEY (`codMensagem`),
  KEY `aluno_idx` (`aluno`),
  KEY `professor_idx` (`professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `moderadores`
--

DROP TABLE IF EXISTS `moderadores`;
CREATE TABLE IF NOT EXISTS `moderadores` (
  `codMod` int NOT NULL AUTO_INCREMENT,
  `emailMod` varchar(50) NOT NULL,
  `senhaMod` varchar(50) NOT NULL,
  PRIMARY KEY (`codMod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacotes`
--

DROP TABLE IF EXISTS `pacotes`;
CREATE TABLE IF NOT EXISTS `pacotes` (
  `codPacotes` int NOT NULL,
  `descPacotes` varchar(120) NOT NULL,
  `pacoteNome` varchar(50) NOT NULL,
  PRIMARY KEY (`codPacotes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professorcurso`
--

DROP TABLE IF EXISTS `professorcurso`;
CREATE TABLE IF NOT EXISTS `professorcurso` (
  `codProfCurso` int NOT NULL AUTO_INCREMENT,
  `curso` int NOT NULL,
  `professor` int NOT NULL,
  PRIMARY KEY (`codProfCurso`),
  KEY `professorCursos_idx` (`curso`),
  KEY `professor_idx` (`professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `codProfessor` int NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `numAgencia` varchar(4) NOT NULL,
  `numConta` varchar(8) NOT NULL,
  PRIMARY KEY (`codProfessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`codProfessor`, `cpf`, `numAgencia`, `numConta`) VALUES
(1, '1231231', '3123', '123123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `progressos`
--

DROP TABLE IF EXISTS `progressos`;
CREATE TABLE IF NOT EXISTS `progressos` (
  `codProgresso` int NOT NULL AUTO_INCREMENT,
  `matricula` int NOT NULL,
  `seccao` int NOT NULL,
  `dataConclusao` date NOT NULL,
  PRIMARY KEY (`codProgresso`),
  KEY `matricula_idx` (`matricula`),
  KEY `seccao_idx` (`seccao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `progressosatividades`
--

DROP TABLE IF EXISTS `progressosatividades`;
CREATE TABLE IF NOT EXISTS `progressosatividades` (
  `codProgressoAtividade` int NOT NULL,
  `atividade` int NOT NULL,
  `resposta` int NOT NULL,
  PRIMARY KEY (`codProgressoAtividade`),
  KEY `fkAtividadeCod_idx` (`atividade`),
  KEY `fkRespostaCod_idx` (`resposta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `progressosaulas`
--

DROP TABLE IF EXISTS `progressosaulas`;
CREATE TABLE IF NOT EXISTS `progressosaulas` (
  `codProgressoAula` int NOT NULL,
  `aula` int NOT NULL,
  `progressaoVideo` float UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`codProgressoAula`),
  KEY `fkAulasCod_idx` (`aula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

DROP TABLE IF EXISTS `questoes`;
CREATE TABLE IF NOT EXISTS `questoes` (
  `codQuestao` int NOT NULL,
  `atividade` int NOT NULL,
  `explicacao` varchar(120) NOT NULL,
  `ordemQuestao` int NOT NULL,
  `pergunta` varchar(50) NOT NULL,
  `tipo` varchar(12) NOT NULL,
  `imagem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codQuestao`),
  KEY `fk_codAtividade_idx` (`atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas`
--

DROP TABLE IF EXISTS `respostas`;
CREATE TABLE IF NOT EXISTS `respostas` (
  `codRespostas` int NOT NULL,
  `questao` int NOT NULL,
  `opcao` varchar(50) NOT NULL,
  `ordemResposta` int NOT NULL,
  `respostaCorreta` tinyint NOT NULL,
  PRIMARY KEY (`codRespostas`),
  KEY `questao_idx` (`questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `seccoes`
--

DROP TABLE IF EXISTS `seccoes`;
CREATE TABLE IF NOT EXISTS `seccoes` (
  `codSeccao` int NOT NULL AUTO_INCREMENT,
  `curso` int NOT NULL,
  `numeracao` int NOT NULL,
  `secTitulo` varchar(40) NOT NULL,
  PRIMARY KEY (`codSeccao`),
  KEY `curso_idx` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `suportes`
--

DROP TABLE IF EXISTS `suportes`;
CREATE TABLE IF NOT EXISTS `suportes` (
  `codSuporte` int NOT NULL,
  `moderador` int NOT NULL,
  `topico` int NOT NULL,
  `usuario` int NOT NULL,
  `concluido` tinyint NOT NULL,
  `desc` varchar(300) NOT NULL,
  `disponivel` tinyint NOT NULL,
  `titulo` varchar(40) NOT NULL,
  PRIMARY KEY (`codSuporte`),
  KEY `mod_idx` (`moderador`),
  KEY `usuario_idx` (`usuario`),
  KEY `fkTopicosCod_Suportes_idx` (`topico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `codTag` int NOT NULL,
  `descTags` varchar(120) NOT NULL,
  `tagNome` varchar(20) NOT NULL,
  PRIMARY KEY (`codTag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `topicos`
--

DROP TABLE IF EXISTS `topicos`;
CREATE TABLE IF NOT EXISTS `topicos` (
  `codTopicos` int NOT NULL AUTO_INCREMENT,
  `descTopicos` varchar(120) NOT NULL,
  `topicosNome` varchar(20) NOT NULL,
  PRIMARY KEY (`codTopicos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alocacoespacotes`
--
ALTER TABLE `alocacoespacotes`
  ADD CONSTRAINT `fkCursoCod_AlocacoesPacotes` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`),
  ADD CONSTRAINT `fkPacoteCod_AlocacoesPacotes` FOREIGN KEY (`pacote`) REFERENCES `pacotes` (`codPacotes`);

--
-- Limitadores para a tabela `alocacoestags`
--
ALTER TABLE `alocacoestags`
  ADD CONSTRAINT `fkCursoCod_AlocacoesTags` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`),
  ADD CONSTRAINT `fkTagCod_AlocacoesTags` FOREIGN KEY (`tag`) REFERENCES `tags` (`codTag`);

--
-- Limitadores para a tabela `atividades`
--
ALTER TABLE `atividades`
  ADD CONSTRAINT `fkConteudoCod_Atividades` FOREIGN KEY (`codAtividade`) REFERENCES `conteudos` (`codConteudos`);

--
-- Limitadores para a tabela `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `fkConteudoCod_Aulas` FOREIGN KEY (`codAula`) REFERENCES `conteudos` (`codConteudos`);

--
-- Limitadores para a tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `fkAlunoCod_Avaliacoes` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`codAluno`),
  ADD CONSTRAINT `fkCursoCod_Avaliacoes` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`);

--
-- Limitadores para a tabela `certificados`
--
ALTER TABLE `certificados`
  ADD CONSTRAINT `fkAlunoCod_Certificados` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`codAluno`),
  ADD CONSTRAINT `fkCursoCod_Certificados` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`);

--
-- Limitadores para a tabela `conteudos`
--
ALTER TABLE `conteudos`
  ADD CONSTRAINT `fkSeccaoCod_Conteudos` FOREIGN KEY (`seccao`) REFERENCES `seccoes` (`codSeccao`);

--
-- Limitadores para a tabela `estatalunos`
--
ALTER TABLE `estatalunos`
  ADD CONSTRAINT `fkAlunoCod_InformacoesAdicionais` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`codAluno`);

--
-- Limitadores para a tabela `estatcursos`
--
ALTER TABLE `estatcursos`
  ADD CONSTRAINT `fkCursoCod_EstatCursos` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`);

--
-- Limitadores para a tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `fkAlunoCod_Matriculas` FOREIGN KEY (`matriculaAlunos`) REFERENCES `alunos` (`codAluno`),
  ADD CONSTRAINT `fkCursoCod_Matriculas` FOREIGN KEY (`matriculaCursos`) REFERENCES `cursos` (`codCurso`);

--
-- Limitadores para a tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD CONSTRAINT `fkAlunoCod_Mensagens` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`codAluno`),
  ADD CONSTRAINT `fkProfessorCod_Mensagens` FOREIGN KEY (`professor`) REFERENCES `professores` (`codProfessor`);

--
-- Limitadores para a tabela `professorcurso`
--
ALTER TABLE `professorcurso`
  ADD CONSTRAINT `fkCursoCod_ProfessorCurso` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`),
  ADD CONSTRAINT `fkProfessorCod_ProfessorCurso` FOREIGN KEY (`professor`) REFERENCES `professores` (`codProfessor`);

--
-- Limitadores para a tabela `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `fkAlunoCod_Professores` FOREIGN KEY (`codProfessor`) REFERENCES `alunos` (`codAluno`);

--
-- Limitadores para a tabela `progressos`
--
ALTER TABLE `progressos`
  ADD CONSTRAINT `fkMatriculaCod_Progressos` FOREIGN KEY (`matricula`) REFERENCES `matriculas` (`codMatricula`),
  ADD CONSTRAINT `fkSeccaoCod_Progressos` FOREIGN KEY (`seccao`) REFERENCES `seccoes` (`codSeccao`);

--
-- Limitadores para a tabela `progressosatividades`
--
ALTER TABLE `progressosatividades`
  ADD CONSTRAINT `fkAtividadeCod_ProgressosAtividades` FOREIGN KEY (`atividade`) REFERENCES `atividades` (`codAtividade`),
  ADD CONSTRAINT `fkProgressoAtividadeCod_ProgressosAtividades` FOREIGN KEY (`codProgressoAtividade`) REFERENCES `progressos` (`codProgresso`),
  ADD CONSTRAINT `fkRespostaCod_ProgressosAtividades` FOREIGN KEY (`resposta`) REFERENCES `respostas` (`codRespostas`);

--
-- Limitadores para a tabela `progressosaulas`
--
ALTER TABLE `progressosaulas`
  ADD CONSTRAINT `fkAulasCod_ProgressosAulas` FOREIGN KEY (`aula`) REFERENCES `aulas` (`codAula`),
  ADD CONSTRAINT `fkProgressoAulaCod_ProgressosAulas` FOREIGN KEY (`codProgressoAula`) REFERENCES `progressos` (`codProgresso`);

--
-- Limitadores para a tabela `questoes`
--
ALTER TABLE `questoes`
  ADD CONSTRAINT `fkCodAtividade_Questoes` FOREIGN KEY (`atividade`) REFERENCES `atividades` (`codAtividade`);

--
-- Limitadores para a tabela `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `fkQuestaoCod_Respostas` FOREIGN KEY (`questao`) REFERENCES `questoes` (`codQuestao`);

--
-- Limitadores para a tabela `seccoes`
--
ALTER TABLE `seccoes`
  ADD CONSTRAINT `fkCursoCod_Seccoes` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`);

--
-- Limitadores para a tabela `suportes`
--
ALTER TABLE `suportes`
  ADD CONSTRAINT `fkModCod_Suportes` FOREIGN KEY (`moderador`) REFERENCES `moderadores` (`codMod`),
  ADD CONSTRAINT `fkTopicosCod_Suportes` FOREIGN KEY (`topico`) REFERENCES `topicos` (`codTopicos`),
  ADD CONSTRAINT `fkUsuarioCod_Suportes` FOREIGN KEY (`usuario`) REFERENCES `alunos` (`codAluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
