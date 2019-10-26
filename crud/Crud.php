<?php
require_once "Conexion.php";
class Crud extends Conexion{
	public function mostrarDatos(){
	$sql="SELECT id_nivel_escolar, 
				nivel_escolar, 
				estado 
				from nivel_escolar";
	$query= Conexion::conectar()->prepare($sql);
	$query->execute();
	return $query-> fetchAll();
	$query->close();
}
public function insertarDatos($datos){
	$sql="INSERT into nivel_escolar (nivel_escolar,estado)
					values (:nivelescolar,:estado)";
	$query=Conexion::conectar()->prepare($sql);
	$query->bindParam(":nivelescolar",$datos["nivelescolar"], PDO::PARAM_STR);
	$query->bindParam(":estado", $datos["estado"], PDO::PARAM_STR);

	return $query->execute();

	$query->close();
}
	public function obtenerDatos($id){
		$sql = "SELECT id_nivel_escolar, 
				nivel_escolar, 
				estado 
				from nivel_escolar where id_nivel_escolar=:id";
				$query=Conexion::conectar()->prepare($sql);
				$query->bindParam(":id", $id, PDO::PARAM_INT);
				$query->execute();
				return $query->fetch();
				$query->close();
	}

	public function actualizarDatos($datos){
		$sql="UPDATE nivel_escolar set  nivel_escolar= :nivel_escolar,
										estado= :estado
										where id_nivel_escolar=:id_nivel_escolar";
		$query=Conexion::conectar()->prepare($sql);

		$query->bindParam(":nivel_escolar",$datos["nivelescolar"], PDO::PARAM_STR);
	$query->bindParam(":estado", $datos["estado"], PDO::PARAM_STR);
	$query->bindParam(":id_nivel_escolar", $datos["id"], PDO::PARAM_INT);

	return $query->execute();
	$query->close();

	}
	public function eliminarDatos($id){
		$sql="DELETE from nivel_escolar where id_nivel_escolar=:id";
		$query=Conexion::conectar()->prepare($sql);
		$query->bindParam(":id", $id, PDO::PARAM_INT);
		return $query->execute();
		$query->close();
	}
}
?>