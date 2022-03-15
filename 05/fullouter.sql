SELECT *
FROM customer
    FULL OUTER JOIN payment ON customer.customer_id = payment.payment_id
WHERE customer.customer_id IS NULL
    OR payment.payment_id IS NULL