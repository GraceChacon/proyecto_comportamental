<?php
require_once "../crud/CrudGrados.php";
$id= $_POST["id"];

echo json_encode(CrudGrados::obtenerDatos($id));
?>