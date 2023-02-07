CREATE USER 'dbuser'@'localhost' IDENTIFIED BY 'dbuser';
CREATE USER 'dbuser'@'%' IDENTIFIED BY 'dbuser';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';

GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'%';

CREATE DATABASE IF NOT EXISTS foobar;
use foobar;

CREATE TABLE `user` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`created_dt` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;

INSERT INTO `foobar`.`user` (`name`) VALUES ('111');