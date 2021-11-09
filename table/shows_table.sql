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