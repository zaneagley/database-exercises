USE codeup_test_db;
DELETE FROM albums WHERE release_date >= 1991;
DELETE FROM albums WHERE genre = 'disco';
DELETE FROM albums where artist = 'Whitney Houston';
SELECT * FROM albums WHERE release_date >= 1991;