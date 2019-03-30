DROP TABLE categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("18","Sucos C/ Leite");
INSERT INTO categoria VALUES("12","Cerveja");
INSERT INTO categoria VALUES("13","Refrigerante");
INSERT INTO categoria VALUES("14","Lanche");
INSERT INTO categoria VALUES("15","Almoço");
INSERT INTO categoria VALUES("17","Poções");
INSERT INTO categoria VALUES("20","Sucos S/ Leite");
INSERT INTO categoria VALUES("21","Bebidas Litros");
INSERT INTO categoria VALUES("23","Bebidas Doses");
INSERT INTO categoria VALUES("24","Cafe da manha");
INSERT INTO categoria VALUES("25","Jantar");



DROP TABLE config;

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO config VALUES("0","Brother Lanches","","5","0");



DROP TABLE cozinha;

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO cozinha VALUES("1","BRAHMA","1");
INSERT INTO cozinha VALUES("2","PETISCO","1");



DROP TABLE entrega;

CREATE TABLE `entrega` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `destino` int(1) NOT NULL,
  `entregue` int(1) NOT NULL,
  `feito` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=473 DEFAULT CHARSET=latin1;




DROP TABLE garcon;

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL AUTO_INCREMENT,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY (`idGarcon`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO garcon VALUES("1","Administrador","admin","1234","0");
INSERT INTO garcon VALUES("10","Luciene","luciene","1234","1");
INSERT INTO garcon VALUES("8","administrador","mccartney","123478mc","0");
INSERT INTO garcon VALUES("11","EVA","eva","1234","2");



DROP TABLE mesa;

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO mesa VALUES("4","4","","0");
INSERT INTO mesa VALUES("2","2","","0");
INSERT INTO mesa VALUES("3","3","","0");
INSERT INTO mesa VALUES("1","1","","0");
INSERT INTO mesa VALUES("5","5","","0");
INSERT INTO mesa VALUES("6","6","","0");
INSERT INTO mesa VALUES("7","7","","0");
INSERT INTO mesa VALUES("8","8","","0");
INSERT INTO mesa VALUES("9","9","","0");
INSERT INTO mesa VALUES("10","10","","0");
INSERT INTO mesa VALUES("11","11","","0");
INSERT INTO mesa VALUES("12","12","","0");
INSERT INTO mesa VALUES("13","13","","0");
INSERT INTO mesa VALUES("14","14","","0");
INSERT INTO mesa VALUES("15","15","","0");
INSERT INTO mesa VALUES("16","16","","0");
INSERT INTO mesa VALUES("17","17","","0");
INSERT INTO mesa VALUES("18","18","","0");
INSERT INTO mesa VALUES("19","19","","0");
INSERT INTO mesa VALUES("20","20","","0");



DROP TABLE pedido;

CREATE TABLE `pedido` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numerocasa` varchar(20) DEFAULT NULL,
  `detalhes` longtext,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO pedido VALUES("48","9","","0","","teste","","","","","","");



DROP TABLE tbl_carrinho;

CREATE TABLE `tbl_carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `qtd` int(11) NOT NULL,
  `comanda` int(200) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `id_mesa` int(30) NOT NULL,
  `situacao` int(2) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `destino` int(1) NOT NULL,
  `entregue` int(1) NOT NULL,
  `feito` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=438 DEFAULT CHARSET=latin1;

INSERT INTO tbl_carrinho VALUES("381","211","PF C/ BODE  ASSADO","15.00","1","0","2015-11-18","12:14:00","5","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("382","57","ITAIPAVA","6.00","1","0","2015-11-18","12:16:00","10","0","8","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("383","182","COCA COLA 2LTS","10.00","1","0","2015-11-18","12:20:00","5","0","8","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("384","209","PF ","12.00","1","0","2015-11-18","12:27:00","8","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("380","209","PF ","12.00","1","0","2015-11-18","12:14:00","5","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("366","66","COCA COLA 1L VIDRO","5.00","1","0","2015-11-17","13:39:00","11","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("367","209","PF ","12.00","1","0","2015-11-17","13:42:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("368","73","COCA ZERO 1L","6.00","1","0","2015-11-17","13:42:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("378","209","PF ","12.00","1","0","2015-11-18","12:14:00","5","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("370","209","PF ","12.00","1","0","2015-11-17","13:43:00","3","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("371","229","PF","10.00","1","0","2015-11-17","13:48:00","3","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("373","90","AGUA MINERAL 500ML","2.00","1","0","2015-11-17","13:49:00","3","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("374","209","PF ","12.00","1","0","2015-11-17","13:50:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("375","209","PF ","12.00","1","0","2015-11-17","13:50:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("377","102","ABACAXI","3.00","1","0","2015-11-17","13:51:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("379","209","PF ","12.00","1","0","2015-11-18","12:14:00","5","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("364","205","CUSCUZ C/ BODE COZIDO","8.00","1","0","2015-11-17","10:31:00","2","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("363","205","CUSCUZ C/ BODE COZIDO","8.00","1","0","2015-11-17","10:30:00","2","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("362","66","COCA COLA 1L VIDRO","5.00","1","0","2015-11-17","10:29:00","2","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("360","195","HOT DOG","3.50","1","0","2015-11-17","10:26:00","12","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("361","76","COCA LATA 350ML","3.00","1","0","2015-11-17","10:26:00","12","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("359","114","CAJU","3.00","1","0","2015-11-17","10:13:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("365","215","BODE 1/2","35.00","1","0","2015-11-17","13:39:00","11","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("327","56","SKOL","6.50","1","0","2015-11-16","21:40:00","13","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("324","209","PF ","12.00","1","0","2015-11-16","16:53:00","1","0","11","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("328","56","SKOL","6.50","1","0","2015-11-16","21:40:00","13","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("329","56","SKOL","6.50","1","0","2015-11-16","21:41:00","13","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("330","56","SKOL","6.50","1","0","2015-11-16","21:41:00","13","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("331","76","COCA LATA 350ML","3.00","1","0","2015-11-16","21:41:00","13","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("332","227","PETISCO","20.00","1","0","2015-11-16","21:49:00","13","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("333","92","AGUA DE COCO","2.50","1","0","2015-11-16","21:50:00","13","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("334","92","AGUA DE COCO","2.50","1","0","2015-11-16","21:50:00","13","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("335","57","ITAIPAVA","6.00","1","0","2015-11-16","21:55:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("336","57","ITAIPAVA","6.00","1","0","2015-11-16","21:55:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("337","57","ITAIPAVA","6.00","1","0","2015-11-16","21:55:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("338","57","ITAIPAVA","6.00","1","0","2015-11-16","21:55:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("339","57","ITAIPAVA","6.00","1","0","2015-11-16","21:55:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("340","57","ITAIPAVA","6.00","1","0","2015-11-16","21:56:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("341","209","PF ","12.00","1","0","2015-11-16","21:56:00","6","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("343","228","PETISCO","15.00","1","0","2015-11-16","21:59:00","6","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("344","57","ITAIPAVA","6.00","1","0","2015-11-16","22:13:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("345","74","CAJUINA 200ML","2.00","1","0","2015-11-17","09:35:00","9","0","8","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("346","74","CAJUINA 200ML","2.00","1","0","2015-11-17","09:35:00","9","0","8","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("347","205","CUSCUZ C/ BODE COZIDO","8.00","1","0","2015-11-17","09:35:00","9","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("348","199","PASTEL","2.50","1","0","2015-11-17","09:35:00","9","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("349","199","PASTEL","2.50","1","0","2015-11-17","09:35:00","9","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("350","199","PASTEL","2.50","1","0","2015-11-17","09:35:00","9","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("351","189","HAMBURGUE","3.50","1","0","2015-11-17","09:39:00","14","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("352","189","HAMBURGUE","3.50","1","0","2015-11-17","09:39:00","14","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("353","75","PITHULINHA","1.50","1","0","2015-11-17","09:40:00","14","0","8","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("354","75","PITHULINHA","1.50","1","0","2015-11-17","09:40:00","14","0","8","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("355","195","HOT DOG","3.50","1","0","2015-11-17","09:44:00","14","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("356","200","COXINHA","2.50","1","0","2015-11-17","09:44:00","14","0","8","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("357","205","CUSCUZ C/ BODE COZIDO","8.00","1","0","2015-11-17","10:13:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("385","209","PF ","12.00","1","0","2015-11-18","12:27:00","8","0","8","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("388","209","PF ","12.00","1","0","2015-11-18","12:41:00","10","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("387","66","COCA COLA 1L VIDRO","5.00","1","0","2015-11-18","12:27:00","8","0","8","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("389","209","PF ","12.00","1","0","2015-11-18","12:41:00","10","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("390","104","ACEROLA","3.00","1","0","2015-11-18","12:41:00","10","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("391","104","ACEROLA","3.00","1","0","2015-11-18","12:41:00","10","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("392","209","PF ","12.00","1","0","2015-11-18","12:51:00","8","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("393","209","PF ","12.00","1","0","2015-11-18","12:51:00","8","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("398","211","PF C/ BODE  ASSADO","15.00","1","0","2015-11-18","21:24:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("395","66","COCA COLA 1L VIDRO","5.00","1","0","2015-11-18","12:51:00","8","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("399","199","PASTEL","2.50","1","0","2015-11-18","21:24:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("400","90","AGUA MINERAL 500ML","2.00","1","0","2015-11-18","21:25:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("401","66","COCA COLA 1L VIDRO","5.00","1","0","2015-11-18","21:25:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("402","80","SCHIN ","6.00","1","0","2015-11-18","21:27:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("403","80","SCHIN ","6.00","1","0","2015-11-18","21:27:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("405","229","PF","10.00","1","0","2015-11-18","21:28:00","4","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("406","231","ASA BRANCA 1/4","6.00","1","0","2015-11-18","21:32:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("407","231","ASA BRANCA 1/4","6.00","1","0","2015-11-18","22:05:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("410","215","BODE 1/2","35.00","1","0","2015-11-18","22:40:00","3","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("421","233","PEIXE COMPLETO 2 K1/2","65.00","1","0","2015-11-18","23:29:00","2","0","10","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("422","137","LARANJA","4.00","1","0","2015-11-18","23:31:00","2","0","10","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("424","215","BODE 1/2","35.00","1","0","2015-11-18","23:33:00","1","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("425","57","ITAIPAVA","6.00","1","0","2015-11-18","23:33:00","1","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("432","80","SCHIN ","6.00","1","0","2015-11-19","00:18:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("431","193","X BROTHER","6.50","1","0","2015-11-19","00:13:00","2","0","10","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("430","80","SCHIN ","6.00","1","0","2015-11-19","00:11:00","2","0","10","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("433","80","SCHIN ","6.00","1","0","2015-11-19","00:18:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("434","80","SCHIN ","6.00","1","0","2015-11-19","00:18:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("435","80","SCHIN ","6.00","1","0","2015-11-19","00:18:00","4","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("437","66","COCA COLA 1L VIDRO","5.00","1","0","2015-11-19","00:19:00","4","0","0","0","0","0","0");



DROP TABLE tbl_produtos;

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;

INSERT INTO tbl_produtos VALUES("83","SKOL LATA","","3.00","12","0");
INSERT INTO tbl_produtos VALUES("82","ITAIPAVA LATA","","3.00","12","0");
INSERT INTO tbl_produtos VALUES("81","ITAIPAVA LATAO","","4.50","12","0");
INSERT INTO tbl_produtos VALUES("80","SCHIN ","","6.00","12","0");
INSERT INTO tbl_produtos VALUES("79","SODA LATA 350ML","","3.00","13","0");
INSERT INTO tbl_produtos VALUES("78","GUARANA ANTARCTICA 350ML","","3.00","13","0");
INSERT INTO tbl_produtos VALUES("77","FANTA LATA350ML","","3.00","13","0");
INSERT INTO tbl_produtos VALUES("76","COCA LATA 350ML","","3.00","13","0");
INSERT INTO tbl_produtos VALUES("75","PITHULINHA","","1.50","13","0");
INSERT INTO tbl_produtos VALUES("74","CAJUINA 200ML","","2.00","13","0");
INSERT INTO tbl_produtos VALUES("73","COCA ZERO 1L","","6.00","13","0");
INSERT INTO tbl_produtos VALUES("72","COCA ZERO 500ML","","4.00","13","0");
INSERT INTO tbl_produtos VALUES("71","COCA 500 ML","","4.00","13","0");
INSERT INTO tbl_produtos VALUES("70","SODA  500ML","","4.00","13","0");
INSERT INTO tbl_produtos VALUES("69","FANTA 500ML","","4.00","13","0");
INSERT INTO tbl_produtos VALUES("68","GUARANA 500ML","","4.00","13","0");
INSERT INTO tbl_produtos VALUES("67","GUARANA 1L VIDRO","","5.00","13","0");
INSERT INTO tbl_produtos VALUES("66","COCA COLA 1L VIDRO","","5.00","13","0");
INSERT INTO tbl_produtos VALUES("65","SODA 1L","","6.00","13","0");
INSERT INTO tbl_produtos VALUES("64","FANTA 1L","","6.00","13","0");
INSERT INTO tbl_produtos VALUES("63","COCA COLA 1L","","6.00","13","0");
INSERT INTO tbl_produtos VALUES("59","SKOL PIRIGUET","","3.00","12","0");
INSERT INTO tbl_produtos VALUES("60","SCHIN 1L","","7.00","12","0");
INSERT INTO tbl_produtos VALUES("61","ITAIPAVA 1L","","7.00","12","0");
INSERT INTO tbl_produtos VALUES("62","GUARANA 1L","","6.00","13","0");
INSERT INTO tbl_produtos VALUES("58","SKOL 1L","","7.00","12","0");
INSERT INTO tbl_produtos VALUES("57","ITAIPAVA","","6.00","12","0");
INSERT INTO tbl_produtos VALUES("56","SKOL","","6.50","12","0");
INSERT INTO tbl_produtos VALUES("55","ANTARTICA SUBZERO","","4.00","12","0");
INSERT INTO tbl_produtos VALUES("54","ANTARTICA","","6.00","12","0");
INSERT INTO tbl_produtos VALUES("84","SKOL LATAO","","4.50","12","0");
INSERT INTO tbl_produtos VALUES("85","SCHIN LATAO","","4.50","12","0");
INSERT INTO tbl_produtos VALUES("86","SCHIN LATA","","3.00","12","0");
INSERT INTO tbl_produtos VALUES("87","MALZEB LONGUENETE","","3.50","12","0");
INSERT INTO tbl_produtos VALUES("88","ITAIPAVA S/ ALCOOL ","","3.50","12","0");
INSERT INTO tbl_produtos VALUES("89","SCHIN S/ ALCOOL","","3.50","12","0");
INSERT INTO tbl_produtos VALUES("90","AGUA MINERAL 500ML","","2.00","13","0");
INSERT INTO tbl_produtos VALUES("91","AGUA MINERAL 1,5L","","4.00","13","0");
INSERT INTO tbl_produtos VALUES("92","AGUA DE COCO","","2.50","13","0");
INSERT INTO tbl_produtos VALUES("103","ACEROLA","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("102","ABACAXI","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("97","AMEIXA","","3.50","18","0");
INSERT INTO tbl_produtos VALUES("98","AMEIXA","","3.00","20","0");
INSERT INTO tbl_produtos VALUES("101","ABACAXI","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("104","ACEROLA","","3.00","20","0");
INSERT INTO tbl_produtos VALUES("105","AMEIXA","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("106","AMEIXA","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("107","AÇAI","","4.00","18","1");
INSERT INTO tbl_produtos VALUES("108","AÇAI","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("109","CACAU","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("110","CACAU","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("111","CAJÁ","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("112","CAJÁ","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("113","CAJU","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("114","CAJU","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("115","CUPUAÇU","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("116","CUPUAÇU","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("117","GOIABA","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("118","GOIABA","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("119","GRAVIOLA","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("120","GRAVIOLA","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("121","LIMAO","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("122","MANGA","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("123","MARACUJA","","3.50","18","0");
INSERT INTO tbl_produtos VALUES("124","MARACUJA","","3.00","20","0");
INSERT INTO tbl_produtos VALUES("125","MORANGO","","4.00","18","1");
INSERT INTO tbl_produtos VALUES("126","MORANGO","","3.00","20","0");
INSERT INTO tbl_produtos VALUES("127","PINHA","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("128","PINHA","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("129","TAMARINO","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("130","TAMARINO","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("131","UMBU","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("132","UMBU","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("133","UMBU-CAJA","","3.50","18","1");
INSERT INTO tbl_produtos VALUES("134","UMBU-CAJA","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("135","UVA","","3.00","20","1");
INSERT INTO tbl_produtos VALUES("137","LARANJA","","4.00","20","1");
INSERT INTO tbl_produtos VALUES("138","MORANGO NO LANCE","","4.00","18","1");
INSERT INTO tbl_produtos VALUES("139","MORANGO NO LANCE","","3.50","20","1");
INSERT INTO tbl_produtos VALUES("140","DETONADOR","","4.00","18","1");
INSERT INTO tbl_produtos VALUES("141","DETONADOR","","3.50","20","1");
INSERT INTO tbl_produtos VALUES("142","AÇAI COM BANANA","","4.00","18","1");
INSERT INTO tbl_produtos VALUES("143","AÇAI COM BANANA","","3.50","20","1");
INSERT INTO tbl_produtos VALUES("144","CLOROFILA","","3.50","20","1");
INSERT INTO tbl_produtos VALUES("145","CLOROFILA","","4.00","18","1");
INSERT INTO tbl_produtos VALUES("146","ABACAXI C/ HORTELA","","4.00","18","1");
INSERT INTO tbl_produtos VALUES("147","ABACAXI C/ HORTELA","","3.50","20","1");
INSERT INTO tbl_produtos VALUES("148","SELETA 1L","","45.00","21","0");
INSERT INTO tbl_produtos VALUES("149","SELETA 670ML","","38.00","21","0");
INSERT INTO tbl_produtos VALUES("150","PITU LATAO","","10.00","21","0");
INSERT INTO tbl_produtos VALUES("151","PITU LATA","","6.00","21","0");
INSERT INTO tbl_produtos VALUES("152","PITU GARAFA","","7.00","21","0");
INSERT INTO tbl_produtos VALUES("153","CARIBE 1L","","35.00","21","0");
INSERT INTO tbl_produtos VALUES("154","CARIBE GARAFA","","25.00","21","0");
INSERT INTO tbl_produtos VALUES("155","CAMPARI 1L","","50.00","21","0");
INSERT INTO tbl_produtos VALUES("156","TEACHER S","","60.00","21","0");
INSERT INTO tbl_produtos VALUES("157","RED LABEL","","100.00","21","0");
INSERT INTO tbl_produtos VALUES("158","CAVALO BRANCO","","90.00","21","0");
INSERT INTO tbl_produtos VALUES("159","CONHAQUE DE ALCATRAO","","35.00","21","0");
INSERT INTO tbl_produtos VALUES("160","DREHER","","22.00","21","0");
INSERT INTO tbl_produtos VALUES("161","MONTILA","","35.00","21","0");
INSERT INTO tbl_produtos VALUES("162","PASSPORT","","68.00","21","0");
INSERT INTO tbl_produtos VALUES("163","SAO FRANCISCO","","30.00","21","0");
INSERT INTO tbl_produtos VALUES("164","MARTINI","","40.00","21","0");
INSERT INTO tbl_produtos VALUES("165","VINHO ADEGA DO VALE","","20.00","21","0");
INSERT INTO tbl_produtos VALUES("166","VINHO PERGOLA","","18.00","21","0");
INSERT INTO tbl_produtos VALUES("167","VINHO COLHEITA DO SUL","","18.00","21","0");
INSERT INTO tbl_produtos VALUES("168","RED BULL","","10.00","21","0");
INSERT INTO tbl_produtos VALUES("169","ENEGETICO TNT","","10.00","21","0");
INSERT INTO tbl_produtos VALUES("170","CAMPARI","","5.00","23","0");
INSERT INTO tbl_produtos VALUES("171","CAVALO BRANCO","","10.00","23","0");
INSERT INTO tbl_produtos VALUES("172","SELETA","","3.00","23","0");
INSERT INTO tbl_produtos VALUES("173","RED LABEL","","10.00","23","0");
INSERT INTO tbl_produtos VALUES("174","CARIBE","","3.00","23","0");
INSERT INTO tbl_produtos VALUES("175","DREHER","","3.00","23","0");
INSERT INTO tbl_produtos VALUES("176","MONTILLA","","3.00","23","0");
INSERT INTO tbl_produtos VALUES("177","MARTINI","","4.00","23","0");
INSERT INTO tbl_produtos VALUES("178","CONHAQUE ALCATRAO","","3.00","23","0");
INSERT INTO tbl_produtos VALUES("179","PITU","","1.00","23","0");
INSERT INTO tbl_produtos VALUES("180","VINHO","","3.00","23","0");
INSERT INTO tbl_produtos VALUES("181","REFRIGERANTE 2LT","","10.00","13","0");
INSERT INTO tbl_produtos VALUES("182","COCA COLA 2LTS","","10.00","13","0");
INSERT INTO tbl_produtos VALUES("183","FANTA 2LTS","","10.00","13","0");
INSERT INTO tbl_produtos VALUES("184","QUARANA 2LTS","","10.00","13","0");
INSERT INTO tbl_produtos VALUES("185","SODA 2LTS","","10.00","13","0");
INSERT INTO tbl_produtos VALUES("186","GUARAÇAI ","","4.00","18","1");
INSERT INTO tbl_produtos VALUES("187","GUARAÇAI ","","3.50","20","1");
INSERT INTO tbl_produtos VALUES("188","MISTO","","3.50","14","1");
INSERT INTO tbl_produtos VALUES("189","HAMBURGUE","","3.50","14","1");
INSERT INTO tbl_produtos VALUES("190","SANDUICHES DE QUEIJO COALHO","","3.50","14","1");
INSERT INTO tbl_produtos VALUES("191","X SALADA","","5.00","14","1");
INSERT INTO tbl_produtos VALUES("192","X BURGUE","","5.00","14","1");
INSERT INTO tbl_produtos VALUES("193","X BROTHER","","6.50","14","1");
INSERT INTO tbl_produtos VALUES("194","AMERICO","","5.50","14","1");
INSERT INTO tbl_produtos VALUES("195","HOT DOG","","3.50","14","1");
INSERT INTO tbl_produtos VALUES("196","CHESS EGG","","5.50","14","1");
INSERT INTO tbl_produtos VALUES("197","X MILHO","","5.00","14","1");
INSERT INTO tbl_produtos VALUES("198","BAURU","","5.00","14","1");
INSERT INTO tbl_produtos VALUES("199","PASTEL","","2.50","14","1");
INSERT INTO tbl_produtos VALUES("200","COXINHA","","2.50","14","0");
INSERT INTO tbl_produtos VALUES("201","COCHAO","","3.00","14","1");
INSERT INTO tbl_produtos VALUES("202","BOLO LEITE","","2.00","14","1");
INSERT INTO tbl_produtos VALUES("203","BOLO MILLO","","2.00","14","1");
INSERT INTO tbl_produtos VALUES("204","BOLO NATA","","2.00","14","1");
INSERT INTO tbl_produtos VALUES("205","CUSCUZ C/ BODE COZIDO","","8.00","24","1");
INSERT INTO tbl_produtos VALUES("206","TAPIOCA","","2.00","24","1");
INSERT INTO tbl_produtos VALUES("207","TAPIOCA RECHEADA","","3.00","24","1");
INSERT INTO tbl_produtos VALUES("208","CUSCUZC/ CARNE ASSADA","","10.00","24","1");
INSERT INTO tbl_produtos VALUES("209","PF ","","12.00","15","1");
INSERT INTO tbl_produtos VALUES("210","MARMITEX","","12.00","15","1");
INSERT INTO tbl_produtos VALUES("211","PF C/ BODE  ASSADO","","15.00","15","1");
INSERT INTO tbl_produtos VALUES("212","COMERCIAL  2P","","30.00","15","1");
INSERT INTO tbl_produtos VALUES("213","COMERCIAL 1P","","18.00","15","1");
INSERT INTO tbl_produtos VALUES("214","BODE COMPLETO","","58.00","15","1");
INSERT INTO tbl_produtos VALUES("215","BODE 1/2","","35.00","15","1");
INSERT INTO tbl_produtos VALUES("216","ARROZ ","","3.00","17","1");
INSERT INTO tbl_produtos VALUES("217","MACARRAO","","3.00","17","1");
INSERT INTO tbl_produtos VALUES("218","FEIJAO","","3.00","17","1");
INSERT INTO tbl_produtos VALUES("219","SALADA","","3.00","17","1");
INSERT INTO tbl_produtos VALUES("220","CARNE  AO MOLHO","","6.00","17","1");
INSERT INTO tbl_produtos VALUES("222","GALINHA CAIPIRA 2P","","35.00","15","1");
INSERT INTO tbl_produtos VALUES("223","GALINHA CAIPIRA 1P","","18.00","15","1");
INSERT INTO tbl_produtos VALUES("224","sopa","","6.00","25","1");
INSERT INTO tbl_produtos VALUES("225","PEIXE COMPLETO 1/2K","","23.00","15","1");
INSERT INTO tbl_produtos VALUES("226","PEIXE PETISCO 1KG","","19.00","17","1");
INSERT INTO tbl_produtos VALUES("227","PETISCO","","20.00","15","1");
INSERT INTO tbl_produtos VALUES("228","PETISCO","","15.00","15","1");
INSERT INTO tbl_produtos VALUES("229","PF","","10.00","15","1");
INSERT INTO tbl_produtos VALUES("230","PF C/ BODE ASSADO","","15.00","15","1");
INSERT INTO tbl_produtos VALUES("231","ASA BRANCA 1/4","","6.00","23","0");
INSERT INTO tbl_produtos VALUES("234","LARANJA","","4.00","20","1");
INSERT INTO tbl_produtos VALUES("233","PEIXE COMPLETO 2 K1/2","","65.00","15","1");



DROP TABLE usuario;

CREATE TABLE `usuario` (
  `idUser` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO usuario VALUES("1","Seu Nome","","aidecb","8520");



