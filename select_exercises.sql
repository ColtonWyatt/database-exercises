SELECT album_name AS 'Pink Floyd Albums' FROM albums WHERE artist_name = 'Pink Floyd';

SELECT release_date AS 'Sgt. Pepper''s release date' FROM albums WHERE album_name = 'Sgt Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Nevermind' FROM albums WHERE album_name = 'Nevermind';

SELECT album_name AS '90's'albums' FROM albums WHERE release_date = BETWEEN 1990 and 1999;

SELECT album_name AS 'under 20 million sold' FROM albums WHERE sales < 20;

SELECT album_name AS 'FETCH' albums WHERE genre = 'Rock';