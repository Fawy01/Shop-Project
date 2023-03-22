<?php
	// PANTALEO FABIO 5B
	session_start();
	if(isset($_SESSION['Idutente'])){  //serve per evitare che si "salti" sulla pagina offerte senza prima aver effettuato il login. Obbliga a fare il login

	$Categoria=$_POST['categoria'];
	$con= mysqli_connect("localhost", "root", "", "negozio") or die("Errore $con");
	$query= "SELECT * FROM prodotti WHERE Codcategoria='$Categoria'";
	$result= mysqli_query($con, $query);
	$numRighe= mysqli_num_rows($result);
	if($numRighe==0){
		echo "Non ci sono prodotti per questa categoria";
	}else{
?>

<html>
<head>
<script type="text/javascript">
function controllo(){
	if(Azione3.Prodotti.value=="0"){
	alert("Devi scegliere un prodotto");
	return false;
	}
}

</script>
</head>

<body>
	<form name="Azione3" onsubmit="return controllo()" action="scontrino.php" method="post">
	<table name="tabella">
		<tr>
			<td>
			<select name="Prodotti">
			<option value="0"> Scegli prodotto</option>
			<?php
				for($i=0;$i<$numRighe;$i++){
				$riga= mysqli_fetch_array($result);
				echo "<option value='".$riga['Idprodotto']."'> ".$riga['Nomeprod']." ".$riga['Prezzo']."</option>";
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


