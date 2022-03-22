SELECT 
	songs.song_name AS nome_musica,
  CASE
    WHEN songs.song_name = 'Without My Streets'
        THEN REPLACE(songs.song_name, 'Streets', 'Code Review')
    WHEN songs.song_name = 'Dance With Her Own'
        THEN REPLACE(songs.song_name, 'Her Own', 'Trybe')
    WHEN songs.song_name = 'Troubles Of My Inner Fire'
        THEN REPLACE(songs.song_name, 'Inner Fire', 'Project')
    WHEN songs.song_name = "Let's Be Silly"
        THEN REPLACE(songs.song_name, 'Silly', 'Nice')
    WHEN songs.song_name = 'Magic Circus'
        THEN REPLACE(songs.song_name, 'Circus', 'Pull Request')
  END AS novo_nome

FROM 
	SpotifyClone.songs

WHERE 
	songs.song_name = 'Dance With Her Own'
  OR songs.song_name = "Let's Be Silly"
  OR songs.song_name = 'Magic Circus'
  OR songs.song_name = 'Troubles Of My Inner Fire'
  OR songs.song_name = 'Without My Streets'

ORDER BY novo_nome;
