SELECT
	(SELECT COUNT(song_id) FROM SpotifyClone.Cancoes) cancoes,
    (SELECT COUNT(DISTINCT artist_id) FROM SpotifyClone.Artista) artistas ,
    (SELECT COUNT(DISTINCT album_id) FROM SpotifyClone.Album) albuns;