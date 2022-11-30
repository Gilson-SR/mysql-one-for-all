SELECT
    u.user_name usuario,
    COUNT(h.user_id) qt_de_musicas_ouvidas,
    ROUND(SUM(s.song_duration) /60,2) total_minutos
FROM user AS u
INNER JOIN history_playback AS h ON u.user_id = h.user_id
INNER JOIN song AS s ON s.song_id = h.song_id
GROUP BY u.user_name
ORDER BY u.user_name;