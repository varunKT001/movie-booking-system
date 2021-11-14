SELECT seat_Id FROM Reservation
WHERE ticket_Id = 
    ( 
    SELECT ticket_Id FROM ticket 
    WHERE Cust_Id = 
        (
        SELECT Cust_Id FROM Customer
        WHERE Cust_Name = 'ANSH RUSIA'
        )
    );