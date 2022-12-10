INSERT INTO genre(name)
VALUES 
	('Rock'),
	('Rap'),
	('Pop'),
	('Dance'),
	('Drum&Bass');
	
INSERT INTO singer(name)
VALUES 
	('Eminem'),
	('Dr.Dre'),
	('Rihanna'),
	('Avicii'),
	('Dimension'),
	('Linkin Park'),
	('Netsky'),
	('Maroon 5');

INSERT INTO album(name, release_year)
VALUES 
	('Recovery', 2010),
	('Detox', 2020),
	('Loud', 2010),
	('True', 2013),
	('Organ', 2021),
	('Meteora', 2003),
	('3', 2016),
	('Overexposed', 2003);

INSERT INTO track(name, duration, album_id)
VALUES 
	('Love the way you lie', '00:03:54', 1),
	('Not Afraid', '00:04:45', 1),
	('Still', '00:03:30', 2),
	('I Need A Doctor', '00:04:50', 2),
	('Monster', '00:04:10', 3),
	('Umbrella', '00:04:15', 3),
	('SOS', '00:02:55', 4),
	('Levels', '00:05:05', 4),
	('Remedy', '00:03:20', 5),
	('In The End', '00:03:54', 6),
	('Crash', '00:04:10', 6),
	('Power', '00:05:00', 7),
	('Ice Cold', '00:04:11', 7),
	('Dangerous', '00:03:50', 8),
	('This Love', '00:04:10', 8);

INSERT INTO collection(name, release_year)
VALUES 
	('Rap/Hip-Hop 2000s', 2010),
	('Rock Collection', 2003),
	('Dance Collection', 2021),
	('The Best Drum&Bass', 2017),
	('Music For Training', 2012),
	('For The Loud Party', 2018),
	('The Most Popular', 2012),
	('The Best Voices', 2011);

INSERT INTO singers_genres(singer_id, genre_id)
VALUES 
	(1, 2),
	(2, 2),
	(3, 2),
	(3, 3),
	(4, 4),
	(5, 4),
	(5, 5),
	(6, 1),
	(7, 5),
	(8, 1),
	(8, 3);

INSERT INTO singers_albums(singer_id, album_id)
VALUES 
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 3),
	(4, 4),
	(5, 5),
	(5, 7),
	(6, 6),
	(7, 7),
	(7, 5),
	(8, 8);

INSERT INTO collections_tracks(collection_id, track_id)
VALUES 
	(1, 1),
	(1, 2),
	(2, 10),
	(2, 11),
	(2, 14),
	(3, 7),
	(3, 8),
	(4, 12),
	(4, 13),
	(5, 2),
	(5, 10),
	(6, 5),
	(6, 12),
	(7, 1),
	(7, 6),
	(7, 10),
	(8, 6),
	(8, 15);




