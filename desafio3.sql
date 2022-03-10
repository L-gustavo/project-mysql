SELECT
  U.username AS usuario,
  COUNT(His.song_id) AS `qtde_musicas_ouvidas`,
  ROUND(SUM(C.duration)/60, 2) AS `total_minutos`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.Historico AS His
ON U.user_id = His.user_id
JOIN SpotifyClone.Cancoes AS C
ON His.song_id = C.song_id
GROUP BY U.username
ORDER BY U.username; 