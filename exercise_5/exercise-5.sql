-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film
SELECT
    film.title
FROM
    film
    LEFT JOIN film_actor on film.film_id = film_actor.film_id
    LEFT JOIN actor on actor.actor_id = film_actor.actor_id
WHERE
    actor.last_name = 'Davis'