USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
artist VARCHAR(50),
name VARCHAR (50),
release_date DATE,
sales FLOAT(13,2),
genre VARCHAR(10)
);