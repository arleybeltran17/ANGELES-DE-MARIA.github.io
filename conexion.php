<?php
function conectar(){

    $host="localhost";//el nombre del servidor 
    $user="root"; //El usuario de mysql
    $pass="";//Es el password de mysql
    $dbname="angeles";//el nombre de la BD

    $link=mysqli_connect($host,$user,$pass) or die ("ERROR AL CONECTAR LA BD".mysqli_error($link));

    mysqli_select_db($link,$dbname) or die ("ERROR AL SELECCIONAR LA BD".mysqli_error($link));
    return $link;
    
}

?>