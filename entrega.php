<style type="text/css">
	
	.box-pedido{
		height: 140px !important; 
		background: #d4cfcf !important;    
		box-shadow: 3px 1px 11px 2px #444444 !important;
	}

	.box-pedido:hover{   
		background: #8a6969 !important;  
	}

	.box-pedido-link{
		color: #a23030 !important;
		background: #5a4c4c00 !important;
	}

	.box-pedido-link:hover{
		color:#fff !important;
		background: #5a4c4c00 !important;
		
	}

</style>
<h1> &nbsp;&nbsp;&nbsp;Pedidos</h1>
<?php 
	if($_GET['fecha'] == "fechar"){
	$id_mesa = $_GET['id_mesa'];
	
		$delete = mysql_query("UPDATE pedido SET situacao ='0', idGarcon = '' WHERE id_mesa = '$id_mesa' ")or die(mysql_error());
		$up = mysql_query("UPDATE tbl_carrinho SET situacao = '0' WHERE id_mesa = '$id_mesa'")or die(mysql_error());
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
	$("#busca2").autocomplete("ajax/busca2.php", {
		width: 300,
		matchContains: true,
		selectFirst: false
	});
  });
</script>


<div id="mesas">
<div class="div"><center>
    <form method="post" action=""><br />
    	<label for="busca">Busca por nome</label>&nbsp;&nbsp;
      <input size="32" type="text" class="busca" id="busca" name="buscar" placeholder="Buscar por nome no Sistema..." onfocus="if (this.placeholder == 'Buscar no Sistema...') this.placeholder = '';" onblur="if (this.placeholder == '') this.placeholder = 'Buscar por nome no Sistema...';" /><br><br>
      <label for="busca2">Busca por telefone</label>&nbsp;&nbsp;
      <input size="32" type="text" class="busca" id="busca2" name="buscar" placeholder="Buscar por telefone no Sistema..." onfocus="if (this.placeholder == 'Buscar no Sistema...') this.placeholder = '';" onblur="if (this.placeholder == '') this.placeholder = 'Buscar por telefone no Sistema...';" />
      <a href="inicio.php?btn=cadastroclientes">Cadastrar Cliente </a>
    </form></center>
  </div>


<ul>
	<?php 
		$sql = mysql_query("SELECT * FROM pedido ORDER BY id_mesa DESC LIMIT 20");
		while($ver = mysql_fetch_array($sql)){
			$situacao = $ver['situacao'];
			$id_mesa = $ver['id_mesa'];
			$numero = $ver['nome'];
			$idGarcon = $ver['idGarcon'];
			
			$gar = mysql_query("SELECT * FROM garcon WHERE idGarcon='$idGarcon'");
			$bosta = mysql_fetch_assoc($gar);
			$nomeGarcon = $bosta['nomeGarcon'];
		
			
			if($situacao == 0){
				$img = "<img src='imagens/cliente-pedido.png' width='60' height='47' border='0'>";				
			}else{
			$img = "<img src='imagens/pedido-espera.png' width='60' height='47' border='0'>";
			}
	?>

	<li class="box-pedido">
		<a class="box-pedido-link" href="?btn=vendapedido&id_mesa=<?php echo $id_mesa ?>&idGarcon=<?php echo $idGarcon ?>">
			<?php echo $img; echo "<br/>";  echo ''.$numero;  echo "<br/>"; if($situacao == 1){echo "<span style='color:#8e9610!important;font-weight: bold;'>Processando Pedido</span>"; }else{echo "<span style='color:green!important;font-weight: bold;'>Abrir</span>";} ?>
			
		</a>
	</li>
	


<?php }?>
</ul>
</div>