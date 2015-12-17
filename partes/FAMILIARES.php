<?php
 //session_start();
 
 if (isset($_SESSION['dni']))
 {
?>
	
<form onsubmit="GuardarFAMILIAR();return false">

		<label>Familiar</label><br> 
		<input type="text" name="provincia" id="provincia" placeholder="Provincia"><br>
		<input type="text" name="nombre" id="nombre" placeholder="Nombre"><br>
		<input type="radio" name="sexo" id="sexo" value="M">Masculino 
		<input type="radio" name="sexo" id="sexo" value="F">Femenino<br> 
		<input type="text" name="direccion" id="direccion" placeholder="Direccion"><br>
        <input type="text" name="localidad" id="localidad" placeholder="Localidad"><br>
		
		<select name="parentesco" id="parentesco">
			<option value="Mama">Mama</option>
			<option value="Papa">Papa</option>
			<option value="Tia">Tia</option>
			<option value="Tio">Tio</option>
			<option value="Madrina">Madrina</option>
			<option value="Padrino">Padrino</option>
			<option value="Primo">Primo</option>
			<option value="Prima">Prima</option>
			<option value="Otro">Otro</option>
		</select><br>
		

		<!-- Foto<input class="form-control btn btn-info"  name="fichero" type="file" id="fichero">
        <span id="error" class='error1' style="display: none;"></span>
        Preview<img  name="imagen" id="imagen" src="" alt="Imagen aqui" width="280" height="250"> -->
		
		<input type="hidden" id="idFAMILIA">
		
		<input type="submit" class="btn btn-info" value="Guardar">

</form>
  
<?php
}else
{

echo "<h4>No ha ingresado</h4>";
  
}
?>
