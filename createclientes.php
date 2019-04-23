<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./DataTables-1.10.18/css/jquery.dataTables.min.css"/>
 
<script type="text/javascript" src="./jQuery-3.3.1/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$('#example').DataTable();
	} );
</script>
<?php

if($_GET['retirar'] == "cliente"){
	$mesaId = $_GET['cliente'];
	$del = mysql_query("DELETE FROM	pedido WHERE id_mesa='$mesaId'");
	if($del == 1){
		print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio2.php?btn=createclientes'>";	
	}
}

?>
<div id="mesas" class="container-fluid">
<h1 align="center">Clientes Cadastrados</h1>
<table id="example" style="width:100%" class="display">
	<thead>
		<tr>
			<th>Nome</th>
			<th>Endereço</th>
			<th>Telefone</th>
			<th>Taxa</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
	<?php 
		$sql = mysql_query("SELECT * FROM pedido ORDER BY id_mesa DESC");
		while($ver = mysql_fetch_array($sql)){
			$id_mesa = $ver['id_mesa'];
			$nome = $ver['nome'];
			$telefone = $ver['telefone'];
			$email = $ver['email'];
			$bairro = $ver['bairro'];
			$rua = $ver['rua'];
			$numerocasa = $ver['numerocasa'];
			$cidade = $ver['detalhes'];
			$taxa = $ver['preco'];
		
			
	?>
	
		<tr>
			<td><?php echo $nome; ?></td>
			<td><?php echo '<b>Rua: </b>'.$rua.', <b>Bairro:</b> '.$bairro.', <b>Nº:</b> '.$numerocasa.', <b>Cidade:</b> '.$cidade; ?></td>
			<td><?php echo $telefone; ?></td>
			<td><?php echo $taxa; ?></td>
			<td>
				<a title="Editar" href="inicio.php?btn=editarcliente&id_mesa=<?php echo $id_mesa ?>"><img src='imagens/file_edit.png' width='15' height='15' border='0'></a> 
				| 
				<a title="Excluir" href="inicio2.php?btn=createclientes&retirar=cliente&cliente=<?php echo $id_mesa ?>"><img src='imagens/excluir.png' width='15' height='15' border='0'></a>
			</td>
		</tr>
	

	
	


<?php }?>
	</tbody>
</table>

</div>