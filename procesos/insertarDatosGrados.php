<?php
require_once "../crud/crudGrados.php";

$datos=array(
		'grado'=> $_POST['grado'],
		'descripcion'=> $_POST['descripcion'],
		'nivelescolar'=> $_POST['nivelescolar'],
		'estado'=> $_POST['estado'],
		);
echo crudGrados::insertarDatos($datos);
?>