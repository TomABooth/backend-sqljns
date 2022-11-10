-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
    SELECT
        film.title, film.description, film.release_year,
        coalesce(json_agg(to_jsonb (actor))) AS actors
    FROM
        film
        LEFT JOIN film_actor on film_actor.film_id = film.film_id
        LEFT JOIN actor on actor.actor_id = film_actor.actor_id
    WHERE
        film.title = 'Airplane Sierra'
    GROUP BY
        film.title, film.description, film.release_year
