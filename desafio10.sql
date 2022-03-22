SELECT 
	songs.song_name AS nome,
	COUNT(history.song_id) AS reproducoes

FROM 
	SpotifyClone.songs
  INNER JOIN SpotifyClone.history ON history.song_id = songs.song_id
  INNER JOIN SpotifyClone.users ON users.user_id = history.user_id
  INNER JOIN SpotifyClone.plans ON plans.plan_id = users.plan_id

WHERE plans.plan_name = 'gratuito' OR plans.plan_name = 'pessoal'

GROUP BY nome ORDER BY nome;
