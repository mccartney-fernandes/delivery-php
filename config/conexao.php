<?php error_reporting(E_ALL & ~ E_NOTICE & ~ E_DEPRECATED);
// ALTERE OS DADOS DAS STRINGS (NOMES QUE ESTÃO ENTRE AS ASPAS)
$host = "localhost"; // endereco do banco de dados
$usuario = "root"; // usuario do banco de dados
$senhadobanco = ""; // senha do banco de dados
$nomedobanco = "lanchonete"; //nome do banco de dados

// NÃO ATERAR NADA DAQUI PARA BAIXO
$db = mysql_connect($host,$usuario,$senhadobanco) or die (mysql_error());
$banco = mysql_select_db($nomedobanco,$db)or die (mysql_error());
mysql_set_charset('utf8');
?>
