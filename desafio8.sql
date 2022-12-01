SELECT
    a.artist_name artista,
    al.album_name album
FROM artist AS a
INNER JOIN album AS al ON al.artist_id = a.artist_id
WHERE a.artist_name LIKE 'Elis Regina';