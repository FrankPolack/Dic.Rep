<?php 

require_once("clases/AccesoDatos.php");
require_once("clases/familia.php");
if(isset($_SESSION['dni']))
{
	
	
	$arrayVotos=familia::TraerFamiliares();

	echo "<h2> Bienvenido Usuario Dni Nº:  ".$_SESSION['dni']."</h2>";

?>

<table class="table"  style="background-color: beige;">
	<thead>
		<tr>
			<th>Editar</th>
			<th>Borrar</th>
			<th>Ver</th>
			<th>Dni</th>
			<th>Provincia</th>
			<th>Nombre</th>
			<th>Sexo</th>
			<th>Direccion</th>
			<th>Localidad</th>
			<th>Parentesco</th>
			
			<th>Id</th>

		</tr>
	</thead>
	<tbody>

		<?php 

foreach ($arrayVotos as $f) {
	$l = '"'.$f->provincia. '"' . ',"' .$f->localidad. '"' . ',"' .$f->direccion. '"' . ',"' .$f->id. '"';
	echo"<tr>
		<td><a onclick='EditarFAMILIAR($f->id)' class='btn btn-warning'> <span class='glyphicon glyphicon-pencil'>&nbsp;</span>Editar</a></td>
		
		<td><input type='button' value='Borrar' onclick='BorrarFAMILIAR($f->id)' class='btn btn-danger' href='location.partes/FormListado.php'></td>
		
		<td><a onclick='VerEnMapa($l)' class='btn btn-info'>VerMapa</a></td>

		<td>$f->dni</td>
		<td>$f->provincia</td>
		<td>$f->nombre</td>
		<td>$f->sexo</td>
		<td>$f->direccion</td>
		<td>$f->localidad</td>
		<td>$f->parentesco</td>
		
	    <td>$f->id</td>

	</tr>";
}
		 ?>
	</tbody>
</table>

<?php 	}else	{
		echo "<h4>No ha ingresado</h4>";
	}

	 ?>