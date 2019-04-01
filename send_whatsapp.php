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

function sanitizeString($string) {

    // matriz de entrada
    $what = array( 'ä','ã','à','á','â','ê','ë','è','é','ï','ì','í','ö','õ','ò','ó','ô','ü','ù','ú','û','À','Á','É','Í','Ó','Ú','ñ','Ñ','ç','Ç',' ','-','(',')',',',';',':','|','!','"','#','$','%','&','/','=','?','~','^','>','<','ª','º' );

    // matriz de saída
    $by   = array( 'a','a','a','a','a','e','e','e','e','i','i','i','o','o','o','o','o','u','u','u','u','A','A','E','I','O','U','n','n','c','C','','','','','','','','','','','','','','','','','','','','','','','' );

    // devolver a string
    return str_replace($what, $by, $string);
}

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
			<th>Telefone</th>
			<th>Send</th>
		</tr>
	</thead>
	<tbody>
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
			$taxa = $ver['preco'];
		
			
	?>
	
		<tr>
			<td><?php echo $nome; ?></td>
			<td><?php echo $telefone; ?></td>
			<td>
				<a title="Editar" href="https://api.whatsapp.com/send?phone=55<?php echo sanitizeString($telefone) ?>&text=Sunomonki%20Sushi%20diz.%20Olá,%20tudo bem%20<?php echo $nome ?>!%20Gostaria de fazer um pedido." target="_blank"><img src='imagens/send.png' width='30' height='30' border='0'></a>
			</td>
		</tr>
	

	
	


<?php }?>
	</tbody>
</table>

</div>