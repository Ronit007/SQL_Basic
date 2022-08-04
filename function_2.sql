USE `sql_invoicing`;
DROP function IF EXISTS `balance`;

USE `sql_invoicing`;
DROP function IF EXISTS `sql_invoicing`.`balance`;
;

DELIMITER $$
USE `sql_invoicing`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `balance`(client_id INT) RETURNS int
    READS SQL DATA
BEGIN
DECLARE balance DECIMAL (9,2); 
DECLARE payment_left  DECIMAL (9,2) ; 
DECLARE payment_given DECIMAL (9,2) ; 

SELECT SUM(invoice_total),SUM(payment_total)
INTO payment_left, payment_given 
FROM invoices 
WHERE i.client_id = client_id;
SET balance = (payment_left- payment_given )*5 ; 

RETURN IFNULL(balance,0);
END$$

DELIMITER ;
;

