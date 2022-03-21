SELECT
  users.user_name AS usuario,
  IF(YEAR(MAX(history.history_date)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario

FROM
  SpotifyClone.users
  INNER JOIN SpotifyClone.history ON history.user_id = users.user_id

GROUP BY usuario ORDER BY usuario;
