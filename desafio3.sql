CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.usuario AS usuario, c2.cancao AS nome
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.cancoes_usuarios AS c1
ON c1.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c2
ON c1.cancao_id = c2.cancao_id
ORDER BY usuario, nome;
