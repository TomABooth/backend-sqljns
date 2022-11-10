-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT
    country.country, AVG(payment.amount)
FROM
    country
    LEFT JOIN city ON country.country_id = city.country_id
    LEFT JOIN address ON address.city_id = city.city_id
    LEFT JOIN customer ON address.address_id = customer.address_id
    INNER JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY
    country.country
ORDER BY AVG(payment.amount) DESC
LIMIT 10