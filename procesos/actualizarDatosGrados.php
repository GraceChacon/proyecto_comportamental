<?php
require_once "../crud/CrudGrados.php";
$datos=array(
		'grado'=>$_POST['gradou'],
		'descripcion'=>$_POST['descripcionu'],
		'nivelescolar'=>$_POST['nivelescolaru'],
		'estado'=>$_POST['estadou'],
		'id'=>$_POST['id']
		);
	echo CrudGrados::actualizarDatos($datos);
?>