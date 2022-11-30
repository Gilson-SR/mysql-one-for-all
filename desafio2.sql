SELECT
    COUNT(s.song_id) cancoes,
    COUNT(DISTINCT a.artist_id) artistas,
    COUNT(DISTINCT al.album_id) albuns
FROM song AS s
INNER JOIN album AS al ON s.album_id = al.album_id
INNER JOIN artist AS a ON al.artist_id = a.artist_id;