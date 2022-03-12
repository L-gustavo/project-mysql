SELECT 
	IF(U.usuario_name = "Bill", COUNT(His.cancoes_id), 1) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.Historico AS His
ON U.usuario_id = His.usuario_id
GROUP BY U.usuario_name
ORDER BY `quantidade_musicas_no_historico` DESC LIMIT 1;