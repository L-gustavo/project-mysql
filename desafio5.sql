SELECT C.song_name AS `cancao`, COUNT(His.user_id) AS `reproducoes`
FROM SpotifyClone.Historico AS His
JOIN SpotifyClone.Cancoes AS C
ON His.song_id = C.song_id
GROUP BY C.song_name
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;