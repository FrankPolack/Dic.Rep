function Login()
{	
   var dni=$("#dni").val();
		
	var funcionAjax=$.ajax({
		url:"php/sesion.php",
		type:"post",
		data:{
			
			dni:dni
		}
	});

	funcionAjax.done(function(retorno){
		//alert(retorno);
		$("#principal").html(retorno);
		alert("Bienvenido");
	});

}

function Logout()
{	
	var funcionAjax=$.ajax({
		url:"php/logout.php",
		type:"post"		
	});
	funcionAjax.done(function(retorno){
			
			MostarIngreso();

			//$("#Contador").html(""); //esto destruye la cookie
			
	});	
}

