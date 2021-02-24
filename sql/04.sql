/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */
SELECT title FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
INNER JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.customer_id = 1
GROUP BY film.film_id
HAVING COUNT(film.film_id) > 1;
