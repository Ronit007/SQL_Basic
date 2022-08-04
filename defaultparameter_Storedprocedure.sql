-- WE USE DELIMITER TO TELL THE MYSQL CLIENT TO TREAT THE STATEMENT AS AN ENTIRE STATEMENT  


-- Method 1 to use Default Parameter 
-- DELIMITER $$
-- CREATE PROCEDURE get_invoices_by_client (client_id int)
-- BEGIN 
-- 	IF client_id IS NULL THEN 
-- 		SET client_id = 3 ; 
-- 	END IF ; 
--     SELECT * FROM invoices i
-- 	WHERE i.client_id = IFNULL(client_id,i.client_id) ;
-- END $$

-- Method 2 to use Default Parameter 
-- DELIMITER $$
-- CREATE PROCEDURE get_invoices_by_client (client_id int)
-- BEGIN 
-- 	IF client_id IS NULL THEN 
-- 		SELECT * FROM clients; 
-- 	ELSE 
--     SELECT * FROM invoices i
-- 	WHERE i.client_id = IFNULL(client_id,i.client_id) ;
--     END IF ; 
-- END $$


-- Easiest Way to use Default Parameter 

DELIMITER $$
CREATE PROCEDURE get_invoices_by_client (client_id int)
BEGIN 
	SELECT * FROM invoices i
	WHERE i.client_id = IFNULL(client_id,i.client_id) ;
END $$


DROP PROCEDURE get_invoices_by_client;
  
CALL get_invoices_by_client(NULL);