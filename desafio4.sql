SELECT
	U.usuario_name AS usuario,
	IF(YEAR(MAX(His.date_reproduction)) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS `condicao_usuario`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.Historico AS His
ON U.usuario_id = His.usuario_id
GROUP BY U.usuario_name 
ORDER BY U.usuario_name ASC; 