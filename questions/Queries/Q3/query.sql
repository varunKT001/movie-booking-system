SELECT Cust_Age FROM Customer 
WHERE Cust_Id = 
    (                
    SELECT Cust_Id FROM Ticket 
    WHERE show_id =
        (
        SELECT show_id FROM Shows
        WHERE movie_Name = 'The Eternals'
        )
    );