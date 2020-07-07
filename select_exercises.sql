USE codeup_test_db;

SELECT 'Pink Floyd Albums' AS 'Query One';
SELECT `name` FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Query Two';
SELECT release_date FROM albums WHERE `name` = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'The Genre for Nevermind' AS 'Query Three';
SELECT genre FROM albums WHERE `name` = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Query Four';
SELECT `name`, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS 'Query Five';
SELECT `name`, sales FROM albums WHERE sales < 20;

SELECT 'All Rock Genre albums' AS 'Query Six';
SELECT `name`, genre FROM albums WHERE genre = 'Rock';