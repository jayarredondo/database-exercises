USE employees;
SHOW TABLES;

describe employees;
describe departments;
describe dept_emp;
describe salaries;
describe dept_manager;
describe titles;

USE codeup_test_db;
SHOW TABLES;

ALTER TABLE albums
ADD UNIQUE  (`name`, artist);
DESCRIBE albums;
SELECT *FROM albums WHERE artist = 'Michael Jackson';

INSERT INTO albums(artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Bad', 1987, 'Pop, Funk, Rock', 19.3);
