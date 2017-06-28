DELETE FROM elsevier.address;
DROP TABLE IF EXISTS elsevier.payment_info;

ALTER TABLE `Elsevier`.`address`
CHANGE COLUMN `address_id` `address_id` INT(11) NOT NULL AUTO_INCREMENT ;

CREATE TABLE `Elsevier`.`payment_info` (
  `customer_id_payment` INT NOT NULL,
  `address_id_payment` INT NOT NULL,
  `card_number` INT NULL,
  `expire_year` INT NULL,
  `expire_month` INT NULL,
  INDEX `address_id_payment_idx` (`address_id_payment` ASC),
  INDEX `customer_id_payment_idx` (`customer_id_payment` ASC),
  CONSTRAINT `customer_id_payment`
    FOREIGN KEY (`customer_id_payment`)
    REFERENCES `Elsevier`.`customer` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `address_id_payment`
    FOREIGN KEY (`address_id_payment`)
    REFERENCES `Elsevier`.`address` (`address_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);