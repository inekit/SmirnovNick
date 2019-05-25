-- MySQL Workbench Synchronization
-- Generated: 2019-05-25 19:01
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: RABOTA

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `nicklzx`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `nicklzx`.`Employees` (
  `id` INT(11) NOT NULL,
  `Initials` VARCHAR(45) NULL DEFAULT NULL,
  `post` VARCHAR(45) NULL DEFAULT NULL,
  `passport` VARCHAR(45) NULL DEFAULT NULL,
  `home_adress` VARCHAR(45) NULL DEFAULT NULL,
  `h_phone` VARCHAR(45) NULL DEFAULT NULL,
  `m_phone` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `nicklzx`.`Performanes` (
  `id` INT(11) NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Author` VARCHAR(45) NULL DEFAULT NULL,
  `Pr_year` YEAR NULL DEFAULT NULL,
  `Gerne` VARCHAR(45) NULL DEFAULT NULL,
  `Acts_number` INT(11) NULL DEFAULT NULL,
  `Plot` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `nicklzx`.`Actors` (
  `id` INT(11) NOT NULL,
  `Emp_id` INT(11) NOT NULL,
  `Perf_id` INT(11) NOT NULL,
  `Role` VARCHAR(45) NULL DEFAULT NULL,
  `Perf_date` DATE NULL DEFAULT NULL,
  INDEX `fk_Employees_has_Emp_perf_Emp_perf1_idx` (`Perf_id` ASC),
  INDEX `fk_Employees_has_Emp_perf_Employees_idx` (`Emp_id` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Employees_has_Emp_perf_Employees`
    FOREIGN KEY (`Emp_id`)
    REFERENCES `nicklzx`.`Employees` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employees_has_Emp_perf_Emp_perf1`
    FOREIGN KEY (`Perf_id`)
    REFERENCES `nicklzx`.`Performanes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `nicklzx`.`Inventary` (
  `Inv_nmbr` INT(11) NOT NULL,
  `Type` VARCHAR(45) NULL DEFAULT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Perf_id` INT(11) NOT NULL,
  PRIMARY KEY (`Inv_nmbr`),
  INDEX `fk_Performanes_has_table3_Performanes1_idx` (`Perf_id` ASC),
  CONSTRAINT `fk_Performanes_has_table3_Performanes1`
    FOREIGN KEY (`Perf_id`)
    REFERENCES `nicklzx`.`Performanes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `nicklzx`.`Shedle` (
  `id` INT(11) NOT NULL,
  `Perf_id` INT(11) NOT NULL,
  `Perf_dtime` DATETIME NULL DEFAULT NULL,
  `Price` INT(11) NULL DEFAULT NULL,
  INDEX `fk_table1_Performanes1_idx` (`Perf_id` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_table1_Performanes1`
    FOREIGN KEY (`Perf_id`)
    REFERENCES `nicklzx`.`Performanes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
