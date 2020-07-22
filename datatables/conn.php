<?php


$conn = mysqli_connect("localhost", "root", "root", "tablas");
if(!$conn){
	echo 'Error al conectar la base de datos';
}else{
	echo 'Conectando la base de datos TABLAS para empezar a operar..';
}
?>