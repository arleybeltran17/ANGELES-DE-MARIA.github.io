<?php
include("conexion.php");
$con=conectar();

$usua_codigo=$_POST['coder'];
$usua_nombre=$_POST['namer'];
$usua_clave=$_POST['claver'];


$sql="INSERT INTO usuario VALUES('$usua_codigo','$usua_nombre','$usua_clave')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: user.php");
    
}else {
    
}
