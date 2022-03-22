SELECT 
  artists.artist_name AS artista,
	albums.album_name AS album,
  COUNT(following.user_id) AS seguidores
		
FROM
  SpotifyClone.albums
	INNER JOIN SpotifyClone.artists ON artists.artist_id = albums.artist_id
  INNER JOIN SpotifyClone.following ON following.artist_id = artists.artist_id

GROUP BY artista, album ORDER BY seguidores DESC;
