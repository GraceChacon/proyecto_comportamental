<?php
$conexion=mysqli_connect('localhost','root', '', 'proyecto_comportamental');
$sql="SELECT id_nivel_escolar, nivel_escolar FROM nivel_escolar";
$result= mysqli_query($conexion,$sql);
?>

<!-- Modal -->
<div class="modal fade" id="insertarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agregar nuevo registro</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form id="frminsert" onsubmit="return insertarDatos()" method="post">
              <label>Grado</label>
              <input type="text" id="grado" name="grado" class="form-control form-control-sm" required="">
              <label>Descripción</label>
              <input type="text" id="descripcion" name="descripcion" class="form-control form-control-sm" required="">
              <label>Nivel Escolar</label>
              <select type="text" id="nivelescolar" name="nivelescolar" class="form-control form-control-sm" required="">
                <?php while ($ver=mysqli_fetch_row($result)){?>
                  <option value="<?php echo $ver[0]?>">
                    <?php echo $ver[1]; ?>
                  </option>
                  <?php
                }

                ?>
              </select>
              <label>Estado</label>
              <select type="text" id="estado" name="estado" class="form-control form-control-sm" required="">
                <option>Seleccione una opción</option>
                <option value="Activo">Activo</option>
                <option value="Inactivo">Inactivo</option>
              </select>
              <br>
               <input type="submit" value="Guardar" class="btn btn-primary">
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        
      </div>
    </div>
  </div>
</div>


