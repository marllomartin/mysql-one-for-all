SELECT
  COUNT(DISTINCT songs.song_id) as cancoes,
  COUNT(DISTINCT albums.album_id) as albuns,
  COUNT(DISTINCT artists.artist_id) as artistas

FROM SpotifyClone.songs
  JOIN SpotifyClone.albums
  JOIN SpotifyClone.artists;
