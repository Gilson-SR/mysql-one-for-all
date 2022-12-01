SELECT 
    DISTINCT u.user_name usuario,
    IF(YEAR(MAX(h.reproduction_date)) >= 2021,'Usuário ativo','Usuário inativo') status_usuario
FROM history_playback AS h
INNER JOIN user AS u ON u.user_id = h.user_id
GROUP BY u.user_name
ORDER BY u.user_name;