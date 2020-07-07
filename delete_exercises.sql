USE codeup_test_db;

SELECT 'All albums after 1991' AS 'Query One';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'All ''Disco'' albums' AS 'Query Two';
SELECT * FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'All Beatles Albums' AS 'Query Three';
SELECT * FROM albums WHERE artist = 'The Beatles';
DELETE FROM albums WHERE artist = 'The Beatles';