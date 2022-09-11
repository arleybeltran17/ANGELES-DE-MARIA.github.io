<?php
session_start();

include("conexion.php");
$link = conectar();
$data="";

$usuario = $_POST['userito'];
$contrasena = $_POST['password'];


$sql = "SELECT * FROM usuario WHERE usua_nombre='$usuario' AND usua_clave='$contrasena'";

$query = mysqli_query($link, $sql);


while ($mostrar = mysqli_fetch_array($query)){
    $data=$mostrar['usua_codigo'];
}
$_SESSION['user']=$data;
$nr         = mysqli_num_rows($query);

if ($nr == 1) {

    header("Location: user.php");
} else {
    echo "<script> alert('Usuario o contraseña incorrecto.');window.location= 'login.html' </script>";
}
