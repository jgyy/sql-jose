SELECT payment_id,
    payment.customer_id,
    first_name
FROM customer
    INNER JOIN payment ON payment.customer_id = customer.customer_id