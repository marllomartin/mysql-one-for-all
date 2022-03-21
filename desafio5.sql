SELECT
  songs.song_name AS cancao,
  COUNT(history.song_id) AS reproducoes

FROM 
  SpotifyClone.songs
  INNER JOIN SpotifyClone.history ON history.song_id = songs.song_id
  
GROUP BY cancao ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
