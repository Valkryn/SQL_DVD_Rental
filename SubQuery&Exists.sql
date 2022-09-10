-- Challenge 1 -
-- Return all the films that are higher than the average rental rates

-- Solution - 
SELECT title,rental_rate FROM film
	WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);
  
