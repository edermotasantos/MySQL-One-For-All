USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN SELECT ar.artista AS artista, al.album AS album
FROM artistas AS ar
INNER JOIN albuns AS al
ON al.artista_id = ar.album_id
WHERE ar.artista LIKE CONCAT('%', nome_artista, '%')
ORDER BY album;
END $$

DELIMITER ;
