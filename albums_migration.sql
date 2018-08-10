USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
artist VARCHAR(50),
name VARCHAR (75),
sales FLOAT(13,2),
release_date INT(4),
genre VARCHAR(40)
);