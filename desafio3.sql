SELECT
  U.usuario_name AS usuario,
  COUNT(His.cancoes_id) AS `qtde_musicas_ouvidas`,
  ROUND(SUM(C.duracao)/60, 2) AS `total_minutos`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.Historico AS His
ON U.usuario_id = His.usuario_id
JOIN SpotifyClone.Cancoes AS C
ON His.cancoes_id = C.cancoes_id
GROUP BY U.usuario_name
ORDER BY U.usuario_name;