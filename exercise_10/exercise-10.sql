-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT
    category.name
FROM inventory
    LEFT JOIN film_category ON inventory.film_id = film_category.film_id
    LEFT JOIN category ON film_category.category_id = category.category_id
    LEFT JOIN film ON film_category.film_id = film.film_id
    LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE
    rental IS NULL