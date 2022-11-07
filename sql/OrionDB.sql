-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema orionbd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema orionbd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `orionbd` DEFAULT CHARACTER SET utf8mb4 ;
USE `orionbd` ;

-- -----------------------------------------------------
-- Table `orionbd`.`classificacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orionbd`.`classificacao` (
  `id_classificacao` INT(11) NOT NULL AUTO_INCREMENT,
  `classificacao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_classificacao`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `orionbd`.`usuario_pf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orionbd`.`usuario_pf` (
  `idUsuario_PF` INT(11) NOT NULL AUTO_INCREMENT,
  `CPF` VARCHAR(14) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `dataDeNascimento` DATE NOT NULL,
  `image` BLOB NULL DEFAULT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `nomeCompleto` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idUsuario_PF`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) ,
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) )
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `orionbd`.`usuario_pj`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orionbd`.`usuario_pj` (
  `idusuario_PJ` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeEmpresa` VARCHAR(255) NOT NULL,
  `cnpj` VARCHAR(14) NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `cep` INT(11) NOT NULL,
  `Endereco` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `imagem` BLOB NULL DEFAULT NULL,
  `classificacao_id` INT(11) NOT NULL,
  PRIMARY KEY (`idusuario_PJ`),
  INDEX `fk_classificacao_idx` (`classificacao_id` ASC) ,
  CONSTRAINT `fk_classificacao`
    FOREIGN KEY (`classificacao_id`)
    REFERENCES `orionbd`.`classificacao` (`id_classificacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO classificacao ( classificacao ) 
VALUES ("Pubs & Bares"), ("Festas Universitárias"), ("Restaurantes"), ("Eventos"), ("Atividade Recreativa");


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
