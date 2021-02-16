-- MySQL Script generated by MySQL Workbench
-- Mon Feb 15 22:50:58 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema farmacia_dobem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema farmacia_dobem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `farmacia_dobem` DEFAULT CHARACTER SET utf8 ;
USE `farmacia_dobem` ;

-- -----------------------------------------------------
-- Table `farmacia_dobem`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia_dobem`.`Categoria` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  `soComReceita` VARCHAR(45) NOT NULL,
  `departamento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE INDEX `idCategoria_UNIQUE` (`idCategoria` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `farmacia_dobem`.`Produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `farmacia_dobem`.`Produtos` (
  `idProdutos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `dosagem` VARCHAR(45) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `validade` DATE NOT NULL,
  `fk_idCategoria` INT NOT NULL,
  PRIMARY KEY (`idProdutos`, `fk_idCategoria`),
  UNIQUE INDEX `idProdutos_UNIQUE` (`idProdutos` ASC) VISIBLE,
  INDEX `fk_Produtos_Categoria_idx` (`fk_idCategoria` ASC) VISIBLE,
  CONSTRAINT `fk_Produtos_Categoria`
    FOREIGN KEY (`fk_idCategoria`)
    REFERENCES `farmacia_dobem`.`Categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
