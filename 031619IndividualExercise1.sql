CREATE DATABASE programming_db;
USE programming_db;
SELECT * FROM programming_languages;
-- Made table programming_languages using the GUI interface
-- Insert some data into the table 
-- Note that the column names are not in quotes, but strings in values are
INSERT INTO programming_languages (languages, rating) VALUES ('python',  10);
INSERT INTO programming_languages (languages, rating) VALUES ('java',  8);
INSERT INTO programming_languages (languages, rating) VALUES ('VBA',  5);
INSERT INTO programming_languages (languages, rating) VALUES ('C++',  5);
-- then modify the data using the id column
-- UPDATE <table_name> SET <column to update> = <update> WHERE <primary key> = <value for row you want to change>
UPDATE programming_languages SET rating = 6 WHERE id = 4;
-- BONUS: Study up on how to add columns to a table and then create a boolean column called mastered, which has a default value of true.
ALTER TABLE programming_db.programming_languages
ADD COLUMN mastered TINYINT DEFAULT True AFTER rating;

