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