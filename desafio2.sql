SELECT
	(SELECT COUNT(cancoes_id) FROM SpotifyClone.Cancoes) cancoes,
    (SELECT COUNT(DISTINCT artista_id) FROM SpotifyClone.Artista) artistas ,
    (SELECT COUNT(DISTINCT album_id) FROM SpotifyClone.Album) albuns;