-- Create new database (or right click in schema menu); execute with lightening bolt
-- Lines end in ; which is important for public facing database; without it, others can change your code
CREATE DATABASE animals_db;
-- Must tell program to use this schema for remainder of queries.
-- Hightlight the line you want to run or else all will run or comment out all code you've already run
USE animals_db;
-- Create a new table to add data to
CREATE TABLE people(
	name VARCHAR(30) NOT NULL,
    has_pet BOOLEAN DEFAULT false,
    pet_name VARCHAR(30),
    pet_age int
    );

-- To see table use SELECT * FROM command; * indicates all data
SELECT * FROM  people;

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Angie", true, "David Bowie", 2);
INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Angie", true, "Ringo Starr", 2);

