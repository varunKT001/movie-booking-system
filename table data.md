## MOVIE TABLE :

```sh
CREATE TABLE Movie
 (
  movie_Id VARCHAR(5) NOT NULL,
  movie_Name VARCHAR(20) NOT NULL,
  duartion INT NOT NULL,
  rating INT NOT NULL,
  genre VARCHAR(15) NOT NULL,
  PRIMARY KEY (movie_Id)
  );
  INSERT INTO Movie VALUES
  ('F1', 'Inception', '148', '4', 'Thriller'),
  ('F2', 'Iron-Man 2', '100', '5', 'Sci-Fi'),
  ('F3', 'The Eternals', '157', '4', 'Sci-Fi');
  
  SELECT * FROM Movie
```

## MOVIE ROOM TABLE:

```sh
CREATE TABLE movie_Room
 (
  ent_Id VARCHAR(5) NOT NULL,
  total_seat INT NOT NULL,
  movie_Id VARCHAR(5) NOT NULL,
  PRIMARY KEY (ent_Id)
  );
  INSERT INTO movie_Room VALUES
  ('E1', '8',  'F1'),
  ('E2', '8',  'F2'),
  ('E3', '8',  'F3');
  
  SELECT * FROM movie_Room
```

## CUSTOMER TABLE :

```sh
CREATE TABLE Customer
 (
  Cust_Id VARCHAR(5) NOT NULL,
  Cust_Name VARCHAR(20) NOT NULL,
  Cust_Phone VARCHAR(15) NOT NULL,
  PRIMARY KEY (Cust_Id)
  );
  INSERT INTO Customer VALUES
  ('P1', 'AMAN KUMAR', '12345678'),
  ('P2', 'ANSH RUSIA', '23456789'),
  ('P3', 'SHUBHAJEET PRADHAN', '34567891'),
  ('P4', 'VARUN KUMAR TIWARI', '45678912');
  
  SELECT * FROM Customer
```

## SHOW TABLE :

```sh
CREATE TABLE Shows
 (
  show_Id VARCHAR(5) NOT NULL,
  show_slot VARCHAR(5) NOT NULL,
  show_date DATE NOT NULL,
  lang VARCHAR(15) NOT NULL,
  PRIMARY KEY (show_Id)
  FOREIGN KEY (movie_Id) REFERENCES Movie(movie_Id)
  );
  INSERT INTO Shows VALUES
  ('S1', 'slotA', '2021-09-07', 'Hindi', 'F3'),
  ('S2', 'slotB', '2021-08-05', 'English', 'F1'),
  ('S3', 'slotC', '2021-06-11', 'English', 'F2'),
  ('S4', 'slotD', '2021-07-23', 'English', 'F3' );
  
  SELECT * FROM Shows
```

## SEAT TABLE :

```sh
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
```

## TICKET TABLE :

```sh
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
```

