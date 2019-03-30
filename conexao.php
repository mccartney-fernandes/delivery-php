<?php 


error_reporting(E_ALL & ~ E_NOTICE & ~ E_DEPRECATED);
function connect($banco="lanchonete",$usuario="root",$senha="",$hostname="localhost"){

	$connect = mysql_connect($hostname,$usuario,$senha);

	if(!$connect){
		die(trigger_error("Não foi possivel estabeleçer a conexão"));
		return false;
	}else{
			$db = mysql_select_db($banco,$connect);

			if(!$db){
				die(trigger_error("Não foi possivel conectar com o banco"));
				return false;
			}else{
					return $connect;
				 }
		 }


}


?>