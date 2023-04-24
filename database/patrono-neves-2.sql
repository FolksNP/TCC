-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- DATABASE PatronoNeves
-- -----------------------------------------------------

-- -----------------------------------------------------
-- DATABASE PatronoNeves
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `PatronoNeves` DEFAULT CHARACTER SET utf8 ;
USE `PatronoNeves` ;

-- -----------------------------------------------------
-- Table `PatronoNeves`.`Cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Cursos` (
  `codCurso` INT NOT NULL AUTO_INCREMENT,
  `avaliacaoMedia` DECIMAL ZEROFILL NOT NULL,
  `comentarios` VARCHAR(300) NOT NULL,
  `descCurso` VARCHAR(300) NOT NULL,
  `nomeCurso` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codCurso`),
  UNIQUE INDEX `idCurso_UNIQUE` (`codCurso` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Alunos` (
  `codAluno` INT NOT NULL AUTO_INCREMENT,
  `emailAluno` VARCHAR(45) NOT NULL,
  `nomeAluno` VARCHAR(45) NOT NULL,
  `senhaAluno` VARCHAR(32) NOT NULL,
  `descAluno` VARCHAR(300) NULL,
  PRIMARY KEY (`codAluno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Seccoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Seccoes` (
  `codSeccao` INT NOT NULL AUTO_INCREMENT,
  `curso` INT NOT NULL,
  `secNome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codSeccao`),
  INDEX `curso_idx` (`curso` ASC),
  CONSTRAINT `fkCursoCod_Seccoes`
    FOREIGN KEY (`curso`)
    REFERENCES `PatronoNeves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Conteudos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Conteudos` (
  `codConteudos` INT NOT NULL,
  `seccao` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `numeracao` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codConteudos`),
  INDEX `seccao_idx` (`seccao` ASC),
  CONSTRAINT `fkSeccaoCod_Conteudos`
    FOREIGN KEY (`seccao`)
    REFERENCES `PatronoNeves`.`Seccoes` (`codSeccao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Aulas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Aulas` (
  `codAula` INT NOT NULL,
  `duracao` TIME NOT NULL,
  `video` VARCHAR(100) NOT NULL,
  `referencias` VARCHAR(100) NULL,
  PRIMARY KEY (`codAula`),
  INDEX `fk_Aulas_Conteudos1_idx` (`codAula` ASC),
  CONSTRAINT `fkConteudoCod_Aulas`
    FOREIGN KEY (`codAula`)
    REFERENCES `PatronoNeves`.`Conteudos` (`codConteudos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Atividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Atividades` (
  `codAtividade` INT NOT NULL,
  `corTema` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codAtividade`),
  INDEX `fk_Atividades_Conteudos1_idx` (`codAtividade` ASC),
  CONSTRAINT `fkConteudoCod_Atividades`
    FOREIGN KEY (`codAtividade`)
    REFERENCES `PatronoNeves`.`Conteudos` (`codConteudos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `PatronoNeves`.`Matriculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Matriculas` (
  `codMatricula` INT NOT NULL AUTO_INCREMENT,
  `matriculaAlunos` INT NOT NULL,
  `matriculaCursos` INT NOT NULL,
  `cursoProgresso` FLOAT ZEROFILL NOT NULL,
  `dataMatricula` DATE NOT NULL,
  INDEX `matriculaAlunos_idx` (`matriculaAlunos` ASC),
  INDEX `matriculaCursos_idx` (`matriculaCursos` ASC),
  PRIMARY KEY (`codMatricula`),
  UNIQUE INDEX `Matriculascol_UNIQUE` (`codMatricula` ASC),
  CONSTRAINT `fkAlunoCod_Matriculas`
    FOREIGN KEY (`matriculaAlunos`)
    REFERENCES `PatronoNeves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod_Matriculas`
    FOREIGN KEY (`matriculaCursos`)
    REFERENCES `PatronoNeves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Professores` (
  `codProfessor` INT NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `numAgencia` VARCHAR(4) NOT NULL,
  `numConta` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`codProfessor`),
  CONSTRAINT `fkAlunoCod_Professores`
    FOREIGN KEY (`codProfessor`)
    REFERENCES `PatronoNeves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`ProfessorCurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`ProfessorCurso` (
  `codProfCurso` INT NOT NULL AUTO_INCREMENT,
  `curso` INT NOT NULL,
  `professor` INT NOT NULL,
  INDEX `professorCursos_idx` (`curso` ASC),
  PRIMARY KEY (`codProfCurso`),
  INDEX `professor_idx` (`professor` ASC),
  CONSTRAINT `fkCursoCod_ProfessorCurso`
    FOREIGN KEY (`curso`)
    REFERENCES `PatronoNeves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkProfessorCod_ProfessorCurso`
    FOREIGN KEY (`professor`)
    REFERENCES `PatronoNeves`.`Professores` (`codProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Questoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Questoes` (
  `codQuestao` INT NOT NULL,
  `atividade` INT NOT NULL,
  `ordemQuestao` INT NOT NULL,
  `tipo` VARCHAR(12) NOT NULL,
  `pergunta` VARCHAR(50) NOT NULL,
  `imagem` VARCHAR(32) NULL,
  PRIMARY KEY (`codQuestao`),
  INDEX `fk_codAtividade_idx` (`atividade` ASC),
  CONSTRAINT `fkCodAtividade_Questoes`
    FOREIGN KEY (`atividade`)
    REFERENCES `PatronoNeves`.`Atividades` (`codAtividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Respostas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Respostas` (
  `codRespostas` INT NOT NULL,
  `questao` INT NOT NULL,
  `opcao` VARCHAR(45) NOT NULL,
  `ordemResposta` INT NOT NULL,
  `respostaCorreta` TINYINT NOT NULL,
  PRIMARY KEY (`codRespostas`),
  INDEX `questao_idx` (`questao` ASC),
  CONSTRAINT `fkQuestaoCod_Respostas`
    FOREIGN KEY (`questao`)
    REFERENCES `PatronoNeves`.`Questoes` (`codQuestao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Mensagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Mensagens` (
  `codMensagem` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `professor` INT NOT NULL,
  `disponivel` TINYINT NOT NULL,
  `texto` VARCHAR(300) NOT NULL,
  `titulo` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`codMensagem`),
  INDEX `aluno_idx` (`aluno` ASC),
  INDEX `professor_idx` (`professor` ASC),
  CONSTRAINT `fkAlunoCod_Mensagens`
    FOREIGN KEY (`aluno`)
    REFERENCES `PatronoNeves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkProfessorCod_Mensagens`
    FOREIGN KEY (`professor`)
    REFERENCES `PatronoNeves`.`Professores` (`codProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Avaliacoes` (
  `codComentario` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `curso` INT NOT NULL,
  `disponivel` TINYINT NOT NULL,
  `nota` INT NOT NULL,
  `publicacao` DATE NOT NULL,
  `texto` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`codComentario`),
  INDEX `curso_idx` (`curso` ASC),
  INDEX `aluno_idx` (`aluno` ASC),
  CONSTRAINT `fkCursoCod_Avaliacoes`
    FOREIGN KEY (`curso`)
    REFERENCES `PatronoNeves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAlunoCod_Avaliacoes`
    FOREIGN KEY (`aluno`)
    REFERENCES `PatronoNeves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Moderadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Moderadores` (
  `codMod` INT NOT NULL AUTO_INCREMENT,
  `emailMod` VARCHAR(45) NOT NULL,
  `senhaMod` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codMod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Suportes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Suportes` (
  `codSuporte` INT NOT NULL,
  `moderador` INT NOT NULL,
  `usuario` INT NOT NULL,
  `concluido` TINYINT NOT NULL,
  `desc` VARCHAR(300) NOT NULL,
  `disponivel` TINYINT NOT NULL,
  PRIMARY KEY (`codSuporte`),
  INDEX `mod_idx` (`moderador` ASC),
  INDEX `usuario_idx` (`usuario` ASC),
  CONSTRAINT `fkModCod_Suportes`
    FOREIGN KEY (`moderador`)
    REFERENCES `PatronoNeves`.`Moderadores` (`codMod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkUsuarioCod_Suportes`
    FOREIGN KEY (`usuario`)
    REFERENCES `PatronoNeves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Tags` (
  `codTag` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `nomeTag` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codTag`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`AlocacoesTags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`AlocacoesTags` (
  `codAlocacaoTag` INT NOT NULL,
  `curso` INT NOT NULL,
  `tag` INT NOT NULL,
  PRIMARY KEY (`codAlocacaoTag`),
  INDEX `tag_idx` (`tag` ASC),
  INDEX `curso_idx` (`curso` ASC),
  CONSTRAINT `fkTagCod_AlocacoesTags`
    FOREIGN KEY (`tag`)
    REFERENCES `PatronoNeves`.`Tags` (`codTag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod_AlocacoesTags`
    FOREIGN KEY (`curso`)
    REFERENCES `PatronoNeves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Pacotes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Pacotes` (
  `codPacotes` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `pacoteNome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codPacotes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`AlocacoesPacotes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`AlocacoesPacotes` (
  `codAlocacaoCurso` INT NOT NULL,
  `curso` INT NOT NULL,
  `pacote` INT NOT NULL,
  PRIMARY KEY (`codAlocacaoCurso`),
  INDEX `curso_idx` (`curso` ASC),
  INDEX `pacote_idx` (`pacote` ASC),
  CONSTRAINT `fkCursoCod_AlocacoesPacotes`
    FOREIGN KEY (`curso`)
    REFERENCES `PatronoNeves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkPacoteCod_AlocacoesPacotes`
    FOREIGN KEY (`pacote`)
    REFERENCES `PatronoNeves`.`Pacotes` (`codPacotes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Certificados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Certificados` (
  `codCertificado` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `curso` INT NOT NULL,
  `dataEmissao` DATE NOT NULL,
  PRIMARY KEY (`codCertificado`),
  INDEX `aluno_idx` (`aluno` ASC),
  INDEX `curso_idx` (`curso` ASC),
  CONSTRAINT `fkAlunoCod_Certificados`
    FOREIGN KEY (`aluno`)
    REFERENCES `PatronoNeves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod_Certificados`
    FOREIGN KEY (`curso`)
    REFERENCES `PatronoNeves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`Progressos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`Progressos` (
  `codProgresso` INT NOT NULL AUTO_INCREMENT,
  `matricula` INT NOT NULL,
  `seccao` INT NOT NULL,
  `dataConclusao` DATE NOT NULL,
  PRIMARY KEY (`codProgresso`),
  INDEX `matricula_idx` (`matricula` ASC),
  INDEX `seccao_idx` (`seccao` ASC),
  CONSTRAINT `fkMatriculaCod_Progressos`
    FOREIGN KEY (`matricula`)
    REFERENCES `PatronoNeves`.`Matriculas` (`codMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkSeccaoCod_Progressos`
    FOREIGN KEY (`seccao`)
    REFERENCES `PatronoNeves`.`Seccoes` (`codSeccao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`ProgressosAtividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`ProgressosAtividades` (
  `codProgressoAtividade` INT NOT NULL,
  `atividade` INT NOT NULL,
  `resposta` INT NOT NULL,
  PRIMARY KEY (`codProgressoAtividade`),
  INDEX `fkAtividadeCod_idx` (`atividade` ASC),
  INDEX `fkRespostaCod_idx` (`resposta` ASC),
  CONSTRAINT `fkProgressoAtividadeCod_ProgessosAtividades`
    FOREIGN KEY (`codProgressoAtividade`)
    REFERENCES `PatronoNeves`.`Progressos` (`codProgresso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAtividadeCod_ProgessosAtividades`
    FOREIGN KEY (`atividade`)
    REFERENCES `PatronoNeves`.`Atividades` (`codAtividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkRespostaCod_ProgessosAtividades`
    FOREIGN KEY (`resposta`)
    REFERENCES `PatronoNeves`.`Respostas` (`codRespostas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PatronoNeves`.`ProgressosAulas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PatronoNeves`.`ProgressosAulas` (
  `codProgressoAula` INT NOT NULL,
  `aula` INT NOT NULL,
  `progressaoVideo` FLOAT ZEROFILL NOT NULL,
  PRIMARY KEY (`codProgressoAula`),
  INDEX `fkAulasCod_idx` (`aula` ASC),
  CONSTRAINT `fkProgressoAulaCod_ProgressosAulas`
    FOREIGN KEY (`codProgressoAula`)
    REFERENCES `PatronoNeves`.`Progressos` (`codProgresso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAulasCod_ProgressosAulas`
    FOREIGN KEY (`aula`)
    REFERENCES `PatronoNeves`.`Aulas` (`codAula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
