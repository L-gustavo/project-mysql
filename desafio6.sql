SELECT 
	MIN(P.plano_value) AS `faturamento_minimo`,
    MAX(P.plano_value) AS `faturamento_maximo`,
    ROUND(SUM(P.plano_value)/COUNT(U.usuario_id), 2) AS `faturamento_medio`,
    ROUND(SUM(P.plano_value), 2) AS `faturamento_total`
FROM SpotifyClone.Usuario AS U
JOIN SpotifyClone.Planos AS P
ON U.plano_id = P.plano_id;