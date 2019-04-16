<?php

include "config/conexao.php";



####  verificando de a session existe ou nao #####



// inicia  a sessiom

session_start();

//se nao existir volta para a pagina do form de login

if(!isset($_SESSION['login_session']) and !isset($_SESSION['senha_session'])){

  header("Location:index.php");

  exit;   

}

//// a parte acima deve estar em todas as paginas onde houver restrições de acesso no site

$login = $_SESSION['login_session'];

$senha = $_SESSION['senha_session'];

// seleciona o nome no campo da tabela

$sql = mysql_query("SELECT * FROM usuario WHERE login='$login' AND senha='$senha'");

$linha = mysql_fetch_array($sql);

  $nome = $linha['nome'];





//////////////////////////////////////////////////////////////////////////////////////////////////////////////////



$num = $_GET['numero'];

if($_GET['btn'] =="cancela"){

    $del = mysql_query("DELETE FROM entrega WHERE comanda = '$num' ") or die(mysql_error());

    

    if($del == 1){

  print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio2.php?btn=nova'>";



  }



  }

  



?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>.:  Controle de vendas</title>

<link href="css/style.css" rel="stylesheet" type="text/css">

<link href="css/css.css" rel="stylesheet" type="text/css">

<link href="css/jquery-uicss.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="js/jquery-latest.js"></script>

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>

<script type="text/javascript" src="js/jquery-ui.js"></script>

<script type="text/javascript" src="js/jquery.maskedinput.min.js"></script>

<script>

$(function() {

$( "#datai" ).datepicker({dateFormat: 'dd-mm-yy'});

$( "#dataf" ).datepicker({dateFormat: 'dd-mm-yy'});



});

</script>

</script>

<strong>

<style media="print">

.naomostra {

display: none;

}



</style></strong>

</head>  

<body>

<div class="naomostra">

<div id="menu"><center><?php include "menu.php"?></center></div></div>

<?php require_once('Connections/sistema.php'); ?>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
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



if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form3")) {

  $insertSQL = sprintf("INSERT INTO cidade (cidade) VALUES (%s)",

                       GetSQLValueString(strtoupper($_POST['cidade']), "text"));



  mysql_select_db($database_sistema, $sistema);

  $Result1 = mysql_query($insertSQL, $sistema) or die(mysql_error());





  if (isset($_SERVER['QUERY_STRING'])) {

    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";

    $insertGoTo .= $_SERVER['QUERY_STRING'];

  }

 

}


if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form4")) {

    $insertSQL = sprintf("INSERT INTO bairro (id_cidade, bairro, preco) VALUES (%s, %s, %s)",
  
                         GetSQLValueString(strtoupper($_POST['id_cidade']), "int"),  
                         GetSQLValueString(strtoupper($_POST['bairro']), "text"),
                         GetSQLValueString(strtoupper($_POST['preco']), "text"));
  
  
  
    mysql_select_db($database_sistema, $sistema);
  
    $Result1 = mysql_query($insertSQL, $sistema) or die(mysql_error());
  
  
  
  
  
    if (isset($_SERVER['QUERY_STRING'])) {
  
      $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
  
      $insertGoTo .= $_SERVER['QUERY_STRING'];
  
    }
  
   
  
  }

?>

<script type="text/javascript" src="js/jquery.mask-money.js"></script>

<script type="text/javascript">

$(document).ready(function() {

        $("#preco").maskMoney({decimal:",",thousands:"."});
    

      });

</script>
<div class="container">
    <h1 class="text-center">Adicionar Cidade, Bairro e Taxa</h1>
    
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Cidade <kbd>+</kbd>
    </button>
    <br><br>
    <h3 class="text-center">Bairro e Taxa</h3>
    <div style="background: #ccc; padding:10px;">
    
    <form action="<?php echo $editFormAction; ?>" method="post" name="form4" id="form4" class="col-6 offset-3">
   
        <div class="form-group">
            <label for="exampleFormControlSelect1">Cidade</label>
            <select class="form-control" id="exampleFormControlSelect1" name="id_cidade">
            <option readonly>----</option>
            <?php 
                $sql = mysql_query("SELECT * FROM cidade ORDER BY cidade DESC LIMIT 20");
                while($ver = mysql_fetch_array($sql)){
                    $id_cidade = $ver['id_cidade'];
                    $cidade = $ver['cidade'];
                
                    
            ?>
                <option value="<?php echo $id_cidade; ?>"><?php echo $cidade; ?></option>

            <?php } ?>
            </select>
        </div>
   
        <div class="form-group">
            <label for="bairrofor">Bairro</label>
            <input type="text" name="bairro" class="form-control" id="bairrofor">
        </div>
        <div class="form-group">
            <label for="preco">Taxa</label>
            <input type="text" name="preco" class="form-control col-3" size="6" id="preco">
        </div>
        
        <input type="submit" class="btn btn-info" value="Cadastrar">
        <input type="hidden" name="MM_insert" value="form4" />

    </form>
    </div>
    <br>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#</th>
          <th>Cidade</th>
          <th scope="col">Bairro</th>
          <th scope="col">Taxa</th>
          <th scope="col">Editar | Deletar</th>
        </tr>
      </thead>
      <tbody>
        <?php 
            $i=0;
            $sql = mysql_query("SELECT * FROM cidade INNER JOIN bairro ON cidade.id_cidade = bairro.id_cidade ORDER BY cidade DESC LIMIT 20");
            while($ver = mysql_fetch_array($sql)){
                $id_cidade = $ver['id_cidade'];
                $cidade = $ver['cidade'];
                $id_bairro = $ver['id_bairro'];
                $bairro = $ver['bairro'];
                $taxa = $ver['preco'];             
                
        ?>
            <tr>
              <td><?php echo ++$i; ?></td>
              <td><?php echo $cidade; ?></td>
              <td><?php echo $bairro; ?></td>
              <td><?php echo $taxa; ?></td>
              <td><a href="editarcidadebairro.php?cidade=<?php echo $cidade; ?>&cidadeId=<?php echo $id_cidade; ?>&bairro=<?php echo $bairro; ?>&bairroId=<?php echo $id_bairro; ?>">Edit</a>/| 
                <a href="cadastrarcidade.php?excluirCidade=<?php echo $id_bairro; ?>">Delete</a>
              </td>
            </tr>

        <?php } ?>
      </tbody>
    </table>
    
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cadastro Cidade</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo $editFormAction; ?>" method="post" name="form3" id="form3">
            <div class="form-group">
                <input type="text" name="cidade" class="form-control">
            </div>
            <input type="submit" class="btn btn-success" value="Cadastrar">
            <input type="hidden" name="MM_insert" value="form3" />

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script src="bootstrap/js/bootstrap.min.js"></script>



</body>

</html>