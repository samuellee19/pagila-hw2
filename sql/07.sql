/*
 * A group of social scientists is studying American movie watching habits.
 * To help them, select the titles of all films that have never been rented by someone who lives in the United States.
 *
 * HINT:
 * This can be solved either with a LEFT JOIN or with the NOT IN operator.
 * You may choose whichever solution makes the most sense to you.
 */

SELECT DISTINCT(title) FROM inventory
INNER JOIN film ON inventory.film_id = film.film_id
WHERE film.film_id NOT IN (SELECT film_id FROM rental
    INNER JOIN customer ON rental.customer_id = customer.customer_id
    INNER JOIN address ON customer.address_id = address.address_id
    INNER JOIN city ON address.city_id = city.city_id
    INNER JOIN country ON city.country_id = country.country_id
    INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
    WHERE country = 'United States')
ORDER BY title ASC;
