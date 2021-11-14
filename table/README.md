## MOVIE TABLE :

```sh
CREATE TABLE movie
(
  movie_Name VARCHAR NOT NULL,
  duration VARCHAR NOT NULL,
  genre VARCHAR NOT NULL,
  rating VARCHAR NOT NULL,
  PRIMARY KEY (movie_Name)
);
 INSERT INTO Movie VALUES
  ('Inception', '148', 'Thriller', '5'),
  ('Iron-Man 2', '100', 'Sci-Fi', '5'),
  ('The Eternals', '157', 'Sci-Fi', '4');

  SELECT * FROM Movie
```

## MOVIE ROOM TABLE:

```sh
CREATE TABLE movie_room
(
  ent_Id VARCHAR NOT NULL,
  total_Seats INT NOT NULL,
  room_Name VARCHAR NOT NULL,
  PRIMARY KEY (ent_Id)
);
INSERT INTO movie_Room VALUES
  ('ENT1', '5',  'Silver'),
  ('ENT2', '5',  'Gold'),
  ('ENT3', '5',  'Executive');

  SELECT * FROM movie_Room
```

## CUSTOMER TABLE :

```sh
CREATE TABLE Customer
(
  Cust_Id VARCHAR NOT NULL,
  Cust_Name VARCHAR NOT NULL,
  Cust_Age INT NOT NULL,
  Cust_Phone NUMERIC NOT NULL,
  PRIMARY KEY (cust_Id)
);
INSERT INTO Customer VALUES
  ('P1', 'AMAN KUMAR', '20', '12345678'),
  ('P2', 'ANSH RUSIA', '20', '23456789'),
  ('P3', 'SHUBHAJEET PRADHAN', '20', '34567891'),
  ('P4', 'VARUN KUMAR TIWARI', '20', '45678912');

  SELECT * FROM Customer
```

## SHOW TABLE :

```sh
CREATE TABLE shows
(
  show_Id VARCHAR NOT NULL,
  show_slot VARCHAR NOT NULL,
  show_Date DATE NOT NULL,
  ent_Id VARCHAR NOT NULL,
  movie_Name VARCHAR NOT NULL,
  PRIMARY KEY (show_Id),
  FOREIGN KEY (ent_Id) REFERENCES movie_room(ent_Id),
  FOREIGN KEY (movie_Name) REFERENCES movie(movie_Name)
);
INSERT INTO Shows VALUES
  ('SHW1', 'slotA', '2021-09-07', 'ENT1', 'The Eternals'),
  ('SHW2', 'slotB', '2021-08-05', 'ENT2', 'Inception'),
  ('SHW3', 'slotC', '2021-06-11', 'ENT3', 'Iron-Man 2'),
  ('SHW4', 'slotD', '2021-06-23', 'ENT3', 'Iron-Man 2' );

  SELECT * FROM Shows
```

## SEAT TABLE :

```sh
CREATE TABLE seat
(
  seat_Id VARCHAR NOT NULL,
  seat_Number INT NOT NULL,
  seat_Row VARCHAR NOT NULL,
  ent_Id VARCHAR NOT NULL,
  PRIMARY KEY (seat_Id),
  FOREIGN KEY (ent_Id) REFERENCES movie_room(ent_Id)
);
INSERT INTO Seat VALUES
  ('E1S1','01', 'R1','ENT1'),
  ('E1S2','02', 'R1','ENT1'),
  ('E1S3','03', 'R2','ENT1'),
  ('E1S4','04', 'R2','ENT1'),
  ('E1S5','05', 'R3','ENT1'),
  ('E2G1','01', 'R1','ENT2'),
  ('E2G2','02', 'R1','ENT2'),
  ('E2G3','03', 'R2','ENT2'),
  ('E2G4','04', 'R2','ENT2'),
  ('E2G5','05', 'R3','ENT2'),
  ('E3E1','01', 'R1','ENT3'),
  ('E3E2','02', 'R1','ENT3'),
  ('E3E3','03', 'R2','ENT3'),
  ('E3E4','04', 'R2','ENT3'),
  ('E3E5','05', 'R3','ENT3');

  SELECT * FROM Seat
```

## TICKET TABLE :

```sh
CREATE TABLE Ticket
(
  ticket_Id VARCHAR NOT NULL,
  price VARCHAR NOT NULL,
  Cust_Id VARCHAR NOT NULL,
  show_Id VARCHAR NOT NULL,
  PRIMARY KEY (ticket_Id),
  FOREIGN KEY (Cust_Id) REFERENCES Customer(Cust_Id),
  FOREIGN KEY (Show_Id) REFERENCES Shows(show_Id)
);
INSERT INTO Ticket VALUES
  ('TCK1', '750', 'P1', 'SHW1'),
  ('TCK2', '300', 'P2', 'SHW2'),
  ('TCK3', '925', 'P3', 'SHW3'),
  ('TCK4', '1030', 'P4', 'SHW4');

  SELECT * FROM Ticket
```

## RESERVATION TABLE :

```sh
CREATE TABLE Reservation
(
  reservation_Id VARCHAR NOT NULL,
  ticket_Id VARCHAR NOT NULL,
  show_Id VARCHAR NOT NULL,
  seat_Id VARCHAR NOT NULL,
  PRIMARY KEY (reservation_Id),
  FOREIGN KEY (ticket_Id) REFERENCES Ticket(ticket_id),
  FOREIGN KEY (show_Id) REFERENCES Shows(show_id),
  FOREIGN KEY (seat_Id) REFERENCES Seat(seat_id)
);
INSERT INTO Reservation VALUES
  ('RE01', 'TCK1', 'SHW1', 'E2G4'),
  ('RE02', 'TCK2', 'SHW2', 'E1S2'),
  ('RE03', 'TCK3', 'SHW3', 'E3E5'),
  ('RE04', 'TCK4', 'SHW4', 'E3E5');

  SELECT * FROM Reservation
```
