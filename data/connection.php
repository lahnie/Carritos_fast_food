<?php

$host="localhost";
$usuario="password";
$db="carritos_fast_food";


// if (!function_exists('mysqli_init') && !extension_loaded('mysqli')) {
//     echo 'We don\'t have mysqli!!!';
// } else {
//     echo 'Phew we have it!';
// }
$conexion= new mysqli($host, $usuario, '',  $db);

if($conexion->connect_error){
    die("Error en la conexion" . $conexion->connect_error);
}



