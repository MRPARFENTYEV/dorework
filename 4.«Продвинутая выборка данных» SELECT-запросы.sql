-- 4.«Продвинутая выборка данных»

-- 1.Количество исполнителей в каждом жанре.  
SELECT genre.name, count(singer_id) 
FROM genre 
JOIN singers_and_genre ON  genre.id = singers_and_genre.genre_id  
group by genre.id;


-- 2.Количество треков, вошедших в альбомы 2019–2020 годов.
select count(* )
from tracks  join album
on tracks.id = album.id
where release_year  > '2019-01-01' and release_year  <'2021-01-01'


--3. Средняя продолжительность треков по каждому альбому.
select album.name, AVG(tracks.lenght)
from album 
left join tracks  on tracks.album_id = album.id
group by album.name
order by AVG(tracks.lenght)

-- 4.Все исполнители, которые не выпустили альбомы в 2020 году. 
SELECT singers.name
FROM singers 
WHERE singers.name NOT IN (
    SELECT singers.name 
    FROM singers  
    JOIN singers_and_album ON singers.id = singers_and_album.id 
    JOIN album ON singers_and_album.id = album.id 
    WHERE release_year> '2020-01-01' and release_year <'2020-12-31') 

-- 5.Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT collection.name 
FROM collection 
JOIN track_and_collection ON collection.id = track_and_collection.id 
JOIN tracks ON track_and_collection.id = tracks.id 
JOIN album ON tracks.id = album.id
JOIN singers_and_album ON album.id = singers_and_album.id
JOIN singers ON singers_and_album.id = singers.id 
WHERE singers.name = 'Christopher Jonn Cornell';  

-- 6.Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT distinct album.name 
FROM album   
JOIN singers_and_album  ON album.id = singers_and_album.album_id 
JOIN singers  ON singers_and_album.singer_id  = singers.id 
JOIN singers_and_genre  ON singers.id = singers_and_genre.singer_id 
GROUP BY album.name, singers_and_genre.singer_id  
HAVING COUNT(singers_and_genre.genre_id) > 1;


-- 7.Наименования треков, которые не входят в сборники.
select tracks.name
from tracks 
left join track_and_collection on tracks.id = track_and_collection.track_id
where album_id  is null


-- 8.Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select singers.name 
FROM singers 
JOIN singers_and_album ON singers.id = singers_and_album.singer_id 
JOIN album ON singers_and_album.album_id  = album.id
JOIN tracks ON album.id = tracks.album_id  
WHERE tracks.lenght=(SELECT MIN(lenght) FROM tracks)

-- 9.Названия альбомов, содержащих наименьшее количество треков.
SELECT album.name 
FROM album JOIN tracks ON album.id = tracks.album_id
GROUP BY album.id 
HAVING COUNT(tracks) = ( 
    SELECT COUNT(id) FROM tracks 
    GROUP BY tracks.id 
    ORDER BY 1
    LIMIT 1 
);
