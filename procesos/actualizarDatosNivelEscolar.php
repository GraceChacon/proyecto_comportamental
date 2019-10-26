<?php
require_once "../crud/Crud.php";
$datos=array(
		'nivelescolar'=>$_POST['nivelescolaru'],
		'estado'=>$_POST['estadou'],
		'id'=>$_POST['id']
		);
	echo Crud::actualizarDatos($datos);
?>