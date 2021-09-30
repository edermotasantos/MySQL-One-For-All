CREATE VIEW cancoes_premium AS
SELECT c1.cancao AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS c1
INNER JOIN SpotifyClone.cancoes_usuarios AS c2
ON c1.cancao_id = c2.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = c2.usuario_id
WHERE u.plano_id IN (2, 3) 
GROUP BY nome
ORDER BY nome;
