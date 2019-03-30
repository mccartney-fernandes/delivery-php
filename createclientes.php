<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<div id="mesas" class="container-fluid">
<h1 align="center">Clientes Cadastrados</h1>
<table class="table table-striped">
	<tr>
		<th>Nome</th>
		<th>Endereço</th>
		<th>Telefone</th>
		<th>Editar</th>
	</tr>
	<?php 
		$sql = mysql_query("SELECT * FROM pedido ORDER BY id_mesa DESC LIMIT 20");
		while($ver = mysql_fetch_array($sql)){
			$id_mesa = $ver['id_mesa'];
			$nome = $ver['nome'];
			$telefone = $ver['telefone'];
			$email = $ver['email'];
			$bairro = $ver['bairro'];
			$rua = $ver['rua'];
			$numerocasa = $ver['numerocasa'];
			$cidade = $ver['detalhes'];
		
			
	?>

	<tr>
		<td><?php echo $nome; ?></td>
		<td><?php echo '<b>Rua: </b>'.$rua.', <b>Bairro:</b> '.$bairro.', <b>Nº:</b> '.$numerocasa.', <b>Cidade:</b> '.$cidade; ?></td>
		<td><?php echo $telefone; ?></td>
		<td><a href="inicio.php?btn=editarcliente&id_mesa=<?php echo $id_mesa ?>"><img src='imagens/file_edit.png' width='30' height='30' border='0'></a></td>
	</tr>

	
	


<?php }?>
	
</table>

</div>