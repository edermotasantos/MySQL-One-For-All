USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM cancoes_usuarios
WHERE usuario_id = OLD.usuario_id;
DELETE FROM usuarios_artistas
WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
