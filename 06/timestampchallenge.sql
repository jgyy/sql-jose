SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1