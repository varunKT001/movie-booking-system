SELECT cust_name, cust_phone, cust_age 
FROM customer NATURAL JOIN ticket
WHERE price < 925;