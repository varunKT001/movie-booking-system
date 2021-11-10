CREATE TABLE customer
(
  cust_id VARCHAR NOT NULL,
  cust_name VARCHAR NOT NULL,
  cust_age INT NOT NULL,
  cust_contact NUMERIC NOT NULL,
  PRIMARY KEY (cust_id)
);

CREATE TABLE movie_room
(
  ent_id VARCHAR NOT NULL,
  total_seats INT NOT NULL,
  room_name VARCHAR NOT NULL,
  PRIMARY KEY (ent_id)
);

CREATE TABLE movie
(
  movie_id VARCHAR NOT NULL,
  movie_name VARCHAR NOT NULL,
  movie_duration VARCHAR NOT NULL,
  movie_genre VARCHAR NOT NULL,
  movie_director VARCHAR NOT NULL,
  PRIMARY KEY (movie_id)
);

CREATE TABLE seat
(
  seat_id VARCHAR NOT NULL,
  seat_number INT NOT NULL,
  seat_row INT NOT NULL,
  ent_id VARCHAR NOT NULL,
  PRIMARY KEY (seat_id),
  FOREIGN KEY (ent_id) REFERENCES movie_room(ent_id)
);

CREATE TABLE shows
(
  show_id VARCHAR NOT NULL,
  show_slot VARCHAR NOT NULL,
  show_date DATE NOT NULL,
  ent_id VARCHAR NOT NULL,
  movie_id VARCHAR NOT NULL,
  PRIMARY KEY (show_id),
  FOREIGN KEY (ent_id) REFERENCES movie_room(ent_id),
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE ticket
(
  ticket_id VARCHAR NOT NULL,
  price INT NOT NULL,
  cust_id VARCHAR NOT NULL,
  show_id VARCHAR NOT NULL,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
  FOREIGN KEY (show_id) REFERENCES shows(show_id)
);

CREATE TABLE reservation
(
  reservation_id VARCHAR NOT NULL,
  ticket_id VARCHAR NOT NULL,
  show_id VARCHAR NOT NULL,
  seat_id VARCHAR NOT NULL,
  PRIMARY KEY (reservation_id),
  FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
  FOREIGN KEY (show_id) REFERENCES shows(show_id),
  FOREIGN KEY (seat_id) REFERENCES seat(seat_id)
);