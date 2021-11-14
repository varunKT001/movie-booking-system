SELECT cust_name, cust_phone, cust_age
FROM customer NATURAL JOIN ticket NATURAL JOIN shows NATURAL JOIN movie_room
WHERE room_name = 'Executive';