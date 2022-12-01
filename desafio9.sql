SELECT 
    COUNT(user_id) quantidade_musicas_no_historico
FROM history_playback
WHERE user_id = 1;