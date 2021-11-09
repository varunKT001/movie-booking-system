CREATE TABLE Ticket
(
  ticket_Id VARCHAR(5) NOT NULL,
  price INT NOT NULL,
  PRIMARY KEY (ticket_Id),
  FOREIGN KEY (ent_Id) VARchar REFERENCES movie_Room(ent_Id),
  FOREIGN KEY (seat_Id) VARchar REFERENCES Seat(seat_Id),
  FOREIGN KEY (seat_Type) VARchar REFERENCES Seat(seat_Type),
  FOREIGN KEY (show_Id) VARchar REFERENCES Shows(show_Id)
  );
  INSERT INTO Ticket VALUES
  ('TCK1', 'E1', 'E104', 'Gold', 'S1', '750'),
  ('TCK2', 'E2', 'E202', 'Silver', 'S2', '300'),
  ('TCK3', 'E2', 'E206', 'Platinum', 'S3', '925'),
  ('TCK4', 'E3', 'E301', 'Luxury', 'S4', '1030');
  
  SELECT * FROM Ticket