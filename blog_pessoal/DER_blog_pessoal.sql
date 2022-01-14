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
-- Table `tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_temas` (
  `idtb_temas` BIGINT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idtb_temas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `idtb_usuarios` BIGINT NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `usuario` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(50) NOT NULL,
  `foto` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idtb_usuarios`),
  UNIQUE INDEX `usuario_UNIQUE` (`usuario` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_postagens` (
  `tb_postagenscol` BIGINT NOT NULL AUTO_INCREMENT,
  `tb_temas_idtb_temas` BIGINT NOT NULL,
  `tb_usuarios_idtb_usuarios` BIGINT NOT NULL,
  `titulo` VARCHAR(50) NOT NULL,
  `texto` VARCHAR(1000) NOT NULL,
  `regdata` DATE NOT NULL,
  PRIMARY KEY (`tb_postagenscol`, `tb_temas_idtb_temas`, `tb_usuarios_idtb_usuarios`),
  INDEX `fk_tb_temas_has_tb_usuarios_tb_usuarios1_idx` (`tb_usuarios_idtb_usuarios` ASC) VISIBLE,
  INDEX `fk_tb_temas_has_tb_usuarios_tb_temas_idx` (`tb_temas_idtb_temas` ASC) VISIBLE,
  CONSTRAINT `fk_tb_temas_has_tb_usuarios_tb_temas`
    FOREIGN KEY (`tb_temas_idtb_temas`)
    REFERENCES `tb_temas` (`idtb_temas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_temas_has_tb_usuarios_tb_usuarios1`
    FOREIGN KEY (`tb_usuarios_idtb_usuarios`)
    REFERENCES `tb_usuarios` (`idtb_usuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
