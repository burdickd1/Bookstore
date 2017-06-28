delete from elsevier.purchase where date = 0;
ALTER TABLE `Elsevier`.`purchase` 
ADD COLUMN `purchase_id` INT(11) NOT NULL AUTO_INCREMENT AFTER `quantity`,
ADD PRIMARY KEY (`purchase_id`);

ALTER TABLE `Elsevier`.`request` 
ADD COLUMN `request_id` INT(11) NOT NULL AUTO_INCREMENT AFTER `book_id`,
ADD PRIMARY KEY (`request_id`);
