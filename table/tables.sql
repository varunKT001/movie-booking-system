CREATE TABLE Customer
(
  Cust_Id VARCHAR NOT NULL,
  Cust_Name VARCHAR NOT NULL,
  Cust_Age INT NOT NULL,
  Cust_Phone NUMERIC NOT NULL,
  PRIMARY KEY (Cust_Id)
);

CREATE TABLE movie_room
(
  ent_Id VARCHAR NOT NULL,
  total_Seats INT NOT NULL,
  room_Name VARCHAR NOT NULL,
  PRIMARY KEY (ent_Id)
);

CREATE TABLE Movie
(
  movie_Id VARCHAR NOT NULL,
  movie_Name VARCHAR NOT NULL,
  duration VARCHAR NOT NULL,
  genre VARCHAR NOT NULL,
  rating VARCHAR NOT NULL,
  PRIMARY KEY (movie_Id)
);

CREATE TABLE Seat
(
  seat_Id VARCHAR NOT NULL,
  seat_Number INT NOT NULL,
  seat_Row VARCHAR NOT NULL,
  ent_Id VARCHAR NOT NULL,
  PRIMARY KEY (seat_Id),
  FOREIGN KEY (ent_Id) REFERENCES movie_Room(ent_Id)
);

CREATE TABLE Shows
(
  show_Id VARCHAR NOT NULL,
  show_slot VARCHAR NOT NULL,
  show_Date DATE NOT NULL,
  ent_Id VARCHAR NOT NULLI
  movie_Id VARCHAR NOT NULL,
  PRIMARY KEY (show_Id),
  FOREIGN KEY (ent_Id) REFERENCES Movie_room(ent_Id),
  FOREIGN KEY (movie_Id) REFERENCES Movie(movie_Id)
);

CREATE TABLE Ticket
(
  ticket_Id VARCHAR NOT NULL,
  price INT NOT NULL,
  Cust_Id VARCHAR NOT NULL,
  show_Id VARCHAR NOT NULL,
  PRIMARY KEY (ticket_Id),
  FOREIGN KEY (Cust_Id) REFERENCES Customer(Cust_Id),
  FOREIGN KEY (show_Id) REFERENCES Shows(show_Id)
);

CREATE TABLE Reservation
(
  reservation_Id VARCHAR NOT NULL,
  ticket_Id VARCHAR NOT NULL,
  show_Id VARCHAR NOT NULL,
  seat_Id VARCHAR NOT NULL,
  PRIMARY KEY (reservation_Id),
  FOREIGN KEY (ticket_Id) REFERENCES Ticket(ticket_Id),
  FOREIGN KEY (show_Id) REFERENCES Shows(show_id),
  FOREIGN KEY (seat_Id) REFERENCES Seat(seat_Id)
);