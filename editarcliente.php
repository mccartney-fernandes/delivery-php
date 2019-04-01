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


if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form2")) {
  $emailu = $_POST['email'];
  $nomeu = strtoupper($_POST['nome']);
  $sobreu = strtoupper($_POST['sobrenome']);
  $teleu = strtoupper($_POST['telefone']);
  $bairou = strtoupper($_POST['bairro']);
  $ruau = strtoupper($_POST['rua']);
  $nunu = strtoupper($_POST['numerocasa']);
  $detu = strtoupper($_POST['detalhes']);
  $precou = $_POST['preco'];
  $id_mesau = $_GET['id_mesa'];




  $update = "UPDATE pedido SET email = '$emailu', nome = '$nomeu', sobrenome = '$sobreu', telefone = '$teleu', bairro = '$bairou', rua = '$ruau', numerocasa= '$nunu', detalhes = '$detu', preco = '$precou' WHERE id_mesa = '$id_mesau'";


  mysql_select_db($database_sistema, $sistema);

  $Result1 = mysql_query($update, $sistema) or die(mysql_error());

  if(!$Result){
    header('Location: inicio2.php?btn=createclientes');
  }

 

}
if (isset($_GET['id_mesa'])){
  $sql = sprintf("SELECT * FROM pedido WHERE id_mesa = %s", GetSQLValueString($_GET['id_mesa'], "int"));
   mysql_select_db($database_sistema, $sistema);
  $result = mysql_query($sql, $sistema) or die(mysql_error());
  $cliente = mysql_fetch_assoc($result);

}
?>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<script type="text/javascript" src="js/jquery.autocomplete.js"></script>



<script type="text/javascript">

  $().ready(function(){

	$("#busca").autocomplete("ajax/buscaedit.php", {

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

<h1>&nbsp;&nbsp;Editar clientes</h1>

<div class="div"><center>

    <form method="post" action="buscar.php">

      <input size="32" type="text" class="busca" id="busca" name="buscar" value="Buscar no Sistema..." onfocus="if (this.value == 'Buscar no Sistema...') this.value = '';" onblur="if (this.value == '') this.value = 'Buscar no Sistema...';" />

      

    </form></center>

  </div>

<br />
<!-- <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script> -->

<script type="text/javascript" src="js/jquery.mask-money.js"></script>

<script type="text/javascript">

$(document).ready(function() {

        $("#preco").maskMoney({decimal:",",thousands:"."});

		

      });

</script>
<div id="conteudo">

  <form action="<?php echo $editFormAction; ?>" method="post" name="form2" id="form2">

    <table align="center">

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Email:</td>

        <td><input type="text" name="email" value="<?php echo $cliente['email'] ?>" size="32" /></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Nome:</td>

        <td><input type="text" name="nome" value="<?php echo $cliente['nome'] ?>" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">CPF:</td>

        <td><input type="text" name="sobrenome" value="<?php echo $cliente['sobrenome'] ?>" size="32" data-mask="000.000.000-00"/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Telefone:</td>

        <td><input type="text" name="telefone" value="<?php echo $cliente['telefone'] ?>" size="32" data-mask="(00) 00000-0000" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Bairro:</td>

        <td><input type="text" name="bairro" value="<?php echo $cliente['bairro'] ?>" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">Rua:</td>

        <td><input type="text" name="rua" value="<?php echo $cliente['rua'] ?>" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">N:</td>

        <td><input type="text" name="numerocasa" value="<?php echo $cliente['numerocasa'] ?>" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right" valign="top">Cidade:</td>

        <td><input type="text" name="detalhes" value="<?php echo $cliente['detalhes'] ?>" size="32" required/></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right" valign="top">Taxa de Entrega:</td>

        <td><input name="preco" type="text" size="6" id="preco" value="<?php echo $cliente['preco'] ?>"></td>

      </tr>

      <tr valign="baseline">

        <td nowrap="nowrap" align="right">&nbsp;</td>

        <td><input type="submit" value="Cadastrar" /></td>

      </tr>

    </table>

    <input type="hidden" name="id_mesa" value="<?php echo $_GET['id_mesa']; ?>" />
    <input type="hidden" name="MM_insert" value="form2" />

  </form>

  <p>&nbsp;</p>
  <script type="text/javascript" src="js/jquery.mask.js"></script>


</div>







<p>&nbsp;</p>

