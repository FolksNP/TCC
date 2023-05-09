-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 09-Maio-2023 às 19:53
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
-- Estrutura da tabela `alocacoespacotes`
--

DROP TABLE IF EXISTS `alocacoespacotes`;
CREATE TABLE IF NOT EXISTS `alocacoespacotes` (
  `codAlocacaoCurso` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `pacote` int(11) NOT NULL,
  PRIMARY KEY (`codAlocacaoCurso`),
  KEY `curso_idx` (`curso`),
  KEY `pacote_idx` (`pacote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alocacoestags`
--

DROP TABLE IF EXISTS `alocacoestags`;
CREATE TABLE IF NOT EXISTS `alocacoestags` (
  `codAlocacaoTag` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  PRIMARY KEY (`codAlocacaoTag`),
  KEY `tag_idx` (`tag`),
  KEY `curso_idx` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`codAluno`, `emailAluno`, `nomeAluno`, `senhaAluno`, `fotoAluno`) VALUES
(1, 'kayky@gmail', 'kayky', '202cb962ac59075b964b07152d234b70', '../imgs/fbdaba24c46bcfe32dc0863611599c92.jpg'),
(2, 'teste@gmail', 'teste', '202cb962ac59075b964b07152d234b70', '../imgs/2c968c00b330b38920a77f5ab38d04be.jpg'),
(3, 'paulo@gmail', 'Paulo do Rock', '202cb962ac59075b964b07152d234b70', '../imgs/f1b0e735f279a5557d619fe258ce252a.jpg');

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
  PRIMARY KEY (`codAula`),
  KEY `fk_Aulas_Conteudos1_idx` (`codAula`)
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
  `seccao` int(11) NOT NULL,
  `desc` varchar(120) NOT NULL,
  `numeracao` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  PRIMARY KEY (`codConteudos`),
  KEY `seccao_idx` (`seccao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `codCurso` int(11) NOT NULL AUTO_INCREMENT,
  `professor` int(11) NOT NULL,
  `avaliacaoMedia` decimal(10,0) UNSIGNED ZEROFILL NOT NULL,
  `capaCurso` varchar(50) NOT NULL,
  `comentarios` varchar(300) NOT NULL,
  `descCurso` varchar(300) NOT NULL,
  `nomeCurso` varchar(50) NOT NULL,
  `nivelCurso` int(11) NOT NULL,
  PRIMARY KEY (`codCurso`),
  UNIQUE KEY `idCurso_UNIQUE` (`codCurso`),
  KEY `fk_idx` (`professor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codCurso`, `professor`, `avaliacaoMedia`, `capaCurso`, `comentarios`, `descCurso`, `nomeCurso`, `nivelCurso`) VALUES
(1, 1, '0000000000', '../imgs/7bf1632ffc7c7aebb6c0b3f728b74693.jpg', 'amei', 'sdfsdfsfs', 'Fundamentos do JavaScript', 1),
(2, 1, '0000000000', '../imgs/3c5e6dd85c4e853c4a32e00411790632.jpg', 'amei', 'sdfsdfsfs', 'Fundamentos Da Informática', 1),
(3, 3, '0000000000', '../imgs/b9a7b3150bb82268e878f0c420f521d6.jpg', 'amei', 'a eeeee', 'Criar jogos em 8bits', 1);

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
-- Estrutura da tabela `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
CREATE TABLE IF NOT EXISTS `mensagens` (
  `codMensagem` int(11) NOT NULL AUTO_INCREMENT,
  `aluno` int(11) NOT NULL,
  `professor` int(11) NOT NULL,
  `disponivel` tinyint(4) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  PRIMARY KEY (`codMensagem`),
  KEY `aluno_idx` (`aluno`),
  KEY `professor_idx` (`professor`)
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
-- Estrutura da tabela `pacotes`
--

DROP TABLE IF EXISTS `pacotes`;
CREATE TABLE IF NOT EXISTS `pacotes` (
  `codPacotes` int(11) NOT NULL,
  `descPacotes` varchar(120) NOT NULL,
  `pacoteNome` varchar(50) NOT NULL,
  PRIMARY KEY (`codPacotes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `codProfessor` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `numAgencia` varchar(4) NOT NULL,
  `numConta` varchar(8) NOT NULL,
  PRIMARY KEY (`codProfessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`codProfessor`, `cpf`, `numAgencia`, `numConta`) VALUES
(1, '123123123', '12', '123'),
(3, '456456456', '12', '456');

-- --------------------------------------------------------

--
-- Estrutura da tabela `progressos`
--

DROP TABLE IF EXISTS `progressos`;
CREATE TABLE IF NOT EXISTS `progressos` (
  `codProgresso` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `seccao` int(11) NOT NULL,
  `dataConclusao` date NOT NULL,
  PRIMARY KEY (`codProgresso`),
  KEY `matricula_idx` (`matricula`),
  KEY `seccao_idx` (`seccao`)
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
  `explicacao` varchar(120) NOT NULL,
  `ordemQuestao` int(11) NOT NULL,
  `pergunta` varchar(50) NOT NULL,
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
  `opcao` varchar(50) NOT NULL,
  `ordemResposta` int(11) NOT NULL,
  `respostaCorreta` tinyint(4) NOT NULL,
  PRIMARY KEY (`codRespostas`),
  KEY `questao_idx` (`questao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `seccoes`
--

DROP TABLE IF EXISTS `seccoes`;
CREATE TABLE IF NOT EXISTS `seccoes` (
  `codSeccao` int(11) NOT NULL AUTO_INCREMENT,
  `curso` int(11) NOT NULL,
  `numeracao` int(11) NOT NULL,
  `secTitulo` varchar(40) NOT NULL,
  PRIMARY KEY (`codSeccao`),
  KEY `curso_idx` (`curso`)
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
-- Limitadores para a tabela `alocacoespacotes`
--
ALTER TABLE `alocacoespacotes`
  ADD CONSTRAINT `fkCursoCod_AlocacoesPacotes` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkPacoteCod_AlocacoesPacotes` FOREIGN KEY (`pacote`) REFERENCES `pacotes` (`codPacotes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `alocacoestags`
--
ALTER TABLE `alocacoestags`
  ADD CONSTRAINT `fkCursoCod_AlocacoesTags` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkTagCod_AlocacoesTags` FOREIGN KEY (`tag`) REFERENCES `tags` (`codTag`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `atividades`
--
ALTER TABLE `atividades`
  ADD CONSTRAINT `fkConteudoCod_Atividades` FOREIGN KEY (`codAtividade`) REFERENCES `conteudos` (`codConteudos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `fkConteudoCod_Aulas` FOREIGN KEY (`codAula`) REFERENCES `conteudos` (`codConteudos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fkSeccaoCod_Conteudos` FOREIGN KEY (`seccao`) REFERENCES `seccoes` (`codSeccao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `fkProfessores_Cursos` FOREIGN KEY (`professor`) REFERENCES `professores` (`codProfessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Limitadores para a tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD CONSTRAINT `fkAlunoCod_Mensagens` FOREIGN KEY (`aluno`) REFERENCES `alunos` (`codAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkProfessorCod_Mensagens` FOREIGN KEY (`professor`) REFERENCES `professores` (`codProfessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `fkAlunoCod_Professores` FOREIGN KEY (`codProfessor`) REFERENCES `alunos` (`codAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `progressos`
--
ALTER TABLE `progressos`
  ADD CONSTRAINT `fkMatriculaCod_Progressos` FOREIGN KEY (`matricula`) REFERENCES `matriculas` (`codMatricula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkSeccaoCod_Progressos` FOREIGN KEY (`seccao`) REFERENCES `seccoes` (`codSeccao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Limitadores para a tabela `seccoes`
--
ALTER TABLE `seccoes`
  ADD CONSTRAINT `fkCursoCod_Seccoes` FOREIGN KEY (`curso`) REFERENCES `cursos` (`codCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
