-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cursos` (
  `codCurso` INT NOT NULL AUTO_INCREMENT,
  `avaliacaoMedia` DECIMAL ZEROFILL NOT NULL,
  `comentarios` VARCHAR(300) NOT NULL,
  `descCurso` VARCHAR(300) NOT NULL,
  `nomeCurso` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codCurso`),
  UNIQUE INDEX `idCurso_UNIQUE` (`codCurso` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Alunos` (
  `codAluno` INT NOT NULL AUTO_INCREMENT,
  `emailAluno` VARCHAR(45) NOT NULL,
  `nomeAluno` VARCHAR(45) NOT NULL,
  `senhaAluno` VARCHAR(32) NOT NULL,
  `descAluno` VARCHAR(300) NULL,
  PRIMARY KEY (`codAluno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Seccoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seccoes` (
  `codSeccao` INT NOT NULL AUTO_INCREMENT,
  `curso` INT NOT NULL,
  `secNome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codSeccao`),
  INDEX `curso_idx` (`curso` ASC) VISIBLE,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `mydb`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Conteudos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Conteudos` (
  `codConteudos` INT NOT NULL,
  `seccao` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `numeracao` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codConteudos`),
  INDEX `seccao_idx` (`seccao` ASC) VISIBLE,
  CONSTRAINT `fkSeccaoCod`
    FOREIGN KEY (`seccao`)
    REFERENCES `mydb`.`Seccoes` (`codSeccao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Aulas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Aulas` (
  `codAula` INT NOT NULL,
  `duracao` TIME NOT NULL,
  `video` VARCHAR(100) NOT NULL,
  `referencias` VARCHAR(100) NULL,
  PRIMARY KEY (`codAula`),
  INDEX `fk_Aulas_Conteudos1_idx` (`codAula` ASC) VISIBLE,
  CONSTRAINT `fkConteudoCod`
    FOREIGN KEY (`codAula`)
    REFERENCES `mydb`.`Conteudos` (`codConteudos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Atividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Atividades` (
  `codAtividade` INT NOT NULL,
  `corTema` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codAtividade`),
  INDEX `fk_Atividades_Conteudos1_idx` (`codAtividade` ASC) VISIBLE,
  CONSTRAINT `fkConteudoCod`
    FOREIGN KEY (`codAtividade`)
    REFERENCES `mydb`.`Conteudos` (`codConteudos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Matriculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Matriculas` (
  `codMatricula` INT NOT NULL AUTO_INCREMENT,
  `matriculaAlunos` INT NOT NULL,
  `matriculaCursos` INT NOT NULL,
  `cursoProgresso` DECIMAL ZEROFILL NOT NULL,
  `dataMatricula` DATE NOT NULL,
  `proguessoAula` DECIMAL NOT NULL,
  INDEX `matriculaAlunos_idx` (`matriculaAlunos` ASC) VISIBLE,
  INDEX `matriculaCursos_idx` (`matriculaCursos` ASC) VISIBLE,
  PRIMARY KEY (`codMatricula`),
  UNIQUE INDEX `Matriculascol_UNIQUE` (`codMatricula` ASC) VISIBLE,
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`matriculaAlunos`)
    REFERENCES `mydb`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`matriculaCursos`)
    REFERENCES `mydb`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Professores` (
  `codProfessor` INT NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `numAgencia` VARCHAR(4) NOT NULL,
  `numConta` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`codProfessor`),
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`codProfessor`)
    REFERENCES `mydb`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProfessorCurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ProfessorCurso` (
  `codProfCurso` INT NOT NULL AUTO_INCREMENT,
  `curso` INT NOT NULL,
  `professor` INT NOT NULL,
  INDEX `professorCursos_idx` (`curso` ASC) VISIBLE,
  PRIMARY KEY (`codProfCurso`),
  INDEX `professor_idx` (`professor` ASC) VISIBLE,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `mydb`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkProfessorCod`
    FOREIGN KEY (`professor`)
    REFERENCES `mydb`.`Professores` (`codProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Curso_Seccoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Curso_Seccoes` (
  `cursoSeccoes` INT NOT NULL,
  `seccoesCurso` INT NOT NULL,
  INDEX `cursoSeccoes_idx` (`cursoSeccoes` ASC) VISIBLE,
  INDEX `seccoesCurso_idx` (`seccoesCurso` ASC) VISIBLE,
  CONSTRAINT `cursoSeccoes`
    FOREIGN KEY (`cursoSeccoes`)
    REFERENCES `mydb`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `seccoesCurso`
    FOREIGN KEY (`seccoesCurso`)
    REFERENCES `mydb`.`Seccoes` (`codSeccao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Questoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Questoes` (
  `codQuestao` INT NOT NULL,
  `atividade` INT NOT NULL,
  `ordemQuestao` INT NOT NULL,
  `tipo` VARCHAR(12) NOT NULL,
  `texto` VARCHAR(45) NOT NULL,
  `imagem` VARCHAR(45) NULL,
  PRIMARY KEY (`codQuestao`),
  CONSTRAINT `fk_codAtividade`
    FOREIGN KEY ()
    REFERENCES `mydb`.`Atividades` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Respostas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Respostas` (
  `codRespostas` INT NOT NULL,
  `questao` INT NOT NULL,
  `opcao` VARCHAR(45) NOT NULL,
  `ordemResposta` INT NOT NULL,
  `respostaCorreta` TINYINT NOT NULL,
  PRIMARY KEY (`codRespostas`),
  INDEX `questao_idx` (`questao` ASC) VISIBLE,
  CONSTRAINT `fkQuestaoCod`
    FOREIGN KEY (`questao`)
    REFERENCES `mydb`.`Questoes` (`codQuestao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mensagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mensagens` (
  `codMensagem` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `professor` INT NOT NULL,
  `disponivel` TINYINT NOT NULL,
  `texto` VARCHAR(300) NOT NULL,
  `titulo` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`codMensagem`),
  INDEX `aluno_idx` (`aluno` ASC) VISIBLE,
  INDEX `professor_idx` (`professor` ASC) VISIBLE,
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`aluno`)
    REFERENCES `mydb`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkProfessorCod`
    FOREIGN KEY (`professor`)
    REFERENCES `mydb`.`Professores` (`codProfessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Avaliacoes` (
  `codComentario` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `curso` INT NOT NULL,
  `disponivel` TINYINT NOT NULL,
  `nota` INT NOT NULL,
  `publicacao` DATE NOT NULL,
  `texto` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`codComentario`),
  INDEX `curso_idx` (`curso` ASC) VISIBLE,
  INDEX `aluno_idx` (`aluno` ASC) VISIBLE,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `mydb`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`aluno`)
    REFERENCES `mydb`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Moderadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Moderadores` (
  `codMod` INT NOT NULL AUTO_INCREMENT,
  `emailMod` VARCHAR(45) NOT NULL,
  `senhaMod` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codMod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Suportes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Suportes` (
  `codSuporte` INT NOT NULL,
  `moderador` INT NOT NULL,
  `usuario` INT NOT NULL,
  `concluido` TINYINT NOT NULL,
  `desc` VARCHAR(300) NOT NULL,
  `disponivel` TINYINT NOT NULL,
  PRIMARY KEY (`codSuporte`),
  INDEX `mod_idx` (`moderador` ASC) VISIBLE,
  INDEX `usuario_idx` (`usuario` ASC) VISIBLE,
  CONSTRAINT `fkModCod`
    FOREIGN KEY (`moderador`)
    REFERENCES `mydb`.`Moderadores` (`codMod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkUsuarioCod`
    FOREIGN KEY (`usuario`)
    REFERENCES `mydb`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tags` (
  `codTag` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `nomeTag` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codTag`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AlocacoesTags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`AlocacoesTags` (
  `codAlocacaoTag` INT NOT NULL,
  `curso` INT NOT NULL,
  `tag` INT NOT NULL,
  PRIMARY KEY (`codAlocacaoTag`),
  INDEX `tag_idx` (`tag` ASC) VISIBLE,
  INDEX `curso_idx` (`curso` ASC) VISIBLE,
  CONSTRAINT `fkTagCod`
    FOREIGN KEY (`tag`)
    REFERENCES `mydb`.`Tags` (`codTag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `mydb`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pacotes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pacotes` (
  `codPacotes` INT NOT NULL,
  `desc` VARCHAR(120) NOT NULL,
  `pacoteNome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codPacotes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Alocacoes_Pacotes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Alocacoes_Pacotes` (
  `codAlocacaoCurso` INT NOT NULL,
  `curso` INT NOT NULL,
  `pacote` INT NOT NULL,
  PRIMARY KEY (`codAlocacaoCurso`),
  INDEX `curso_idx` (`curso` ASC) VISIBLE,
  INDEX `pacote_idx` (`pacote` ASC) VISIBLE,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `mydb`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkPacoteCod`
    FOREIGN KEY (`pacote`)
    REFERENCES `mydb`.`Pacotes` (`codPacotes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Certificado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Certificado` (
  `codCertificado` INT NOT NULL AUTO_INCREMENT,
  `aluno` INT NOT NULL,
  `curso` INT NOT NULL,
  `dataEmissao` DATE NOT NULL,
  PRIMARY KEY (`codCertificado`),
  INDEX `aluno_idx` (`aluno` ASC) VISIBLE,
  INDEX `curso_idx` (`curso` ASC) VISIBLE,
  CONSTRAINT `fkAlunoCod`
    FOREIGN KEY (`aluno`)
    REFERENCES `mydb`.`Alunos` (`codAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCursoCod`
    FOREIGN KEY (`curso`)
    REFERENCES `mydb`.`Cursos` (`codCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Progresso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Progresso` (
  `codProgresso` INT NOT NULL AUTO_INCREMENT,
  `conteudo` INT NOT NULL,
  `matricula` INT NOT NULL,
  `seccao` INT NOT NULL,
  `conteudosAssistidos` JSON NOT NULL,
  PRIMARY KEY (`codProgresso`),
  INDEX `matricula_idx` (`matricula` ASC) VISIBLE,
  INDEX `seccao_idx` (`seccao` ASC) VISIBLE,
  INDEX `conteudo_idx` (`conteudo` ASC) VISIBLE,
  CONSTRAINT `fkMatriculaCod`
    FOREIGN KEY (`matricula`)
    REFERENCES `mydb`.`Matriculas` (`codMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkSeccaoCod`
    FOREIGN KEY (`seccao`)
    REFERENCES `mydb`.`Seccoes` (`codSeccao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkConteudoCod`
    FOREIGN KEY (`conteudo`)
    REFERENCES `mydb`.`Conteudos` (`codConteudos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RespostasAtividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RespostasAtividades` (
  `codRespostas` INT NOT NULL,
  `atividade` INT NOT NULL,
  `proguesso` INT NOT NULL,
  `respostas` JSON NOT NULL,
  PRIMARY KEY (`codRespostas`),
  INDEX `fk_progresso_idx` (`proguesso` ASC) VISIBLE,
  INDEX `fk_atividade_idx` (`atividade` ASC) VISIBLE,
  CONSTRAINT `fkProgressoCod`
    FOREIGN KEY (`proguesso`)
    REFERENCES `mydb`.`Progresso` (`codProgresso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAtividadeCod`
    FOREIGN KEY (`atividade`)
    REFERENCES `mydb`.`Atividades` (`codAtividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
