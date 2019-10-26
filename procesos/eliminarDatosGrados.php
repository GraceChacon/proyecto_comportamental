<?php
require_once "../crud/CrudGrados.php";
$id=$_POST['id'];

echo CrudGrados::eliminarDatos($id);
?>