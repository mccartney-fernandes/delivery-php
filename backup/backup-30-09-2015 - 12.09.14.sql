DROP TABLE categoria;

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO categoria VALUES("2","Pizzas");
INSERT INTO categoria VALUES("4","Caldos");
INSERT INTO categoria VALUES("5","Bebidas");
INSERT INTO categoria VALUES("6","Doses");
INSERT INTO categoria VALUES("7","Refrigerantes");
INSERT INTO categoria VALUES("8","água e Sucos");
INSERT INTO categoria VALUES("9","Peixes");
INSERT INTO categoria VALUES("10","Porções");
INSERT INTO categoria VALUES("11","Lanches");



DROP TABLE config;

CREATE TABLE `config` (
  `id_conf` int(30) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `pgarcon` int(10) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO config VALUES("0","Pizzaria Online","(31) 8728-5451","5","1");



DROP TABLE cozinha;

CREATE TABLE `cozinha` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produto` varchar(200) NOT NULL,
  `qtd` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO cozinha VALUES("1","BRAHMA","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=470 DEFAULT CHARSET=latin1;




DROP TABLE garcon;

CREATE TABLE `garcon` (
  `idGarcon` int(10) NOT NULL AUTO_INCREMENT,
  `nomeGarcon` varchar(200) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nv` int(1) NOT NULL,
  PRIMARY KEY (`idGarcon`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO garcon VALUES("1","Administrador","admin","1234","0");
INSERT INTO garcon VALUES("10","garcom","garcom","1234","1");
INSERT INTO garcon VALUES("8","administrador","mccartney","123478mc","0");
INSERT INTO garcon VALUES("9","israela","israela","1234","2");



DROP TABLE mesa;

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL AUTO_INCREMENT,
  `numero` int(10) NOT NULL,
  `idGarcon` varchar(200) NOT NULL,
  `situacao` int(1) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO mesa VALUES("4","4","","0");
INSERT INTO mesa VALUES("2","2","10","1");
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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

INSERT INTO pedido VALUES("46","12","9","0","teste@gmail.com","Carla Costa","Barcelos","(31) 34542345","Giovanini","Av. Purus ","540","");



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
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;

INSERT INTO tbl_carrinho VALUES("49","2","teste2","300.00","1","0","2013-07-10","23:40:00","9","0","2","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("53","2","teste2","300.00","1","0","2014-12-02","22:34:00","8","0","15","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("161","18","Á Moda","38.00","1","0","2015-09-25","12:33:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("162","14","Frango","35.00","1","0","2015-09-25","12:33:00","6","0","0","0","1","0","0");
INSERT INTO tbl_carrinho VALUES("163","27","BRAHMA","6.40","1","0","2015-09-25","12:33:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("164","29","Cerveja Lata","3.50","1","0","2015-09-25","12:33:00","6","0","0","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("165","28","ANTARTICA","5.50","1","0","2015-09-26","02:32:00","1","0","10","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("166","18","Á Moda","38.00","1","0","2015-09-26","02:33:00","1","0","10","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("167","43","2 Litros","7.00","1","0","2015-09-26","02:35:00","1","0","10","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("168","18","Á Moda","38.00","1","0","2015-09-26","02:39:00","4","0","10","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("169","26","SKOL","6.50","1","0","2015-09-25","22:13:00","4","0","10","1","1","1","0");
INSERT INTO tbl_carrinho VALUES("170","51","água c/ Gás","2.00","1","0","2015-09-26","04:18:00","11","0","10","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("171","50","Pinto","10.00","1","0","2015-09-26","04:18:00","11","0","10","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("172","53","X-Bacon","10.00","1","0","2015-09-25","23:41:00","11","0","10","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("174","43","2 Litros","7.00","1","0","2015-09-26","18:54:00","1","0","10","1","0","1","0");
INSERT INTO tbl_carrinho VALUES("175","53","X-Bacon","10.00","1","0","2015-09-26","18:54:00","1","0","10","1","1","1","1");
INSERT INTO tbl_carrinho VALUES("176","51","água c/ Gás","2.00","1","0","2015-09-30","16:18:00","2","1","10","0","0","0","0");
INSERT INTO tbl_carrinho VALUES("177","52","Água sem Gás","2.00","1","0","2015-09-30","16:18:00","2","1","10","0","0","0","0");



DROP TABLE tbl_produtos;

CREATE TABLE `tbl_produtos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `preco` varchar(10) NOT NULL,
  `id_categoria` int(30) NOT NULL,
  `destino` int(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

INSERT INTO tbl_produtos VALUES("9","Traíra Completa","","74.90","9","1");
INSERT INTO tbl_produtos VALUES("10","Traíra Média","","64.90","9","1");
INSERT INTO tbl_produtos VALUES("11","Traíra Pequena","","54.90","9","1");
INSERT INTO tbl_produtos VALUES("12","Moqueca Capixaba","","65.00","9","1");
INSERT INTO tbl_produtos VALUES("13","Portuguesa","","35.00","2","1");
INSERT INTO tbl_produtos VALUES("14","Frango","","35.00","2","1");
INSERT INTO tbl_produtos VALUES("15","Frango c/ Catupiry","","35.00","2","1");
INSERT INTO tbl_produtos VALUES("16","Calabresa","","35.00","2","1");
INSERT INTO tbl_produtos VALUES("17","Bacon","","35.00","2","1");
INSERT INTO tbl_produtos VALUES("18","Á Moda","","38.00","2","0");
INSERT INTO tbl_produtos VALUES("19","Filé c/ Fritas","","37.00","10","1");
INSERT INTO tbl_produtos VALUES("20","Lombo c/ Fritas","","32.00","10","1");
INSERT INTO tbl_produtos VALUES("21","Língua ao Molho Madeira","","15.00","10","1");
INSERT INTO tbl_produtos VALUES("22","Arroz","","6.00","10","1");
INSERT INTO tbl_produtos VALUES("23","Pirão","","6.00","10","1");
INSERT INTO tbl_produtos VALUES("24","Fritas","","12.00","10","1");
INSERT INTO tbl_produtos VALUES("25","Salada Completa","","15.00","10","1");
INSERT INTO tbl_produtos VALUES("26","SKOL","","6.50","5","0");
INSERT INTO tbl_produtos VALUES("27","BRAHMA","","6.40","5","0");
INSERT INTO tbl_produtos VALUES("28","ANTARTICA","","5.50","5","0");
INSERT INTO tbl_produtos VALUES("29","Cerveja Lata","","3.50","5","0");
INSERT INTO tbl_produtos VALUES("30","Ice","","5.50","5","0");
INSERT INTO tbl_produtos VALUES("31","Whisk","","15.00","6","0");
INSERT INTO tbl_produtos VALUES("33","Bacardi","","8.00","6","0");
INSERT INTO tbl_produtos VALUES("34","Martini","","8.00","6","0");
INSERT INTO tbl_produtos VALUES("35","Campari","","8.00","6","0");
INSERT INTO tbl_produtos VALUES("36","Conhaque","","6.00","6","0");
INSERT INTO tbl_produtos VALUES("37","Vodka","","8.00","6","0");
INSERT INTO tbl_produtos VALUES("38","Licor de Menta","","6.00","6","0");
INSERT INTO tbl_produtos VALUES("39","Cachaça","","4.00","6","0");
INSERT INTO tbl_produtos VALUES("40","Cuba","","10.00","6","0");
INSERT INTO tbl_produtos VALUES("41","Caipirinha","","9.00","6","0");
INSERT INTO tbl_produtos VALUES("42","Amarula","","10.00","6","0");
INSERT INTO tbl_produtos VALUES("43","2 Litros","","7.00","7","0");
INSERT INTO tbl_produtos VALUES("44","1,25 Litros","","6.00","7","0");
INSERT INTO tbl_produtos VALUES("45","1 Litro","","5.00","7","0");
INSERT INTO tbl_produtos VALUES("46","600 ML","","4.50","7","0");
INSERT INTO tbl_produtos VALUES("47","500 ML","","4.50","7","0");
INSERT INTO tbl_produtos VALUES("48","Lata 350 ML","","3.50","7","0");
INSERT INTO tbl_produtos VALUES("49","Feijão","","10.00","4","1");
INSERT INTO tbl_produtos VALUES("50","Pinto","","10.00","4","1");
INSERT INTO tbl_produtos VALUES("51","água c/ Gás","","2.00","8","0");
INSERT INTO tbl_produtos VALUES("52","Água sem Gás","","2.00","8","0");
INSERT INTO tbl_produtos VALUES("53","X-Bacon","","10.00","11","1");



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



