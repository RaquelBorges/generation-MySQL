-- MySQL Script generated by MySQL Workbench
-- Mon Feb 15 18:39:37 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema game_online
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema game_online
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `game_online` DEFAULT CHARACTER SET utf8 ;
USE `game_online` ;

-- -----------------------------------------------------
-- Table `game_online`.`Classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `game_online`.`Classes` (
  `idclasse` INT NOT NULL AUTO_INCREMENT,
  `cargo` VARCHAR(45) NOT NULL,
  `ataque` INT NOT NULL,
  `defesa` INT NOT NULL,
  PRIMARY KEY (`idclasse`),
  UNIQUE INDEX `idclasse_UNIQUE` (`idclasse` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `game_online`.`Personagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `game_online`.`Personagens` (
  `idPersonagens` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `hp` INT NOT NULL,
  `ataque` INT NOT NULL,
  `defesa` INT NOT NULL,
  `fk_idclasse` INT NOT NULL,
  PRIMARY KEY (`idPersonagens`, `fk_idclasse`),
  UNIQUE INDEX `idPersonagens_UNIQUE` (`idPersonagens` ASC) VISIBLE,
  INDEX `fk_Personagens_Classes_idx` (`fk_idclasse` ASC) VISIBLE,
  CONSTRAINT `fk_Personagens_Classes`
    FOREIGN KEY (`fk_idclasse`)
    REFERENCES `game_online`.`Classes` (`idclasse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
