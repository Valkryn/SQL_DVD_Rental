-- Challenge -
-- Using the customer list, make the first 100 customers a status of Gold , customer 100 -> 200 Silver and the rest Bronze

-- Solution -
SELECT customer_id ,
	CASE
		WHEN customer_id <= 100 THEN 'Gold'
		WHEN customer_id < 200 THEN 'Silver' // this line can also say WHEN customer_id BETWEEN 100 AND 200 THEN 'Silver'
		ELSE 'Normal'
	END AS customer_status
FROM customer;

-- Challenge - 
-- There was a raffle. Using the customer list write a query returning customer with id 2 as the winner and customer 5 as second place

-- Solution -

SELECT customer_id,
	CASE customer_id
		WHEN 2 THEN 'Winner'
		WHEN 5 THEN 'Second Place'
		ELSE 'Normal'
	END AS raffle_winner
FROM customer;

-- Challenge -
-- We want to know and compare the various amounts of films we have  per movie rating. Use CASE and the dvdrental database to re-create this table. 

-- solution-
SELECT 
	SUM(CASE rating
		WHEN 'R' THEN 1
		ELSE 0
	END) AS R,
	SUM(CASE rating
		WHEN 'PG' THEN 1
		ELSE 0
	END) AS PG,
	SUM(CASE rating
		WHEN 'PG-13' THEN 1
		ELSE 0
	END) AS pg_13
FROM film;
	

