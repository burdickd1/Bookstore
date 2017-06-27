CREATE TABLE `Elsevier`.`request` (
  `customer_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  INDEX `customer_id_idx` (`customer_id` ASC),
  INDEX `book_id_idx` (`book_id` ASC),
  CONSTRAINT `customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `Elsevier`.`customer` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `book_id`
    FOREIGN KEY (`book_id`)
    REFERENCES `Elsevier`.`book` (`book_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


CREATE TABLE `Elsevier`.`purchase` (
  `book_id_purchase` INT NOT NULL,
  `customer_id_purchase` INT NOT NULL,
  `date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` INT NOT NULL DEFAULT 1,
  INDEX `book_id_idx` (`book_id_purchase` ASC),
  INDEX `customer_id_idx` (`customer_id_purchase` ASC),
  CONSTRAINT `book_id_purchase`
    FOREIGN KEY (`book_id_purchase`)
    REFERENCES `Elsevier`.`book` (`book_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `customer_id_purchase`
    FOREIGN KEY (`customer_id_purchase`)
    REFERENCES `Elsevier`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `Elsevier`.`book` 
ADD COLUMN `stock` INT NULL DEFAULT 0 AFTER `title`;

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
