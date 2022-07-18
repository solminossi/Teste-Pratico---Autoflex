-- MySQL Script generated by MySQL Workbench
-- Sat Jul 16 17:58:54 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Autoflex
-- -----------------------------------------------------
-- banco de dados para teste para empresa
-- 

-- -----------------------------------------------------
-- Schema Autoflex
--
-- banco de dados para teste para empresa
-- 
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Autoflex` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `Autoflex` ;

-- -----------------------------------------------------
-- Table `Autoflex`.`produto 01`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Autoflex`.`produto 01` (
  `idproduto` INT NOT NULL AUTO_INCREMENT COMMENT '\n\n',
  `produtocol` VARCHAR(45) NOT NULL,
  `produtocol1` VARCHAR(45) NOT NULL,
  `produtocol2` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idproduto`, `produtocol`, `produtocol1`, `produtocol2`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autoflex`.`produto 02`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Autoflex`.`produto 02` (
  `idproduto 02` INT NOT NULL,
  `produto 02col` VARCHAR(45) NOT NULL,
  `produto 02col1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idproduto 02`, `produto 02col`, `produto 02col1`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autoflex`.`matéria prima 11`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Autoflex`.`matéria prima 11` (
  `idmp` INT NOT NULL AUTO_INCREMENT,
  `mp 01` VARCHAR(45) NOT NULL,
  `mp 02` VARCHAR(45) NOT NULL,
  `mp 03` VARCHAR(45) NOT NULL,
  `mp 03` VARCHAR(45) NOT NULL,
  `produto 01_idproduto` INT NOT NULL,
  `produto 01_produtocol` VARCHAR(45) NOT NULL,
  `produto 01_produtocol1` VARCHAR(45) NOT NULL,
  `produto 01_produtocol2` VARCHAR(45) NOT NULL,
  `produto 02_idproduto 02` INT NOT NULL,
  `produto 02_produto 02col` VARCHAR(45) NOT NULL,
  `produto 02_produto 02col1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmp`, `mp 01`, `mp 02`, `mp 03`, `mp 03`),
  INDEX `fk_matéria prima 11_produto 01_idx` (`produto 01_idproduto` ASC, `produto 01_produtocol` ASC, `produto 01_produtocol1` ASC, `produto 01_produtocol2` ASC) VISIBLE,
  INDEX `fk_matéria prima 11_produto 021_idx` (`produto 02_idproduto 02` ASC, `produto 02_produto 02col` ASC, `produto 02_produto 02col1` ASC) VISIBLE,
  CONSTRAINT `fk_matéria prima 11_produto 01`
    FOREIGN KEY (`produto 01_idproduto` , `produto 01_produtocol` , `produto 01_produtocol1` , `produto 01_produtocol2`)
    REFERENCES `Autoflex`.`produto 01` (`idproduto` , `produtocol` , `produtocol1` , `produtocol2`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_matéria prima 11_produto 021`
    FOREIGN KEY (`produto 02_idproduto 02` , `produto 02_produto 02col` , `produto 02_produto 02col1`)
    REFERENCES `Autoflex`.`produto 02` (`idproduto 02` , `produto 02col` , `produto 02col1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Autoflex`.`materia prima 12`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Autoflex`.`materia prima 12` (
  `id mp` INT NOT NULL AUTO_INCREMENT,
  `mp 01` VARCHAR(45) NOT NULL,
  `mp 02` VARCHAR(45) NOT NULL,
  `produto 02_idproduto 02` INT NOT NULL,
  `produto 02_produto 02col` VARCHAR(45) NOT NULL,
  `produto 02_produto 02col1` VARCHAR(45) NOT NULL,
  `produto 01_idproduto` INT NOT NULL,
  `produto 01_produtocol` VARCHAR(45) NOT NULL,
  `produto 01_produtocol1` VARCHAR(45) NOT NULL,
  `produto 01_produtocol2` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id mp`, `mp 01`, `mp 02`),
  INDEX `fk_materia prima 12_produto 021_idx` (`produto 02_idproduto 02` ASC, `produto 02_produto 02col` ASC, `produto 02_produto 02col1` ASC) VISIBLE,
  INDEX `fk_materia prima 12_produto 011_idx` (`produto 01_idproduto` ASC, `produto 01_produtocol` ASC, `produto 01_produtocol1` ASC, `produto 01_produtocol2` ASC) VISIBLE,
  CONSTRAINT `fk_materia prima 12_produto 021`
    FOREIGN KEY (`produto 02_idproduto 02` , `produto 02_produto 02col` , `produto 02_produto 02col1`)
    REFERENCES `Autoflex`.`produto 02` (`idproduto 02` , `produto 02col` , `produto 02col1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_materia prima 12_produto 011`
    FOREIGN KEY (`produto 01_idproduto` , `produto 01_produtocol` , `produto 01_produtocol1` , `produto 01_produtocol2`)
    REFERENCES `Autoflex`.`produto 01` (`idproduto` , `produtocol` , `produtocol1` , `produtocol2`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
