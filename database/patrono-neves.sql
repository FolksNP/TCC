-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema patrono-neves
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema patrono-neves
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `patrono-neves` DEFAULT CHARACTER SET utf8 ;
USE `patrono-neves` ;

-- -----------------------------------------------------
-- Table `patrono-neves`.`Cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Cursos` (
  `codCurso` INT NOT NULL AUTO_INCREMENT,
  `avaliacaoMedia` DECIMAL ZEROFILL NOT NULL,
  `comentarios` VARCHAR(300) NOT NULL,
  `descCurso` VARCHAR(300) NOT NULL,
  `nomeCurso` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codCurso`),
  UNIQUE INDEX `idCurso_UNIQUE` (`codCurso` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Alunos` (
  `codAluno` INT NOT NULL AUTO_INCREMENT,
  `emailAluno` VARCHAR(45) NOT NULL,
  `nomeAluno` VARCHAR(45) NOT NULL,
  `senhaAluno` VARCHAR(32) NOT NULL,
  `descAluno` VARCHAR(300) NULL,
  PRIMARY KEY (`codAluno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Seccoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Seccoes` (
  `codSeccao` INT NOT NULL AUTO_INCREMENT,
  `curso` INT NOT NULL,
  `secNome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codSeccao`),
  INDEX `curso_idx` (`curso` ASC) ,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `patrono-neves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Conteudos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Conteudos` (
  `codConteudos` INT NOT NULL,
  `seccao` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `numeracao` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codConteudos`),
  INDEX `seccao_idx` (`seccao` ASC) ,
  CONSTRAINT `fkSeccaoCod`
    FOREIGN KEY (`seccao`)
    REFERENCES `patrono-neves`.`Seccoes` (`codSeccao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Aulas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Aulas` (
  `codAula` INT NOT NULL,
  `duracao` TIME NOT NULL,
  `video` VARCHAR(100) NOT NULL,
  `referencias` VARCHAR(100) NULL,
  PRIMARY KEY (`codAula`),
  INDEX `fk_Aulas_Conteudos1_idx` (`codAula` ASC) ,
  CONSTRAINT `fkConteudoCod`
    FOREIGN KEY (`codAula`)
    REFERENCES `patrono-neves`.`Conteudos` (`codConteudos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Atividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Atividades` (
  `codAtividade` INT PRIMARY KEY NOT NULL,
  `corTema` VARCHAR(45) NOT NULL,
  INDEX `fk_Atividades_Conteudos1_idx` (`codAtividade` ASC) ,
  CONSTRAINT `fkConteudoCod`
    FOREIGN KEY (`codAtividade`)
    REFERENCES `patrono-neves`.`Conteudos` (`codConteudos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Matriculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Matriculas` (
  `codMatricula` INT NOT NULL AUTO_INCREMENT,
  `matriculaAlunos` INT NOT NULL,
  `matriculaCursos` INT NOT NULL,
  `cursoProgresso` DECIMAL ZEROFILL NOT NULL,
  `dataMatricula` DATE NOT NULL,
  `proguessoAula` DECIMAL NOT NULL,
  INDEX `matriculaAlunos_idx` (`matriculaAlunos` ASC) ,
  INDEX `matriculaCursos_idx` (`matriculaCursos` ASC) ,
  PRIMARY KEY (`codMatricula`),
  UNIQUE INDEX `Matriculascol_UNIQUE` (`codMatricula` ASC) ,
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`matriculaAlunos`)
    REFERENCES `patrono-neves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`matriculaCursos`)
    REFERENCES `patrono-neves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Professores` (
  `codProfessor` INT NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `numAgencia` VARCHAR(4) NOT NULL,
  `numConta` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`codProfessor`),
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`codProfessor`)
    REFERENCES `patrono-neves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`ProfessorCurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`ProfessorCurso` (
  `codProfCurso` INT NOT NULL AUTO_INCREMENT,
  `curso` INT NOT NULL,
  `professor` INT NOT NULL,
  INDEX `professorCursos_idx` (`curso` ASC) ,
  PRIMARY KEY (`codProfCurso`),
  INDEX `professor_idx` (`professor` ASC) ,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `patrono-neves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkProfessorCod`
    FOREIGN KEY (`professor`)
    REFERENCES `patrono-neves`.`Professores` (`codProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Curso_Seccoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Curso_Seccoes` (
  `cursoSeccoes` INT NOT NULL,
  `seccoesCurso` INT NOT NULL,
  INDEX `cursoSeccoes_idx` (`cursoSeccoes` ASC) ,
  INDEX `seccoesCurso_idx` (`seccoesCurso` ASC) ,
  CONSTRAINT `cursoSeccoes`
    FOREIGN KEY (`cursoSeccoes`)
    REFERENCES `patrono-neves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `seccoesCurso`
    FOREIGN KEY (`seccoesCurso`)
    REFERENCES `patrono-neves`.`Seccoes` (`codSeccao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Questoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Questoes` (
  `codQuestao` INT NOT NULL,
  `atividade` INT NOT NULL,
  `ordemQuestao` INT NOT NULL,
  `tipo` VARCHAR(12) NOT NULL,
  `texto` VARCHAR(45) NOT NULL,
  `imagem` VARCHAR(45) NULL,
  PRIMARY KEY (`codQuestao`),
  CONSTRAINT `fk_codAtividade`
    FOREIGN KEY (`codQuestao`)
    REFERENCES `patrono-neves`.`Atividades` (`codQuestao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Respostas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Respostas` (
  `codRespostas` INT NOT NULL,
  `questao` INT NOT NULL,
  `opcao` VARCHAR(45) NOT NULL,
  `ordemResposta` INT NOT NULL,
  `respostaCorreta` TINYINT NOT NULL,
  PRIMARY KEY (`codRespostas`),
  INDEX `questao_idx` (`questao` ASC) ,
  CONSTRAINT `fkQuestaoCod`
    FOREIGN KEY (`questao`)
    REFERENCES `patrono-neves`.`Questoes` (`codQuestao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Mensagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Mensagens` (
  `codMensagem` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `professor` INT NOT NULL,
  `disponivel` TINYINT NOT NULL,
  `texto` VARCHAR(300) NOT NULL,
  `titulo` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`codMensagem`),
  INDEX `aluno_idx` (`aluno` ASC) ,
  INDEX `professor_idx` (`professor` ASC) ,
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`aluno`)
    REFERENCES `patrono-neves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkProfessorCod`
    FOREIGN KEY (`professor`)
    REFERENCES `patrono-neves`.`Professores` (`codProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Avaliacoes` (
  `codComentario` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `curso` INT NOT NULL,
  `disponivel` TINYINT NOT NULL,
  `nota` INT NOT NULL,
  `publicacao` DATE NOT NULL,
  `texto` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`codComentario`),
  INDEX `curso_idx` (`curso` ASC) ,
  INDEX `aluno_idx` (`aluno` ASC) ,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `patrono-neves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`aluno`)
    REFERENCES `patrono-neves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Moderadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Moderadores` (
  `codMod` INT NOT NULL AUTO_INCREMENT,
  `emailMod` VARCHAR(45) NOT NULL,
  `senhaMod` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codMod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Suportes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Suportes` (
  `codSuporte` INT NOT NULL,
  `moderador` INT NOT NULL,
  `usuario` INT NOT NULL,
  `concluido` TINYINT NOT NULL,
  `desc` VARCHAR(300) NOT NULL,
  `disponivel` TINYINT NOT NULL,
  PRIMARY KEY (`codSuporte`),
  INDEX `mod_idx` (`moderador` ASC) ,
  INDEX `usuario_idx` (`usuario` ASC) ,
  CONSTRAINT `fkModCod`
    FOREIGN KEY (`moderador`)
    REFERENCES `patrono-neves`.`Moderadores` (`codMod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkUsuarioCod`
    FOREIGN KEY (`usuario`)
    REFERENCES `patrono-neves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Tags` (
  `codTag` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `nomeTag` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codTag`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`AlocacoesTags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`AlocacoesTags` (
  `codAlocacaoTag` INT NOT NULL,
  `curso` INT NOT NULL,
  `tag` INT NOT NULL,
  PRIMARY KEY (`codAlocacaoTag`),
  INDEX `tag_idx` (`tag` ASC) ,
  INDEX `curso_idx` (`curso` ASC) ,
  CONSTRAINT `fkTagCod`
    FOREIGN KEY (`tag`)
    REFERENCES `patrono-neves`.`Tags` (`codTag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `patrono-neves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Pacotes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Pacotes` (
  `codPacotes` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `pacoteNome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codPacotes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Alocacoes_Pacotes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Alocacoes_Pacotes` (
  `codAlocacaoCurso` INT NOT NULL,
  `curso` INT NOT NULL,
  `pacote` INT NOT NULL,
  PRIMARY KEY (`codAlocacaoCurso`),
  INDEX `curso_idx` (`curso` ASC) ,
  INDEX `pacote_idx` (`pacote` ASC) ,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `patrono-neves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkPacoteCod`
    FOREIGN KEY (`pacote`)
    REFERENCES `patrono-neves`.`Pacotes` (`codPacotes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Certificado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Certificado` (
  `codCertificado` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `curso` INT NOT NULL,
  `dataEmissao` DATE NOT NULL,
  PRIMARY KEY (`codCertificado`),
  INDEX `aluno_idx` (`aluno` ASC) ,
  INDEX `curso_idx` (`curso` ASC) ,
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`aluno`)
    REFERENCES `patrono-neves`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `patrono-neves`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`Progresso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`Progresso` (
  `codProgresso` INT NOT NULL AUTO_INCREMENT,
  `conteudo` INT NOT NULL,
  `matricula` INT NOT NULL,
  `seccao` INT NOT NULL,
  `conteudosAssistidos` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`codProgresso`),
  INDEX `matricula_idx` (`matricula` ASC) ,
  INDEX `seccao_idx` (`seccao` ASC) ,
  INDEX `conteudo_idx` (`conteudo` ASC) ,
  CONSTRAINT `fkMatriculaCod`
    FOREIGN KEY (`matricula`)
    REFERENCES `patrono-neves`.`Matriculas` (`codMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkSeccaoCod`
    FOREIGN KEY (`seccao`)
    REFERENCES `patrono-neves`.`Seccoes` (`codSeccao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkConteudoCod`
    FOREIGN KEY (`conteudo`)
    REFERENCES `patrono-neves`.`Conteudos` (`codConteudos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patrono-neves`.`RespostasAtividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patrono-neves`.`RespostasAtividades` (
  `codRespostas` INT NOT NULL,
  `atividade` INT NOT NULL,
  `proguesso` INT NOT NULL,
  `respostas` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`codRespostas`),
  INDEX `fk_progresso_idx` (`proguesso` ASC) ,
  INDEX `fk_atividade_idx` (`atividade` ASC) ,
  CONSTRAINT `fkProgressoCod`
    FOREIGN KEY (`proguesso`)
    REFERENCES `patrono-neves`.`Progresso` (`codProgresso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAtividadeCod`
    FOREIGN KEY (`atividade`)
    REFERENCES `patrono-neves`.`Atividades` (`codAtividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
