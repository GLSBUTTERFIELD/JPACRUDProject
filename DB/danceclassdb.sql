-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema danceclassdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `danceclassdb` ;

-- -----------------------------------------------------
-- Schema danceclassdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `danceclassdb` DEFAULT CHARACTER SET utf8 ;
USE `danceclassdb` ;

-- -----------------------------------------------------
-- Table `dance_class`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dance_class` ;

CREATE TABLE IF NOT EXISTS `dance_class` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `instructor` VARCHAR(45) NOT NULL,
  `start_time` TIME NOT NULL,
  `weekday` VARCHAR(45) NOT NULL,
  `interval1` VARCHAR(45) NULL,
  `interval2` VARCHAR(45) NULL,
  `last_update` DATETIME NOT NULL,
  `instructor_image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS danceclassuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'danceclassuser'@'localhost' IDENTIFIED BY 'danceclass';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'danceclassuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dance_class`
-- -----------------------------------------------------
START TRANSACTION;
USE `danceclassdb`;
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (1, '2024-09-01', 'SIGNATURE', 'Kenny', '10:00', 'Sunday', 'core', 'arms', '2024-09-01 12:00', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/28e8df9d-bd52-477e-af1d-0929379a44a9/kennycardiodance.png?format=1000w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (2, '2024-09-03', 'SIGNATURE', 'Mark', '17:15', 'Tuesday', 'arms', 'glutes', '2024-09-03 19:00', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/01351e65-0c08-4540-a14d-3a41982a7395/Untitled+design-11.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (3, '2024-09-04', 'SIGNATURE', 'Polly', '17:15', 'Wednesday', 'chest', 'back', '2024-09-04 20:00', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/82419392-a104-4754-bad5-d11a34d93670/Pollycardiodance.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (4, '2024-09-06', 'SIGNATURE', 'Emily', '12:00', 'Friday', 'legs', 'core', '2024-09-06 14:30', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (5, '2024-09-14', 'SIGNATURE', 'Mark', '10:15', 'Saturday', 'core', 'chest', '2024-09-14 13:00', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/01351e65-0c08-4540-a14d-3a41982a7395/Untitled+design-11.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (6, '2024-09-15', 'SIGNATURE', 'Kenny', '10:00', 'Sunday', 'chest', 'arms', '2024-09-15 15:00', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/28e8df9d-bd52-477e-af1d-0929379a44a9/kennycardiodance.png?format=1000w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (7, '2024-09-18', 'SIGNATURE', 'Quiana', '17:15', 'Wednesday', 'back', 'legs', '2024-09-18 19:45', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (8, '2024-09-19', 'SIGNATURE', 'John', '17:15', 'Thursday', 'core', 'arms', '2024-09-19 20:00', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/a7f69eb4-7495-4e2c-9552-e7202c53efab/johndanceteacher.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (9, '2024-09-24', 'BODY', 'Emily', '17:15', 'Tuesday', 'all', 'all', '2024-09-24 20:15', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (10, '2024-10-02', 'SIGNATURE', 'Quiana', '17:15', 'Wednesday', 'legs', 'back', '2024-10-02 19:30', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (11, '2024-10-06', 'SIGNATURE', 'Mark', '11:15', 'Sunday', 'core', 'chest', '2024-10-06 17:00', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/01351e65-0c08-4540-a14d-3a41982a7395/Untitled+design-11.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (12, '2024-10-07', 'SIGNATURE', 'Emily', '18:30', 'Monday', 'chest', 'glutes', '2024-10-07 20:10', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (13, '2024-10-08', 'BODY', 'Emily', '17:15', 'Tuesday', 'all', 'all', '2024-10-08 19:45', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (14, '2024-10-09', 'SIGNATURE', 'Quiana', '17:15', 'Wednesday', 'glutes', 'arms', '2024-10-09 20:20', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (15, '2024-10-10', 'SIGNATURE', 'Monica', '17:15', 'Thursday', 'glutes', 'legs', '2024-10-10 20:55', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/c2014138-92f5-4cf0-bb1f-f7fb5b6f5a5c/Monicadanceprofessional.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (16, '2024-10-13', 'SIGNATURE', 'Kenny', '10:00', 'Sunday', 'core', 'back', '2024-10-13 21:00', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/28e8df9d-bd52-477e-af1d-0929379a44a9/kennycardiodance.png?format=1000w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (17, '2024-10-13', 'SIGNATURE', 'Quiana', '14:00', 'Sunday', 'other', 'other', '2024-10-13 21:05', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (18, '2024-10-14', 'SIGNATURE', 'Emily', '18:30', 'Monday', 'legs', 'chest', '2024-10-14 20:30', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (19, '2024-10-15', 'BODY', 'Emily', '17:15', 'Tuesday', 'all', 'all', '2024-10-15 19:25', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (20, '2024-10-16', 'SIGNATURE', 'Sally', '17:15', 'Wednesday', 'core', 'arms', '2024-10-16 21:35', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/5ddfb343-0443-4e00-aff6-a471e87ce48d/sallystudioowner.png?format=1000w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (21, '2024-10-21', 'SIGNATURE', 'Emily', '18:30', 'Monday', 'legs', 'glutes', '2024-10-21 21:10', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/487fef43-c1fc-495b-b117-58d73f084b73/emilydanceinstructor.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (22, '2024-10-22', 'SIGNATURE', 'Polly', '18:30', 'Tuesday', 'glutes', 'core', '2024-10-22 21:30', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/82419392-a104-4754-bad5-d11a34d93670/Pollycardiodance.png?format=750w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (23, '2024-10-26', 'SIGNATURE', 'Mark', '10:15', 'Saturday', 'back', 'chest', '2024-10-26 13:05', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/01351e65-0c08-4540-a14d-3a41982a7395/Untitled+design-11.png?format=2500w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (24, '2024-10-27', 'SIGNATURE', 'Kenny', '10:00', 'Sunday', 'core', 'arms', '2024-10-27 12:15', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/28e8df9d-bd52-477e-af1d-0929379a44a9/kennycardiodance.png?format=1000w');
INSERT INTO `dance_class` (`id`, `date`, `type`, `instructor`, `start_time`, `weekday`, `interval1`, `interval2`, `last_update`, `instructor_image_url`) VALUES (25, '2024-10-28', 'SIGNATURE', 'Quiana', '18:30', 'Monday', 'legs', 'glutes', '2024-10-28 20:30', 'https://images.squarespace-cdn.com/content/v1/650220f55ddff27452d1174d/88e82cb3-e1b9-4f9e-ad2b-55858f2e2852/Quianadanceteacher.png?format=2500w');

COMMIT;

