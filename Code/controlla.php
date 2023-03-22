<?php
	// PANTALEO FABIO 5B
	session_start();
	$username=$_POST['user'];
	$password=$_POST['pass'];
	
	$con = mysqli_connect("localhost", "root","", "negozio") or die("Errore $con");
	$query= "SELECT * FROM utenti WHERE Username='$username' AND Password='$password'";
	$result= mysqli_query($con,$query) or die("Errore");
	$numRighe= mysqli_num_rows($result);
	if($numRighe==0){
		header("Location: registra.html");
	}else{
		$riga= mysqli_fetch_array($result);
		$_SESSION['Idutente']=$riga['Idutente'];
		header("Location: scegli.php");
	}
	mysqli_close($con);
	// PANTALEO FABIO 5B
?>