USE codeup_test_db;
SELECT * FROM albums WHERE sales;
UPDATE albums
SET sales = sales * 10;

SELECT * FROM albums WHERE release_date <= '1980';
UPDATE albums
SET release_date = 1800 WHERE release_date <= '1980';

UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
