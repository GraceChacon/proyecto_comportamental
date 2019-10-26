<?php
require_once "../crud/CrudGrados.php";

$datos=array(
		'grado'=> $_POST['grado'],
		'descripcion'=> $_POST['descripcion'],
		'nivelescolar'=> $_POST['nivelescolar'],
		'estado'=> $_POST['estado'],
		);
echo CrudGrados::insertarDatos($datos);
?>