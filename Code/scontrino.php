
<?php
// PANTALEO FABIO 5B
session_start();
$Codutente=$_SESSION['Idutente'];
$CodProdotto=$_POST['Prodotti'];
$con= mysqli_connect("localhost", "root", "", "negozio") or die("Errore $con");
$query= "INSERT INTO acquista (Idacquista, Codutente, Codprodotto)VALUES (NULL, '$Codutente', '$CodProdotto')";
$result= mysqli_query($con, $query) or die("Errore");
echo "Acquisto completato con successo";
mysqli_close($con);
// PANTALEO FABIO 5B
?>