-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pm_system
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pm_system
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pm_system` DEFAULT CHARACTER SET utf8 ;
USE `pm_system` ;

-- -----------------------------------------------------
-- Table `pm_system`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pm_system`.`project`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`project` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pm_system`.`state`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`state` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `project_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_state_project1_idx` (`project_id` ASC) VISIBLE,
  CONSTRAINT `fk_state_project1`
    FOREIGN KEY (`project_id`)
    REFERENCES `pm_system`.`project` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pm_system`.`task`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`task` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  `user_id` INT NULL,
  `state_id` INT NOT NULL,
  `deadline` TIMESTAMP NULL,
  `creation_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_task_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_task_state1_idx` (`state_id` ASC) VISIBLE,
  CONSTRAINT `fk_task_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `pm_system`.`user` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_task_state1`
    FOREIGN KEY (`state_id`)
    REFERENCES `pm_system`.`state` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pm_system`.`attachment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`attachment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `task_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_attachment_task1_idx` (`task_id` ASC) VISIBLE,
  CONSTRAINT `fk_attachment_task1`
    FOREIGN KEY (`task_id`)
    REFERENCES `pm_system`.`task` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pm_system`.`artifact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`artifact` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  `url` VARCHAR(45) NOT NULL,
  `attachment_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_artifact_attachment1_idx` (`attachment_id` ASC) VISIBLE,
  CONSTRAINT `fk_artifact_attachment1`
    FOREIGN KEY (`attachment_id`)
    REFERENCES `pm_system`.`attachment` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pm_system`.`position`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`position` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `position_name` ENUM("TEAMLEAD", "DEVELOPER", "PROJECT_MANAGER") NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`position_name` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO pm_system.position(position_name) VALUES ("DEVELOPER"),("TEAMLEAD"),("PROJECT_MANAGER");
-- -----------------------------------------------------
-- Table `pm_system`.`collaboration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`collaboration` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `project_id` INT NOT NULL,
  `position_id` INT NOT NULL,
  INDEX `fk_user_has_project_project1_idx` (`project_id` ASC) VISIBLE,
  INDEX `fk_user_has_project_user_idx` (`user_id` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  INDEX `fk_user_has_project_role1_idx` (`position_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_has_project_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `pm_system`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_user_has_project_project1`
    FOREIGN KEY (`project_id`)
    REFERENCES `pm_system`.`project` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_user_has_project_role1`
    FOREIGN KEY (`position_id`)
    REFERENCES `pm_system`.`position` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pm_system`.`timestamps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pm_system`.`timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

