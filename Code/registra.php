<?php
// PANTALEO FABIO 5B
$idutente=$_POST['idutente'];
$user=$_POST['user'];
$pass=$_POST['pass'];
$cognome=$_POST['cognome'];
$nome=$_POST['nome'];
$email=$_POST['email'];

$con= mysqli_connect("localhost", "root", "", "negozio") or die("Errore $con");
$query= "INSERT INTO utenti(Idutente, Username, Password, Nome, Cognome, e_mail) VALUES ('$idutente','$user','$pass','$cognome','$nome','$email')";
$result= mysqli_query($con,$query) or die("Errore");
echo "Registrazione avvenuta con successo";
mysqli_close($con);
// PANTALEO FABIO 5B
?>
<html>
<head>
</head>
<body>
<form name="Azione5" action="login.html">
<input type="submit" name="Login" value="Login">
</form>
</body>
</html>