SELECT 
    s.song_name nome,
    COUNT(h.song_id) reproducoes
FROM song AS s
INNER JOIN history_playback AS h ON h.song_id = s.song_id
INNER JOIN user AS u ON h.user_id = u.user_id
INNER JOIN plan AS p ON u.plan_id = p.plan_id
WHERE p.plan_name IN ('gratuito','pessoal')
GROUP BY s.song_name
ORDER BY s.song_name;