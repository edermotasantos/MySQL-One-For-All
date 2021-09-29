USE SpotifyClone

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(input_usuario_id int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*)
FROM cancoes_usuarios AS c
WHERE c.usuario_id = input_usuario_id INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;

-- SELECT quantidade_musicas_no_historico(3)
