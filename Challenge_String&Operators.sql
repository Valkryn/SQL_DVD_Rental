-- Challenge 1 -
-- Combine first and last name under a single column

-- Solution
SELECT first_name || ' ' || last_name AS full_name FROM customer;

-- Challenge 2 -
-- Create an email address for each person following the format first.last@sql.com

-- Solution -
SELECT first_name || '.' || last_name ||'@sql.com' AS full_name FROM customer;

-- NOTE: || combines/concatenates strings together

-- Challenge 3 -
-- Create an email address for each person following the format using the first 3 letters of first name '.' lastname. 
-- Ensure the whole address is lower case.

-- Solution - 
SELECT LOWER(LEFT(first_name,3)) || '.' || LOWER(last_name) ||  '@sql.com' AS email
	FROM customer;


