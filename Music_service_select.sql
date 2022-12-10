SELECT name, release_year FROM album
WHERE release_year = 2016;

SELECT name, duration FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT name, duration FROM track 
WHERE duration >= '00:03:30'
ORDER BY duration DESC;

SELECT name, release_year FROM collection 
WHERE release_year >= 2016 AND release_year <= 2020;

SELECT name FROM singer
WHERE name NOT LIKE '% %';

SELECT name FROM track
WHERE name LIKE '%Love%';