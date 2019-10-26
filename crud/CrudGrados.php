<?php
require_once "Conexion.php";
class CrudGrados extends Conexion
{
	public function mostrarDatos()
	{
		$sql = "SELECT id_grado,grado,descripcion,n.nivel_escolar,estado_grado FROM grado g LEFT JOIN nivel_escolar n ON g.id_nivel_escolar=n.id_nivel_escolar ";
		$query = Conexion::conectar()->prepare($sql);
		$query->execute();
		return $query->fetchAll();
		$query->close();
	}
	public static function insertarDatos($datos)
	{
		$sql = "INSERT into grado (grado, descripcion, id_nivel_escolar,estado_grado)
					values (:grado, :descripcion, :nivelescolar, :estado)";
		$query = Conexion::conectar()->prepare($sql);
		$query->bindParam(":grado", $datos["grado"], PDO::PARAM_STR);
		$query->bindParam(":descripcion", $datos["descripcion"], PDO::PARAM_STR);
		$query->bindParam(":nivelescolar", $datos["nivelescolar"], PDO::PARAM_STR);
		$query->bindParam(":estado", $datos["estado"], PDO::PARAM_STR);
		return $query->execute();
		$query->close();
	}
	public function obtenerDatos($id)
	{
		$sql = "SELECT id_grado,grado,descripcion, n.nivel_escolar, estado_grado FROM grado g LEFT JOIN nivel_escolar n ON g.id_nivel_escolar=n.id_nivel_escolar where id_grado=:id";
		$query = Conexion::conectar()->prepare($sql);
		$query->bindParam(":id", $id, PDO::PARAM_INT);
		$query->execute();
		return $query->fetch();
		$query->close();
	}

	public function actualizarDatos($datos)
	{
		$sql = "UPDATE grado set  grado= :grado,
								descripcion= :descripcion,
								id_nivel_escolar= :id_nivel_escolar,
										estado_grado= :estado_grado
										where id_grado=:id_grado";
		$query = Conexion::conectar()->prepare($sql);

		$query->bindParam(":grado", $datos["grado"], PDO::PARAM_STR);
		$query->bindParam(":descripcion", $datos["descripcion"], PDO::PARAM_STR);
		$query->bindParam(":nivel_escolar", $datos["nivelescolar"], PDO::PARAM_STR);
		$query->bindParam(":estado_grado", $datos["estado"], PDO::PARAM_STR);
		$query->bindParam(":id_grado", $datos["id"], PDO::PARAM_INT);

		return $query->execute();
		$query->close();
	}
	public function eliminarDatos($id)
	{
		$sql = "DELETE from grado where id_grado=:id";
		$query = Conexion::conectar()->prepare($sql);
		$query->bindParam(":id", $id, PDO::PARAM_INT);
		return $query->execute();
		$query->close();
	}
}
