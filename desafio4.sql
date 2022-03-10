SELECT
	U.username AS usuario,
	IF(YEAR(MAX(His.reproduction_date)) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS `condicao_usuario`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.Historico AS His
ON U.user_id = His.user_id
GROUP BY U.username 
ORDER BY U.username ASC; 