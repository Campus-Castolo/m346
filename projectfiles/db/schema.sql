-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DHLLC_Portfolio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DHLLC_Portfolio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DHLLC_Portfolio` DEFAULT CHARACTER SET utf8 ;
USE `DHLLC_Portfolio` ;

-- -----------------------------------------------------
-- Table `DHLLC_Portfolio`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DHLLC_Portfolio`.`User` (
  `idUser` INT UNSIGNED NOT NULL,
  `nicknameUser` VARCHAR(45) NOT NULL,
  `nameUser` VARCHAR(45) NULL,
  `surnameUser` VARCHAR(45) NULL,
  `creationUser` DATETIME NULL DEFAULT NOW(),
  PRIMARY KEY (`idUser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DHLLC_Portfolio`.`TechStack`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DHLLC_Portfolio`.`TechStack` (
  `idTechStackStock` INT NOT NULL,
  `amountTechStack` INT NOT NULL,
  `User_idUser` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idTechStackStock`),
  INDEX `fk_TechStack_User_idx` (`User_idUser` ASC) VISIBLE,
  CONSTRAINT `fk_TechStack_User`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `DHLLC_Portfolio`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DHLLC_Portfolio`.`AgriBusiness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DHLLC_Portfolio`.`AgriBusiness` (
  `idAgriBusiness` INT NOT NULL,
  `amountAgriBusiness` INT NOT NULL,
  `User_idUser` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idAgriBusiness`),
  INDEX `fk_AgriBusiness_User1_idx` (`User_idUser` ASC) VISIBLE,
  CONSTRAINT `fk_AgriBusiness_User1`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `DHLLC_Portfolio`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DHLLC_Portfolio`.`FinancialAdvisory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DHLLC_Portfolio`.`FinancialAdvisory` (
  `idFinancialAdvisory` INT NOT NULL,
  `hasFinancialAdvisory` TINYINT NOT NULL DEFAULT 0,
  `ContactFinancialAdvisory` VARCHAR(45) NOT NULL,
  `User_idUser` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idFinancialAdvisory`),
  INDEX `fk_FinancialAdvisory_User1_idx` (`User_idUser` ASC) VISIBLE,
  CONSTRAINT `fk_FinancialAdvisory_User1`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `DHLLC_Portfolio`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DHLLC_Portfolio`.`Proftolio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DHLLC_Portfolio`.`Proftolio` (
  `idProftolio` INT NOT NULL,
  `User_idUser` INT UNSIGNED NOT NULL,
  `TechStack_idTechStackStock` INT NOT NULL,
  `AgriBusiness_idAgriBusiness` INT NOT NULL,
  `FinancialAdvisory_idFinancialAdvisory` INT NOT NULL,
  `creationPortfolio` DATETIME GENERATED ALWAYS AS (NOW()) VIRTUAL,
  PRIMARY KEY (`idProftolio`, `AgriBusiness_idAgriBusiness`, `FinancialAdvisory_idFinancialAdvisory`, `TechStack_idTechStackStock`, `User_idUser`),
  INDEX `fk_Proftolio_User1_idx` (`User_idUser` ASC) VISIBLE,
  INDEX `fk_Proftolio_TechStack1_idx` (`TechStack_idTechStackStock` ASC) VISIBLE,
  INDEX `fk_Proftolio_AgriBusiness1_idx` (`AgriBusiness_idAgriBusiness` ASC) VISIBLE,
  INDEX `fk_Proftolio_FinancialAdvisory1_idx` (`FinancialAdvisory_idFinancialAdvisory` ASC) VISIBLE,
  CONSTRAINT `fk_Proftolio_User1`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `DHLLC_Portfolio`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Proftolio_TechStack1`
    FOREIGN KEY (`TechStack_idTechStackStock`)
    REFERENCES `DHLLC_Portfolio`.`TechStack` (`idTechStackStock`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Proftolio_AgriBusiness1`
    FOREIGN KEY (`AgriBusiness_idAgriBusiness`)
    REFERENCES `DHLLC_Portfolio`.`AgriBusiness` (`idAgriBusiness`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Proftolio_FinancialAdvisory1`
    FOREIGN KEY (`FinancialAdvisory_idFinancialAdvisory`)
    REFERENCES `DHLLC_Portfolio`.`FinancialAdvisory` (`idFinancialAdvisory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;