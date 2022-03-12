SELECT 
	C.cancoes_name AS `nome`,
	COUNT(His.cancoes_id) AS `reproducoes`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.Historico AS His
ON U.usuario_id = His.usuario_id
JOIN SpotifyClone.Cancoes AS C
ON C.cancoes_id = His.cancoes_id
WHERE U.plano_id IN (1, 4)
GROUP BY His.cancoes_id
ORDER BY C.cancoes_name;