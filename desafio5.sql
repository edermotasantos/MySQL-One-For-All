CREATE VIEW top_2_hits_do_momento AS
SELECT c1.cancao AS cancao, COUNT(c2.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c1
INNER JOIN SpotifyClone.cancoes_usuarios AS c2
ON c1.cancao_id = c2.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
limit 2;
