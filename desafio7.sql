CREATE VIEW perfil_artistas AS
SELECT ar.artista AS artista,
al.album AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.usuarios_artistas AS u
ON al.artista_id = u.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
