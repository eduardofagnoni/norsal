/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : norsal

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2019-06-01 15:20:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `_dev_galeriadeimagensarquivo`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_galeriadeimagensarquivo`;
CREATE TABLE `_dev_galeriadeimagensarquivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idGaleria` int(11) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  `ativo` varchar(1) DEFAULT 's',
  `legenda` varchar(255) DEFAULT NULL,
  `dadosIniciais` text,
  `ultimaAlteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_galeriadeimagensarquivo
-- ----------------------------
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('1', '1', '1.png', 's', null, null, null);
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('2', '1', '2.png', 's', null, null, null);
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('3', '1', '3.png', 's', null, null, null);
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('4', '1', '4.png', 's', null, null, null);
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('5', '1', '5.png', 's', null, null, null);
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('6', '1', '6.png', 's', null, null, null);
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('10', '2', 'nat1.jpg', 's', null, '31/05/2019 15:42:14 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:42:14 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('19', '2', 'na8(1).jpg', 's', null, '31/05/2019 15:42:38 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:42:38 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('21', '2', 'nat2(1).jpg', 's', null, '31/05/2019 15:43:10 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:43:10 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('22', '2', 'nat3(1).jpg', 's', null, '31/05/2019 15:43:17 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:43:17 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('23', '2', 'nat4(1).jpg', 's', null, '31/05/2019 15:43:42 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:43:42 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('24', '2', 'nat5(1).jpg', 's', null, '31/05/2019 15:43:48 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:43:48 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('25', '2', 'nat6(1).jpg', 's', null, '31/05/2019 15:43:54 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:43:54 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('26', '2', 'nat7(1).jpg', 's', null, '31/05/2019 15:43:57 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:43:57 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('27', '2', 'nat8(1).jpg', 's', null, '31/05/2019 15:44:07 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:44:07 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensarquivo` VALUES ('28', '2', 'nat9(1).jpg', 's', null, '31/05/2019 15:44:13 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '31/05/2019 15:44:13 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');

-- ----------------------------
-- Table structure for `_dev_galeriadeimagensnome`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_galeriadeimagensnome`;
CREATE TABLE `_dev_galeriadeimagensnome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` varchar(1) DEFAULT 's',
  `dadosIniciais` text,
  `ultimaAlteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_galeriadeimagensnome
-- ----------------------------
INSERT INTO `_dev_galeriadeimagensnome` VALUES ('1', 'Galeria nÃºmero 1', 's', '30/05/2019 19:26:34 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '30/05/2019 19:26:34 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_galeriadeimagensnome` VALUES ('2', 'Galeria nÃºmero dois', 's', '30/05/2019 20:06:55 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST', '30/05/2019 20:06:55 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');

-- ----------------------------
-- Table structure for `_dev_log`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_log`;
CREATE TABLE `_dev_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` longtext,
  `dataInicio` date DEFAULT NULL,
  `dataFim` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_log
-- ----------------------------

-- ----------------------------
-- Table structure for `_dev_mensagens_do_sistema`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_mensagens_do_sistema`;
CREATE TABLE `_dev_mensagens_do_sistema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_msg` varchar(255) DEFAULT NULL,
  `mensagem` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_mensagens_do_sistema
-- ----------------------------
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('1', '33', 'O e-mail informado j&aacute; est&aacute; cadastrado.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('2', '34', 'Uma nova senha foi enviada para seu e-mail de cadastro.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('3', '35', 'Verifique se os campos foram preenchidos corretamente e tente novamente.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('4', '36', 'Login ou senha incorreto.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('5', '37', 'Uma nova senha foi enviada para seu e-mail.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('6', '38', 'O e-mail informado n&atilde;o est&aacute; cadastrado.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('7', '39', 'Voc&ecirc; precisa informar o Hotel do que o usu&aacute;rio pertance.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('8', '40', 'Sua sugest&atilde;o foi enviada com sucesso!');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('9', '41', 'O arquivo que voc&ecirc; tentou incluir, n&atilde;o &eacute; um pfd, por isso o relat&oacute;rio n&atilde;o foi salvo. Certifique-se que o arquivo de seu relat&oacute;rio &eacute; um pdf, e tente novamente.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('10', '42', 'O projeto foi incluido com sucesso!');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('11', '24', 'Login ou senha incorreto.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('12', '43', 'A galeria de imagens foi incluida com sucesso!');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('13', '44', 'Inclus&atilde;o cancelada!');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('14', '45', null);
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('15', '333', 'A senha atual n&atilde;o confere.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('16', '444', 'A nova senha e sua confirma&ccedil;&atilde;o est&atilde;o diferentes.');
INSERT INTO `_dev_mensagens_do_sistema` VALUES ('17', '555', 'Sua senha foi alterada corretamente.');

-- ----------------------------
-- Table structure for `_dev_projetos`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_projetos`;
CREATE TABLE `_dev_projetos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `fotoCapa` varchar(255) DEFAULT NULL,
  `fotoTopoPagina` varchar(255) DEFAULT NULL,
  `resumo` text,
  `texto` longtext,
  `data` date DEFAULT NULL,
  `dataProjeto` date DEFAULT NULL,
  `userIdSession` int(11) DEFAULT NULL,
  `registroIncluido` varchar(1) DEFAULT 'n',
  `regIniciado` varchar(1) DEFAULT 's',
  `regTerminado` varchar(1) DEFAULT 'n',
  `ativo` varchar(1) DEFAULT 's',
  `ultimaAlteracao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_projetos
-- ----------------------------
INSERT INTO `_dev_projetos` VALUES ('29', 'Projeto adote um gatinho', 'nat10(2).jpg', 'nat3(1).jpg', 'Resumo dos trabalhos com acentuaÃ§Ã£o', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis dolor. Sed diam elit, consequat vitae lacus sit amet, ultrices faucibus purus. Sed a pretium arcu. Proin dictum non leo quis pretium. Nulla tincidunt viverra diam id posuere. Fusce aliquet pretium elit sit amet tempor. Morbi lacinia velit eu urna egestas ultrices. Suspendisse egestas diam vel porta consectetur. Proin metus metus, consectetur nec condimentum sit amet, gravida at felis. Phasellus quis nisi ut mi fringilla scelerisque eget sed dui. Fusce metus nunc, tempus ut magna quis, aliquam fringilla ipsum. Nam enim libero, gravida sit amet nibh quis, imperdiet volutpat arcu. Donec fermentum ipsum id semper viverra. Nullam sit amet arcu id quam varius ornare. Vivamus pharetra quam quis massa ultrices, id ullamcorper tellus facilisis.</p>\r\n\r\n<p>Sed vitae vulputate turpis, sed semper enim. In aliquet elementum magna non accumsan. Donec dignissim maximus nibh nec placerat. Etiam vitae elementum nibh. Phasellus nec sapien elementum tellus pretium tincidunt. Duis vitae tortor consectetur, pellentesque lacus quis, fermentum risus. Aliquam a pellentesque odio. Fusce augue justo, elementum sed vehicula eget, blandit eu metus. Praesent maximus velit eget odio euismod tristique. Etiam consectetur suscipit dui at laoreet. Quisque fringilla laoreet leo, nec molestie dui posuere ut. Maecenas ut finibus justo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis est nibh, consequat a lacus et, ullamcorper porta ex. Donec eget efficitur nibh. Donec placerat, turpis eget faucibus viverra, nunc lectus mollis felis, id lobortis dui enim eget nisi.</p>\r\n\r\n<p>Nam eleifend ipsum quis orci mollis sodales. Suspendisse auctor, eros ac egestas suscipit, ante leo egestas felis, eu iaculis nisl sem in leo. Nullam commodo massa non lobortis viverra. Sed tempor quis quam in venenatis. Quisque mollis fermentum sapien id accumsan. Suspendisse tempor dolor a semper viverra. In dictum finibus faucibus. Maecenas egestas pretium turpis, ac pharetra diam rhoncus at. Duis at tortor id leo luctus venenatis. Donec eget faucibus massa, id varius risus. Fusce magna sapien, sodales et lorem quis, elementum dignissim lectus. Fusce finibus porttitor magna, in accumsan erat auctor nec. Duis metus ipsum, condimentum et dui sed, tincidunt porta odio. Donec efficitur dolor ut felis venenatis pharetra.</p>\r\n\r\n<p>In vehicula tristique nisi ut rhoncus. Maecenas varius a magna sit amet laoreet. Donec non velit aliquet, viverra nisl eget, luctus leo. Sed gravida rhoncus nulla. Integer luctus turpis a augue imperdiet eleifend. Pellentesque lacus lorem, vulputate vulputate orci et, laoreet suscipit metus. Phasellus eu euismod lorem, ac sollicitudin neque. Cras eu libero interdum, venenatis dolor sit amet, mattis leo.</p>\r\n\r\n<p>Sed ac urna imperdiet, placerat libero ut, pellentesque arcu. Maecenas euismod ut odio nec dapibus. Suspendisse vel eros sit amet ipsum vehicula varius. Aliquam condimentum nunc dolor, vel vulputate ligula viverra at. Cras nec facilisis sapien. Aliquam gravida sapien nulla, quis commodo ante mollis eu. Donec velit sapien, aliquet vel nisi vel, condimentum molestie tellus. Nunc mollis erat metus, vel luctus orci ultricies et. Suspendisse egestas mi sed sem lobortis, vitae feugiat est porta. Donec ac dignissim massa. Donec faucibus lorem vel felis volutpat, nec consectetur purus vestibulum. Suspendisse potenti. Nulla at elit sagittis, fermentum nibh sollicitudin, commodo lectus. Curabitur sed nulla non risus dignissim semper. Praesent posuere magna non viverra fermentum. Pellentesque sed vestibulum est, sit amet fringilla nibh.</p>\r\n', '2019-06-01', '2019-06-01', '1', 's', 's', 's', 's', '01/06/2019 11:07:24 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');
INSERT INTO `_dev_projetos` VALUES ('33', 'Projeto crianÃ§a feliz', 'na8(1).jpg', 'nat1(1).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis dolor. Sed diam elit, consequat vitae lacus sit amet, ultrices faucibus purus. Sed a pretium arcu. Proin dictum non leo quis pretium. Nulla tincidunt viverra diam id posuere. Fusce aliquet pretium elit sit amet tempor. Morbi lacinia velit eu urna egestas ultrices.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis dolor. Sed diam elit, consequat vitae lacus sit amet, ultrices faucibus purus. Sed a pretium arcu. Proin dictum non leo quis pretium. Nulla tincidunt viverra diam id posuere. Fusce aliquet pretium elit sit amet tempor. Morbi lacinia velit eu urna egestas ultrices. Suspendisse egestas diam vel porta consectetur. Proin metus metus, consectetur nec condimentum sit amet, gravida at felis. Phasellus quis nisi ut mi fringilla scelerisque eget sed dui. Fusce metus nunc, tempus ut magna quis, aliquam fringilla ipsum. Nam enim libero, gravida sit amet nibh quis, imperdiet volutpat arcu. Donec fermentum ipsum id semper viverra. Nullam sit amet arcu id quam varius ornare. Vivamus pharetra quam quis massa ultrices, id ullamcorper tellus facilisis.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"100%\" id=\"ID1\" scrolling=\"no\" src=\"_embedGaleria.asp?id=1\" width=\"100%\"></iframe></p>\r\n\r\n<p>Sed vitae vulputate turpis, sed semper enim. In aliquet elementum magna non accumsan. Donec dignissim maximus nibh nec placerat. Etiam vitae elementum nibh. Phasellus nec sapien elementum tellus pretium tincidunt. Duis vitae tortor consectetur, pellentesque lacus quis, fermentum risus. Aliquam a pellentesque odio. Fusce augue justo, elementum sed vehicula eget, blandit eu metus. Praesent maximus velit eget odio euismod tristique. Etiam consectetur suscipit dui at laoreet. Quisque fringilla laoreet leo, nec molestie dui posuere ut. Maecenas ut finibus justo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis est nibh, consequat a lacus et, ullamcorper porta ex. Donec eget efficitur nibh. Donec placerat, turpis eget faucibus viverra, nunc lectus mollis felis, id lobortis dui enim eget nisi.</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"100%\" id=\"ID2\" scrolling=\"no\" src=\"_embedGaleria.asp?id=2\" width=\"100%\"></iframe></p>\r\n\r\n<p>Nam eleifend ipsum quis orci mollis sodales. Suspendisse auctor, eros ac egestas suscipit, ante leo egestas felis, eu iaculis nisl sem in leo. Nullam commodo massa non lobortis viverra. Sed tempor quis quam in venenatis. Quisque mollis fermentum sapien id accumsan. Suspendisse tempor dolor a semper viverra. In dictum finibus faucibus. Maecenas egestas pretium turpis, ac pharetra diam rhoncus at. Duis at tortor id leo luctus venenatis. Donec eget faucibus massa, id varius risus. Fusce magna sapien, sodales et lorem quis, elementum dignissim lectus. Fusce finibus porttitor magna, in accumsan erat auctor nec. Duis metus ipsum, condimentum et dui sed, tincidunt porta odio. Donec efficitur dolor ut felis venenatis pharetra.</p>\r\n', '2019-06-01', '2019-06-28', '1', 's', 's', 's', 's', '01/06/2019 14:01:36 - IP:::1:80 - Dom. Acesso:localhost - Metodo:POST');

-- ----------------------------
-- Table structure for `_dev_usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `_dev_usuarios`;
CREATE TABLE `_dev_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `idTipoPerfil` int(1) DEFAULT NULL,
  `online` varchar(1) DEFAULT 'n',
  `ativo` varchar(1) DEFAULT 's',
  `dataCadastro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _dev_usuarios
-- ----------------------------
INSERT INTO `_dev_usuarios` VALUES ('1', 'adm', '202cb962ac59075b964b07152d234b70', 'Eduardo Fagnoni', 'eduardo@brancozulu.com.br', null, null, null, null, 's', 's', '2019-05-30');
INSERT INTO `_dev_usuarios` VALUES ('2', 'adm2', '81dc9bdb52d04dc20036dbd8313ed055', 'Edu', null, null, null, null, null, 's', 's', null);
