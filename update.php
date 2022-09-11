<?php

include("conexion.php");
$con=conectar();

$usua_codigo=$_POST['usua_codigo'];
$usua_nombre=$_POST['usua_nombre'];
$usua_clave=$_POST['usua_clave'];

$sql="UPDATE usuario SET  usua_nombre='$usua_nombre',usua_clave='$usua_clave' WHERE usua_codigo='$usua_codigo'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: user.php");
    }
?>