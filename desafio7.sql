SELECT
    a.artist_name artista,
    al.album_name album,
    COUNT(f.artist_id) seguidores
FROM album AS al
INNER JOIN artist AS a ON a.artist_id = al.artist_id
INNER JOIN artist_follower AS af ON f.artist_id = a.artist_id
GROUP BY al.album_id
ORDER BY seguidores DESC,a.artist_name,al.album_name;