<?php
$kasutaja = "piret";
$server = "localhost";
$andmebaas = "kohvikud";
$pw = "Lehmanisa1976";

$yhendus = mysqli_connect ($server, $kasutaja, $pw, $andmebaas);

if (!$yhendus){
    die("Ei saa ühendust");
}



?>