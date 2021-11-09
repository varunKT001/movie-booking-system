CREATE TABLE Seat
(
  seat_Id INT NOT NULL,
  seat_Type VARCHAR(8) NOT NULL,
  PRIMARY KEY (seat_Id)
  );
  INSERT INTO Seat VALUES
  ('E104', 'Gold'),
  ('E202', 'Silver'),
  ('E206', 'Platinum'),
  ('E301', 'Luxury');
  
  SELECT * FROM Seat