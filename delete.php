<?php

include("conexion.php");
$con=conectar();

$usua_codigo=$_GET['id'];

$sql="DELETE FROM usuario  WHERE usua_codigo='$usua_codigo'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: user.php");
    }
?>
