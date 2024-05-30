<?php
$kasutaja = "artur";
$server = "localhost";
$andmebaas = "muusikapood_artur";
$password = "Passw0rd";

$yhendus = mysqli_connect($server, $kasutaja, $password, $andmebaas);

if (!$yhendus) {
    die("Viga: " . $yhendus->connect_error);
}
?>