<?php
require_once "../crud/crud.php";
$obj=new Crud();
$datos=$obj->mostrarDatos();
$tabla='<table class="table table-dark">
			<thead>
			<tr class="font-weight-bold">
			<td>Acciones</td>
			<td>Nivel Escolar</td>
			<td>Estado</td>
			<td>Eliminar</td>
			</tr>
			</thead>
			<tbody>';

	$datosTabla="";

	foreach ($datos as $key => $value) {
		$datosTabla=$datosTabla.'<tr>
								<td>
								<span class="btn btn-warning btn-sm" onclick="obtenerDatos('.$value['id_nivel_escolar'].')" data-toggle="modal" data-target="#actualizarModal">
								<i class="fas fa-edit"></i>
								</span>			
								</td>
								<td>'.$value['nivel_escolar'].'</td>
								<td>'.$value['estado'].'</td>
								<td>
								<span class="btn btn-danger" onclick="eliminarDatos('.$value['id_nivel_escolar'].')">
								<li class="fas fa-trash-alt"></li>
								</span>
								</td>
								</tr>';
	}
	echo $tabla.$datosTabla.'</tbody></table>';
?>