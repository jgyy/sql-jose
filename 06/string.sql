SELECT LOWER(LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com' AS custom
from customer;