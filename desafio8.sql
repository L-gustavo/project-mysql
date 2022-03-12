SELECT 
	Art.artista_name AS `artista`,
    Alb.album_name AS `album`
FROM SpotifyClone.Artista AS Art
JOIN SpotifyClone.Album AS Alb
ON Art.artista_id = Alb.artista_id
HAVING Art.artista_name = "Walter Phoenix"
ORDER BY Alb.album_name;