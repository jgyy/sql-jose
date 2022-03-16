SELECT first_name,
    last_name
FROM customer AS c
WHERE NOT EXISTS (
        SELECT *
        FROM payment AS p
        WHERE p.customer_id = c.customer_id
            AND amount > 11
    );