SELECT 
	Art.artista_name AS `artista`,
    Alb.album_name AS `album`,
    COUNT(Seg.artista_id) AS `seguidores`
FROM SpotifyClone.Artista AS Art
JOIN SpotifyClone.Album AS Alb
ON Art.artista_id = Alb.artista_id
JOIN SpotifyClone.Seguindo AS Seg
ON Art.artista_id = Seg.artista_id
GROUP BY Seg.artista_id, Alb.album_name
ORDER BY `seguidores` DESC, Art.artista_name, Alb.album_name;