-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.18-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para programa
CREATE DATABASE IF NOT EXISTS `programa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `programa`;

-- Volcando estructura para tabla programa.adjunto
CREATE TABLE IF NOT EXISTS `adjunto` (
  `Id_Adjunto` int(11) NOT NULL,
  `Nombre_Adjunto` int(11) DEFAULT NULL,
  `FK_Publicacion` int(11) DEFAULT NULL,
  `Ruta` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Adjunto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.adjunto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `adjunto` DISABLE KEYS */;
/*!40000 ALTER TABLE `adjunto` ENABLE KEYS */;

-- Volcando estructura para tabla programa.funcionarios
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `Id_Funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `Estado_Funcionario` enum('T','F') NOT NULL,
  `Fecha_Funcionario` datetime NOT NULL,
  `FK_Usuario` int(11) NOT NULL DEFAULT '0',
  `FK_RolFuncionario` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_Funcionario`),
  KEY `FK_Func_Usuario` (`FK_Usuario`),
  KEY `FK_Func_RolFunc` (`FK_RolFuncionario`),
  CONSTRAINT `FK_Func_RolFunc` FOREIGN KEY (`FK_RolFuncionario`) REFERENCES `rol_funcionario` (`Id_RolFuncionario`),
  CONSTRAINT `FK_Func_Usuario` FOREIGN KEY (`FK_Usuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.fprogramauncionarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;

-- Volcando estructura para procedimiento programa.INSERT_MENU_USU
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_MENU_USU`(
	IN `ESTADO_MEN` VARCHAR(50),
	IN `FK_ROL_MEN` INT,
	IN `FK_SUBOPCION_MEN` INT

)
BEGIN

INSERT INTO menu_usuario (Estado_Menu, FK_Rol, FK_Subopcion) 
VALUES(ESTADO_MEN, FK_ROL_MEN,FK_SUBOPCION_MEN);
CALL RETURN_NOTIFICACION('S','Permiso registrado correctamente','NULL');

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.INSERT_OPCION
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_OPCION`(
	IN `NOMBRE_OP` VARCHAR(50),
	IN `ICONO_OP` VARCHAR(50)

)
BEGIN

INSERT INTO opcion (Nombre_Opcion, Icono_Opcion)
VALUES (NOMBRE_OP, ICONO_OP);
CALL RETURN_NOTIFICACION('S','Opcion registrada correctamente','NULL');

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.INSERT_ROL
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_ROL`(
	IN `NOMBRE_ROL` VARCHAR(50)




)
BEGIN

INSERT INTO rol(Nombre_Rol)
VALUES (NOMBRE_ROL);
CALL RETURN_NOTIFICACION('S','Rol registrado correctamente','NULL');

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.INSERT_SUBOPCION
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_SUBOPCION`(
	IN `NOMBRE_SUBOP` VARCHAR(50),
	IN `URL_SUBOP` VARCHAR(100),
	IN `FK_OP` INT


,
	IN `ICONO_SUBOP` VARCHAR(50)
)
BEGIN

INSERT INTO subopcion (Nombre_Subopcion, URL_Subopcion, FK_Opcion,Icono_Subopcion)
VALUES (NOMBRE_SUBOP, URL_SUBOP, FK_OP,ICONO_SUBOP); 
CALL RETURN_NOTIFICACION('S','Subopcion registrada correctamente','NULL');

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.INSERT_USUARIO
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_USUARIO`(
	IN `NUM_USU` INT,
	IN `NOMBRE_USU` VARCHAR(50),
	IN `APELLIDOS_USU` VARCHAR(50),
	IN `TELEFONO_USU` INT,
	IN `CORREO_USU` VARCHAR(50),
	IN `USERNAME_USU` VARCHAR(50),
	IN `CONTRA_USU` VARCHAR(50),
	IN `FKID_ROL` INT










)
BEGIN

INSERT INTO usuario (Num_Identificacion,Nombre_Usuario,Apellidos_Usuario,Correo,Telefono,Username,Contra,FK_Rol)
VALUES (NUM_USU, NOMBRE_USU,APELLIDOS_USU,CORREO_USU,TELEFONO_USU,USERNAME_USU,AES_ENCRYPT(CONTRA_USU, 'bd_encrypca'),FKID_ROL);
CALL RETURN_NOTIFICACION('S','Usuario registrado correctamente','NULL');

END//
DELIMITER ;

-- Volcando estructura para tabla programa.menu_usuario
CREATE TABLE IF NOT EXISTS `menu_usuario` (
  `Id_Menu` int(11) NOT NULL AUTO_INCREMENT,
  `Estado_Menu` enum('T','F') NOT NULL,
  `FK_Rol` int(11) NOT NULL,
  `FK_Subopcion` int(11) NOT NULL,
  PRIMARY KEY (`Id_Menu`),
  KEY `FK_Menu_Rol` (`FK_Rol`),
  KEY `FK_Menu_Subopcion` (`FK_Subopcion`),
  CONSTRAINT `FK_Menu_Rol` FOREIGN KEY (`FK_Rol`) REFERENCES `rol` (`Id_Rol`),
  CONSTRAINT `FK_Menu_Subopcion` FOREIGN KEY (`FK_Subopcion`) REFERENCES `subopcion` (`Id_Subopcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.menu_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menu_usuario` DISABLE KEYS */;
INSERT INTO `menu_usuario` (`Id_Menu`, `Estado_Menu`, `FK_Rol`, `FK_Subopcion`) VALUES
	(1, 'T', 1, 1);
/*!40000 ALTER TABLE `menu_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla programa.opcion
CREATE TABLE IF NOT EXISTS `opcion` (
  `Id_Opcion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Opcion` varchar(50) DEFAULT NULL,
  `Icono_Opcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Opcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.opcion: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `opcion` DISABLE KEYS */;
INSERT INTO `opcion` (`Id_Opcion`, `Nombre_Opcion`, `Icono_Opcion`) VALUES
	(1, 'Usuarios', 'icon-user'),
	(2, 'Programa', 'icon-user');
/*!40000 ALTER TABLE `opcion` ENABLE KEYS */;

-- Volcando estructura para tabla programa.plan_estudios
CREATE TABLE IF NOT EXISTS `plan_estudios` (
  `Id_Planestudio` int(11) DEFAULT NULL,
  `Descripcion_Planestudio` varchar(50) DEFAULT NULL,
  `Fecha_Planestudio` datetime DEFAULT NULL,
  `Estado_Planestudio` enum('T','F') DEFAULT NULL,
  `Adjunto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.plan_estudios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plan_estudios` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_estudios` ENABLE KEYS */;

-- Volcando estructura para tabla programa.programa
CREATE TABLE IF NOT EXISTS `programa` (
  `Id_Programa` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Programa` varchar(100) NOT NULL DEFAULT '0',
  `Mision` text,
  `Vision` text,
  PRIMARY KEY (`Id_Programa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.programa: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` (`Id_Programa`, `Nombre_Programa`, `Mision`, `Vision`) VALUES
	(1, 'Ingeniería de Sistemas', NULL, NULL);
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;

-- Volcando estructura para tabla programa.publicacion
CREATE TABLE IF NOT EXISTS `publicacion` (
  `Id_Publicacion` int(11) NOT NULL,
  `Nombre_Publicacion` text NOT NULL,
  `Descripcion_Publicacion` text NOT NULL,
  `FK_Programa` int(11) NOT NULL,
  `FK_Usuario` int(11) NOT NULL,
  PRIMARY KEY (`Id_Publicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.publicacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;

-- Volcando estructura para procedimiento programa.RETURN_NOTIFICACION
DELIMITER //
CREATE DEFINER=``@`%` PROCEDURE `RETURN_NOTIFICACION`(
	IN `TIPO` VARCHAR(45),
	IN `MENSAJE` VARCHAR(150),
	IN `VALORES` VARCHAR(150)
)
BEGIN
		
  SELECT TIPO AS 'TIPO', MENSAJE AS 'MENSAJE', VALORES AS 'VALORES';

END//
DELIMITER ;

-- Volcando estructura para tabla programa.rol
CREATE TABLE IF NOT EXISTS `rol` (
  `Id_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Rol` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.rol: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` (`Id_Rol`, `Nombre_Rol`) VALUES
	(1, 'Administrador'),
	(2, 'FuncionarioPrograma');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;

-- Volcando estructura para tabla programa.rol_funcionario
CREATE TABLE IF NOT EXISTS `rol_funcionario` (
  `Id_RolFuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_RolFuncionario` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_RolFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.rol_funcionario: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `rol_funcionario` DISABLE KEYS */;
INSERT INTO `rol_funcionario` (`Id_RolFuncionario`, `Nombre_RolFuncionario`) VALUES
	(1, 'Jefe de Programa'),
	(2, 'Secretaria'),
	(3, 'Estudiante'),
	(4, 'Representante de los Estudiantes'),
	(5, 'Representante de los Egresados'),
	(6, 'Representante de los Docentes');
/*!40000 ALTER TABLE `rol_funcionario` ENABLE KEYS */;

-- Volcando estructura para procedimiento programa.SELECT_OPCION
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_OPCION`()
BEGIN

SELECT * FROM opcion;

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.SELECT_OPCION_ROL
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_OPCION_ROL`(
	IN `ROL_USU` INT
)
BEGIN

SELECT * FROM menu_usuario m INNER JOIN subopcion o ON m.FK_Rol = ROL_USU AND m.FK_Subopcion=o.Id_Subopcion AND m.Estado_Menu='T' INNER JOIN opcion i ON o.Id_Subopcion=i.Id_Opcion GROUP BY i.Nombre_Opcion;

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.SELECT_PER
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_PER`(
	IN `NUM_PER` INT
)
BEGIN

SELECT * FROM Usuario where Num_Identificacion=NUM_PER;

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.SELECT_ROL
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_ROL`()
BEGIN

SELECT * FROM rol;

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.SELECT_SUBOPCION
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_SUBOPCION`()
BEGIN

SELECT * FROM subopcion;

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.SELECT_SUBOPCION_ROL
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_SUBOPCION_ROL`(
	IN `ROL_USU` INT
)
BEGIN

SELECT * FROM menu_usuario m INNER JOIN subopcion o ON m.FK_Rol = ROL_USU AND m.FK_Subopcion=o.Id_Subopcion AND m.Estado_Menu='T';

END//
DELIMITER ;

-- Volcando estructura para procedimiento programa.SELECT_USUARIOS
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_USUARIOS`()
BEGIN

SELECT * FROM usuario;

END//
DELIMITER ;

-- Volcando estructura para tabla programa.subopcion
CREATE TABLE IF NOT EXISTS `subopcion` (
  `Id_Subopcion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Subopcion` varchar(50) NOT NULL DEFAULT '0',
  `URL_Subopcion` varchar(100) NOT NULL DEFAULT '0',
  `FK_Opcion` int(11) NOT NULL,
  `Icono_Subopcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Subopcion`),
  KEY `FK_Opcion_Subopcion` (`FK_Opcion`),
  CONSTRAINT `FK_Opcion_Subopcion` FOREIGN KEY (`FK_Opcion`) REFERENCES `opcion` (`Id_Opcion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.subopcion: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `subopcion` DISABLE KEYS */;
INSERT INTO `subopcion` (`Id_Subopcion`, `Nombre_Subopcion`, `URL_Subopcion`, `FK_Opcion`, `Icono_Subopcion`) VALUES
	(1, 'Registrar Usuario', '../Usuarios/Usuario.aspx', 1, ' icon-user-follow');
/*!40000 ALTER TABLE `subopcion` ENABLE KEYS */;

-- Volcando estructura para tabla programa.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Num_Identificacion` int(20) NOT NULL DEFAULT '0',
  `Nombre_Usuario` varchar(50) NOT NULL DEFAULT '0',
  `Apellidos_Usuario` varchar(50) NOT NULL DEFAULT '0',
  `Correo` varchar(50) DEFAULT '0',
  `Telefono` int(40) DEFAULT '0',
  `Username` varchar(50) NOT NULL DEFAULT '0',
  `Contra` blob NOT NULL,
  `FK_Rol` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE KEY `Username` (`Username`),
  KEY `FK_Usuario_Rol` (`FK_Rol`),
  CONSTRAINT `FK_Usuario_Rol` FOREIGN KEY (`FK_Rol`) REFERENCES `rol` (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`Id_Usuario`, `Num_Identificacion`, `Nombre_Usuario`, `Apellidos_Usuario`, `Correo`, `Telefono`, `Username`, `Contra`, `FK_Rol`) VALUES
	(1, 1117549892, 'NICOL DAYANA', 'ENDO RUIZ', 'n.endo@udla.edu.co', 312, 'nicolendo', _binary 0x385F7E9400AC0E11FBA451726BF727A4, 1),
	(2, 123, 'Lina', 'Saza Bustos', 'li.saza@udla.edu.co', 3, 'li.saza', _binary 0xDB156CBD04FFF1AFEE250B769B59B665, 2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla programa.usuarios_programa
CREATE TABLE IF NOT EXISTS `usuarios_programa` (
  `Id_UsuProg` int(11) NOT NULL AUTO_INCREMENT,
  `Estado_UsuProg` enum('T','F') DEFAULT NULL,
  `Fecha_UsuProg` datetime DEFAULT NULL,
  `FK_Programa` int(11) NOT NULL,
  `FK_Usuario` int(11) NOT NULL,
  PRIMARY KEY (`Id_UsuProg`),
  KEY `FK_UsuProg_Programa` (`FK_Programa`),
  KEY `FK_UsuProg_Usuario` (`FK_Usuario`),
  CONSTRAINT `FK_UsuProg_Programa` FOREIGN KEY (`FK_Programa`) REFERENCES `programa` (`Id_Programa`),
  CONSTRAINT `FK_UsuProg_Usuario` FOREIGN KEY (`FK_Usuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla programa.usuarios_programa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios_programa` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_programa` ENABLE KEYS */;

-- Volcando estructura para procedimiento programa.VALIDAR_USUARIO
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `VALIDAR_USUARIO`(
	IN `USERNAME_U` VARCHAR(50),
	IN `CONTRA_USU` VARCHAR(50)


)
BEGIN

SELECT * FROM usuario u WHERE u.Username = USERNAME_U AND u.Contra = AES_ENCRYPT(CONTRA_USU,'bd_encrypca');

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
