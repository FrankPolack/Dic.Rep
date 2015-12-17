<?php 
session_start();
	require_once("clases/familia.php");
	require_once("clases/AccesoDatos.php");

	$queHacer = $_POST['queHacer'];

	switch ($queHacer) {
			case 'MostrarIngreso':
				include("partes/INGRESO.php");
				break;
			
			case 'MostrarFamiliar':
				include("partes/FAMILIARES.php");
				break;
            
            case 'VerEnMapa':
				include("partes/formMapa.php");
				break;
			
			case 'MostrarListado':
				include("partes/LISTADO.php");
				break;	

			case 'GuardarFamiliar':
				$f = new familia();
				$f->id = $_POST['id'];
				$f->dni = $_SESSION['dni'];
				$f->provincia = $_POST['provincia'];
				$f->nombre = $_POST['nombre'];
				$f->sexo = $_POST['sexo'];
				$f->direccion = $_POST['direccion'];
				$f->localidad = $_POST['localidad'];
			    $f->parentesco = $_POST['parentesco'];
			    //$f->foto= $_POST['foto'];
			    if ($_POST['id']> 0 )
			    {
			       $cantidad=$f->ModificarFamiliares();	
			    }
			    else
			    {
			    	$cantidad=$f->InsertarFamiliares();
			    }
				echo $cantidad;
				break;

			case 'BorrarFamiliar':
				$f = new familia();
				$f->id = $_POST['id'];
				$f->BorrarFamiliares();
				break;

			case 'TraerFamiliar':
				$resultado = familia::TraerUnFamiliar($_POST['id']);
				echo json_encode($resultado);

			default:
				# code...
				break;
		}	

?>