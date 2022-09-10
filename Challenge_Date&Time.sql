-- Challenge 1 - 
-- During which months did paments occur? Be sure to format the answer to return the full month name.

-- Solution -
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) FROM payment;

-- Challenge 2 - 
-- How many payments occured on a Monday?

-- Solution -

SELECT 	COUNT(*) FROM payment
	WHERE TO_CHAR(payment_date,'DAY') = 'MONDAY   ';
 
-- alternatively after looking at EXTRACT Documentation I learned about dow - Day Of Week // sunday = 0 monday = 1 tuesday = 2 etc etc

SELECT COUNT(*) FROM payment 
	WHERE EXTRACT(dow FROM payment_date) = 1
  
  
--   TO_CHAR(COL_NAME , PARAMETER)
--   EXTRACT(field FROM COL_NAME/SOURCE )
  
