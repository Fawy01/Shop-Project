<?php
// PANTALEO FABIO 5B
session_start();
if(isset($_SESSION['Idutente'])){  //serve per evitare che si "salti" sulla pagina scegli senza prima aver effettuato il login. Obbliga a fare il login
	
	$con= mysqli_connect("localhost", "root", "", "negozio") or die("Errore $con");
	$query= "SELECT * FROM categorie";
	$result= mysqli_query($con, $query) or die ("Errore");
	$numRighe= mysqli_num_rows($result);
	if($numRighe==0){
		echo "Categorie non disponibili";
	}else{
?>
<html>
<head>
<script type="text/javascript">
function controllo(){
if(Azione2.categoria.value=="0"){
	alert("Scegli una categoria");
	return false;
}
}
</script>
</head>
<!-- PANTALEO FABIO 5B -->
<body>
	<form name="Azione2" onsubmit="return controllo()" action="offerte.php" method="post">
	<table name="tabella">
	<tr>
	<td><select name="categoria">	
	<option value="0">Scegli Categoria</option>
	<?php
		for($i=0;$i<$numRighe;$i++){
		$riga= mysqli_fetch_array($result);
			echo "<option value='".$riga['Idcategoria']."' > ".$riga['nomecat']."</option>";
		}
	?>
	</select>
	</td>
	</tr>
	<tr>
		<td><input type="submit" name="Conferma" value="Conferma"></td>
	</tr>
	</table>
	</form>
</body>
</html>
<?php 
}
mysqli_close($con);
}else{
header("Location: login.html"); //chiusura graffa sessione e reindirizzamento pagina login
}
// PANTALEO FABIO 5B
?>
