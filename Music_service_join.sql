SELECT genre_id, COUNT(singer_id) FROM singers_genres
GROUP BY genre_id 
ORDER BY COUNT(singer_id) DESC;

SELECT COUNT(tr.name), release_year FROM track tr
LEFT JOIN album al ON tr.album_id = al.id 
WHERE release_year BETWEEN 2019 AND 2020
GROUP BY release_year;

SELECT a.name, AVG(duration) FROM album a 
JOIN track tr ON a.id = tr.album_id 
GROUP BY a.name
ORDER BY AVG(duration) DESC;

SELECT DISTINCT s.name, release_year FROM singers_albums sa 
JOIN album a ON sa.album_id = a.id 
JOIN singer s ON sa.singer_id = s.id 
WHERE a.release_year != 2020
ORDER BY release_year DESC; 

SELECT co.name, s.name FROM collections_tracks ct 
JOIN collection co ON ct.collection_id = co.id 
JOIN track tr ON ct.track_id = tr.id 
JOIN album a ON tr.album_id = a.id 
JOIN singers_albums sa ON a.id = sa.album_id 
JOIN singer s ON sa.singer_id = s.id 
WHERE s.name ILIKE 'Eminem'; 

SELECT a.name, s.name, COUNT(sg.genre_id) FROM singers_albums sa
JOIN singer s ON sa.singer_id = s.id 
JOIN album a ON sa.album_id = a.id 
JOIN singers_genres sg ON s.id = sg.singer_id 
GROUP BY a.name, s.name
HAVING COUNT(sg.genre_id) > 1
ORDER BY s.name;

SELECT tr.name FROM collections_tracks ct 
FULL JOIN track tr ON ct.track_id = tr.id 
WHERE ct.track_id IS NULL;

SELECT s.name, t.name, duration FROM singers_albums sa 
JOIN singer s ON sa.singer_id = s.id 
JOIN album a ON sa.album_id = a.id 
JOIN track t ON a.id = t.album_id 
WHERE duration = (SELECT MIN(duration) FROM track);

SELECT a.name, COUNT(t.name) c FROM album a 
JOIN track t ON a.id = t.album_id 
GROUP BY a.name
HAVING COUNT(t.name) = (SELECT COUNT(t.name) c FROM album a
JOIN track t ON a.id = t.album_id 
GROUP BY a.name
ORDER BY c
LIMIT 1);



