CREATE VIEW top_3_artistas AS 
SELECT a.artista AS artista, COUNT(*) AS seguidores
FROM SpotifyClone.usuarios_artistas AS u
INNER JOIN SpotifyClone.artistas AS a
ON a.artista_id = u.artista_id
GROUP BY a.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;
