-- с INSERT-запросами (задание 1)

--#Collection insertion
INSERT INTO collection  (name, release_year) VALUES
('Bondiana Songs', '2021-08-25 0:30:00'),
('Ozzy Songs', '2020-05-25 0:25:00'),
('Russian Language songs', '2020-09-25 0:29:00'),
('Metal Songs', '2021-05-25 0:50:00'),
('Dancing Songs', '2021-05-25 0:15:00'),
('French Songs', '2021-07-25 0:05:00'),
('Melancholy', '2021-01-25 0:28:00'),
('Coding Songs', '2021-08-15 0:30:00');

--#tracks insertion
INSERT INTO tracks  (name, lenght, album_id) VALUES
('You Know My name', '00:04:04', 1),
('Patient Number 9', '00:07:22', 2),
('Immortal', '00:03:03',2),
('Parasite', '00:04:05',2),
('No Escape From Now', '00:04:05',2),
('One of Those Days', '00:04:40',2),
('Mr Darkness', '00:05:35',2),
('Nothing Feels Right', '00:05:35',2),
('Москва', '00:03:52',3),
('Skyfall', '00:04:49',4),
('Je Parle', '00:03:33',5),
('Трудный возраст', '00:03:23',6),
('One Million Bullets', '00:04:40',7),
('So Am I', '00:03:14',8),
('Omg What`s Happening', '00:04:40',8);

--#Album incertion
INSERT INTO album (name, release_year) VALUES
("Casino Royale", "2006-01-02"),
("Patient Number 9","2022-01-02"),
("Москва", "2005-09-09"),
("Skyfall", "2012-10-05"),
("Effet miroir", "2018-11-15"),
("Трудный возраст", "2006-03-28"),
("This Is Acting", "2016-01-12"),
("Heaven & Hell", "2020-09-17");

--#Singers insertion
INSERT INTO singers(id, name, nickname) VALUES 
('Christopher Jonn Cornell', 'Chriss Cornell'),
('John Michael Osbourne', 'Ozzy Osborn'),
('Наталья Ильинична Чистякова-Ионова', 'Глюк`оза'),
('Adelle Laurie Blue Adkins', 'Adelle'),
('Isabelle Geoffroy', 'ZAZ'),
('Марина Сергеевна Абросикова', 'МакSим'),
('Sia Kate Isobelle Furler', 'Sia'),
('Amanda Koçi', 'Ava Max');


--#Insertion into genre
INSERT INTO genre(id,name) VALUES
('rock'),
('metal'),
('dancing music'),
('pop'),
('heavy_metal');

--#inceration into singers_and_genre
INSERT INTO singers_and_genre(id) values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9);


update singers_and_genre set singer_id =1, genre_id =1 where id= 1;
update singers_and_genre set singer_id =2, genre_id =2 where id= 2;
update singers_and_genre set singer_id =3, genre_id =4 where id= 3;
update singers_and_genre set singer_id =4, genre_id =4 where id= 4;
update singers_and_genre set singer_id =5, genre_id =4 where id= 5;
update singers_and_genre set singer_id =6, genre_id =4 where id= 6;
update singers_and_genre set singer_id =7, genre_id =3 where id= 7;
update singers_and_genre set singer_id =8, genre_id =4 where id= 8;
update singers_and_genre set singer_id =2, genre_id =5 where id= 9;


--#inceration into singers_and_album
INSERT INTO singers_and_album(id) values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

update singers_and_album set singer_id =1, album_id =1 where id= 1;
update singers_and_album set singer_id =2, album_id =2 where id= 2;
update singers_and_album set singer_id =3, album_id =3 where id= 3;
update singers_and_album set singer_id =4, album_id =4 where id= 4;
update singers_and_album set singer_id =5, album_id =5 where id= 5;
update singers_and_album set singer_id =6, album_id =6 where id= 6;
update singers_and_album set singer_id =7, album_id =7 where id= 7;
update singers_and_album set singer_id =8, album_id =8 where id= 8;


--#inceration into track_and_collection
INSERT INTO track_and_collection(id) values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

update track_and_collection set track_id =1,collection_id =1 where id= 1;
update track_and_collection set track_id =10,collection_id =1 where id= 2;
update track_and_collection set track_id =2,collection_id =2 where id= 3;
update track_and_collection set track_id =3,collection_id =2 where id= 4;
update track_and_collection set track_id =5,collection_id =2 where id= 5;
update track_and_collection set track_id =6,collection_id =2 where id= 6;
update track_and_collection set track_id =9,collection_id =3 where id= 7;
update track_and_collection set track_id =12,collection_id =3 where id= 8;





