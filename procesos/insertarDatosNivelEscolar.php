<?php
require_once "../crud/crud.php";

$datos=array(
		'nivelescolar'=> $_POST['nivelescolar'],
		'estado'=> $_POST['estado'],
		);
echo Crud::insertarDatos($datos);
?>