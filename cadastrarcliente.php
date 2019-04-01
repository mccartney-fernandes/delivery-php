<?php require_once('Connections/sistema.php'); ?>

<?php

if (!function_exists("GetSQLValueString")) {

function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 

{

  if (PHP_VERSION < 6) {

    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;

  }



  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);



  switch ($theType) {

    case "text":

      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";

      break;    

    case "long":

    case "int":

      $theValue = ($theValue != "") ? intval($theValue) : "NULL";

      break;

    case "double":

      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";

      break;

    case "date":

      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";

      break;

    case "defined":

      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;

      break;

  }

  return $theValue;

}

}



$editFormAction = $_SERVER['PHP_SELF'];

if (isset($_SERVER['QUERY_STRING'])) {

  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);

}



if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {

  $insertSQL = sprintf("INSERT INTO pedido (id_mesa, numero, idGarcon, situacao, email, nome, sobrenome, telefone, bairro, rua, numerocasa, detalhes, preco) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",

                       GetSQLValueString(strtoupper($_POST['id_mesa']), "int"), 

                       GetSQLValueString(strtoupper($_POST['numero']), "int"),

                       GetSQLValueString(strtoupper($_POST['idGarcon']), "text"),

                       GetSQLValueString(strtoupper($_POST['situacao']), "int"),

                       GetSQLValueString($_POST['email'], "text"),

                       GetSQLValueString(strtoupper($_POST['nome']), "text"),

                       GetSQLValueString(strtoupper($_POST['sobrenome']), "text"),

                       GetSQLValueString(strtoupper($_POST['telefone']), "text"),

                       GetSQLValueString(strtoupper($_POST['bairro']), "text"),

                       GetSQLValueString(strtoupper($_POST['rua']), "text"),

                       GetSQLValueString(strtoupper($_POST['numerocasa']), "text"),

                       GetSQLValueString(strtoupper($_POST['detalhes']), "text"),

                       GetSQLValueString($_POST['preco'], "text"));



  mysql_select_db($database_sistema, $sistema);

  $Result1 = mysql_query($insertSQL, $sistema) or die(mysql_error());





  if (isset($_SERVER['QUERY_STRING'])) {

    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";

    $insertGoTo .= $_SERVER['QUERY_STRING'];

  }

 

}

?>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<script type="text/javascript" src="js/jquery.autocomplete.js"></script>



<script type="text/javascript">

  $().ready(function(){

	$("#busca").autocomplete("ajax/busca.php", {

		width: 300,

		matchContains: true,

		selectFirst: false

	});

  });

</script>

<script type="text/javascript">

function exibe(id) {

	if(document.getElementById(id).style.display=="none") {

		document.getElementById(id).style.display = "inline";

	}

	else {

		document.getElementById(id).style.display = "none";

	}

}

</script>

  

 <script type="text/javascript" src="js/jquery.mask-money.js"></script>

<script type="text/javascript">

$(document).ready(function() {

        $("#preco").maskMoney({decimal:",",thousands:"."});
		

      });

</script>

<h1>&nbsp;&nbsp;Cadastrar clientes</h1>

<div class="div"><center>

    <form method="post" action="buscar.php">

      <input size="32" type="text" class="busca" id="busca" name="buscar" value="Buscar no Sistema..." onfocus="if (this.value == 'Buscar no Sistema...') this.value = '';" onblur="if (this.value == '') this.value = 'Buscar no Sistema...';" />

      

    </form></center>

  </div>

<br />

<div id="conteudo">

  <form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">

    <table align="center">

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Email:</td>

        <td><input type="text" name="email" value="" size="32" /></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Nome:</td>

        <td><input type="text" name="nome" value="" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">CPF:</td>

        <td><input type="text" class="cpf" name="sobrenome" value="" size="32" data-mask="000.000.000-00" /></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Telefone:</td>

        <td><input type="text" name="telefone" value="" size="32" data-mask="(00) 00000-0000" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Bairro:</td>

        <td><input type="text" name="bairro" value="" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Rua:</td>

        <td><input type="text" name="rua" value="" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">N:</td>

        <td><input type="text" name="numerocasa" value="" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right" valign="top">Cidade:</td>

        <td><input type="text" name="detalhes" value="" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right" valign="top">Taxa de Entrega:</td>

        <td><input name="preco" type="text" size="6" id="preco"><br/><br/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">&nbsp;</td>

        <td><input type="submit" value="Cadastrar" /></td>

      </tr>

    </table>

    <input type="hidden" name="id_mesa" value="" />

    <input type="hidden" name="numero" value="<?php

echo date("d/m/Y");

?>" />

    <input type="hidden" name="idGarcon" value="9" />

    <input type="hidden" name="situacao" value="0" />

    <input type="hidden" name="MM_insert" value="form1" />

  </form>

  <p>&nbsp;</p>

</div>


<script type="text/javascript" src="js/jquery.mask.js"></script>


<p>&nbsp;</p>

