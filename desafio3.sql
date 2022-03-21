SELECT
  users.user_name AS usuario,
  COUNT(history.song_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(songs.song_duration) / 60, 2) AS total_minutos

FROM SpotifyClone.users
  INNER JOIN SpotifyClone.history ON history.user_id = users.user_id
  INNER JOIN SpotifyClone.songs ON songs.song_id = history.song_id

GROUP BY usuario ORDER BY usuario;
