-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ginasio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ginasio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ginasio` DEFAULT CHARACTER SET utf8 ;
USE `ginasio` ;

-- -----------------------------------------------------
-- Table `ginasio`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ginasio`.`Cliente` (
  `Id_cliente` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Data_nascimento` DATE NOT NULL,
  `Rua` VARCHAR(45) NULL,
  `Codigo_postal` VARCHAR(45) NULL,
  `Telemovel` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ginasio`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ginasio`.`Professor` (
  `Id_professor` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Rua` VARCHAR(45) NULL,
  `Codigo_postal` VARCHAR(45) NULL,
  `Data_nascimento` DATE NOT NULL,
  `Telemovel` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_professor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ginasio`.`Plano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ginasio`.`Plano` (
  `Id_plano` INT NOT NULL,
  `Preco` DOUBLE NOT NULL,
  `Data_inicio` DATE NOT NULL,
  `Id_professor` INT NOT NULL,
  `Id_cliente` INT NOT NULL,
  PRIMARY KEY (`Id_plano`),
  INDEX `fk_Plano_Professor1_idx` (`Id_professor` ASC) VISIBLE,
  INDEX `fk_Plano_Cliente1_idx` (`Id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_Plano_Professor1`
    FOREIGN KEY (`Id_professor`)
    REFERENCES `ginasio`.`Professor` (`Id_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plano_Cliente1`
    FOREIGN KEY (`Id_cliente`)
    REFERENCES `ginasio`.`Cliente` (`Id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ginasio`.`Atividade_Fitness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ginasio`.`Atividade_Fitness` (
  `Id_atividade` INT NOT NULL,
  `Nr_participantes` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Duracao` TIME NOT NULL,
  `Sala` INT NOT NULL,
  `Id_professor` INT NOT NULL,
  PRIMARY KEY (`Id_atividade`),
  INDEX `fk_Atividade_Fitness_Professor1_idx` (`Id_professor` ASC) VISIBLE,
  CONSTRAINT `fk_Atividade_Fitness_Professor1`
    FOREIGN KEY (`Id_professor`)
    REFERENCES `ginasio`.`Professor` (`Id_professor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ginasio`.`Maquina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ginasio`.`Maquina` (
  `Id_maquina` INT NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Quantidade` INT NOT NULL,
  `Id_atividade` INT NOT NULL,
  PRIMARY KEY (`Id_maquina`),
  INDEX `fk_Máquina_Atividade_Fitness1_idx` (`Id_atividade` ASC) VISIBLE,
  CONSTRAINT `fk_Máquina_Atividade_Fitness1`
    FOREIGN KEY (`Id_atividade`)
    REFERENCES `ginasio`.`Atividade_Fitness` (`Id_atividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ginasio`.`Limitacao_Fisica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ginasio`.`Limitacao_Fisica` (
  `Id_Limitacao` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Id_cliente` INT NOT NULL,
  PRIMARY KEY (`Id_Limitacao`, `Id_cliente`),
  INDEX `fk_Limitação_Física_Cliente1_idx` (`Id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_Limitação_Física_Cliente1`
    FOREIGN KEY (`Id_cliente`)
    REFERENCES `ginasio`.`Cliente` (`Id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ginasio`.`Plano_Atividade_Fitness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ginasio`.`Plano_Atividade_Fitness` (
  `Nr_aulas` INT NOT NULL,
  `Id_plano` INT NOT NULL,
  `Id_atividade` INT NOT NULL,
  PRIMARY KEY (`Id_plano`, `Id_atividade`),
  INDEX `fk_Plano_has_Atividade_Fitness_Atividade_Fitness1_idx` (`Id_atividade` ASC) VISIBLE,
  INDEX `fk_Plano_has_Atividade_Fitness_Plano_idx` (`Id_plano` ASC) VISIBLE,
  CONSTRAINT `fk_Plano_has_Atividade_Fitness_Plano`
    FOREIGN KEY (`Id_plano`)
    REFERENCES `ginasio`.`Plano` (`Id_plano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plano_has_Atividade_Fitness_Atividade_Fitness1`
    FOREIGN KEY (`Id_atividade`)
    REFERENCES `ginasio`.`Atividade_Fitness` (`Id_atividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
