-- WE USE DELIMITER TO TELL THE MYSQL CLIENT TO TREAT THE STATEMENT AS AN ENTIRE STATEMENT  

DELIMITER $$
CREATE PROCEDURE get_clients ()
BEGIN 
SELECT * FROM clients ;
END $$

DELIMITER ;	


-- FOR CALLING STORED PROCEDURE
-- CALL get_clients()

DELIMITER $$
CREATE PROCEDURE get_invoices_with_balance()
BEGIN 
SELECT * 
FROM invoices 
WHERE (invoice_total - payment_total) > 0 ;
END $$
DELIMITER ;

-- To DROP A PROCEDURE 
-- DROP PROCEDURE IF EXISTS get_payments;