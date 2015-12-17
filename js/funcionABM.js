function BorrarFAMILIAR(idParametro)
{
	//alert(idParametro);
		var funcionAjax=$.ajax({
		url:"nexo.php",
		type:"post",
		data:{
			queHacer:"BorrarFamiliar",
			id:idParametro	
		}
	});
	funcionAjax.done(function(retorno){
		Mostrar("MostrarListado");
		alert("borrado");
	});

}

function EditarFAMILIAR(idParametro)
{
	Mostrar("MostrarFamiliar");

	var funcionAjax=$.ajax({
		url:"nexo.php",
		type:"post",
		data:{
			queHacer:"TraerFamiliar",
			id:idParametro	
		}
	});
	funcionAjax.done(function(retorno){
		
		//console.log(retorno);
		var f =JSON.parse(retorno);	
		//alert(voto.dni);

		$("#idFAMILIA").val(f.id);
		$("#dni").val(f.dni); 
		$("#provincia").val(f.provincia);
		$("#nombre").val(f.nombre);
		
		if(f.sexo == "F")
            $('input:radio[name="sexo"][value="F"]').prop('checked', true);
        else
            $('input:radio[name="sexo"][value="M"]').prop('checked', true);	
        
        $("#direccion").val(f.direccion);
		$("#localidad").val(f.localidad);
		$("#parentesco").val(f.parentesco);
		
		console.log(retorno);
		
	});

	//Mostrar("MostrarVotacion");
}

function GuardarFAMILIAR()
{       
 		var id = $("#idFAMILIA").val();
 		var dni = $("#dni").val(); 
		var provincia = $("#provincia").val(); //hace referencia al id del input
		var nombre = $("#nombre").val();
		var sexo = $("input[name=sexo]:checked").val();
		var direccion = $("#direccion").val();
		var localidad = $("#localidad").val();
		var parentesco = $("#parentesco").val();
        //var foto = $("#foto").val();
		
		var funcionAjax = $.ajax({	
		url:"nexo.php", 
		type:"post",
		data:
		{
		queHacer: "GuardarFamiliar",
		id:id,
		dni:dni,
	    provincia:provincia,
		nombre:nombre,
		sexo:sexo,
		direccion:direccion,
		localidad:localidad,
		parentesco:parentesco
		//foto:foto
		}
		
	});
	funcionAjax.done(function(retorno){
		
		console.log(retorno);
		Mostrar("MostrarListado");

		//$("#Contador").html("Votos " + retorno); 

		 //console.log($("#Contador"));      	
		
	});

}