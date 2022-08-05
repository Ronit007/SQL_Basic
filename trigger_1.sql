DELIMITER $$

CREATE TRIGGER delete_after_payment
	 AFTER DELETE ON payments 
	 FOR EACH ROW 
 BEGIN 
		UPDATE invoices
		SET payment_total = payment_total - OLD.amount
		WHERE invoice_id = OLD.invoice_id;
 END $$
 
 DELIMITER ;
 
 DELETE 
 FROM payments
 WHERE inovice_id = 10
 