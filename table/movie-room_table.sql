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