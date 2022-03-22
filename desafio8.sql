SELECT 
  artists.artist_name AS artista,
	albums.album_name AS albums

FROM
	SpotifyClone.artists
  INNER JOIN SpotifyClone.albums ON albums.artist_id = artists.artist_id
    
WHERE artists.artist_name = 'Walter Phoenix'

ORDER BY albums;
