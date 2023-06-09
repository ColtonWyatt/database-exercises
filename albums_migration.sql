DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist_name VARCHAR(50),
                       album_name VARCHAR(50),
                       release_date INT,
                       sales FLOAT,
                       genre VARCHAR(50),
                       PRIMARY KEY(id)
);

SHOW TABLES;
DESCRIBE albums
SHOW CREATE TABLE albums;



