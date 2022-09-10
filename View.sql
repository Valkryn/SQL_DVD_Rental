-- A view is a bit of a shortcut for a common query that one will find themself performing. 
-- for exmaple, if i find myself constantly joining 2 tables such as customer and address to know the name and address (info) of a customer;  
-- then making a VIEW will be a good option instead of re-writing the query over and over


CREATE VIEW customer_info AS
SELECT first_name || ' ' || last_name AS full_name , email , address FROM customer
	INNER JOIN address
		ON customer.address_id = address.address_id;	
    
-- This will create a view called 'customer_info'

-- and to call this VIEW 
SELECT * FROM customer_info;

-- To alter a VIEW use
-- CREATE OR REPLACE VIEW /VIEW_NAME/ AS 
-- query.. .. .. 


-- CREATE OR REPLACE VIEW customer_info AS 
SELECT first_name || ' ' || last_name AS full_name , email , address , district FROM customer
	INNER JOIN address
		ON customer.address_id = address.address_id;
    
--  To remove a view 
 DROP VIEW customer_info
 
--  To rename a view 
 ALTER VIEW customer_info RENAME TO c_info 
 
