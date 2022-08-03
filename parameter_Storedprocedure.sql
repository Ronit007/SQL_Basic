-- WE USE DELIMITER TO TELL THE MYSQL CLIENT TO TREAT THE STATEMENT AS AN ENTIRE STATEMENT  

DELIMITER $$
CREATE PROCEDURE get_invoices_by_client (client_id int)
BEGIN 
SELECT * FROM invoices i
WHERE i.client_id = client_id ;
END $$

CALL get_invoices_by_client(1)