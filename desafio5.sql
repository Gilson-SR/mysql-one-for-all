SELECT 
	  s.song_name cancao,
    COUNT(h.song_id) reproducoes
FROM song AS s
INNER JOIN history_playback AS h ON h.song_id = s.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC, s.song_name
LIMIT 2;