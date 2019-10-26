<!DOCTYPE html>
<html>
<head>
	<title>Plataforma GT</title>
	<link rel="stylesheet" type="text/css" href="librerias/bootstrap4/bootstrap.min.css">
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.4/css/tether.min.css'><link rel="stylesheet" href="./style.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
  	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
<div id="wrapper">
 <nav id="navHome" class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
    <div class="container-fluid max-width-940">
        <a class="navbar-brand" href="index.php">
          <img src="images/csapb.png"width="50" style="padding: 0 3px 0 3px;" /> Plataforma GT
            </a>
        <button class="navbar-toggler togglerNoBorder" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse backgroundWhite" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="navbar-brand" href="index.php"><i class="fas fa-question-circle"></i> Ayuda</a>
                </li>
                 <li class="nav-item">
                   <a class="nav-link" href=""><span class="btn btn-primary"><i class="fas fa-user"></i> Editar Perfil</a>
                </span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=""><span class="btn btn-danger"><i class="fas fa-sign-out-alt"></i> Cerrar Sesión</a>
                </span>
                </li>
            </ul>
        </div>
    </div>
</nav>
   <div class="overlay"></div>
    <nav class="navbar navbar-inverse fixed-top" id="sidebar-wrapper" role="navigation">
     <ul class="nav sidebar-nav">
       <div class="sidebar-header">
       <div class="sidebar-brand"><img src="images/csapb.png"width="50" style="padding: 0 3px 0 3px;" />
         <a href="#">Plataforma GT</a></div></div>
       <li><a href="index.php"><i class="fas fa-home"></i> Principal</a></li>
       <li class="dropdown">
       <a href="#works" class="dropdown-toggle"  data-toggle="dropdown"><i class="fas fa-plus"></i> Adicionales<span class="caret"></span></a>
     <ul class="dropdown-menu animated fadeInLeft" role="menu">
      <div class="dropdown-header"><i class="fas fa-plus-square"></i> Adicionales</div>
      <li><a href="#pictures"><i class="fas fa-university"></i> Nivel Escolar</a></li>
      <li><a href="#videos"><i class="fas fa-file-invoice"></i> Grados</a></li>
      <li><a href="#books"><i class="fas fa-users"></i> Grupos</a></li>
      <li><a href="#art"><i class="fas fa-paper-plane"></i> Dimensiones</a></li>
      </ul>
      </li>
      </ul>
  </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="hamburger animated fadeInLeft is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
    			<span class="hamb-middle"></span>
				<span class="hamb-bottom"></span>
            </button>
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-2">
                      <div class="card text-left">
					<div class="card-header">
						<ul class="nav nav-tabs card-header-tabs">
							<li class="nav-item">
								<a class="nav-link active" href="#"><i class="fas fa-university"></i> Nivel Escolar</a>
							</li>
						</ul>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-12">
								<span class="btn btn-primary" data-toggle="modal" data-target="#insertarModal">
									<i class="fas fa-plus-circle"></i> Nuevo registro
								</span>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-12">
								<div id="tablaDatos"></div>
							</div>

						</div>
					</div>
				</div> 
               <span class="btn btn-success" data-toggle="modal" data-target="" style="float:right;">
                Grados <i class="fas fa-arrow-circle-right"></i>
                </span>               
                  </div>
                </div> 
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>

<footer>
  Plataforma GT  | Prototipo Software Comportamental | 2019
</footer>

	<?php require_once "modalInsert.php" ?>
	<?php require_once "modalUpdate.php" ?>

	<script src="librerias/bootstrap4/jquery-3.4.1.min.js"></script>
	<script src="librerias/bootstrap4/popper.min.js"></script>
	<script src="librerias/bootstrap4/bootstrap.min.js"></script>
	<script src="librerias/sweetalert.min.js"></script>
	<script src="js/crud.js"></script>
	<script src="js/script.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.4/js/tether.min.js'></script><script  src="./script.js"></script>


	<script type="text/javascript">
		mostrar();
	</script>

</body>
</html>