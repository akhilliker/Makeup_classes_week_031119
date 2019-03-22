CREATE DATABASE favorite_db;
USE favorite_db;
CREATE TABLE favorite_foods(
	food VARCHAR(50) NOT NULL,
    score INT);
CREATE TABLE favorite_songs (
	song VARCHAR(100) NOT NULL,
    artist VARCHAR(50),
    score int);
CREATE TABLE favorite_movies (
	film VARCHAR(100) NOT NULL,
    five_times BOOLEAN,
    SCORE int);
-- To see table use SELECT * FROM command; * indicates all data
SELECT * FROM  favorite_foods;
SELECT * FROM  favorite_songs;
SELECT * FROM  favorite_movies;

-- Insert records in a table
INSERT INTO favorite_foods (food, score)
VALUES ("steak", 10);
INSERT INTO favorite_foods (food, score)
VALUES ("chocolate and peanut butter", 10);
INSERT INTO favorite_foods (food, score)
VALUES ("greek salad", 10);
INSERT INTO favorite_songs (song, artist, score)
VALUES ("Rhapsody in Blue", "George Gershwin", 10);
INSERT INTO favorite_songs (song, artist, score)
VALUES ("Our Love is Here to Stay", "Ella Fitzgerald/Loui Armstrong", 10);
INSERT INTO favorite_songs (song, artist, score)
VALUES ("Number One Spot", "Ludracris", 8);
INSERT INTO favorite_movies (film, five_times, score)
VALUES ("Emma", True, 9);
INSERT INTO favorite_movies (film, five_times, score)
VALUES ("Anne of Green Gables", True, 10);
INSERT INTO favorite_movies (film, five_times, score)
VALUES ("Lord of the Rings", False, 10);
-- Update record in a specific row of table
UPDATE favorite_songs
SET artist = "Ludacris"
WHERE song = "Number One Spot";
-- add new column that auto increaments and can't be a null
ALTER TABLE favorite_songs
ADD ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL;
ALTER TABLE favorite_foods
ADD ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL;
ALTER TABLE favorite_movies
ADD ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL;