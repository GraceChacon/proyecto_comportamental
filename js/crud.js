function mostrar(){
	$.ajax({
		type:"POST",
		url:"procesos/MostrarDatosNivelEscolar.php",
		success:function(r){
			$('#tablaDatos').html(r);
		}
	});
}

function obtenerDatos(id){
	$.ajax({
		type:"POST",
		data: "id=" + id,
		url:"procesos/obtenerDatosNivelEscolar.php",
		success:function(r){
			r=jQuery.parseJSON(r);

			$('#id').val(r['id_nivel_escolar']);
			$('#nivelescolaru').val(r['nivel_escolar']);
			$('#estadou').val(r['estado']);
		}
	});
}

function actualizarDatos(){
	$.ajax({
		type:"POST",
		url:"procesos/actualizarDatosNivelEscolar.php",
		data:$('#frminsertu').serialize(),
		success:function(r){
			if(r==1){
				mostrar();
				swal("¡Actualizado con éxito!", "¡Bien hecho!", "success");
			}else{
				swal("Error al actualizar","error");
			}
		}
	});
	return false;
}

function eliminarDatos(id){
	swal({
		title: "¿Estas seguro de eliminar este registro?",
		text: "!Una vez eliminado no podra recuperarse¡",
		icon: "warning",
		buttons: true,
		dangerMode: true,
	})
	.then((willDelete) => {
		if (willDelete) {
			$.ajax({
		type:"POST",
		url:"procesos/eliminarDatosNivelEscolar.php",
		data:"id=" + id,
		success:function(r){
			if(r==1){
				mostrar();
				swal("¡Eliminado Exitosamente!", "¡Bien hecho!", "success");
			}else{
				swal("Fallo agregar datos","error");
			}
		}
	});
		} 
	});
}

function insertarDatos(){
	$.ajax({
		type:"POST",
		url:"procesos/insertarDatosNivelEscolar.php",
		data:$('#frminsert').serialize(),
		success:function(r){
			if(r==1){
				$('#frminsert')[0].reset();
				mostrar();
				swal("¡Agregado Exitosamente!", "¡Bien hecho!", "success");
			}else{
				swal("Fallo agregar datos","error");
			}
		}
	});
	return false;
}