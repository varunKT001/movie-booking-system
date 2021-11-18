SELECT cust_id, cust_name, cust_phone, cust_age, show_slot, price
FROM customer NATURAL JOIN ticket NATURAL JOIN shows NATURAL JOIN movie
WHERE movie_name = 'Iron-Man 2' AND lang = 'E';