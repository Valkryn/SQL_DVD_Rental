Challenge -
Pair off the films where the duration (length of the movie) matches.

Solution
SELECT f1.title ,f2.title , f1.length FROM film as f1
	INNER JOIN film as f2
		ON f1.film_id != f2.film_id
	WHERE f1.length = f2.length ;
  
  //in an inner join we are making a kind of copy of the table to join it on itself. in this case the two tables are f1 and f2. 
