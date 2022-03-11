SELECT C.cancoes_name AS `cancao`, COUNT(His.usuario_id) AS `reproducoes`
FROM SpotifyClone.Historico AS His
JOIN SpotifyClone.Cancoes AS C
ON His.cancoes_id = C.cancoes_id
GROUP BY C.cancoes_name
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;