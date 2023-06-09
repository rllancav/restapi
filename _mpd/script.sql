

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema rest_api
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `rest_api` ;

-- -----------------------------------------------------
-- Schema rest_api
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rest_api` DEFAULT CHARACTER SET utf8 ;
USE `rest_api` ;

-- -----------------------------------------------------
-- Table `rest_api`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rest_api`.`users` ;

CREATE TABLE IF NOT EXISTS `rest_api`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `role` ENUM('administrator', 'editor') NULL,
  `status` ENUM('active', 'inactive', 'deleted') NULL DEFAULT 'active',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
