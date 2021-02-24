/*
 * This problem is the same as 06.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

SELECT DISTINCT(title) FROM film
LEFT JOIN inventory ON film.film_id = inventory.film_id
WHERE inventory_id IS NULL
ORDER BY title ASC;
