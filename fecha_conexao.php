<?php


	function fechaConexao($connect){
		$fecha= mysql_close($connect);
		if(!$fecha){
			echo "Impossivel fecha a conexão";
			return false;
		}else{
			return true;
		}
	}
?>